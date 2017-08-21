--- GENERATED CODE - DO NOT MODIFY
-- AWS IoT (iot-2015-05-28)

local M = {}

M.metadata = {
	api_version = "2015-05-28",
	json_version = "",
	protocol = "rest-json",
	checksum_format = "",
	endpoint_prefix = "iot",
	service_abbreviation = "",
	service_full_name = "AWS IoT",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "iot-2015-05-28",
}

local keys = {}
local asserts = {}

keys.SalesforceAction = { ["url"] = true, ["token"] = true, nil }

function asserts.AssertSalesforceAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SalesforceAction to be of type 'table'")
	assert(struct["token"], "Expected key token to exist in table")
	assert(struct["url"], "Expected key url to exist in table")
	if struct["url"] then asserts.AssertSalesforceEndpoint(struct["url"]) end
	if struct["token"] then asserts.AssertSalesforceToken(struct["token"]) end
	for k,_ in pairs(struct) do
		assert(keys.SalesforceAction[k], "SalesforceAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SalesforceAction
-- <p>Describes an action to write a message to a Salesforce IoT Cloud Input Stream.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * url [SalesforceEndpoint] <p>The URL exposed by the Salesforce IoT Cloud Input Stream. The URL is available from the Salesforce IoT Cloud platform after creation of the Input Stream.</p>
-- * token [SalesforceToken] <p>The token used to authenticate access to the Salesforce IoT Cloud Input Stream. The token is available from the Salesforce IoT Cloud platform after creation of the Input Stream.</p>
-- Required key: token
-- Required key: url
-- @return SalesforceAction structure as a key-value pair table
function M.SalesforceAction(args)
	assert(args, "You must provdide an argument table when creating SalesforceAction")
	local t = { 
		["url"] = args["url"],
		["token"] = args["token"],
	}
	asserts.AssertSalesforceAction(t)
	return t
end

keys.VersionsLimitExceededException = { ["message"] = true, nil }

function asserts.AssertVersionsLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VersionsLimitExceededException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.VersionsLimitExceededException[k], "VersionsLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VersionsLimitExceededException
-- <p>The number of policy versions exceeds the limit.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [errorMessage] <p>The message for the exception.</p>
-- @return VersionsLimitExceededException structure as a key-value pair table
function M.VersionsLimitExceededException(args)
	assert(args, "You must provdide an argument table when creating VersionsLimitExceededException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertVersionsLimitExceededException(t)
	return t
end

keys.DetachThingPrincipalResponse = { nil }

function asserts.AssertDetachThingPrincipalResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetachThingPrincipalResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DetachThingPrincipalResponse[k], "DetachThingPrincipalResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetachThingPrincipalResponse
-- <p>The output from the DetachThingPrincipal operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DetachThingPrincipalResponse structure as a key-value pair table
function M.DetachThingPrincipalResponse(args)
	assert(args, "You must provdide an argument table when creating DetachThingPrincipalResponse")
	local t = { 
	}
	asserts.AssertDetachThingPrincipalResponse(t)
	return t
end

keys.ServiceUnavailableException = { ["message"] = true, nil }

function asserts.AssertServiceUnavailableException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceUnavailableException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ServiceUnavailableException[k], "ServiceUnavailableException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceUnavailableException
-- <p>The service is temporarily unavailable.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [errorMessage] <p>The message for the exception.</p>
-- @return ServiceUnavailableException structure as a key-value pair table
function M.ServiceUnavailableException(args)
	assert(args, "You must provdide an argument table when creating ServiceUnavailableException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertServiceUnavailableException(t)
	return t
end

keys.UnauthorizedException = { ["message"] = true, nil }

function asserts.AssertUnauthorizedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnauthorizedException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnauthorizedException[k], "UnauthorizedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnauthorizedException
-- <p>You are not authorized to perform this operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [errorMessage] <p>The message for the exception.</p>
-- @return UnauthorizedException structure as a key-value pair table
function M.UnauthorizedException(args)
	assert(args, "You must provdide an argument table when creating UnauthorizedException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertUnauthorizedException(t)
	return t
end

keys.ListThingTypesResponse = { ["nextToken"] = true, ["thingTypes"] = true, nil }

function asserts.AssertListThingTypesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListThingTypesResponse to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["thingTypes"] then asserts.AssertThingTypeList(struct["thingTypes"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListThingTypesResponse[k], "ListThingTypesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListThingTypesResponse
-- <p>The output for the ListThingTypes operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>The token for the next set of results, or <b>null</b> if there are no additional results.</p>
-- * thingTypes [ThingTypeList] <p>The thing types.</p>
-- @return ListThingTypesResponse structure as a key-value pair table
function M.ListThingTypesResponse(args)
	assert(args, "You must provdide an argument table when creating ListThingTypesResponse")
	local t = { 
		["nextToken"] = args["nextToken"],
		["thingTypes"] = args["thingTypes"],
	}
	asserts.AssertListThingTypesResponse(t)
	return t
end

keys.SnsAction = { ["targetArn"] = true, ["roleArn"] = true, ["messageFormat"] = true, nil }

function asserts.AssertSnsAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SnsAction to be of type 'table'")
	assert(struct["targetArn"], "Expected key targetArn to exist in table")
	assert(struct["roleArn"], "Expected key roleArn to exist in table")
	if struct["targetArn"] then asserts.AssertAwsArn(struct["targetArn"]) end
	if struct["roleArn"] then asserts.AssertAwsArn(struct["roleArn"]) end
	if struct["messageFormat"] then asserts.AssertMessageFormat(struct["messageFormat"]) end
	for k,_ in pairs(struct) do
		assert(keys.SnsAction[k], "SnsAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SnsAction
-- <p>Describes an action to publish to an Amazon SNS topic.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * targetArn [AwsArn] <p>The ARN of the SNS topic.</p>
-- * roleArn [AwsArn] <p>The ARN of the IAM role that grants access.</p>
-- * messageFormat [MessageFormat] <p>The message format of the message to publish. Optional. Accepted values are "JSON" and "RAW". The default value of the attribute is "RAW". SNS uses this setting to determine if the payload should be parsed and relevant platform-specific bits of the payload should be extracted. To read more about SNS message formats, see <a href="http://docs.aws.amazon.com/sns/latest/dg/json-formats.html">http://docs.aws.amazon.com/sns/latest/dg/json-formats.html</a> refer to their official documentation.</p>
-- Required key: targetArn
-- Required key: roleArn
-- @return SnsAction structure as a key-value pair table
function M.SnsAction(args)
	assert(args, "You must provdide an argument table when creating SnsAction")
	local t = { 
		["targetArn"] = args["targetArn"],
		["roleArn"] = args["roleArn"],
		["messageFormat"] = args["messageFormat"],
	}
	asserts.AssertSnsAction(t)
	return t
end

keys.ThingTypeMetadata = { ["deprecated"] = true, ["creationDate"] = true, ["deprecationDate"] = true, nil }

function asserts.AssertThingTypeMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ThingTypeMetadata to be of type 'table'")
	if struct["deprecated"] then asserts.AssertBoolean(struct["deprecated"]) end
	if struct["creationDate"] then asserts.AssertCreationDate(struct["creationDate"]) end
	if struct["deprecationDate"] then asserts.AssertDeprecationDate(struct["deprecationDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.ThingTypeMetadata[k], "ThingTypeMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ThingTypeMetadata
-- <p>The ThingTypeMetadata contains additional information about the thing type including: creation date and time, a value indicating whether the thing type is deprecated, and a date and time when time was deprecated.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * deprecated [Boolean] <p>Whether the thing type is deprecated. If <b>true</b>, no new things could be associated with this type.</p>
-- * creationDate [CreationDate] <p>The date and time when the thing type was created.</p>
-- * deprecationDate [DeprecationDate] <p>The date and time when the thing type was deprecated.</p>
-- @return ThingTypeMetadata structure as a key-value pair table
function M.ThingTypeMetadata(args)
	assert(args, "You must provdide an argument table when creating ThingTypeMetadata")
	local t = { 
		["deprecated"] = args["deprecated"],
		["creationDate"] = args["creationDate"],
		["deprecationDate"] = args["deprecationDate"],
	}
	asserts.AssertThingTypeMetadata(t)
	return t
end

keys.TransferCertificateResponse = { ["transferredCertificateArn"] = true, nil }

function asserts.AssertTransferCertificateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TransferCertificateResponse to be of type 'table'")
	if struct["transferredCertificateArn"] then asserts.AssertCertificateArn(struct["transferredCertificateArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.TransferCertificateResponse[k], "TransferCertificateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TransferCertificateResponse
-- <p>The output from the TransferCertificate operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * transferredCertificateArn [CertificateArn] <p>The ARN of the certificate.</p>
-- @return TransferCertificateResponse structure as a key-value pair table
function M.TransferCertificateResponse(args)
	assert(args, "You must provdide an argument table when creating TransferCertificateResponse")
	local t = { 
		["transferredCertificateArn"] = args["transferredCertificateArn"],
	}
	asserts.AssertTransferCertificateResponse(t)
	return t
end

keys.ListPrincipalThingsResponse = { ["things"] = true, ["nextToken"] = true, nil }

function asserts.AssertListPrincipalThingsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPrincipalThingsResponse to be of type 'table'")
	if struct["things"] then asserts.AssertThingNameList(struct["things"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPrincipalThingsResponse[k], "ListPrincipalThingsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPrincipalThingsResponse
-- <p>The output from the ListPrincipalThings operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * things [ThingNameList] <p>The things.</p>
-- * nextToken [NextToken] <p>The token for the next set of results, or <b>null</b> if there are no additional results.</p>
-- @return ListPrincipalThingsResponse structure as a key-value pair table
function M.ListPrincipalThingsResponse(args)
	assert(args, "You must provdide an argument table when creating ListPrincipalThingsResponse")
	local t = { 
		["things"] = args["things"],
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertListPrincipalThingsResponse(t)
	return t
end

keys.ListPolicyPrincipalsResponse = { ["nextMarker"] = true, ["principals"] = true, nil }

function asserts.AssertListPolicyPrincipalsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPolicyPrincipalsResponse to be of type 'table'")
	if struct["nextMarker"] then asserts.AssertMarker(struct["nextMarker"]) end
	if struct["principals"] then asserts.AssertPrincipals(struct["principals"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPolicyPrincipalsResponse[k], "ListPolicyPrincipalsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPolicyPrincipalsResponse
-- <p>The output from the ListPolicyPrincipals operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextMarker [Marker] <p>The marker for the next set of results, or null if there are no additional results.</p>
-- * principals [Principals] <p>The descriptions of the principals.</p>
-- @return ListPolicyPrincipalsResponse structure as a key-value pair table
function M.ListPolicyPrincipalsResponse(args)
	assert(args, "You must provdide an argument table when creating ListPolicyPrincipalsResponse")
	local t = { 
		["nextMarker"] = args["nextMarker"],
		["principals"] = args["principals"],
	}
	asserts.AssertListPolicyPrincipalsResponse(t)
	return t
end

keys.DynamoDBAction = { ["rangeKeyType"] = true, ["payloadField"] = true, ["hashKeyType"] = true, ["hashKeyField"] = true, ["roleArn"] = true, ["tableName"] = true, ["hashKeyValue"] = true, ["rangeKeyValue"] = true, ["operation"] = true, ["rangeKeyField"] = true, nil }

function asserts.AssertDynamoDBAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DynamoDBAction to be of type 'table'")
	assert(struct["tableName"], "Expected key tableName to exist in table")
	assert(struct["roleArn"], "Expected key roleArn to exist in table")
	assert(struct["hashKeyField"], "Expected key hashKeyField to exist in table")
	assert(struct["hashKeyValue"], "Expected key hashKeyValue to exist in table")
	if struct["rangeKeyType"] then asserts.AssertDynamoKeyType(struct["rangeKeyType"]) end
	if struct["payloadField"] then asserts.AssertPayloadField(struct["payloadField"]) end
	if struct["hashKeyType"] then asserts.AssertDynamoKeyType(struct["hashKeyType"]) end
	if struct["hashKeyField"] then asserts.AssertHashKeyField(struct["hashKeyField"]) end
	if struct["roleArn"] then asserts.AssertAwsArn(struct["roleArn"]) end
	if struct["tableName"] then asserts.AssertTableName(struct["tableName"]) end
	if struct["hashKeyValue"] then asserts.AssertHashKeyValue(struct["hashKeyValue"]) end
	if struct["rangeKeyValue"] then asserts.AssertRangeKeyValue(struct["rangeKeyValue"]) end
	if struct["operation"] then asserts.AssertDynamoOperation(struct["operation"]) end
	if struct["rangeKeyField"] then asserts.AssertRangeKeyField(struct["rangeKeyField"]) end
	for k,_ in pairs(struct) do
		assert(keys.DynamoDBAction[k], "DynamoDBAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DynamoDBAction
-- <p>Describes an action to write to a DynamoDB table.</p> <p>The <code>tableName</code>, <code>hashKeyField</code>, and <code>rangeKeyField</code> values must match the values used when you created the table.</p> <p>The <code>hashKeyValue</code> and <code>rangeKeyvalue</code> fields use a substitution template syntax. These templates provide data at runtime. The syntax is as follows: ${<i>sql-expression</i>}.</p> <p>You can specify any valid expression in a WHERE or SELECT clause, including JSON properties, comparisons, calculations, and functions. For example, the following field uses the third level of the topic:</p> <p> <code>"hashKeyValue": "${topic(3)}"</code> </p> <p>The following field uses the timestamp:</p> <p> <code>"rangeKeyValue": "${timestamp()}"</code> </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * rangeKeyType [DynamoKeyType] <p>The range key type. Valid values are "STRING" or "NUMBER"</p>
-- * payloadField [PayloadField] <p>The action payload. This name can be customized.</p>
-- * hashKeyType [DynamoKeyType] <p>The hash key type. Valid values are "STRING" or "NUMBER"</p>
-- * hashKeyField [HashKeyField] <p>The hash key name.</p>
-- * roleArn [AwsArn] <p>The ARN of the IAM role that grants access to the DynamoDB table.</p>
-- * tableName [TableName] <p>The name of the DynamoDB table.</p>
-- * hashKeyValue [HashKeyValue] <p>The hash key value.</p>
-- * rangeKeyValue [RangeKeyValue] <p>The range key value.</p>
-- * operation [DynamoOperation] <p>The type of operation to be performed. This follows the substitution template, so it can be <code>${operation}</code>, but the substitution must result in one of the following: <code>INSERT</code>, <code>UPDATE</code>, or <code>DELETE</code>.</p>
-- * rangeKeyField [RangeKeyField] <p>The range key name.</p>
-- Required key: tableName
-- Required key: roleArn
-- Required key: hashKeyField
-- Required key: hashKeyValue
-- @return DynamoDBAction structure as a key-value pair table
function M.DynamoDBAction(args)
	assert(args, "You must provdide an argument table when creating DynamoDBAction")
	local t = { 
		["rangeKeyType"] = args["rangeKeyType"],
		["payloadField"] = args["payloadField"],
		["hashKeyType"] = args["hashKeyType"],
		["hashKeyField"] = args["hashKeyField"],
		["roleArn"] = args["roleArn"],
		["tableName"] = args["tableName"],
		["hashKeyValue"] = args["hashKeyValue"],
		["rangeKeyValue"] = args["rangeKeyValue"],
		["operation"] = args["operation"],
		["rangeKeyField"] = args["rangeKeyField"],
	}
	asserts.AssertDynamoDBAction(t)
	return t
end

keys.DeleteCACertificateResponse = { nil }

function asserts.AssertDeleteCACertificateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteCACertificateResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteCACertificateResponse[k], "DeleteCACertificateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteCACertificateResponse
-- <p>The output for the DeleteCACertificate operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteCACertificateResponse structure as a key-value pair table
function M.DeleteCACertificateResponse(args)
	assert(args, "You must provdide an argument table when creating DeleteCACertificateResponse")
	local t = { 
	}
	asserts.AssertDeleteCACertificateResponse(t)
	return t
end

keys.DescribeEndpointResponse = { ["endpointAddress"] = true, nil }

function asserts.AssertDescribeEndpointResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEndpointResponse to be of type 'table'")
	if struct["endpointAddress"] then asserts.AssertEndpointAddress(struct["endpointAddress"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEndpointResponse[k], "DescribeEndpointResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEndpointResponse
-- <p>The output from the DescribeEndpoint operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * endpointAddress [EndpointAddress] <p>The endpoint. The format of the endpoint is as follows: <i>identifier</i>.iot.<i>region</i>.amazonaws.com.</p>
-- @return DescribeEndpointResponse structure as a key-value pair table
function M.DescribeEndpointResponse(args)
	assert(args, "You must provdide an argument table when creating DescribeEndpointResponse")
	local t = { 
		["endpointAddress"] = args["endpointAddress"],
	}
	asserts.AssertDescribeEndpointResponse(t)
	return t
end

keys.RegisterCACertificateRequest = { ["caCertificate"] = true, ["verificationCertificate"] = true, ["allowAutoRegistration"] = true, ["setAsActive"] = true, nil }

function asserts.AssertRegisterCACertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterCACertificateRequest to be of type 'table'")
	assert(struct["caCertificate"], "Expected key caCertificate to exist in table")
	assert(struct["verificationCertificate"], "Expected key verificationCertificate to exist in table")
	if struct["caCertificate"] then asserts.AssertCertificatePem(struct["caCertificate"]) end
	if struct["verificationCertificate"] then asserts.AssertCertificatePem(struct["verificationCertificate"]) end
	if struct["allowAutoRegistration"] then asserts.AssertAllowAutoRegistration(struct["allowAutoRegistration"]) end
	if struct["setAsActive"] then asserts.AssertSetAsActive(struct["setAsActive"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegisterCACertificateRequest[k], "RegisterCACertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterCACertificateRequest
-- <p>The input to the RegisterCACertificate operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * caCertificate [CertificatePem] <p>The CA certificate.</p>
-- * verificationCertificate [CertificatePem] <p>The private key verification certificate.</p>
-- * allowAutoRegistration [AllowAutoRegistration] <p>Allows this CA certificate to be used for auto registration of device certificates.</p>
-- * setAsActive [SetAsActive] <p>A boolean value that specifies if the CA certificate is set to active.</p>
-- Required key: caCertificate
-- Required key: verificationCertificate
-- @return RegisterCACertificateRequest structure as a key-value pair table
function M.RegisterCACertificateRequest(args)
	assert(args, "You must provdide an argument table when creating RegisterCACertificateRequest")
	local t = { 
		["caCertificate"] = args["caCertificate"],
		["verificationCertificate"] = args["verificationCertificate"],
		["allowAutoRegistration"] = args["allowAutoRegistration"],
		["setAsActive"] = args["setAsActive"],
	}
	asserts.AssertRegisterCACertificateRequest(t)
	return t
end

keys.DeleteRegistrationCodeRequest = { nil }

function asserts.AssertDeleteRegistrationCodeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRegistrationCodeRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteRegistrationCodeRequest[k], "DeleteRegistrationCodeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRegistrationCodeRequest
-- <p>The input for the DeleteRegistrationCode operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteRegistrationCodeRequest structure as a key-value pair table
function M.DeleteRegistrationCodeRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteRegistrationCodeRequest")
	local t = { 
	}
	asserts.AssertDeleteRegistrationCodeRequest(t)
	return t
end

keys.GetRegistrationCodeResponse = { ["registrationCode"] = true, nil }

function asserts.AssertGetRegistrationCodeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRegistrationCodeResponse to be of type 'table'")
	if struct["registrationCode"] then asserts.AssertRegistrationCode(struct["registrationCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRegistrationCodeResponse[k], "GetRegistrationCodeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRegistrationCodeResponse
-- <p>The output from the GetRegistrationCode operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * registrationCode [RegistrationCode] <p>The CA certificate registration code.</p>
-- @return GetRegistrationCodeResponse structure as a key-value pair table
function M.GetRegistrationCodeResponse(args)
	assert(args, "You must provdide an argument table when creating GetRegistrationCodeResponse")
	local t = { 
		["registrationCode"] = args["registrationCode"],
	}
	asserts.AssertGetRegistrationCodeResponse(t)
	return t
end

keys.ListPolicyVersionsRequest = { ["policyName"] = true, nil }

function asserts.AssertListPolicyVersionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPolicyVersionsRequest to be of type 'table'")
	assert(struct["policyName"], "Expected key policyName to exist in table")
	if struct["policyName"] then asserts.AssertPolicyName(struct["policyName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPolicyVersionsRequest[k], "ListPolicyVersionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPolicyVersionsRequest
-- <p>The input for the ListPolicyVersions operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * policyName [PolicyName] <p>The policy name.</p>
-- Required key: policyName
-- @return ListPolicyVersionsRequest structure as a key-value pair table
function M.ListPolicyVersionsRequest(args)
	assert(args, "You must provdide an argument table when creating ListPolicyVersionsRequest")
	local t = { 
		["policyName"] = args["policyName"],
	}
	asserts.AssertListPolicyVersionsRequest(t)
	return t
end

keys.ListCertificatesRequest = { ["marker"] = true, ["ascendingOrder"] = true, ["pageSize"] = true, nil }

function asserts.AssertListCertificatesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCertificatesRequest to be of type 'table'")
	if struct["marker"] then asserts.AssertMarker(struct["marker"]) end
	if struct["ascendingOrder"] then asserts.AssertAscendingOrder(struct["ascendingOrder"]) end
	if struct["pageSize"] then asserts.AssertPageSize(struct["pageSize"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListCertificatesRequest[k], "ListCertificatesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCertificatesRequest
-- <p>The input for the ListCertificates operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * marker [Marker] <p>The marker for the next set of results.</p>
-- * ascendingOrder [AscendingOrder] <p>Specifies the order for results. If True, the results are returned in ascending order, based on the creation date.</p>
-- * pageSize [PageSize] <p>The result page size.</p>
-- @return ListCertificatesRequest structure as a key-value pair table
function M.ListCertificatesRequest(args)
	assert(args, "You must provdide an argument table when creating ListCertificatesRequest")
	local t = { 
		["marker"] = args["marker"],
		["ascendingOrder"] = args["ascendingOrder"],
		["pageSize"] = args["pageSize"],
	}
	asserts.AssertListCertificatesRequest(t)
	return t
end

keys.ThingAttribute = { ["thingTypeName"] = true, ["attributes"] = true, ["version"] = true, ["thingName"] = true, nil }

function asserts.AssertThingAttribute(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ThingAttribute to be of type 'table'")
	if struct["thingTypeName"] then asserts.AssertThingTypeName(struct["thingTypeName"]) end
	if struct["attributes"] then asserts.AssertAttributes(struct["attributes"]) end
	if struct["version"] then asserts.AssertVersion(struct["version"]) end
	if struct["thingName"] then asserts.AssertThingName(struct["thingName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ThingAttribute[k], "ThingAttribute contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ThingAttribute
-- <p>The properties of the thing, including thing name, thing type name, and a list of thing attributes.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * thingTypeName [ThingTypeName] <p>The name of the thing type, if the thing has been associated with a type.</p>
-- * attributes [Attributes] <p>A list of thing attributes which are name-value pairs.</p>
-- * version [Version] <p>The version of the thing record in the registry.</p>
-- * thingName [ThingName] <p>The name of the thing.</p>
-- @return ThingAttribute structure as a key-value pair table
function M.ThingAttribute(args)
	assert(args, "You must provdide an argument table when creating ThingAttribute")
	local t = { 
		["thingTypeName"] = args["thingTypeName"],
		["attributes"] = args["attributes"],
		["version"] = args["version"],
		["thingName"] = args["thingName"],
	}
	asserts.AssertThingAttribute(t)
	return t
end

keys.DescribeThingRequest = { ["thingName"] = true, nil }

function asserts.AssertDescribeThingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeThingRequest to be of type 'table'")
	assert(struct["thingName"], "Expected key thingName to exist in table")
	if struct["thingName"] then asserts.AssertThingName(struct["thingName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeThingRequest[k], "DescribeThingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeThingRequest
-- <p>The input for the DescribeThing operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * thingName [ThingName] <p>The name of the thing.</p>
-- Required key: thingName
-- @return DescribeThingRequest structure as a key-value pair table
function M.DescribeThingRequest(args)
	assert(args, "You must provdide an argument table when creating DescribeThingRequest")
	local t = { 
		["thingName"] = args["thingName"],
	}
	asserts.AssertDescribeThingRequest(t)
	return t
end

keys.ListThingPrincipalsResponse = { ["principals"] = true, nil }

function asserts.AssertListThingPrincipalsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListThingPrincipalsResponse to be of type 'table'")
	if struct["principals"] then asserts.AssertPrincipals(struct["principals"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListThingPrincipalsResponse[k], "ListThingPrincipalsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListThingPrincipalsResponse
-- <p>The output from the ListThingPrincipals operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * principals [Principals] <p>The principals associated with the thing.</p>
-- @return ListThingPrincipalsResponse structure as a key-value pair table
function M.ListThingPrincipalsResponse(args)
	assert(args, "You must provdide an argument table when creating ListThingPrincipalsResponse")
	local t = { 
		["principals"] = args["principals"],
	}
	asserts.AssertListThingPrincipalsResponse(t)
	return t
end

keys.CertificateValidationException = { ["message"] = true, nil }

function asserts.AssertCertificateValidationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CertificateValidationException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.CertificateValidationException[k], "CertificateValidationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CertificateValidationException
-- <p>The certificate is invalid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [errorMessage] <p>Additional information about the exception.</p>
-- @return CertificateValidationException structure as a key-value pair table
function M.CertificateValidationException(args)
	assert(args, "You must provdide an argument table when creating CertificateValidationException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertCertificateValidationException(t)
	return t
end

keys.DeleteThingResponse = { nil }

function asserts.AssertDeleteThingResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteThingResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteThingResponse[k], "DeleteThingResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteThingResponse
-- <p>The output of the DeleteThing operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteThingResponse structure as a key-value pair table
function M.DeleteThingResponse(args)
	assert(args, "You must provdide an argument table when creating DeleteThingResponse")
	local t = { 
	}
	asserts.AssertDeleteThingResponse(t)
	return t
end

keys.CreateThingRequest = { ["thingTypeName"] = true, ["attributePayload"] = true, ["thingName"] = true, nil }

function asserts.AssertCreateThingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateThingRequest to be of type 'table'")
	assert(struct["thingName"], "Expected key thingName to exist in table")
	if struct["thingTypeName"] then asserts.AssertThingTypeName(struct["thingTypeName"]) end
	if struct["attributePayload"] then asserts.AssertAttributePayload(struct["attributePayload"]) end
	if struct["thingName"] then asserts.AssertThingName(struct["thingName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateThingRequest[k], "CreateThingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateThingRequest
-- <p>The input for the CreateThing operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * thingTypeName [ThingTypeName] <p>The name of the thing type associated with the new thing.</p>
-- * attributePayload [AttributePayload] <p>The attribute payload, which consists of up to three name/value pairs in a JSON document. For example:</p> <p> <code>{\"attributes\":{\"string1\":\"string2\"}}</code> </p>
-- * thingName [ThingName] <p>The name of the thing to create.</p>
-- Required key: thingName
-- @return CreateThingRequest structure as a key-value pair table
function M.CreateThingRequest(args)
	assert(args, "You must provdide an argument table when creating CreateThingRequest")
	local t = { 
		["thingTypeName"] = args["thingTypeName"],
		["attributePayload"] = args["attributePayload"],
		["thingName"] = args["thingName"],
	}
	asserts.AssertCreateThingRequest(t)
	return t
end

keys.RegisterCertificateResponse = { ["certificateArn"] = true, ["certificateId"] = true, nil }

function asserts.AssertRegisterCertificateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterCertificateResponse to be of type 'table'")
	if struct["certificateArn"] then asserts.AssertCertificateArn(struct["certificateArn"]) end
	if struct["certificateId"] then asserts.AssertCertificateId(struct["certificateId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegisterCertificateResponse[k], "RegisterCertificateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterCertificateResponse
-- <p>The output from the RegisterCertificate operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * certificateArn [CertificateArn] <p>The certificate ARN.</p>
-- * certificateId [CertificateId] <p>The certificate identifier.</p>
-- @return RegisterCertificateResponse structure as a key-value pair table
function M.RegisterCertificateResponse(args)
	assert(args, "You must provdide an argument table when creating RegisterCertificateResponse")
	local t = { 
		["certificateArn"] = args["certificateArn"],
		["certificateId"] = args["certificateId"],
	}
	asserts.AssertRegisterCertificateResponse(t)
	return t
end

keys.PolicyVersion = { ["versionId"] = true, ["createDate"] = true, ["isDefaultVersion"] = true, nil }

function asserts.AssertPolicyVersion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PolicyVersion to be of type 'table'")
	if struct["versionId"] then asserts.AssertPolicyVersionId(struct["versionId"]) end
	if struct["createDate"] then asserts.AssertDateType(struct["createDate"]) end
	if struct["isDefaultVersion"] then asserts.AssertIsDefaultVersion(struct["isDefaultVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.PolicyVersion[k], "PolicyVersion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PolicyVersion
-- <p>Describes a policy version.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * versionId [PolicyVersionId] <p>The policy version ID.</p>
-- * createDate [DateType] <p>The date and time the policy was created.</p>
-- * isDefaultVersion [IsDefaultVersion] <p>Specifies whether the policy version is the default.</p>
-- @return PolicyVersion structure as a key-value pair table
function M.PolicyVersion(args)
	assert(args, "You must provdide an argument table when creating PolicyVersion")
	local t = { 
		["versionId"] = args["versionId"],
		["createDate"] = args["createDate"],
		["isDefaultVersion"] = args["isDefaultVersion"],
	}
	asserts.AssertPolicyVersion(t)
	return t
end

keys.CreatePolicyVersionResponse = { ["policyDocument"] = true, ["policyVersionId"] = true, ["policyArn"] = true, ["isDefaultVersion"] = true, nil }

function asserts.AssertCreatePolicyVersionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePolicyVersionResponse to be of type 'table'")
	if struct["policyDocument"] then asserts.AssertPolicyDocument(struct["policyDocument"]) end
	if struct["policyVersionId"] then asserts.AssertPolicyVersionId(struct["policyVersionId"]) end
	if struct["policyArn"] then asserts.AssertPolicyArn(struct["policyArn"]) end
	if struct["isDefaultVersion"] then asserts.AssertIsDefaultVersion(struct["isDefaultVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreatePolicyVersionResponse[k], "CreatePolicyVersionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePolicyVersionResponse
-- <p>The output of the CreatePolicyVersion operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * policyDocument [PolicyDocument] <p>The JSON document that describes the policy.</p>
-- * policyVersionId [PolicyVersionId] <p>The policy version ID.</p>
-- * policyArn [PolicyArn] <p>The policy ARN.</p>
-- * isDefaultVersion [IsDefaultVersion] <p>Specifies whether the policy version is the default.</p>
-- @return CreatePolicyVersionResponse structure as a key-value pair table
function M.CreatePolicyVersionResponse(args)
	assert(args, "You must provdide an argument table when creating CreatePolicyVersionResponse")
	local t = { 
		["policyDocument"] = args["policyDocument"],
		["policyVersionId"] = args["policyVersionId"],
		["policyArn"] = args["policyArn"],
		["isDefaultVersion"] = args["isDefaultVersion"],
	}
	asserts.AssertCreatePolicyVersionResponse(t)
	return t
end

keys.GetRegistrationCodeRequest = { nil }

function asserts.AssertGetRegistrationCodeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRegistrationCodeRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.GetRegistrationCodeRequest[k], "GetRegistrationCodeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRegistrationCodeRequest
-- <p>The input to the GetRegistrationCode operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return GetRegistrationCodeRequest structure as a key-value pair table
function M.GetRegistrationCodeRequest(args)
	assert(args, "You must provdide an argument table when creating GetRegistrationCodeRequest")
	local t = { 
	}
	asserts.AssertGetRegistrationCodeRequest(t)
	return t
end

keys.UpdateCertificateRequest = { ["newStatus"] = true, ["certificateId"] = true, nil }

function asserts.AssertUpdateCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateCertificateRequest to be of type 'table'")
	assert(struct["certificateId"], "Expected key certificateId to exist in table")
	assert(struct["newStatus"], "Expected key newStatus to exist in table")
	if struct["newStatus"] then asserts.AssertCertificateStatus(struct["newStatus"]) end
	if struct["certificateId"] then asserts.AssertCertificateId(struct["certificateId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateCertificateRequest[k], "UpdateCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateCertificateRequest
-- <p>The input for the UpdateCertificate operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * newStatus [CertificateStatus] <p>The new status.</p> <p> <b>Note:</b> Setting the status to PENDING_TRANSFER will result in an exception being thrown. PENDING_TRANSFER is a status used internally by AWS IoT. It is not intended for developer use.</p> <p> <b>Note:</b> The status value REGISTER_INACTIVE is deprecated and should not be used.</p>
-- * certificateId [CertificateId] <p>The ID of the certificate.</p>
-- Required key: certificateId
-- Required key: newStatus
-- @return UpdateCertificateRequest structure as a key-value pair table
function M.UpdateCertificateRequest(args)
	assert(args, "You must provdide an argument table when creating UpdateCertificateRequest")
	local t = { 
		["newStatus"] = args["newStatus"],
		["certificateId"] = args["certificateId"],
	}
	asserts.AssertUpdateCertificateRequest(t)
	return t
end

keys.ListPrincipalPoliciesResponse = { ["nextMarker"] = true, ["policies"] = true, nil }

function asserts.AssertListPrincipalPoliciesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPrincipalPoliciesResponse to be of type 'table'")
	if struct["nextMarker"] then asserts.AssertMarker(struct["nextMarker"]) end
	if struct["policies"] then asserts.AssertPolicies(struct["policies"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPrincipalPoliciesResponse[k], "ListPrincipalPoliciesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPrincipalPoliciesResponse
-- <p>The output from the ListPrincipalPolicies operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextMarker [Marker] <p>The marker for the next set of results, or null if there are no additional results.</p>
-- * policies [Policies] <p>The policies.</p>
-- @return ListPrincipalPoliciesResponse structure as a key-value pair table
function M.ListPrincipalPoliciesResponse(args)
	assert(args, "You must provdide an argument table when creating ListPrincipalPoliciesResponse")
	local t = { 
		["nextMarker"] = args["nextMarker"],
		["policies"] = args["policies"],
	}
	asserts.AssertListPrincipalPoliciesResponse(t)
	return t
end

keys.LimitExceededException = { ["message"] = true, nil }

function asserts.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.LimitExceededException[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- <p>The number of attached entities exceeds the limit.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [errorMessage] <p>The message for the exception.</p>
-- @return LimitExceededException structure as a key-value pair table
function M.LimitExceededException(args)
	assert(args, "You must provdide an argument table when creating LimitExceededException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertLimitExceededException(t)
	return t
end

keys.ListOutgoingCertificatesRequest = { ["marker"] = true, ["ascendingOrder"] = true, ["pageSize"] = true, nil }

function asserts.AssertListOutgoingCertificatesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListOutgoingCertificatesRequest to be of type 'table'")
	if struct["marker"] then asserts.AssertMarker(struct["marker"]) end
	if struct["ascendingOrder"] then asserts.AssertAscendingOrder(struct["ascendingOrder"]) end
	if struct["pageSize"] then asserts.AssertPageSize(struct["pageSize"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListOutgoingCertificatesRequest[k], "ListOutgoingCertificatesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListOutgoingCertificatesRequest
-- <p>The input to the ListOutgoingCertificates operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * marker [Marker] <p>The marker for the next set of results.</p>
-- * ascendingOrder [AscendingOrder] <p>Specifies the order for results. If True, the results are returned in ascending order, based on the creation date.</p>
-- * pageSize [PageSize] <p>The result page size.</p>
-- @return ListOutgoingCertificatesRequest structure as a key-value pair table
function M.ListOutgoingCertificatesRequest(args)
	assert(args, "You must provdide an argument table when creating ListOutgoingCertificatesRequest")
	local t = { 
		["marker"] = args["marker"],
		["ascendingOrder"] = args["ascendingOrder"],
		["pageSize"] = args["pageSize"],
	}
	asserts.AssertListOutgoingCertificatesRequest(t)
	return t
end

keys.DeleteCACertificateRequest = { ["certificateId"] = true, nil }

function asserts.AssertDeleteCACertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteCACertificateRequest to be of type 'table'")
	assert(struct["certificateId"], "Expected key certificateId to exist in table")
	if struct["certificateId"] then asserts.AssertCertificateId(struct["certificateId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteCACertificateRequest[k], "DeleteCACertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteCACertificateRequest
-- <p>Input for the DeleteCACertificate operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * certificateId [CertificateId] <p>The ID of the certificate to delete.</p>
-- Required key: certificateId
-- @return DeleteCACertificateRequest structure as a key-value pair table
function M.DeleteCACertificateRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteCACertificateRequest")
	local t = { 
		["certificateId"] = args["certificateId"],
	}
	asserts.AssertDeleteCACertificateRequest(t)
	return t
end

keys.CertificateStateException = { ["message"] = true, nil }

function asserts.AssertCertificateStateException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CertificateStateException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.CertificateStateException[k], "CertificateStateException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CertificateStateException
-- <p>The certificate operation is not allowed.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [errorMessage] <p>The message for the exception.</p>
-- @return CertificateStateException structure as a key-value pair table
function M.CertificateStateException(args)
	assert(args, "You must provdide an argument table when creating CertificateStateException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertCertificateStateException(t)
	return t
end

keys.GetTopicRuleRequest = { ["ruleName"] = true, nil }

function asserts.AssertGetTopicRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTopicRuleRequest to be of type 'table'")
	assert(struct["ruleName"], "Expected key ruleName to exist in table")
	if struct["ruleName"] then asserts.AssertRuleName(struct["ruleName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetTopicRuleRequest[k], "GetTopicRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTopicRuleRequest
-- <p>The input for the GetTopicRule operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ruleName [RuleName] <p>The name of the rule.</p>
-- Required key: ruleName
-- @return GetTopicRuleRequest structure as a key-value pair table
function M.GetTopicRuleRequest(args)
	assert(args, "You must provdide an argument table when creating GetTopicRuleRequest")
	local t = { 
		["ruleName"] = args["ruleName"],
	}
	asserts.AssertGetTopicRuleRequest(t)
	return t
end

keys.CertificateConflictException = { ["message"] = true, nil }

function asserts.AssertCertificateConflictException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CertificateConflictException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.CertificateConflictException[k], "CertificateConflictException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CertificateConflictException
-- <p>Unable to verify the CA certificate used to sign the device certificate you are attempting to register. This is happens when you have registered more than one CA certificate that has the same subject field and public key.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [errorMessage] <p>The message for the exception.</p>
-- @return CertificateConflictException structure as a key-value pair table
function M.CertificateConflictException(args)
	assert(args, "You must provdide an argument table when creating CertificateConflictException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertCertificateConflictException(t)
	return t
end

keys.TransferData = { ["transferMessage"] = true, ["rejectDate"] = true, ["acceptDate"] = true, ["transferDate"] = true, ["rejectReason"] = true, nil }

function asserts.AssertTransferData(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TransferData to be of type 'table'")
	if struct["transferMessage"] then asserts.AssertMessage(struct["transferMessage"]) end
	if struct["rejectDate"] then asserts.AssertDateType(struct["rejectDate"]) end
	if struct["acceptDate"] then asserts.AssertDateType(struct["acceptDate"]) end
	if struct["transferDate"] then asserts.AssertDateType(struct["transferDate"]) end
	if struct["rejectReason"] then asserts.AssertMessage(struct["rejectReason"]) end
	for k,_ in pairs(struct) do
		assert(keys.TransferData[k], "TransferData contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TransferData
-- <p>Data used to transfer a certificate to an AWS account.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * transferMessage [Message] <p>The transfer message.</p>
-- * rejectDate [DateType] <p>The date the transfer was rejected.</p>
-- * acceptDate [DateType] <p>The date the transfer was accepted.</p>
-- * transferDate [DateType] <p>The date the transfer took place.</p>
-- * rejectReason [Message] <p>The reason why the transfer was rejected.</p>
-- @return TransferData structure as a key-value pair table
function M.TransferData(args)
	assert(args, "You must provdide an argument table when creating TransferData")
	local t = { 
		["transferMessage"] = args["transferMessage"],
		["rejectDate"] = args["rejectDate"],
		["acceptDate"] = args["acceptDate"],
		["transferDate"] = args["transferDate"],
		["rejectReason"] = args["rejectReason"],
	}
	asserts.AssertTransferData(t)
	return t
end

keys.DeleteThingRequest = { ["expectedVersion"] = true, ["thingName"] = true, nil }

function asserts.AssertDeleteThingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteThingRequest to be of type 'table'")
	assert(struct["thingName"], "Expected key thingName to exist in table")
	if struct["expectedVersion"] then asserts.AssertOptionalVersion(struct["expectedVersion"]) end
	if struct["thingName"] then asserts.AssertThingName(struct["thingName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteThingRequest[k], "DeleteThingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteThingRequest
-- <p>The input for the DeleteThing operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * expectedVersion [OptionalVersion] <p>The expected version of the thing record in the registry. If the version of the record in the registry does not match the expected version specified in the request, the <code>DeleteThing</code> request is rejected with a <code>VersionConflictException</code>.</p>
-- * thingName [ThingName] <p>The name of the thing to delete.</p>
-- Required key: thingName
-- @return DeleteThingRequest structure as a key-value pair table
function M.DeleteThingRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteThingRequest")
	local t = { 
		["expectedVersion"] = args["expectedVersion"],
		["thingName"] = args["thingName"],
	}
	asserts.AssertDeleteThingRequest(t)
	return t
end

keys.ListTopicRulesRequest = { ["topic"] = true, ["nextToken"] = true, ["ruleDisabled"] = true, ["maxResults"] = true, nil }

function asserts.AssertListTopicRulesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTopicRulesRequest to be of type 'table'")
	if struct["topic"] then asserts.AssertTopic(struct["topic"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["ruleDisabled"] then asserts.AssertIsDisabled(struct["ruleDisabled"]) end
	if struct["maxResults"] then asserts.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTopicRulesRequest[k], "ListTopicRulesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTopicRulesRequest
-- <p>The input for the ListTopicRules operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * topic [Topic] <p>The topic.</p>
-- * nextToken [NextToken] <p>A token used to retrieve the next value.</p>
-- * ruleDisabled [IsDisabled] <p>Specifies whether the rule is disabled.</p>
-- * maxResults [MaxResults] <p>The maximum number of results to return.</p>
-- @return ListTopicRulesRequest structure as a key-value pair table
function M.ListTopicRulesRequest(args)
	assert(args, "You must provdide an argument table when creating ListTopicRulesRequest")
	local t = { 
		["topic"] = args["topic"],
		["nextToken"] = args["nextToken"],
		["ruleDisabled"] = args["ruleDisabled"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertListTopicRulesRequest(t)
	return t
end

keys.CreateThingTypeResponse = { ["thingTypeName"] = true, ["thingTypeArn"] = true, nil }

function asserts.AssertCreateThingTypeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateThingTypeResponse to be of type 'table'")
	if struct["thingTypeName"] then asserts.AssertThingTypeName(struct["thingTypeName"]) end
	if struct["thingTypeArn"] then asserts.AssertThingTypeArn(struct["thingTypeArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateThingTypeResponse[k], "CreateThingTypeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateThingTypeResponse
-- <p>The output of the CreateThingType operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * thingTypeName [ThingTypeName] <p>The name of the thing type.</p>
-- * thingTypeArn [ThingTypeArn] <p>The Amazon Resource Name (ARN) of the thing type.</p>
-- @return CreateThingTypeResponse structure as a key-value pair table
function M.CreateThingTypeResponse(args)
	assert(args, "You must provdide an argument table when creating CreateThingTypeResponse")
	local t = { 
		["thingTypeName"] = args["thingTypeName"],
		["thingTypeArn"] = args["thingTypeArn"],
	}
	asserts.AssertCreateThingTypeResponse(t)
	return t
end

keys.ListPolicyPrincipalsRequest = { ["marker"] = true, ["policyName"] = true, ["ascendingOrder"] = true, ["pageSize"] = true, nil }

function asserts.AssertListPolicyPrincipalsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPolicyPrincipalsRequest to be of type 'table'")
	assert(struct["policyName"], "Expected key policyName to exist in table")
	if struct["marker"] then asserts.AssertMarker(struct["marker"]) end
	if struct["policyName"] then asserts.AssertPolicyName(struct["policyName"]) end
	if struct["ascendingOrder"] then asserts.AssertAscendingOrder(struct["ascendingOrder"]) end
	if struct["pageSize"] then asserts.AssertPageSize(struct["pageSize"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPolicyPrincipalsRequest[k], "ListPolicyPrincipalsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPolicyPrincipalsRequest
-- <p>The input for the ListPolicyPrincipals operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * marker [Marker] <p>The marker for the next set of results.</p>
-- * policyName [PolicyName] <p>The policy name.</p>
-- * ascendingOrder [AscendingOrder] <p>Specifies the order for results. If true, the results are returned in ascending creation order.</p>
-- * pageSize [PageSize] <p>The result page size.</p>
-- Required key: policyName
-- @return ListPolicyPrincipalsRequest structure as a key-value pair table
function M.ListPolicyPrincipalsRequest(args)
	assert(args, "You must provdide an argument table when creating ListPolicyPrincipalsRequest")
	local t = { 
		["marker"] = args["marker"],
		["policyName"] = args["policyName"],
		["ascendingOrder"] = args["ascendingOrder"],
		["pageSize"] = args["pageSize"],
	}
	asserts.AssertListPolicyPrincipalsRequest(t)
	return t
end

keys.CreatePolicyVersionRequest = { ["policyName"] = true, ["policyDocument"] = true, ["setAsDefault"] = true, nil }

function asserts.AssertCreatePolicyVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePolicyVersionRequest to be of type 'table'")
	assert(struct["policyName"], "Expected key policyName to exist in table")
	assert(struct["policyDocument"], "Expected key policyDocument to exist in table")
	if struct["policyName"] then asserts.AssertPolicyName(struct["policyName"]) end
	if struct["policyDocument"] then asserts.AssertPolicyDocument(struct["policyDocument"]) end
	if struct["setAsDefault"] then asserts.AssertSetAsDefault(struct["setAsDefault"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreatePolicyVersionRequest[k], "CreatePolicyVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePolicyVersionRequest
-- <p>The input for the CreatePolicyVersion operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * policyName [PolicyName] <p>The policy name.</p>
-- * policyDocument [PolicyDocument] <p>The JSON document that describes the policy. Minimum length of 1. Maximum length of 2048, excluding whitespaces</p>
-- * setAsDefault [SetAsDefault] <p>Specifies whether the policy version is set as the default. When this parameter is true, the new policy version becomes the operative version (that is, the version that is in effect for the certificates to which the policy is attached).</p>
-- Required key: policyName
-- Required key: policyDocument
-- @return CreatePolicyVersionRequest structure as a key-value pair table
function M.CreatePolicyVersionRequest(args)
	assert(args, "You must provdide an argument table when creating CreatePolicyVersionRequest")
	local t = { 
		["policyName"] = args["policyName"],
		["policyDocument"] = args["policyDocument"],
		["setAsDefault"] = args["setAsDefault"],
	}
	asserts.AssertCreatePolicyVersionRequest(t)
	return t
end

keys.DetachThingPrincipalRequest = { ["thingName"] = true, ["principal"] = true, nil }

function asserts.AssertDetachThingPrincipalRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetachThingPrincipalRequest to be of type 'table'")
	assert(struct["thingName"], "Expected key thingName to exist in table")
	assert(struct["principal"], "Expected key principal to exist in table")
	if struct["thingName"] then asserts.AssertThingName(struct["thingName"]) end
	if struct["principal"] then asserts.AssertPrincipal(struct["principal"]) end
	for k,_ in pairs(struct) do
		assert(keys.DetachThingPrincipalRequest[k], "DetachThingPrincipalRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetachThingPrincipalRequest
-- <p>The input for the DetachThingPrincipal operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * thingName [ThingName] <p>The name of the thing.</p>
-- * principal [Principal] <p>If the principal is a certificate, this value must be ARN of the certificate. If the principal is an Amazon Cognito identity, this value must be the ID of the Amazon Cognito identity.</p>
-- Required key: thingName
-- Required key: principal
-- @return DetachThingPrincipalRequest structure as a key-value pair table
function M.DetachThingPrincipalRequest(args)
	assert(args, "You must provdide an argument table when creating DetachThingPrincipalRequest")
	local t = { 
		["thingName"] = args["thingName"],
		["principal"] = args["principal"],
	}
	asserts.AssertDetachThingPrincipalRequest(t)
	return t
end

keys.VersionConflictException = { ["message"] = true, nil }

function asserts.AssertVersionConflictException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VersionConflictException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.VersionConflictException[k], "VersionConflictException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VersionConflictException
-- <p>An exception thrown when the version of a thing passed to a command is different than the version specified with the --version parameter.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [errorMessage] <p>The message for the exception.</p>
-- @return VersionConflictException structure as a key-value pair table
function M.VersionConflictException(args)
	assert(args, "You must provdide an argument table when creating VersionConflictException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertVersionConflictException(t)
	return t
end

keys.CreatePolicyResponse = { ["policyName"] = true, ["policyDocument"] = true, ["policyVersionId"] = true, ["policyArn"] = true, nil }

function asserts.AssertCreatePolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePolicyResponse to be of type 'table'")
	if struct["policyName"] then asserts.AssertPolicyName(struct["policyName"]) end
	if struct["policyDocument"] then asserts.AssertPolicyDocument(struct["policyDocument"]) end
	if struct["policyVersionId"] then asserts.AssertPolicyVersionId(struct["policyVersionId"]) end
	if struct["policyArn"] then asserts.AssertPolicyArn(struct["policyArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreatePolicyResponse[k], "CreatePolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePolicyResponse
-- <p>The output from the CreatePolicy operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * policyName [PolicyName] <p>The policy name.</p>
-- * policyDocument [PolicyDocument] <p>The JSON document that describes the policy.</p>
-- * policyVersionId [PolicyVersionId] <p>The policy version ID.</p>
-- * policyArn [PolicyArn] <p>The policy ARN.</p>
-- @return CreatePolicyResponse structure as a key-value pair table
function M.CreatePolicyResponse(args)
	assert(args, "You must provdide an argument table when creating CreatePolicyResponse")
	local t = { 
		["policyName"] = args["policyName"],
		["policyDocument"] = args["policyDocument"],
		["policyVersionId"] = args["policyVersionId"],
		["policyArn"] = args["policyArn"],
	}
	asserts.AssertCreatePolicyResponse(t)
	return t
end

keys.CreateKeysAndCertificateRequest = { ["setAsActive"] = true, nil }

function asserts.AssertCreateKeysAndCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateKeysAndCertificateRequest to be of type 'table'")
	if struct["setAsActive"] then asserts.AssertSetAsActive(struct["setAsActive"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateKeysAndCertificateRequest[k], "CreateKeysAndCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateKeysAndCertificateRequest
-- <p>The input for the CreateKeysAndCertificate operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * setAsActive [SetAsActive] <p>Specifies whether the certificate is active.</p>
-- @return CreateKeysAndCertificateRequest structure as a key-value pair table
function M.CreateKeysAndCertificateRequest(args)
	assert(args, "You must provdide an argument table when creating CreateKeysAndCertificateRequest")
	local t = { 
		["setAsActive"] = args["setAsActive"],
	}
	asserts.AssertCreateKeysAndCertificateRequest(t)
	return t
end

keys.AttachPrincipalPolicyRequest = { ["policyName"] = true, ["principal"] = true, nil }

function asserts.AssertAttachPrincipalPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachPrincipalPolicyRequest to be of type 'table'")
	assert(struct["policyName"], "Expected key policyName to exist in table")
	assert(struct["principal"], "Expected key principal to exist in table")
	if struct["policyName"] then asserts.AssertPolicyName(struct["policyName"]) end
	if struct["principal"] then asserts.AssertPrincipal(struct["principal"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttachPrincipalPolicyRequest[k], "AttachPrincipalPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachPrincipalPolicyRequest
-- <p>The input for the AttachPrincipalPolicy operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * policyName [PolicyName] <p>The policy name.</p>
-- * principal [Principal] <p>The principal, which can be a certificate ARN (as returned from the CreateCertificate operation) or an Amazon Cognito ID.</p>
-- Required key: policyName
-- Required key: principal
-- @return AttachPrincipalPolicyRequest structure as a key-value pair table
function M.AttachPrincipalPolicyRequest(args)
	assert(args, "You must provdide an argument table when creating AttachPrincipalPolicyRequest")
	local t = { 
		["policyName"] = args["policyName"],
		["principal"] = args["principal"],
	}
	asserts.AssertAttachPrincipalPolicyRequest(t)
	return t
end

keys.DeletePolicyRequest = { ["policyName"] = true, nil }

function asserts.AssertDeletePolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePolicyRequest to be of type 'table'")
	assert(struct["policyName"], "Expected key policyName to exist in table")
	if struct["policyName"] then asserts.AssertPolicyName(struct["policyName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeletePolicyRequest[k], "DeletePolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePolicyRequest
-- <p>The input for the DeletePolicy operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * policyName [PolicyName] <p>The name of the policy to delete.</p>
-- Required key: policyName
-- @return DeletePolicyRequest structure as a key-value pair table
function M.DeletePolicyRequest(args)
	assert(args, "You must provdide an argument table when creating DeletePolicyRequest")
	local t = { 
		["policyName"] = args["policyName"],
	}
	asserts.AssertDeletePolicyRequest(t)
	return t
end

keys.UpdateThingRequest = { ["thingTypeName"] = true, ["removeThingType"] = true, ["attributePayload"] = true, ["expectedVersion"] = true, ["thingName"] = true, nil }

function asserts.AssertUpdateThingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateThingRequest to be of type 'table'")
	assert(struct["thingName"], "Expected key thingName to exist in table")
	if struct["thingTypeName"] then asserts.AssertThingTypeName(struct["thingTypeName"]) end
	if struct["removeThingType"] then asserts.AssertRemoveThingType(struct["removeThingType"]) end
	if struct["attributePayload"] then asserts.AssertAttributePayload(struct["attributePayload"]) end
	if struct["expectedVersion"] then asserts.AssertOptionalVersion(struct["expectedVersion"]) end
	if struct["thingName"] then asserts.AssertThingName(struct["thingName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateThingRequest[k], "UpdateThingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateThingRequest
-- <p>The input for the UpdateThing operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * thingTypeName [ThingTypeName] <p>The name of the thing type.</p>
-- * removeThingType [RemoveThingType] <p>Remove a thing type association. If <b>true</b>, the assocation is removed.</p>
-- * attributePayload [AttributePayload] <p>A list of thing attributes, a JSON string containing name-value pairs. For example:</p> <p> <code>{\"attributes\":{\"name1\":\"value2\"}}</code> </p> <p>This data is used to add new attributes or update existing attributes.</p>
-- * expectedVersion [OptionalVersion] <p>The expected version of the thing record in the registry. If the version of the record in the registry does not match the expected version specified in the request, the <code>UpdateThing</code> request is rejected with a <code>VersionConflictException</code>.</p>
-- * thingName [ThingName] <p>The name of the thing to update.</p>
-- Required key: thingName
-- @return UpdateThingRequest structure as a key-value pair table
function M.UpdateThingRequest(args)
	assert(args, "You must provdide an argument table when creating UpdateThingRequest")
	local t = { 
		["thingTypeName"] = args["thingTypeName"],
		["removeThingType"] = args["removeThingType"],
		["attributePayload"] = args["attributePayload"],
		["expectedVersion"] = args["expectedVersion"],
		["thingName"] = args["thingName"],
	}
	asserts.AssertUpdateThingRequest(t)
	return t
end

keys.TransferAlreadyCompletedException = { ["message"] = true, nil }

function asserts.AssertTransferAlreadyCompletedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TransferAlreadyCompletedException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TransferAlreadyCompletedException[k], "TransferAlreadyCompletedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TransferAlreadyCompletedException
-- <p>You can't revert the certificate transfer because the transfer is already complete.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [errorMessage] <p>The message for the exception.</p>
-- @return TransferAlreadyCompletedException structure as a key-value pair table
function M.TransferAlreadyCompletedException(args)
	assert(args, "You must provdide an argument table when creating TransferAlreadyCompletedException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertTransferAlreadyCompletedException(t)
	return t
end

keys.AttachThingPrincipalResponse = { nil }

function asserts.AssertAttachThingPrincipalResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachThingPrincipalResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AttachThingPrincipalResponse[k], "AttachThingPrincipalResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachThingPrincipalResponse
-- <p>The output from the AttachThingPrincipal operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AttachThingPrincipalResponse structure as a key-value pair table
function M.AttachThingPrincipalResponse(args)
	assert(args, "You must provdide an argument table when creating AttachThingPrincipalResponse")
	local t = { 
	}
	asserts.AssertAttachThingPrincipalResponse(t)
	return t
end

keys.CreateThingTypeRequest = { ["thingTypeName"] = true, ["thingTypeProperties"] = true, nil }

function asserts.AssertCreateThingTypeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateThingTypeRequest to be of type 'table'")
	assert(struct["thingTypeName"], "Expected key thingTypeName to exist in table")
	if struct["thingTypeName"] then asserts.AssertThingTypeName(struct["thingTypeName"]) end
	if struct["thingTypeProperties"] then asserts.AssertThingTypeProperties(struct["thingTypeProperties"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateThingTypeRequest[k], "CreateThingTypeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateThingTypeRequest
-- <p>The input for the CreateThingType operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * thingTypeName [ThingTypeName] <p>The name of the thing type.</p>
-- * thingTypeProperties [ThingTypeProperties] <p>The ThingTypeProperties for the thing type to create. It contains information about the new thing type including a description, and a list of searchable thing attribute names.</p>
-- Required key: thingTypeName
-- @return CreateThingTypeRequest structure as a key-value pair table
function M.CreateThingTypeRequest(args)
	assert(args, "You must provdide an argument table when creating CreateThingTypeRequest")
	local t = { 
		["thingTypeName"] = args["thingTypeName"],
		["thingTypeProperties"] = args["thingTypeProperties"],
	}
	asserts.AssertCreateThingTypeRequest(t)
	return t
end

keys.GetLoggingOptionsRequest = { nil }

function asserts.AssertGetLoggingOptionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetLoggingOptionsRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.GetLoggingOptionsRequest[k], "GetLoggingOptionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetLoggingOptionsRequest
-- <p>The input for the GetLoggingOptions operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return GetLoggingOptionsRequest structure as a key-value pair table
function M.GetLoggingOptionsRequest(args)
	assert(args, "You must provdide an argument table when creating GetLoggingOptionsRequest")
	local t = { 
	}
	asserts.AssertGetLoggingOptionsRequest(t)
	return t
end

keys.TransferConflictException = { ["message"] = true, nil }

function asserts.AssertTransferConflictException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TransferConflictException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TransferConflictException[k], "TransferConflictException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TransferConflictException
-- <p>You can't transfer the certificate because authorization policies are still attached.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [errorMessage] <p>The message for the exception.</p>
-- @return TransferConflictException structure as a key-value pair table
function M.TransferConflictException(args)
	assert(args, "You must provdide an argument table when creating TransferConflictException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertTransferConflictException(t)
	return t
end

keys.TopicRule = { ["description"] = true, ["ruleName"] = true, ["actions"] = true, ["createdAt"] = true, ["sql"] = true, ["awsIotSqlVersion"] = true, ["ruleDisabled"] = true, nil }

function asserts.AssertTopicRule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TopicRule to be of type 'table'")
	if struct["description"] then asserts.AssertDescription(struct["description"]) end
	if struct["ruleName"] then asserts.AssertRuleName(struct["ruleName"]) end
	if struct["actions"] then asserts.AssertActionList(struct["actions"]) end
	if struct["createdAt"] then asserts.AssertCreatedAtDate(struct["createdAt"]) end
	if struct["sql"] then asserts.AssertSQL(struct["sql"]) end
	if struct["awsIotSqlVersion"] then asserts.AssertAwsIotSqlVersion(struct["awsIotSqlVersion"]) end
	if struct["ruleDisabled"] then asserts.AssertIsDisabled(struct["ruleDisabled"]) end
	for k,_ in pairs(struct) do
		assert(keys.TopicRule[k], "TopicRule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TopicRule
-- <p>Describes a rule.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * description [Description] <p>The description of the rule.</p>
-- * ruleName [RuleName] <p>The name of the rule.</p>
-- * actions [ActionList] <p>The actions associated with the rule.</p>
-- * createdAt [CreatedAtDate] <p>The date and time the rule was created.</p>
-- * sql [SQL] <p>The SQL statement used to query the topic. When using a SQL query with multiple lines, be sure to escape the newline characters.</p>
-- * awsIotSqlVersion [AwsIotSqlVersion] <p>The version of the SQL rules engine to use when evaluating the rule.</p>
-- * ruleDisabled [IsDisabled] <p>Specifies whether the rule is disabled.</p>
-- @return TopicRule structure as a key-value pair table
function M.TopicRule(args)
	assert(args, "You must provdide an argument table when creating TopicRule")
	local t = { 
		["description"] = args["description"],
		["ruleName"] = args["ruleName"],
		["actions"] = args["actions"],
		["createdAt"] = args["createdAt"],
		["sql"] = args["sql"],
		["awsIotSqlVersion"] = args["awsIotSqlVersion"],
		["ruleDisabled"] = args["ruleDisabled"],
	}
	asserts.AssertTopicRule(t)
	return t
end

keys.LoggingOptionsPayload = { ["logLevel"] = true, ["roleArn"] = true, nil }

function asserts.AssertLoggingOptionsPayload(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LoggingOptionsPayload to be of type 'table'")
	assert(struct["roleArn"], "Expected key roleArn to exist in table")
	if struct["logLevel"] then asserts.AssertLogLevel(struct["logLevel"]) end
	if struct["roleArn"] then asserts.AssertAwsArn(struct["roleArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.LoggingOptionsPayload[k], "LoggingOptionsPayload contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LoggingOptionsPayload
-- <p>Describes the logging options payload.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * logLevel [LogLevel] <p>The logging level.</p>
-- * roleArn [AwsArn] <p>The ARN of the IAM role that grants access.</p>
-- Required key: roleArn
-- @return LoggingOptionsPayload structure as a key-value pair table
function M.LoggingOptionsPayload(args)
	assert(args, "You must provdide an argument table when creating LoggingOptionsPayload")
	local t = { 
		["logLevel"] = args["logLevel"],
		["roleArn"] = args["roleArn"],
	}
	asserts.AssertLoggingOptionsPayload(t)
	return t
end

keys.CreateCertificateFromCsrResponse = { ["certificateArn"] = true, ["certificateId"] = true, ["certificatePem"] = true, nil }

function asserts.AssertCreateCertificateFromCsrResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCertificateFromCsrResponse to be of type 'table'")
	if struct["certificateArn"] then asserts.AssertCertificateArn(struct["certificateArn"]) end
	if struct["certificateId"] then asserts.AssertCertificateId(struct["certificateId"]) end
	if struct["certificatePem"] then asserts.AssertCertificatePem(struct["certificatePem"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateCertificateFromCsrResponse[k], "CreateCertificateFromCsrResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCertificateFromCsrResponse
-- <p>The output from the CreateCertificateFromCsr operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * certificateArn [CertificateArn] <p>The Amazon Resource Name (ARN) of the certificate. You can use the ARN as a principal for policy operations.</p>
-- * certificateId [CertificateId] <p>The ID of the certificate. Certificate management operations only take a certificateId.</p>
-- * certificatePem [CertificatePem] <p>The certificate data, in PEM format.</p>
-- @return CreateCertificateFromCsrResponse structure as a key-value pair table
function M.CreateCertificateFromCsrResponse(args)
	assert(args, "You must provdide an argument table when creating CreateCertificateFromCsrResponse")
	local t = { 
		["certificateArn"] = args["certificateArn"],
		["certificateId"] = args["certificateId"],
		["certificatePem"] = args["certificatePem"],
	}
	asserts.AssertCreateCertificateFromCsrResponse(t)
	return t
end

keys.ResourceAlreadyExistsException = { ["resourceId"] = true, ["message"] = true, ["resourceArn"] = true, nil }

function asserts.AssertResourceAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceAlreadyExistsException to be of type 'table'")
	if struct["resourceId"] then asserts.AssertresourceId(struct["resourceId"]) end
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	if struct["resourceArn"] then asserts.AssertresourceArn(struct["resourceArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceAlreadyExistsException[k], "ResourceAlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceAlreadyExistsException
-- <p>The resource already exists.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resourceId [resourceId] <p>The ID of the resource that caused the exception.</p>
-- * message [errorMessage] <p>The message for the exception.</p>
-- * resourceArn [resourceArn] <p>The ARN of the resource that caused the exception.</p>
-- @return ResourceAlreadyExistsException structure as a key-value pair table
function M.ResourceAlreadyExistsException(args)
	assert(args, "You must provdide an argument table when creating ResourceAlreadyExistsException")
	local t = { 
		["resourceId"] = args["resourceId"],
		["message"] = args["message"],
		["resourceArn"] = args["resourceArn"],
	}
	asserts.AssertResourceAlreadyExistsException(t)
	return t
end

keys.GetPolicyVersionRequest = { ["policyName"] = true, ["policyVersionId"] = true, nil }

function asserts.AssertGetPolicyVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPolicyVersionRequest to be of type 'table'")
	assert(struct["policyName"], "Expected key policyName to exist in table")
	assert(struct["policyVersionId"], "Expected key policyVersionId to exist in table")
	if struct["policyName"] then asserts.AssertPolicyName(struct["policyName"]) end
	if struct["policyVersionId"] then asserts.AssertPolicyVersionId(struct["policyVersionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetPolicyVersionRequest[k], "GetPolicyVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPolicyVersionRequest
-- <p>The input for the GetPolicyVersion operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * policyName [PolicyName] <p>The name of the policy.</p>
-- * policyVersionId [PolicyVersionId] <p>The policy version ID.</p>
-- Required key: policyName
-- Required key: policyVersionId
-- @return GetPolicyVersionRequest structure as a key-value pair table
function M.GetPolicyVersionRequest(args)
	assert(args, "You must provdide an argument table when creating GetPolicyVersionRequest")
	local t = { 
		["policyName"] = args["policyName"],
		["policyVersionId"] = args["policyVersionId"],
	}
	asserts.AssertGetPolicyVersionRequest(t)
	return t
end

keys.TopicRulePayload = { ["awsIotSqlVersion"] = true, ["ruleDisabled"] = true, ["description"] = true, ["actions"] = true, ["sql"] = true, nil }

function asserts.AssertTopicRulePayload(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TopicRulePayload to be of type 'table'")
	assert(struct["sql"], "Expected key sql to exist in table")
	assert(struct["actions"], "Expected key actions to exist in table")
	if struct["awsIotSqlVersion"] then asserts.AssertAwsIotSqlVersion(struct["awsIotSqlVersion"]) end
	if struct["ruleDisabled"] then asserts.AssertIsDisabled(struct["ruleDisabled"]) end
	if struct["description"] then asserts.AssertDescription(struct["description"]) end
	if struct["actions"] then asserts.AssertActionList(struct["actions"]) end
	if struct["sql"] then asserts.AssertSQL(struct["sql"]) end
	for k,_ in pairs(struct) do
		assert(keys.TopicRulePayload[k], "TopicRulePayload contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TopicRulePayload
-- <p>Describes a rule.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * awsIotSqlVersion [AwsIotSqlVersion] <p>The version of the SQL rules engine to use when evaluating the rule.</p>
-- * ruleDisabled [IsDisabled] <p>Specifies whether the rule is disabled.</p>
-- * description [Description] <p>The description of the rule.</p>
-- * actions [ActionList] <p>The actions associated with the rule.</p>
-- * sql [SQL] <p>The SQL statement used to query the topic. For more information, see <a href="http://docs.aws.amazon.com/iot/latest/developerguide/iot-rules.html#aws-iot-sql-reference">AWS IoT SQL Reference</a> in the <i>AWS IoT Developer Guide</i>.</p>
-- Required key: sql
-- Required key: actions
-- @return TopicRulePayload structure as a key-value pair table
function M.TopicRulePayload(args)
	assert(args, "You must provdide an argument table when creating TopicRulePayload")
	local t = { 
		["awsIotSqlVersion"] = args["awsIotSqlVersion"],
		["ruleDisabled"] = args["ruleDisabled"],
		["description"] = args["description"],
		["actions"] = args["actions"],
		["sql"] = args["sql"],
	}
	asserts.AssertTopicRulePayload(t)
	return t
end

keys.RegisterCertificateRequest = { ["status"] = true, ["certificatePem"] = true, ["caCertificatePem"] = true, ["setAsActive"] = true, nil }

function asserts.AssertRegisterCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterCertificateRequest to be of type 'table'")
	assert(struct["certificatePem"], "Expected key certificatePem to exist in table")
	if struct["status"] then asserts.AssertCertificateStatus(struct["status"]) end
	if struct["certificatePem"] then asserts.AssertCertificatePem(struct["certificatePem"]) end
	if struct["caCertificatePem"] then asserts.AssertCertificatePem(struct["caCertificatePem"]) end
	if struct["setAsActive"] then asserts.AssertSetAsActiveFlag(struct["setAsActive"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegisterCertificateRequest[k], "RegisterCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterCertificateRequest
-- <p>The input to the RegisterCertificate operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [CertificateStatus] <p>The status of the register certificate request.</p>
-- * certificatePem [CertificatePem] <p>The certificate data, in PEM format.</p>
-- * caCertificatePem [CertificatePem] <p>The CA certificate used to sign the device certificate being registered.</p>
-- * setAsActive [SetAsActiveFlag] <p>A boolean value that specifies if the CA certificate is set to active.</p>
-- Required key: certificatePem
-- @return RegisterCertificateRequest structure as a key-value pair table
function M.RegisterCertificateRequest(args)
	assert(args, "You must provdide an argument table when creating RegisterCertificateRequest")
	local t = { 
		["status"] = args["status"],
		["certificatePem"] = args["certificatePem"],
		["caCertificatePem"] = args["caCertificatePem"],
		["setAsActive"] = args["setAsActive"],
	}
	asserts.AssertRegisterCertificateRequest(t)
	return t
end

keys.ElasticsearchAction = { ["index"] = true, ["roleArn"] = true, ["endpoint"] = true, ["type"] = true, ["id"] = true, nil }

function asserts.AssertElasticsearchAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ElasticsearchAction to be of type 'table'")
	assert(struct["roleArn"], "Expected key roleArn to exist in table")
	assert(struct["endpoint"], "Expected key endpoint to exist in table")
	assert(struct["index"], "Expected key index to exist in table")
	assert(struct["type"], "Expected key type to exist in table")
	assert(struct["id"], "Expected key id to exist in table")
	if struct["index"] then asserts.AssertElasticsearchIndex(struct["index"]) end
	if struct["roleArn"] then asserts.AssertAwsArn(struct["roleArn"]) end
	if struct["endpoint"] then asserts.AssertElasticsearchEndpoint(struct["endpoint"]) end
	if struct["type"] then asserts.AssertElasticsearchType(struct["type"]) end
	if struct["id"] then asserts.AssertElasticsearchId(struct["id"]) end
	for k,_ in pairs(struct) do
		assert(keys.ElasticsearchAction[k], "ElasticsearchAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ElasticsearchAction
-- <p>Describes an action that writes data to an Amazon Elasticsearch Service domain.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * index [ElasticsearchIndex] <p>The Elasticsearch index where you want to store your data.</p>
-- * roleArn [AwsArn] <p>The IAM role ARN that has access to Elasticsearch.</p>
-- * endpoint [ElasticsearchEndpoint] <p>The endpoint of your Elasticsearch domain.</p>
-- * type [ElasticsearchType] <p>The type of document you are storing.</p>
-- * id [ElasticsearchId] <p>The unique identifier for the document you are storing.</p>
-- Required key: roleArn
-- Required key: endpoint
-- Required key: index
-- Required key: type
-- Required key: id
-- @return ElasticsearchAction structure as a key-value pair table
function M.ElasticsearchAction(args)
	assert(args, "You must provdide an argument table when creating ElasticsearchAction")
	local t = { 
		["index"] = args["index"],
		["roleArn"] = args["roleArn"],
		["endpoint"] = args["endpoint"],
		["type"] = args["type"],
		["id"] = args["id"],
	}
	asserts.AssertElasticsearchAction(t)
	return t
end

keys.ListThingPrincipalsRequest = { ["thingName"] = true, nil }

function asserts.AssertListThingPrincipalsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListThingPrincipalsRequest to be of type 'table'")
	assert(struct["thingName"], "Expected key thingName to exist in table")
	if struct["thingName"] then asserts.AssertThingName(struct["thingName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListThingPrincipalsRequest[k], "ListThingPrincipalsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListThingPrincipalsRequest
-- <p>The input for the ListThingPrincipal operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * thingName [ThingName] <p>The name of the thing.</p>
-- Required key: thingName
-- @return ListThingPrincipalsRequest structure as a key-value pair table
function M.ListThingPrincipalsRequest(args)
	assert(args, "You must provdide an argument table when creating ListThingPrincipalsRequest")
	local t = { 
		["thingName"] = args["thingName"],
	}
	asserts.AssertListThingPrincipalsRequest(t)
	return t
end

keys.DynamoDBv2Action = { ["putItem"] = true, ["roleArn"] = true, nil }

function asserts.AssertDynamoDBv2Action(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DynamoDBv2Action to be of type 'table'")
	if struct["putItem"] then asserts.AssertPutItemInput(struct["putItem"]) end
	if struct["roleArn"] then asserts.AssertAwsArn(struct["roleArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DynamoDBv2Action[k], "DynamoDBv2Action contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DynamoDBv2Action
-- <p>Describes an action to write to a DynamoDB table.</p> <p>This DynamoDB action writes each attribute in the message payload into it's own column in the DynamoDB table.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * putItem [PutItemInput] <p>Specifies the DynamoDB table to which the message data will be written. For example:</p> <p> <code>{ "dynamoDBv2": { "roleArn": "aws:iam:12341251:my-role" "putItem": { "tableName": "my-table" } } }</code> </p> <p>Each attribute in the message payload will be written to a separate column in the DynamoDB database.</p>
-- * roleArn [AwsArn] <p>The ARN of the IAM role that grants access to the DynamoDB table.</p>
-- @return DynamoDBv2Action structure as a key-value pair table
function M.DynamoDBv2Action(args)
	assert(args, "You must provdide an argument table when creating DynamoDBv2Action")
	local t = { 
		["putItem"] = args["putItem"],
		["roleArn"] = args["roleArn"],
	}
	asserts.AssertDynamoDBv2Action(t)
	return t
end

keys.AttachThingPrincipalRequest = { ["thingName"] = true, ["principal"] = true, nil }

function asserts.AssertAttachThingPrincipalRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachThingPrincipalRequest to be of type 'table'")
	assert(struct["thingName"], "Expected key thingName to exist in table")
	assert(struct["principal"], "Expected key principal to exist in table")
	if struct["thingName"] then asserts.AssertThingName(struct["thingName"]) end
	if struct["principal"] then asserts.AssertPrincipal(struct["principal"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttachThingPrincipalRequest[k], "AttachThingPrincipalRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachThingPrincipalRequest
-- <p>The input for the AttachThingPrincipal operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * thingName [ThingName] <p>The name of the thing.</p>
-- * principal [Principal] <p>The principal, such as a certificate or other credential.</p>
-- Required key: thingName
-- Required key: principal
-- @return AttachThingPrincipalRequest structure as a key-value pair table
function M.AttachThingPrincipalRequest(args)
	assert(args, "You must provdide an argument table when creating AttachThingPrincipalRequest")
	local t = { 
		["thingName"] = args["thingName"],
		["principal"] = args["principal"],
	}
	asserts.AssertAttachThingPrincipalRequest(t)
	return t
end

keys.CACertificateDescription = { ["certificateArn"] = true, ["status"] = true, ["autoRegistrationStatus"] = true, ["certificateId"] = true, ["certificatePem"] = true, ["ownedBy"] = true, ["creationDate"] = true, nil }

function asserts.AssertCACertificateDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CACertificateDescription to be of type 'table'")
	if struct["certificateArn"] then asserts.AssertCertificateArn(struct["certificateArn"]) end
	if struct["status"] then asserts.AssertCACertificateStatus(struct["status"]) end
	if struct["autoRegistrationStatus"] then asserts.AssertAutoRegistrationStatus(struct["autoRegistrationStatus"]) end
	if struct["certificateId"] then asserts.AssertCertificateId(struct["certificateId"]) end
	if struct["certificatePem"] then asserts.AssertCertificatePem(struct["certificatePem"]) end
	if struct["ownedBy"] then asserts.AssertAwsAccountId(struct["ownedBy"]) end
	if struct["creationDate"] then asserts.AssertDateType(struct["creationDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.CACertificateDescription[k], "CACertificateDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CACertificateDescription
-- <p>Describes a CA certificate.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * certificateArn [CertificateArn] <p>The CA certificate ARN.</p>
-- * status [CACertificateStatus] <p>The status of a CA certificate.</p>
-- * autoRegistrationStatus [AutoRegistrationStatus] <p>Whether the CA certificate configured for auto registration of device certificates. Valid values are "ENABLE" and "DISABLE"</p>
-- * certificateId [CertificateId] <p>The CA certificate ID.</p>
-- * certificatePem [CertificatePem] <p>The CA certificate data, in PEM format.</p>
-- * ownedBy [AwsAccountId] <p>The owner of the CA certificate.</p>
-- * creationDate [DateType] <p>The date the CA certificate was created.</p>
-- @return CACertificateDescription structure as a key-value pair table
function M.CACertificateDescription(args)
	assert(args, "You must provdide an argument table when creating CACertificateDescription")
	local t = { 
		["certificateArn"] = args["certificateArn"],
		["status"] = args["status"],
		["autoRegistrationStatus"] = args["autoRegistrationStatus"],
		["certificateId"] = args["certificateId"],
		["certificatePem"] = args["certificatePem"],
		["ownedBy"] = args["ownedBy"],
		["creationDate"] = args["creationDate"],
	}
	asserts.AssertCACertificateDescription(t)
	return t
end

keys.ReplaceTopicRuleRequest = { ["topicRulePayload"] = true, ["ruleName"] = true, nil }

function asserts.AssertReplaceTopicRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReplaceTopicRuleRequest to be of type 'table'")
	assert(struct["ruleName"], "Expected key ruleName to exist in table")
	assert(struct["topicRulePayload"], "Expected key topicRulePayload to exist in table")
	if struct["topicRulePayload"] then asserts.AssertTopicRulePayload(struct["topicRulePayload"]) end
	if struct["ruleName"] then asserts.AssertRuleName(struct["ruleName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReplaceTopicRuleRequest[k], "ReplaceTopicRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReplaceTopicRuleRequest
-- <p>The input for the ReplaceTopicRule operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * topicRulePayload [TopicRulePayload] <p>The rule payload.</p>
-- * ruleName [RuleName] <p>The name of the rule.</p>
-- Required key: ruleName
-- Required key: topicRulePayload
-- @return ReplaceTopicRuleRequest structure as a key-value pair table
function M.ReplaceTopicRuleRequest(args)
	assert(args, "You must provdide an argument table when creating ReplaceTopicRuleRequest")
	local t = { 
		["topicRulePayload"] = args["topicRulePayload"],
		["ruleName"] = args["ruleName"],
	}
	asserts.AssertReplaceTopicRuleRequest(t)
	return t
end

keys.InvalidRequestException = { ["message"] = true, nil }

function asserts.AssertInvalidRequestException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRequestException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidRequestException[k], "InvalidRequestException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRequestException
-- <p>The request is not valid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [errorMessage] <p>The message for the exception.</p>
-- @return InvalidRequestException structure as a key-value pair table
function M.InvalidRequestException(args)
	assert(args, "You must provdide an argument table when creating InvalidRequestException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidRequestException(t)
	return t
end

keys.DeleteConflictException = { ["message"] = true, nil }

function asserts.AssertDeleteConflictException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteConflictException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteConflictException[k], "DeleteConflictException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteConflictException
-- <p>You can't delete the resource because it is attached to one or more resources.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [errorMessage] <p>The message for the exception.</p>
-- @return DeleteConflictException structure as a key-value pair table
function M.DeleteConflictException(args)
	assert(args, "You must provdide an argument table when creating DeleteConflictException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertDeleteConflictException(t)
	return t
end

keys.Certificate = { ["certificateArn"] = true, ["status"] = true, ["creationDate"] = true, ["certificateId"] = true, nil }

function asserts.AssertCertificate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Certificate to be of type 'table'")
	if struct["certificateArn"] then asserts.AssertCertificateArn(struct["certificateArn"]) end
	if struct["status"] then asserts.AssertCertificateStatus(struct["status"]) end
	if struct["creationDate"] then asserts.AssertDateType(struct["creationDate"]) end
	if struct["certificateId"] then asserts.AssertCertificateId(struct["certificateId"]) end
	for k,_ in pairs(struct) do
		assert(keys.Certificate[k], "Certificate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Certificate
-- <p>Information about a certificate.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * certificateArn [CertificateArn] <p>The ARN of the certificate.</p>
-- * status [CertificateStatus] <p>The status of the certificate.</p> <p>The status value REGISTER_INACTIVE is deprecated and should not be used.</p>
-- * creationDate [DateType] <p>The date and time the certificate was created.</p>
-- * certificateId [CertificateId] <p>The ID of the certificate.</p>
-- @return Certificate structure as a key-value pair table
function M.Certificate(args)
	assert(args, "You must provdide an argument table when creating Certificate")
	local t = { 
		["certificateArn"] = args["certificateArn"],
		["status"] = args["status"],
		["creationDate"] = args["creationDate"],
		["certificateId"] = args["certificateId"],
	}
	asserts.AssertCertificate(t)
	return t
end

keys.FirehoseAction = { ["roleArn"] = true, ["deliveryStreamName"] = true, ["separator"] = true, nil }

function asserts.AssertFirehoseAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FirehoseAction to be of type 'table'")
	assert(struct["roleArn"], "Expected key roleArn to exist in table")
	assert(struct["deliveryStreamName"], "Expected key deliveryStreamName to exist in table")
	if struct["roleArn"] then asserts.AssertAwsArn(struct["roleArn"]) end
	if struct["deliveryStreamName"] then asserts.AssertDeliveryStreamName(struct["deliveryStreamName"]) end
	if struct["separator"] then asserts.AssertFirehoseSeparator(struct["separator"]) end
	for k,_ in pairs(struct) do
		assert(keys.FirehoseAction[k], "FirehoseAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FirehoseAction
-- <p>Describes an action that writes data to an Amazon Kinesis Firehose stream.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * roleArn [AwsArn] <p>The IAM role that grants access to the Amazon Kinesis Firehost stream.</p>
-- * deliveryStreamName [DeliveryStreamName] <p>The delivery stream name.</p>
-- * separator [FirehoseSeparator] <p>A character separator that will be used to separate records written to the Firehose stream. Valid values are: '\n' (newline), '\t' (tab), '\r\n' (Windows newline), ',' (comma).</p>
-- Required key: roleArn
-- Required key: deliveryStreamName
-- @return FirehoseAction structure as a key-value pair table
function M.FirehoseAction(args)
	assert(args, "You must provdide an argument table when creating FirehoseAction")
	local t = { 
		["roleArn"] = args["roleArn"],
		["deliveryStreamName"] = args["deliveryStreamName"],
		["separator"] = args["separator"],
	}
	asserts.AssertFirehoseAction(t)
	return t
end

keys.UpdateThingResponse = { nil }

function asserts.AssertUpdateThingResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateThingResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateThingResponse[k], "UpdateThingResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateThingResponse
-- <p>The output from the UpdateThing operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateThingResponse structure as a key-value pair table
function M.UpdateThingResponse(args)
	assert(args, "You must provdide an argument table when creating UpdateThingResponse")
	local t = { 
	}
	asserts.AssertUpdateThingResponse(t)
	return t
end

keys.AttributePayload = { ["attributes"] = true, ["merge"] = true, nil }

function asserts.AssertAttributePayload(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttributePayload to be of type 'table'")
	if struct["attributes"] then asserts.AssertAttributes(struct["attributes"]) end
	if struct["merge"] then asserts.AssertFlag(struct["merge"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttributePayload[k], "AttributePayload contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttributePayload
-- <p>The attribute payload.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * attributes [Attributes] <p>A JSON string containing up to three key-value pair in JSON format. For example:</p> <p> <code>{\"attributes\":{\"string1\":\"string2\"}}</code> </p>
-- * merge [Flag] <p>Specifies whether the list of attributes provided in the <code>AttributePayload</code> is merged with the attributes stored in the registry, instead of overwriting them.</p> <p>To remove an attribute, call <code>UpdateThing</code> with an empty attribute value.</p> <note> <p>The <code>merge</code> attribute is only valid when calling <code>UpdateThing</code>.</p> </note>
-- @return AttributePayload structure as a key-value pair table
function M.AttributePayload(args)
	assert(args, "You must provdide an argument table when creating AttributePayload")
	local t = { 
		["attributes"] = args["attributes"],
		["merge"] = args["merge"],
	}
	asserts.AssertAttributePayload(t)
	return t
end

keys.AcceptCertificateTransferRequest = { ["certificateId"] = true, ["setAsActive"] = true, nil }

function asserts.AssertAcceptCertificateTransferRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AcceptCertificateTransferRequest to be of type 'table'")
	assert(struct["certificateId"], "Expected key certificateId to exist in table")
	if struct["certificateId"] then asserts.AssertCertificateId(struct["certificateId"]) end
	if struct["setAsActive"] then asserts.AssertSetAsActive(struct["setAsActive"]) end
	for k,_ in pairs(struct) do
		assert(keys.AcceptCertificateTransferRequest[k], "AcceptCertificateTransferRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AcceptCertificateTransferRequest
-- <p>The input for the AcceptCertificateTransfer operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * certificateId [CertificateId] <p>The ID of the certificate.</p>
-- * setAsActive [SetAsActive] <p>Specifies whether the certificate is active.</p>
-- Required key: certificateId
-- @return AcceptCertificateTransferRequest structure as a key-value pair table
function M.AcceptCertificateTransferRequest(args)
	assert(args, "You must provdide an argument table when creating AcceptCertificateTransferRequest")
	local t = { 
		["certificateId"] = args["certificateId"],
		["setAsActive"] = args["setAsActive"],
	}
	asserts.AssertAcceptCertificateTransferRequest(t)
	return t
end

keys.ListPoliciesResponse = { ["nextMarker"] = true, ["policies"] = true, nil }

function asserts.AssertListPoliciesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPoliciesResponse to be of type 'table'")
	if struct["nextMarker"] then asserts.AssertMarker(struct["nextMarker"]) end
	if struct["policies"] then asserts.AssertPolicies(struct["policies"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPoliciesResponse[k], "ListPoliciesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPoliciesResponse
-- <p>The output from the ListPolicies operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextMarker [Marker] <p>The marker for the next set of results, or null if there are no additional results.</p>
-- * policies [Policies] <p>The descriptions of the policies.</p>
-- @return ListPoliciesResponse structure as a key-value pair table
function M.ListPoliciesResponse(args)
	assert(args, "You must provdide an argument table when creating ListPoliciesResponse")
	local t = { 
		["nextMarker"] = args["nextMarker"],
		["policies"] = args["policies"],
	}
	asserts.AssertListPoliciesResponse(t)
	return t
end

keys.GetTopicRuleResponse = { ["ruleArn"] = true, ["rule"] = true, nil }

function asserts.AssertGetTopicRuleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTopicRuleResponse to be of type 'table'")
	if struct["ruleArn"] then asserts.AssertRuleArn(struct["ruleArn"]) end
	if struct["rule"] then asserts.AssertTopicRule(struct["rule"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetTopicRuleResponse[k], "GetTopicRuleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTopicRuleResponse
-- <p>The output from the GetTopicRule operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ruleArn [RuleArn] <p>The rule ARN.</p>
-- * rule [TopicRule] <p>The rule.</p>
-- @return GetTopicRuleResponse structure as a key-value pair table
function M.GetTopicRuleResponse(args)
	assert(args, "You must provdide an argument table when creating GetTopicRuleResponse")
	local t = { 
		["ruleArn"] = args["ruleArn"],
		["rule"] = args["rule"],
	}
	asserts.AssertGetTopicRuleResponse(t)
	return t
end

keys.DisableTopicRuleRequest = { ["ruleName"] = true, nil }

function asserts.AssertDisableTopicRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisableTopicRuleRequest to be of type 'table'")
	assert(struct["ruleName"], "Expected key ruleName to exist in table")
	if struct["ruleName"] then asserts.AssertRuleName(struct["ruleName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisableTopicRuleRequest[k], "DisableTopicRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisableTopicRuleRequest
-- <p>The input for the DisableTopicRuleRequest operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ruleName [RuleName] <p>The name of the rule to disable.</p>
-- Required key: ruleName
-- @return DisableTopicRuleRequest structure as a key-value pair table
function M.DisableTopicRuleRequest(args)
	assert(args, "You must provdide an argument table when creating DisableTopicRuleRequest")
	local t = { 
		["ruleName"] = args["ruleName"],
	}
	asserts.AssertDisableTopicRuleRequest(t)
	return t
end

keys.SqsAction = { ["queueUrl"] = true, ["roleArn"] = true, ["useBase64"] = true, nil }

function asserts.AssertSqsAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SqsAction to be of type 'table'")
	assert(struct["roleArn"], "Expected key roleArn to exist in table")
	assert(struct["queueUrl"], "Expected key queueUrl to exist in table")
	if struct["queueUrl"] then asserts.AssertQueueUrl(struct["queueUrl"]) end
	if struct["roleArn"] then asserts.AssertAwsArn(struct["roleArn"]) end
	if struct["useBase64"] then asserts.AssertUseBase64(struct["useBase64"]) end
	for k,_ in pairs(struct) do
		assert(keys.SqsAction[k], "SqsAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SqsAction
-- <p>Describes an action to publish data to an Amazon SQS queue.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * queueUrl [QueueUrl] <p>The URL of the Amazon SQS queue.</p>
-- * roleArn [AwsArn] <p>The ARN of the IAM role that grants access.</p>
-- * useBase64 [UseBase64] <p>Specifies whether to use Base64 encoding.</p>
-- Required key: roleArn
-- Required key: queueUrl
-- @return SqsAction structure as a key-value pair table
function M.SqsAction(args)
	assert(args, "You must provdide an argument table when creating SqsAction")
	local t = { 
		["queueUrl"] = args["queueUrl"],
		["roleArn"] = args["roleArn"],
		["useBase64"] = args["useBase64"],
	}
	asserts.AssertSqsAction(t)
	return t
end

keys.DeleteThingTypeResponse = { nil }

function asserts.AssertDeleteThingTypeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteThingTypeResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteThingTypeResponse[k], "DeleteThingTypeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteThingTypeResponse
-- <p>The output for the DeleteThingType operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteThingTypeResponse structure as a key-value pair table
function M.DeleteThingTypeResponse(args)
	assert(args, "You must provdide an argument table when creating DeleteThingTypeResponse")
	local t = { 
	}
	asserts.AssertDeleteThingTypeResponse(t)
	return t
end

keys.DescribeCertificateResponse = { ["certificateDescription"] = true, nil }

function asserts.AssertDescribeCertificateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCertificateResponse to be of type 'table'")
	if struct["certificateDescription"] then asserts.AssertCertificateDescription(struct["certificateDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeCertificateResponse[k], "DescribeCertificateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCertificateResponse
-- <p>The output of the DescribeCertificate operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * certificateDescription [CertificateDescription] <p>The description of the certificate.</p>
-- @return DescribeCertificateResponse structure as a key-value pair table
function M.DescribeCertificateResponse(args)
	assert(args, "You must provdide an argument table when creating DescribeCertificateResponse")
	local t = { 
		["certificateDescription"] = args["certificateDescription"],
	}
	asserts.AssertDescribeCertificateResponse(t)
	return t
end

keys.RejectCertificateTransferRequest = { ["rejectReason"] = true, ["certificateId"] = true, nil }

function asserts.AssertRejectCertificateTransferRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RejectCertificateTransferRequest to be of type 'table'")
	assert(struct["certificateId"], "Expected key certificateId to exist in table")
	if struct["rejectReason"] then asserts.AssertMessage(struct["rejectReason"]) end
	if struct["certificateId"] then asserts.AssertCertificateId(struct["certificateId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RejectCertificateTransferRequest[k], "RejectCertificateTransferRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RejectCertificateTransferRequest
-- <p>The input for the RejectCertificateTransfer operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * rejectReason [Message] <p>The reason the certificate transfer was rejected.</p>
-- * certificateId [CertificateId] <p>The ID of the certificate.</p>
-- Required key: certificateId
-- @return RejectCertificateTransferRequest structure as a key-value pair table
function M.RejectCertificateTransferRequest(args)
	assert(args, "You must provdide an argument table when creating RejectCertificateTransferRequest")
	local t = { 
		["rejectReason"] = args["rejectReason"],
		["certificateId"] = args["certificateId"],
	}
	asserts.AssertRejectCertificateTransferRequest(t)
	return t
end

keys.ListCACertificatesRequest = { ["marker"] = true, ["ascendingOrder"] = true, ["pageSize"] = true, nil }

function asserts.AssertListCACertificatesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCACertificatesRequest to be of type 'table'")
	if struct["marker"] then asserts.AssertMarker(struct["marker"]) end
	if struct["ascendingOrder"] then asserts.AssertAscendingOrder(struct["ascendingOrder"]) end
	if struct["pageSize"] then asserts.AssertPageSize(struct["pageSize"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListCACertificatesRequest[k], "ListCACertificatesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCACertificatesRequest
-- <p>Input for the ListCACertificates operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * marker [Marker] <p>The marker for the next set of results.</p>
-- * ascendingOrder [AscendingOrder] <p>Determines the order of the results.</p>
-- * pageSize [PageSize] <p>The result page size.</p>
-- @return ListCACertificatesRequest structure as a key-value pair table
function M.ListCACertificatesRequest(args)
	assert(args, "You must provdide an argument table when creating ListCACertificatesRequest")
	local t = { 
		["marker"] = args["marker"],
		["ascendingOrder"] = args["ascendingOrder"],
		["pageSize"] = args["pageSize"],
	}
	asserts.AssertListCACertificatesRequest(t)
	return t
end

keys.SetLoggingOptionsRequest = { ["loggingOptionsPayload"] = true, nil }

function asserts.AssertSetLoggingOptionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetLoggingOptionsRequest to be of type 'table'")
	assert(struct["loggingOptionsPayload"], "Expected key loggingOptionsPayload to exist in table")
	if struct["loggingOptionsPayload"] then asserts.AssertLoggingOptionsPayload(struct["loggingOptionsPayload"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetLoggingOptionsRequest[k], "SetLoggingOptionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetLoggingOptionsRequest
-- <p>The input for the SetLoggingOptions operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * loggingOptionsPayload [LoggingOptionsPayload] <p>The logging options payload.</p>
-- Required key: loggingOptionsPayload
-- @return SetLoggingOptionsRequest structure as a key-value pair table
function M.SetLoggingOptionsRequest(args)
	assert(args, "You must provdide an argument table when creating SetLoggingOptionsRequest")
	local t = { 
		["loggingOptionsPayload"] = args["loggingOptionsPayload"],
	}
	asserts.AssertSetLoggingOptionsRequest(t)
	return t
end

keys.CreateKeysAndCertificateResponse = { ["certificateArn"] = true, ["keyPair"] = true, ["certificateId"] = true, ["certificatePem"] = true, nil }

function asserts.AssertCreateKeysAndCertificateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateKeysAndCertificateResponse to be of type 'table'")
	if struct["certificateArn"] then asserts.AssertCertificateArn(struct["certificateArn"]) end
	if struct["keyPair"] then asserts.AssertKeyPair(struct["keyPair"]) end
	if struct["certificateId"] then asserts.AssertCertificateId(struct["certificateId"]) end
	if struct["certificatePem"] then asserts.AssertCertificatePem(struct["certificatePem"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateKeysAndCertificateResponse[k], "CreateKeysAndCertificateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateKeysAndCertificateResponse
-- <p>The output of the CreateKeysAndCertificate operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * certificateArn [CertificateArn] <p>The ARN of the certificate.</p>
-- * keyPair [KeyPair] <p>The generated key pair.</p>
-- * certificateId [CertificateId] <p>The ID of the certificate. AWS IoT issues a default subject name for the certificate (for example, AWS IoT Certificate).</p>
-- * certificatePem [CertificatePem] <p>The certificate data, in PEM format.</p>
-- @return CreateKeysAndCertificateResponse structure as a key-value pair table
function M.CreateKeysAndCertificateResponse(args)
	assert(args, "You must provdide an argument table when creating CreateKeysAndCertificateResponse")
	local t = { 
		["certificateArn"] = args["certificateArn"],
		["keyPair"] = args["keyPair"],
		["certificateId"] = args["certificateId"],
		["certificatePem"] = args["certificatePem"],
	}
	asserts.AssertCreateKeysAndCertificateResponse(t)
	return t
end

keys.ListCertificatesResponse = { ["certificates"] = true, ["nextMarker"] = true, nil }

function asserts.AssertListCertificatesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCertificatesResponse to be of type 'table'")
	if struct["certificates"] then asserts.AssertCertificates(struct["certificates"]) end
	if struct["nextMarker"] then asserts.AssertMarker(struct["nextMarker"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListCertificatesResponse[k], "ListCertificatesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCertificatesResponse
-- <p>The output of the ListCertificates operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * certificates [Certificates] <p>The descriptions of the certificates.</p>
-- * nextMarker [Marker] <p>The marker for the next set of results, or null if there are no additional results.</p>
-- @return ListCertificatesResponse structure as a key-value pair table
function M.ListCertificatesResponse(args)
	assert(args, "You must provdide an argument table when creating ListCertificatesResponse")
	local t = { 
		["certificates"] = args["certificates"],
		["nextMarker"] = args["nextMarker"],
	}
	asserts.AssertListCertificatesResponse(t)
	return t
end

keys.TopicRuleListItem = { ["topicPattern"] = true, ["ruleArn"] = true, ["ruleDisabled"] = true, ["createdAt"] = true, ["ruleName"] = true, nil }

function asserts.AssertTopicRuleListItem(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TopicRuleListItem to be of type 'table'")
	if struct["topicPattern"] then asserts.AssertTopicPattern(struct["topicPattern"]) end
	if struct["ruleArn"] then asserts.AssertRuleArn(struct["ruleArn"]) end
	if struct["ruleDisabled"] then asserts.AssertIsDisabled(struct["ruleDisabled"]) end
	if struct["createdAt"] then asserts.AssertCreatedAtDate(struct["createdAt"]) end
	if struct["ruleName"] then asserts.AssertRuleName(struct["ruleName"]) end
	for k,_ in pairs(struct) do
		assert(keys.TopicRuleListItem[k], "TopicRuleListItem contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TopicRuleListItem
-- <p>Describes a rule.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * topicPattern [TopicPattern] <p>The pattern for the topic names that apply.</p>
-- * ruleArn [RuleArn] <p>The rule ARN.</p>
-- * ruleDisabled [IsDisabled] <p>Specifies whether the rule is disabled.</p>
-- * createdAt [CreatedAtDate] <p>The date and time the rule was created.</p>
-- * ruleName [RuleName] <p>The name of the rule.</p>
-- @return TopicRuleListItem structure as a key-value pair table
function M.TopicRuleListItem(args)
	assert(args, "You must provdide an argument table when creating TopicRuleListItem")
	local t = { 
		["topicPattern"] = args["topicPattern"],
		["ruleArn"] = args["ruleArn"],
		["ruleDisabled"] = args["ruleDisabled"],
		["createdAt"] = args["createdAt"],
		["ruleName"] = args["ruleName"],
	}
	asserts.AssertTopicRuleListItem(t)
	return t
end

keys.DescribeThingTypeResponse = { ["thingTypeName"] = true, ["thingTypeProperties"] = true, ["thingTypeMetadata"] = true, nil }

function asserts.AssertDescribeThingTypeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeThingTypeResponse to be of type 'table'")
	if struct["thingTypeName"] then asserts.AssertThingTypeName(struct["thingTypeName"]) end
	if struct["thingTypeProperties"] then asserts.AssertThingTypeProperties(struct["thingTypeProperties"]) end
	if struct["thingTypeMetadata"] then asserts.AssertThingTypeMetadata(struct["thingTypeMetadata"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeThingTypeResponse[k], "DescribeThingTypeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeThingTypeResponse
-- <p>The output for the DescribeThingType operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * thingTypeName [ThingTypeName] <p>The name of the thing type.</p>
-- * thingTypeProperties [ThingTypeProperties] <p>The ThingTypeProperties contains information about the thing type including description, and a list of searchable thing attribute names.</p>
-- * thingTypeMetadata [ThingTypeMetadata] <p>The ThingTypeMetadata contains additional information about the thing type including: creation date and time, a value indicating whether the thing type is deprecated, and a date and time when it was deprecated.</p>
-- @return DescribeThingTypeResponse structure as a key-value pair table
function M.DescribeThingTypeResponse(args)
	assert(args, "You must provdide an argument table when creating DescribeThingTypeResponse")
	local t = { 
		["thingTypeName"] = args["thingTypeName"],
		["thingTypeProperties"] = args["thingTypeProperties"],
		["thingTypeMetadata"] = args["thingTypeMetadata"],
	}
	asserts.AssertDescribeThingTypeResponse(t)
	return t
end

keys.EnableTopicRuleRequest = { ["ruleName"] = true, nil }

function asserts.AssertEnableTopicRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnableTopicRuleRequest to be of type 'table'")
	assert(struct["ruleName"], "Expected key ruleName to exist in table")
	if struct["ruleName"] then asserts.AssertRuleName(struct["ruleName"]) end
	for k,_ in pairs(struct) do
		assert(keys.EnableTopicRuleRequest[k], "EnableTopicRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnableTopicRuleRequest
-- <p>The input for the EnableTopicRuleRequest operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ruleName [RuleName] <p>The name of the topic rule to enable.</p>
-- Required key: ruleName
-- @return EnableTopicRuleRequest structure as a key-value pair table
function M.EnableTopicRuleRequest(args)
	assert(args, "You must provdide an argument table when creating EnableTopicRuleRequest")
	local t = { 
		["ruleName"] = args["ruleName"],
	}
	asserts.AssertEnableTopicRuleRequest(t)
	return t
end

keys.ListCertificatesByCAResponse = { ["certificates"] = true, ["nextMarker"] = true, nil }

function asserts.AssertListCertificatesByCAResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCertificatesByCAResponse to be of type 'table'")
	if struct["certificates"] then asserts.AssertCertificates(struct["certificates"]) end
	if struct["nextMarker"] then asserts.AssertMarker(struct["nextMarker"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListCertificatesByCAResponse[k], "ListCertificatesByCAResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCertificatesByCAResponse
-- <p>The output of the ListCertificatesByCA operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * certificates [Certificates] <p>The device certificates signed by the specified CA certificate.</p>
-- * nextMarker [Marker] <p>The marker for the next set of results, or null if there are no additional results.</p>
-- @return ListCertificatesByCAResponse structure as a key-value pair table
function M.ListCertificatesByCAResponse(args)
	assert(args, "You must provdide an argument table when creating ListCertificatesByCAResponse")
	local t = { 
		["certificates"] = args["certificates"],
		["nextMarker"] = args["nextMarker"],
	}
	asserts.AssertListCertificatesByCAResponse(t)
	return t
end

keys.ListTopicRulesResponse = { ["rules"] = true, ["nextToken"] = true, nil }

function asserts.AssertListTopicRulesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTopicRulesResponse to be of type 'table'")
	if struct["rules"] then asserts.AssertTopicRuleList(struct["rules"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTopicRulesResponse[k], "ListTopicRulesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTopicRulesResponse
-- <p>The output from the ListTopicRules operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * rules [TopicRuleList] <p>The rules.</p>
-- * nextToken [NextToken] <p>A token used to retrieve the next value.</p>
-- @return ListTopicRulesResponse structure as a key-value pair table
function M.ListTopicRulesResponse(args)
	assert(args, "You must provdide an argument table when creating ListTopicRulesResponse")
	local t = { 
		["rules"] = args["rules"],
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertListTopicRulesResponse(t)
	return t
end

keys.RegisterCACertificateResponse = { ["certificateArn"] = true, ["certificateId"] = true, nil }

function asserts.AssertRegisterCACertificateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterCACertificateResponse to be of type 'table'")
	if struct["certificateArn"] then asserts.AssertCertificateArn(struct["certificateArn"]) end
	if struct["certificateId"] then asserts.AssertCertificateId(struct["certificateId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegisterCACertificateResponse[k], "RegisterCACertificateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterCACertificateResponse
-- <p>The output from the RegisterCACertificateResponse operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * certificateArn [CertificateArn] <p>The CA certificate ARN.</p>
-- * certificateId [CertificateId] <p>The CA certificate identifier.</p>
-- @return RegisterCACertificateResponse structure as a key-value pair table
function M.RegisterCACertificateResponse(args)
	assert(args, "You must provdide an argument table when creating RegisterCACertificateResponse")
	local t = { 
		["certificateArn"] = args["certificateArn"],
		["certificateId"] = args["certificateId"],
	}
	asserts.AssertRegisterCACertificateResponse(t)
	return t
end

keys.ListOutgoingCertificatesResponse = { ["nextMarker"] = true, ["outgoingCertificates"] = true, nil }

function asserts.AssertListOutgoingCertificatesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListOutgoingCertificatesResponse to be of type 'table'")
	if struct["nextMarker"] then asserts.AssertMarker(struct["nextMarker"]) end
	if struct["outgoingCertificates"] then asserts.AssertOutgoingCertificates(struct["outgoingCertificates"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListOutgoingCertificatesResponse[k], "ListOutgoingCertificatesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListOutgoingCertificatesResponse
-- <p>The output from the ListOutgoingCertificates operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextMarker [Marker] <p>The marker for the next set of results.</p>
-- * outgoingCertificates [OutgoingCertificates] <p>The certificates that are being transfered but not yet accepted.</p>
-- @return ListOutgoingCertificatesResponse structure as a key-value pair table
function M.ListOutgoingCertificatesResponse(args)
	assert(args, "You must provdide an argument table when creating ListOutgoingCertificatesResponse")
	local t = { 
		["nextMarker"] = args["nextMarker"],
		["outgoingCertificates"] = args["outgoingCertificates"],
	}
	asserts.AssertListOutgoingCertificatesResponse(t)
	return t
end

keys.DescribeCertificateRequest = { ["certificateId"] = true, nil }

function asserts.AssertDescribeCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCertificateRequest to be of type 'table'")
	assert(struct["certificateId"], "Expected key certificateId to exist in table")
	if struct["certificateId"] then asserts.AssertCertificateId(struct["certificateId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeCertificateRequest[k], "DescribeCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCertificateRequest
-- <p>The input for the DescribeCertificate operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * certificateId [CertificateId] <p>The ID of the certificate.</p>
-- Required key: certificateId
-- @return DescribeCertificateRequest structure as a key-value pair table
function M.DescribeCertificateRequest(args)
	assert(args, "You must provdide an argument table when creating DescribeCertificateRequest")
	local t = { 
		["certificateId"] = args["certificateId"],
	}
	asserts.AssertDescribeCertificateRequest(t)
	return t
end

keys.CreateThingResponse = { ["thingArn"] = true, ["thingName"] = true, nil }

function asserts.AssertCreateThingResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateThingResponse to be of type 'table'")
	if struct["thingArn"] then asserts.AssertThingArn(struct["thingArn"]) end
	if struct["thingName"] then asserts.AssertThingName(struct["thingName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateThingResponse[k], "CreateThingResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateThingResponse
-- <p>The output of the CreateThing operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * thingArn [ThingArn] <p>The ARN of the new thing.</p>
-- * thingName [ThingName] <p>The name of the new thing.</p>
-- @return CreateThingResponse structure as a key-value pair table
function M.CreateThingResponse(args)
	assert(args, "You must provdide an argument table when creating CreateThingResponse")
	local t = { 
		["thingArn"] = args["thingArn"],
		["thingName"] = args["thingName"],
	}
	asserts.AssertCreateThingResponse(t)
	return t
end

keys.InternalException = { ["message"] = true, nil }

function asserts.AssertInternalException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InternalException[k], "InternalException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalException
-- <p>An unexpected error has occurred.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [errorMessage] <p>The message for the exception.</p>
-- @return InternalException structure as a key-value pair table
function M.InternalException(args)
	assert(args, "You must provdide an argument table when creating InternalException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertInternalException(t)
	return t
end

keys.DeprecateThingTypeResponse = { nil }

function asserts.AssertDeprecateThingTypeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeprecateThingTypeResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeprecateThingTypeResponse[k], "DeprecateThingTypeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeprecateThingTypeResponse
-- <p>The output for the DeprecateThingType operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeprecateThingTypeResponse structure as a key-value pair table
function M.DeprecateThingTypeResponse(args)
	assert(args, "You must provdide an argument table when creating DeprecateThingTypeResponse")
	local t = { 
	}
	asserts.AssertDeprecateThingTypeResponse(t)
	return t
end

keys.InternalFailureException = { ["message"] = true, nil }

function asserts.AssertInternalFailureException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalFailureException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InternalFailureException[k], "InternalFailureException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalFailureException
-- <p>An unexpected error has occurred.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [errorMessage] <p>The message for the exception.</p>
-- @return InternalFailureException structure as a key-value pair table
function M.InternalFailureException(args)
	assert(args, "You must provdide an argument table when creating InternalFailureException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertInternalFailureException(t)
	return t
end

keys.CloudwatchMetricAction = { ["metricUnit"] = true, ["roleArn"] = true, ["metricTimestamp"] = true, ["metricNamespace"] = true, ["metricValue"] = true, ["metricName"] = true, nil }

function asserts.AssertCloudwatchMetricAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloudwatchMetricAction to be of type 'table'")
	assert(struct["roleArn"], "Expected key roleArn to exist in table")
	assert(struct["metricNamespace"], "Expected key metricNamespace to exist in table")
	assert(struct["metricName"], "Expected key metricName to exist in table")
	assert(struct["metricValue"], "Expected key metricValue to exist in table")
	assert(struct["metricUnit"], "Expected key metricUnit to exist in table")
	if struct["metricUnit"] then asserts.AssertMetricUnit(struct["metricUnit"]) end
	if struct["roleArn"] then asserts.AssertAwsArn(struct["roleArn"]) end
	if struct["metricTimestamp"] then asserts.AssertMetricTimestamp(struct["metricTimestamp"]) end
	if struct["metricNamespace"] then asserts.AssertMetricNamespace(struct["metricNamespace"]) end
	if struct["metricValue"] then asserts.AssertMetricValue(struct["metricValue"]) end
	if struct["metricName"] then asserts.AssertMetricName(struct["metricName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CloudwatchMetricAction[k], "CloudwatchMetricAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloudwatchMetricAction
-- <p>Describes an action that captures a CloudWatch metric.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * metricUnit [MetricUnit] <p>The <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/cloudwatch_concepts.html#Unit">metric unit</a> supported by CloudWatch.</p>
-- * roleArn [AwsArn] <p>The IAM role that allows access to the CloudWatch metric.</p>
-- * metricTimestamp [MetricTimestamp] <p>An optional <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/cloudwatch_concepts.html#about_timestamp">Unix timestamp</a>.</p>
-- * metricNamespace [MetricNamespace] <p>The CloudWatch metric namespace name.</p>
-- * metricValue [MetricValue] <p>The CloudWatch metric value.</p>
-- * metricName [MetricName] <p>The CloudWatch metric name.</p>
-- Required key: roleArn
-- Required key: metricNamespace
-- Required key: metricName
-- Required key: metricValue
-- Required key: metricUnit
-- @return CloudwatchMetricAction structure as a key-value pair table
function M.CloudwatchMetricAction(args)
	assert(args, "You must provdide an argument table when creating CloudwatchMetricAction")
	local t = { 
		["metricUnit"] = args["metricUnit"],
		["roleArn"] = args["roleArn"],
		["metricTimestamp"] = args["metricTimestamp"],
		["metricNamespace"] = args["metricNamespace"],
		["metricValue"] = args["metricValue"],
		["metricName"] = args["metricName"],
	}
	asserts.AssertCloudwatchMetricAction(t)
	return t
end

keys.MalformedPolicyException = { ["message"] = true, nil }

function asserts.AssertMalformedPolicyException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MalformedPolicyException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.MalformedPolicyException[k], "MalformedPolicyException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MalformedPolicyException
-- <p>The policy documentation is not valid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [errorMessage] <p>The message for the exception.</p>
-- @return MalformedPolicyException structure as a key-value pair table
function M.MalformedPolicyException(args)
	assert(args, "You must provdide an argument table when creating MalformedPolicyException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertMalformedPolicyException(t)
	return t
end

keys.DescribeThingTypeRequest = { ["thingTypeName"] = true, nil }

function asserts.AssertDescribeThingTypeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeThingTypeRequest to be of type 'table'")
	assert(struct["thingTypeName"], "Expected key thingTypeName to exist in table")
	if struct["thingTypeName"] then asserts.AssertThingTypeName(struct["thingTypeName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeThingTypeRequest[k], "DescribeThingTypeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeThingTypeRequest
-- <p>The input for the DescribeThingType operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * thingTypeName [ThingTypeName] <p>The name of the thing type.</p>
-- Required key: thingTypeName
-- @return DescribeThingTypeRequest structure as a key-value pair table
function M.DescribeThingTypeRequest(args)
	assert(args, "You must provdide an argument table when creating DescribeThingTypeRequest")
	local t = { 
		["thingTypeName"] = args["thingTypeName"],
	}
	asserts.AssertDescribeThingTypeRequest(t)
	return t
end

keys.Action = { ["dynamoDBv2"] = true, ["salesforce"] = true, ["kinesis"] = true, ["sqs"] = true, ["republish"] = true, ["dynamoDB"] = true, ["s3"] = true, ["cloudwatchAlarm"] = true, ["sns"] = true, ["elasticsearch"] = true, ["cloudwatchMetric"] = true, ["firehose"] = true, ["lambda"] = true, nil }

function asserts.AssertAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Action to be of type 'table'")
	if struct["dynamoDBv2"] then asserts.AssertDynamoDBv2Action(struct["dynamoDBv2"]) end
	if struct["salesforce"] then asserts.AssertSalesforceAction(struct["salesforce"]) end
	if struct["kinesis"] then asserts.AssertKinesisAction(struct["kinesis"]) end
	if struct["sqs"] then asserts.AssertSqsAction(struct["sqs"]) end
	if struct["republish"] then asserts.AssertRepublishAction(struct["republish"]) end
	if struct["dynamoDB"] then asserts.AssertDynamoDBAction(struct["dynamoDB"]) end
	if struct["s3"] then asserts.AssertS3Action(struct["s3"]) end
	if struct["cloudwatchAlarm"] then asserts.AssertCloudwatchAlarmAction(struct["cloudwatchAlarm"]) end
	if struct["sns"] then asserts.AssertSnsAction(struct["sns"]) end
	if struct["elasticsearch"] then asserts.AssertElasticsearchAction(struct["elasticsearch"]) end
	if struct["cloudwatchMetric"] then asserts.AssertCloudwatchMetricAction(struct["cloudwatchMetric"]) end
	if struct["firehose"] then asserts.AssertFirehoseAction(struct["firehose"]) end
	if struct["lambda"] then asserts.AssertLambdaAction(struct["lambda"]) end
	for k,_ in pairs(struct) do
		assert(keys.Action[k], "Action contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Action
-- <p>Describes the actions associated with a rule.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * dynamoDBv2 [DynamoDBv2Action] <p>Write to a DynamoDB table. This is a new version of the DynamoDB action. It allows you to write each attribute in an MQTT message payload into a separate DynamoDB column.</p>
-- * salesforce [SalesforceAction] <p>Send a message to a Salesforce IoT Cloud Input Stream.</p>
-- * kinesis [KinesisAction] <p>Write data to an Amazon Kinesis stream.</p>
-- * sqs [SqsAction] <p>Publish to an Amazon SQS queue.</p>
-- * republish [RepublishAction] <p>Publish to another MQTT topic.</p>
-- * dynamoDB [DynamoDBAction] <p>Write to a DynamoDB table.</p>
-- * s3 [S3Action] <p>Write to an Amazon S3 bucket.</p>
-- * cloudwatchAlarm [CloudwatchAlarmAction] <p>Change the state of a CloudWatch alarm.</p>
-- * sns [SnsAction] <p>Publish to an Amazon SNS topic.</p>
-- * elasticsearch [ElasticsearchAction] <p>Write data to an Amazon Elasticsearch Service domain.</p>
-- * cloudwatchMetric [CloudwatchMetricAction] <p>Capture a CloudWatch metric.</p>
-- * firehose [FirehoseAction] <p>Write to an Amazon Kinesis Firehose stream.</p>
-- * lambda [LambdaAction] <p>Invoke a Lambda function.</p>
-- @return Action structure as a key-value pair table
function M.Action(args)
	assert(args, "You must provdide an argument table when creating Action")
	local t = { 
		["dynamoDBv2"] = args["dynamoDBv2"],
		["salesforce"] = args["salesforce"],
		["kinesis"] = args["kinesis"],
		["sqs"] = args["sqs"],
		["republish"] = args["republish"],
		["dynamoDB"] = args["dynamoDB"],
		["s3"] = args["s3"],
		["cloudwatchAlarm"] = args["cloudwatchAlarm"],
		["sns"] = args["sns"],
		["elasticsearch"] = args["elasticsearch"],
		["cloudwatchMetric"] = args["cloudwatchMetric"],
		["firehose"] = args["firehose"],
		["lambda"] = args["lambda"],
	}
	asserts.AssertAction(t)
	return t
end

keys.GetLoggingOptionsResponse = { ["logLevel"] = true, ["roleArn"] = true, nil }

function asserts.AssertGetLoggingOptionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetLoggingOptionsResponse to be of type 'table'")
	if struct["logLevel"] then asserts.AssertLogLevel(struct["logLevel"]) end
	if struct["roleArn"] then asserts.AssertAwsArn(struct["roleArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetLoggingOptionsResponse[k], "GetLoggingOptionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetLoggingOptionsResponse
-- <p>The output from the GetLoggingOptions operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * logLevel [LogLevel] <p>The logging level.</p>
-- * roleArn [AwsArn] <p>The ARN of the IAM role that grants access.</p>
-- @return GetLoggingOptionsResponse structure as a key-value pair table
function M.GetLoggingOptionsResponse(args)
	assert(args, "You must provdide an argument table when creating GetLoggingOptionsResponse")
	local t = { 
		["logLevel"] = args["logLevel"],
		["roleArn"] = args["roleArn"],
	}
	asserts.AssertGetLoggingOptionsResponse(t)
	return t
end

keys.S3Action = { ["cannedAcl"] = true, ["roleArn"] = true, ["bucketName"] = true, ["key"] = true, nil }

function asserts.AssertS3Action(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3Action to be of type 'table'")
	assert(struct["roleArn"], "Expected key roleArn to exist in table")
	assert(struct["bucketName"], "Expected key bucketName to exist in table")
	assert(struct["key"], "Expected key key to exist in table")
	if struct["cannedAcl"] then asserts.AssertCannedAccessControlList(struct["cannedAcl"]) end
	if struct["roleArn"] then asserts.AssertAwsArn(struct["roleArn"]) end
	if struct["bucketName"] then asserts.AssertBucketName(struct["bucketName"]) end
	if struct["key"] then asserts.AssertKey(struct["key"]) end
	for k,_ in pairs(struct) do
		assert(keys.S3Action[k], "S3Action contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3Action
-- <p>Describes an action to write data to an Amazon S3 bucket.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * cannedAcl [CannedAccessControlList] <p>The Amazon S3 canned ACL that controls access to the object identified by the object key. For more information, see <a href="http://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl">S3 canned ACLs</a>.</p>
-- * roleArn [AwsArn] <p>The ARN of the IAM role that grants access.</p>
-- * bucketName [BucketName] <p>The Amazon S3 bucket.</p>
-- * key [Key] <p>The object key.</p>
-- Required key: roleArn
-- Required key: bucketName
-- Required key: key
-- @return S3Action structure as a key-value pair table
function M.S3Action(args)
	assert(args, "You must provdide an argument table when creating S3Action")
	local t = { 
		["cannedAcl"] = args["cannedAcl"],
		["roleArn"] = args["roleArn"],
		["bucketName"] = args["bucketName"],
		["key"] = args["key"],
	}
	asserts.AssertS3Action(t)
	return t
end

keys.DescribeCACertificateResponse = { ["certificateDescription"] = true, nil }

function asserts.AssertDescribeCACertificateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCACertificateResponse to be of type 'table'")
	if struct["certificateDescription"] then asserts.AssertCACertificateDescription(struct["certificateDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeCACertificateResponse[k], "DescribeCACertificateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCACertificateResponse
-- <p>The output from the DescribeCACertificate operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * certificateDescription [CACertificateDescription] <p>The CA certificate description.</p>
-- @return DescribeCACertificateResponse structure as a key-value pair table
function M.DescribeCACertificateResponse(args)
	assert(args, "You must provdide an argument table when creating DescribeCACertificateResponse")
	local t = { 
		["certificateDescription"] = args["certificateDescription"],
	}
	asserts.AssertDescribeCACertificateResponse(t)
	return t
end

keys.ListCACertificatesResponse = { ["certificates"] = true, ["nextMarker"] = true, nil }

function asserts.AssertListCACertificatesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCACertificatesResponse to be of type 'table'")
	if struct["certificates"] then asserts.AssertCACertificates(struct["certificates"]) end
	if struct["nextMarker"] then asserts.AssertMarker(struct["nextMarker"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListCACertificatesResponse[k], "ListCACertificatesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCACertificatesResponse
-- <p>The output from the ListCACertificates operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * certificates [CACertificates] <p>The CA certificates registered in your AWS account.</p>
-- * nextMarker [Marker] <p>The current position within the list of CA certificates.</p>
-- @return ListCACertificatesResponse structure as a key-value pair table
function M.ListCACertificatesResponse(args)
	assert(args, "You must provdide an argument table when creating ListCACertificatesResponse")
	local t = { 
		["certificates"] = args["certificates"],
		["nextMarker"] = args["nextMarker"],
	}
	asserts.AssertListCACertificatesResponse(t)
	return t
end

keys.ListPoliciesRequest = { ["marker"] = true, ["ascendingOrder"] = true, ["pageSize"] = true, nil }

function asserts.AssertListPoliciesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPoliciesRequest to be of type 'table'")
	if struct["marker"] then asserts.AssertMarker(struct["marker"]) end
	if struct["ascendingOrder"] then asserts.AssertAscendingOrder(struct["ascendingOrder"]) end
	if struct["pageSize"] then asserts.AssertPageSize(struct["pageSize"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPoliciesRequest[k], "ListPoliciesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPoliciesRequest
-- <p>The input for the ListPolicies operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * marker [Marker] <p>The marker for the next set of results.</p>
-- * ascendingOrder [AscendingOrder] <p>Specifies the order for results. If true, the results are returned in ascending creation order.</p>
-- * pageSize [PageSize] <p>The result page size.</p>
-- @return ListPoliciesRequest structure as a key-value pair table
function M.ListPoliciesRequest(args)
	assert(args, "You must provdide an argument table when creating ListPoliciesRequest")
	local t = { 
		["marker"] = args["marker"],
		["ascendingOrder"] = args["ascendingOrder"],
		["pageSize"] = args["pageSize"],
	}
	asserts.AssertListPoliciesRequest(t)
	return t
end

keys.UpdateCACertificateRequest = { ["newStatus"] = true, ["certificateId"] = true, ["newAutoRegistrationStatus"] = true, nil }

function asserts.AssertUpdateCACertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateCACertificateRequest to be of type 'table'")
	assert(struct["certificateId"], "Expected key certificateId to exist in table")
	if struct["newStatus"] then asserts.AssertCACertificateStatus(struct["newStatus"]) end
	if struct["certificateId"] then asserts.AssertCertificateId(struct["certificateId"]) end
	if struct["newAutoRegistrationStatus"] then asserts.AssertAutoRegistrationStatus(struct["newAutoRegistrationStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateCACertificateRequest[k], "UpdateCACertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateCACertificateRequest
-- <p>The input to the UpdateCACertificate operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * newStatus [CACertificateStatus] <p>The updated status of the CA certificate.</p> <p> <b>Note:</b> The status value REGISTER_INACTIVE is deprecated and should not be used.</p>
-- * certificateId [CertificateId] <p>The CA certificate identifier.</p>
-- * newAutoRegistrationStatus [AutoRegistrationStatus] <p>The new value for the auto registration status. Valid values are: "ENABLE" or "DISABLE".</p>
-- Required key: certificateId
-- @return UpdateCACertificateRequest structure as a key-value pair table
function M.UpdateCACertificateRequest(args)
	assert(args, "You must provdide an argument table when creating UpdateCACertificateRequest")
	local t = { 
		["newStatus"] = args["newStatus"],
		["certificateId"] = args["certificateId"],
		["newAutoRegistrationStatus"] = args["newAutoRegistrationStatus"],
	}
	asserts.AssertUpdateCACertificateRequest(t)
	return t
end

keys.ListThingsResponse = { ["things"] = true, ["nextToken"] = true, nil }

function asserts.AssertListThingsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListThingsResponse to be of type 'table'")
	if struct["things"] then asserts.AssertThingAttributeList(struct["things"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListThingsResponse[k], "ListThingsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListThingsResponse
-- <p>The output from the ListThings operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * things [ThingAttributeList] <p>The things.</p>
-- * nextToken [NextToken] <p>The token for the next set of results, or <b>null</b> if there are no additional results.</p>
-- @return ListThingsResponse structure as a key-value pair table
function M.ListThingsResponse(args)
	assert(args, "You must provdide an argument table when creating ListThingsResponse")
	local t = { 
		["things"] = args["things"],
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertListThingsResponse(t)
	return t
end

keys.DescribeEndpointRequest = { nil }

function asserts.AssertDescribeEndpointRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEndpointRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DescribeEndpointRequest[k], "DescribeEndpointRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEndpointRequest
-- <p>The input for the DescribeEndpoint operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DescribeEndpointRequest structure as a key-value pair table
function M.DescribeEndpointRequest(args)
	assert(args, "You must provdide an argument table when creating DescribeEndpointRequest")
	local t = { 
	}
	asserts.AssertDescribeEndpointRequest(t)
	return t
end

keys.DeleteTopicRuleRequest = { ["ruleName"] = true, nil }

function asserts.AssertDeleteTopicRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTopicRuleRequest to be of type 'table'")
	assert(struct["ruleName"], "Expected key ruleName to exist in table")
	if struct["ruleName"] then asserts.AssertRuleName(struct["ruleName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteTopicRuleRequest[k], "DeleteTopicRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTopicRuleRequest
-- <p>The input for the DeleteTopicRule operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ruleName [RuleName] <p>The name of the rule.</p>
-- Required key: ruleName
-- @return DeleteTopicRuleRequest structure as a key-value pair table
function M.DeleteTopicRuleRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteTopicRuleRequest")
	local t = { 
		["ruleName"] = args["ruleName"],
	}
	asserts.AssertDeleteTopicRuleRequest(t)
	return t
end

keys.SqlParseException = { ["message"] = true, nil }

function asserts.AssertSqlParseException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SqlParseException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.SqlParseException[k], "SqlParseException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SqlParseException
-- <p>The Rule-SQL expression can't be parsed correctly.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [errorMessage] <p>The message for the exception.</p>
-- @return SqlParseException structure as a key-value pair table
function M.SqlParseException(args)
	assert(args, "You must provdide an argument table when creating SqlParseException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertSqlParseException(t)
	return t
end

keys.ResourceNotFoundException = { ["message"] = true, nil }

function asserts.AssertResourceNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceNotFoundException[k], "ResourceNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundException
-- <p>The specified resource does not exist.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [errorMessage] <p>The message for the exception.</p>
-- @return ResourceNotFoundException structure as a key-value pair table
function M.ResourceNotFoundException(args)
	assert(args, "You must provdide an argument table when creating ResourceNotFoundException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertResourceNotFoundException(t)
	return t
end

keys.CreatePolicyRequest = { ["policyName"] = true, ["policyDocument"] = true, nil }

function asserts.AssertCreatePolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePolicyRequest to be of type 'table'")
	assert(struct["policyName"], "Expected key policyName to exist in table")
	assert(struct["policyDocument"], "Expected key policyDocument to exist in table")
	if struct["policyName"] then asserts.AssertPolicyName(struct["policyName"]) end
	if struct["policyDocument"] then asserts.AssertPolicyDocument(struct["policyDocument"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreatePolicyRequest[k], "CreatePolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePolicyRequest
-- <p>The input for the CreatePolicy operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * policyName [PolicyName] <p>The policy name.</p>
-- * policyDocument [PolicyDocument] <p>The JSON document that describes the policy. <b>policyDocument</b> must have a minimum length of 1, with a maximum length of 2048, excluding whitespace.</p>
-- Required key: policyName
-- Required key: policyDocument
-- @return CreatePolicyRequest structure as a key-value pair table
function M.CreatePolicyRequest(args)
	assert(args, "You must provdide an argument table when creating CreatePolicyRequest")
	local t = { 
		["policyName"] = args["policyName"],
		["policyDocument"] = args["policyDocument"],
	}
	asserts.AssertCreatePolicyRequest(t)
	return t
end

keys.ListThingsRequest = { ["thingTypeName"] = true, ["nextToken"] = true, ["attributeName"] = true, ["attributeValue"] = true, ["maxResults"] = true, nil }

function asserts.AssertListThingsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListThingsRequest to be of type 'table'")
	if struct["thingTypeName"] then asserts.AssertThingTypeName(struct["thingTypeName"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["attributeName"] then asserts.AssertAttributeName(struct["attributeName"]) end
	if struct["attributeValue"] then asserts.AssertAttributeValue(struct["attributeValue"]) end
	if struct["maxResults"] then asserts.AssertRegistryMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListThingsRequest[k], "ListThingsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListThingsRequest
-- <p>The input for the ListThings operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * thingTypeName [ThingTypeName] <p>The name of the thing type used to search for things.</p>
-- * nextToken [NextToken] <p>The token for the next set of results, or <b>null</b> if there are no additional results.</p>
-- * attributeName [AttributeName] <p>The attribute name used to search for things.</p>
-- * attributeValue [AttributeValue] <p>The attribute value used to search for things.</p>
-- * maxResults [RegistryMaxResults] <p>The maximum number of results to return in this operation.</p>
-- @return ListThingsRequest structure as a key-value pair table
function M.ListThingsRequest(args)
	assert(args, "You must provdide an argument table when creating ListThingsRequest")
	local t = { 
		["thingTypeName"] = args["thingTypeName"],
		["nextToken"] = args["nextToken"],
		["attributeName"] = args["attributeName"],
		["attributeValue"] = args["attributeValue"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertListThingsRequest(t)
	return t
end

keys.DeletePolicyVersionRequest = { ["policyName"] = true, ["policyVersionId"] = true, nil }

function asserts.AssertDeletePolicyVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePolicyVersionRequest to be of type 'table'")
	assert(struct["policyName"], "Expected key policyName to exist in table")
	assert(struct["policyVersionId"], "Expected key policyVersionId to exist in table")
	if struct["policyName"] then asserts.AssertPolicyName(struct["policyName"]) end
	if struct["policyVersionId"] then asserts.AssertPolicyVersionId(struct["policyVersionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeletePolicyVersionRequest[k], "DeletePolicyVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePolicyVersionRequest
-- <p>The input for the DeletePolicyVersion operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * policyName [PolicyName] <p>The name of the policy.</p>
-- * policyVersionId [PolicyVersionId] <p>The policy version ID.</p>
-- Required key: policyName
-- Required key: policyVersionId
-- @return DeletePolicyVersionRequest structure as a key-value pair table
function M.DeletePolicyVersionRequest(args)
	assert(args, "You must provdide an argument table when creating DeletePolicyVersionRequest")
	local t = { 
		["policyName"] = args["policyName"],
		["policyVersionId"] = args["policyVersionId"],
	}
	asserts.AssertDeletePolicyVersionRequest(t)
	return t
end

keys.ThrottlingException = { ["message"] = true, nil }

function asserts.AssertThrottlingException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ThrottlingException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ThrottlingException[k], "ThrottlingException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ThrottlingException
-- <p>The rate exceeds the limit.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [errorMessage] <p>The message for the exception.</p>
-- @return ThrottlingException structure as a key-value pair table
function M.ThrottlingException(args)
	assert(args, "You must provdide an argument table when creating ThrottlingException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertThrottlingException(t)
	return t
end

keys.ListPrincipalPoliciesRequest = { ["marker"] = true, ["ascendingOrder"] = true, ["pageSize"] = true, ["principal"] = true, nil }

function asserts.AssertListPrincipalPoliciesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPrincipalPoliciesRequest to be of type 'table'")
	assert(struct["principal"], "Expected key principal to exist in table")
	if struct["marker"] then asserts.AssertMarker(struct["marker"]) end
	if struct["ascendingOrder"] then asserts.AssertAscendingOrder(struct["ascendingOrder"]) end
	if struct["pageSize"] then asserts.AssertPageSize(struct["pageSize"]) end
	if struct["principal"] then asserts.AssertPrincipal(struct["principal"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPrincipalPoliciesRequest[k], "ListPrincipalPoliciesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPrincipalPoliciesRequest
-- <p>The input for the ListPrincipalPolicies operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * marker [Marker] <p>The marker for the next set of results.</p>
-- * ascendingOrder [AscendingOrder] <p>Specifies the order for results. If true, results are returned in ascending creation order.</p>
-- * pageSize [PageSize] <p>The result page size.</p>
-- * principal [Principal] <p>The principal.</p>
-- Required key: principal
-- @return ListPrincipalPoliciesRequest structure as a key-value pair table
function M.ListPrincipalPoliciesRequest(args)
	assert(args, "You must provdide an argument table when creating ListPrincipalPoliciesRequest")
	local t = { 
		["marker"] = args["marker"],
		["ascendingOrder"] = args["ascendingOrder"],
		["pageSize"] = args["pageSize"],
		["principal"] = args["principal"],
	}
	asserts.AssertListPrincipalPoliciesRequest(t)
	return t
end

keys.ThingTypeProperties = { ["searchableAttributes"] = true, ["thingTypeDescription"] = true, nil }

function asserts.AssertThingTypeProperties(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ThingTypeProperties to be of type 'table'")
	if struct["searchableAttributes"] then asserts.AssertSearchableAttributes(struct["searchableAttributes"]) end
	if struct["thingTypeDescription"] then asserts.AssertThingTypeDescription(struct["thingTypeDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.ThingTypeProperties[k], "ThingTypeProperties contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ThingTypeProperties
-- <p>The ThingTypeProperties contains information about the thing type including: a thing type description, and a list of searchable thing attribute names.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * searchableAttributes [SearchableAttributes] <p>A list of searchable thing attribute names.</p>
-- * thingTypeDescription [ThingTypeDescription] <p>The description of the thing type.</p>
-- @return ThingTypeProperties structure as a key-value pair table
function M.ThingTypeProperties(args)
	assert(args, "You must provdide an argument table when creating ThingTypeProperties")
	local t = { 
		["searchableAttributes"] = args["searchableAttributes"],
		["thingTypeDescription"] = args["thingTypeDescription"],
	}
	asserts.AssertThingTypeProperties(t)
	return t
end

keys.DeleteCertificateRequest = { ["certificateId"] = true, nil }

function asserts.AssertDeleteCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteCertificateRequest to be of type 'table'")
	assert(struct["certificateId"], "Expected key certificateId to exist in table")
	if struct["certificateId"] then asserts.AssertCertificateId(struct["certificateId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteCertificateRequest[k], "DeleteCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteCertificateRequest
-- <p>The input for the DeleteCertificate operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * certificateId [CertificateId] <p>The ID of the certificate.</p>
-- Required key: certificateId
-- @return DeleteCertificateRequest structure as a key-value pair table
function M.DeleteCertificateRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteCertificateRequest")
	local t = { 
		["certificateId"] = args["certificateId"],
	}
	asserts.AssertDeleteCertificateRequest(t)
	return t
end

keys.GetPolicyVersionResponse = { ["policyName"] = true, ["policyDocument"] = true, ["policyVersionId"] = true, ["policyArn"] = true, ["isDefaultVersion"] = true, nil }

function asserts.AssertGetPolicyVersionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPolicyVersionResponse to be of type 'table'")
	if struct["policyName"] then asserts.AssertPolicyName(struct["policyName"]) end
	if struct["policyDocument"] then asserts.AssertPolicyDocument(struct["policyDocument"]) end
	if struct["policyVersionId"] then asserts.AssertPolicyVersionId(struct["policyVersionId"]) end
	if struct["policyArn"] then asserts.AssertPolicyArn(struct["policyArn"]) end
	if struct["isDefaultVersion"] then asserts.AssertIsDefaultVersion(struct["isDefaultVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetPolicyVersionResponse[k], "GetPolicyVersionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPolicyVersionResponse
-- <p>The output from the GetPolicyVersion operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * policyName [PolicyName] <p>The policy name.</p>
-- * policyDocument [PolicyDocument] <p>The JSON document that describes the policy.</p>
-- * policyVersionId [PolicyVersionId] <p>The policy version ID.</p>
-- * policyArn [PolicyArn] <p>The policy ARN.</p>
-- * isDefaultVersion [IsDefaultVersion] <p>Specifies whether the policy version is the default.</p>
-- @return GetPolicyVersionResponse structure as a key-value pair table
function M.GetPolicyVersionResponse(args)
	assert(args, "You must provdide an argument table when creating GetPolicyVersionResponse")
	local t = { 
		["policyName"] = args["policyName"],
		["policyDocument"] = args["policyDocument"],
		["policyVersionId"] = args["policyVersionId"],
		["policyArn"] = args["policyArn"],
		["isDefaultVersion"] = args["isDefaultVersion"],
	}
	asserts.AssertGetPolicyVersionResponse(t)
	return t
end

keys.CACertificate = { ["certificateArn"] = true, ["status"] = true, ["creationDate"] = true, ["certificateId"] = true, nil }

function asserts.AssertCACertificate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CACertificate to be of type 'table'")
	if struct["certificateArn"] then asserts.AssertCertificateArn(struct["certificateArn"]) end
	if struct["status"] then asserts.AssertCACertificateStatus(struct["status"]) end
	if struct["creationDate"] then asserts.AssertDateType(struct["creationDate"]) end
	if struct["certificateId"] then asserts.AssertCertificateId(struct["certificateId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CACertificate[k], "CACertificate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CACertificate
-- <p>A CA certificate.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * certificateArn [CertificateArn] <p>The ARN of the CA certificate.</p>
-- * status [CACertificateStatus] <p>The status of the CA certificate.</p> <p>The status value REGISTER_INACTIVE is deprecated and should not be used.</p>
-- * creationDate [DateType] <p>The date the CA certificate was created.</p>
-- * certificateId [CertificateId] <p>The ID of the CA certificate.</p>
-- @return CACertificate structure as a key-value pair table
function M.CACertificate(args)
	assert(args, "You must provdide an argument table when creating CACertificate")
	local t = { 
		["certificateArn"] = args["certificateArn"],
		["status"] = args["status"],
		["creationDate"] = args["creationDate"],
		["certificateId"] = args["certificateId"],
	}
	asserts.AssertCACertificate(t)
	return t
end

keys.ThingTypeDefinition = { ["thingTypeName"] = true, ["thingTypeProperties"] = true, ["thingTypeMetadata"] = true, nil }

function asserts.AssertThingTypeDefinition(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ThingTypeDefinition to be of type 'table'")
	if struct["thingTypeName"] then asserts.AssertThingTypeName(struct["thingTypeName"]) end
	if struct["thingTypeProperties"] then asserts.AssertThingTypeProperties(struct["thingTypeProperties"]) end
	if struct["thingTypeMetadata"] then asserts.AssertThingTypeMetadata(struct["thingTypeMetadata"]) end
	for k,_ in pairs(struct) do
		assert(keys.ThingTypeDefinition[k], "ThingTypeDefinition contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ThingTypeDefinition
-- <p>The definition of the thing type, including thing type name and description.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * thingTypeName [ThingTypeName] <p>The name of the thing type.</p>
-- * thingTypeProperties [ThingTypeProperties] <p>The ThingTypeProperties for the thing type.</p>
-- * thingTypeMetadata [ThingTypeMetadata] <p>The ThingTypeMetadata contains additional information about the thing type including: creation date and time, a value indicating whether the thing type is deprecated, and a date and time when it was deprecated.</p>
-- @return ThingTypeDefinition structure as a key-value pair table
function M.ThingTypeDefinition(args)
	assert(args, "You must provdide an argument table when creating ThingTypeDefinition")
	local t = { 
		["thingTypeName"] = args["thingTypeName"],
		["thingTypeProperties"] = args["thingTypeProperties"],
		["thingTypeMetadata"] = args["thingTypeMetadata"],
	}
	asserts.AssertThingTypeDefinition(t)
	return t
end

keys.ListThingTypesRequest = { ["thingTypeName"] = true, ["nextToken"] = true, ["maxResults"] = true, nil }

function asserts.AssertListThingTypesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListThingTypesRequest to be of type 'table'")
	if struct["thingTypeName"] then asserts.AssertThingTypeName(struct["thingTypeName"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertRegistryMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListThingTypesRequest[k], "ListThingTypesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListThingTypesRequest
-- <p>The input for the ListThingTypes operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * thingTypeName [ThingTypeName] <p>The name of the thing type.</p>
-- * nextToken [NextToken] <p>The token for the next set of results, or <b>null</b> if there are no additional results.</p>
-- * maxResults [RegistryMaxResults] <p>The maximum number of results to return in this operation.</p>
-- @return ListThingTypesRequest structure as a key-value pair table
function M.ListThingTypesRequest(args)
	assert(args, "You must provdide an argument table when creating ListThingTypesRequest")
	local t = { 
		["thingTypeName"] = args["thingTypeName"],
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertListThingTypesRequest(t)
	return t
end

keys.RepublishAction = { ["topic"] = true, ["roleArn"] = true, nil }

function asserts.AssertRepublishAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RepublishAction to be of type 'table'")
	assert(struct["roleArn"], "Expected key roleArn to exist in table")
	assert(struct["topic"], "Expected key topic to exist in table")
	if struct["topic"] then asserts.AssertTopicPattern(struct["topic"]) end
	if struct["roleArn"] then asserts.AssertAwsArn(struct["roleArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.RepublishAction[k], "RepublishAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RepublishAction
-- <p>Describes an action to republish to another topic.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * topic [TopicPattern] <p>The name of the MQTT topic.</p>
-- * roleArn [AwsArn] <p>The ARN of the IAM role that grants access.</p>
-- Required key: roleArn
-- Required key: topic
-- @return RepublishAction structure as a key-value pair table
function M.RepublishAction(args)
	assert(args, "You must provdide an argument table when creating RepublishAction")
	local t = { 
		["topic"] = args["topic"],
		["roleArn"] = args["roleArn"],
	}
	asserts.AssertRepublishAction(t)
	return t
end

keys.OutgoingCertificate = { ["certificateArn"] = true, ["certificateId"] = true, ["transferDate"] = true, ["transferredTo"] = true, ["transferMessage"] = true, ["creationDate"] = true, nil }

function asserts.AssertOutgoingCertificate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OutgoingCertificate to be of type 'table'")
	if struct["certificateArn"] then asserts.AssertCertificateArn(struct["certificateArn"]) end
	if struct["certificateId"] then asserts.AssertCertificateId(struct["certificateId"]) end
	if struct["transferDate"] then asserts.AssertDateType(struct["transferDate"]) end
	if struct["transferredTo"] then asserts.AssertAwsAccountId(struct["transferredTo"]) end
	if struct["transferMessage"] then asserts.AssertMessage(struct["transferMessage"]) end
	if struct["creationDate"] then asserts.AssertDateType(struct["creationDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.OutgoingCertificate[k], "OutgoingCertificate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OutgoingCertificate
-- <p>A certificate that has been transfered but not yet accepted.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * certificateArn [CertificateArn] <p>The certificate ARN.</p>
-- * certificateId [CertificateId] <p>The certificate ID.</p>
-- * transferDate [DateType] <p>The date the transfer was initiated.</p>
-- * transferredTo [AwsAccountId] <p>The AWS account to which the transfer was made.</p>
-- * transferMessage [Message] <p>The transfer message.</p>
-- * creationDate [DateType] <p>The certificate creation date.</p>
-- @return OutgoingCertificate structure as a key-value pair table
function M.OutgoingCertificate(args)
	assert(args, "You must provdide an argument table when creating OutgoingCertificate")
	local t = { 
		["certificateArn"] = args["certificateArn"],
		["certificateId"] = args["certificateId"],
		["transferDate"] = args["transferDate"],
		["transferredTo"] = args["transferredTo"],
		["transferMessage"] = args["transferMessage"],
		["creationDate"] = args["creationDate"],
	}
	asserts.AssertOutgoingCertificate(t)
	return t
end

keys.CloudwatchAlarmAction = { ["stateReason"] = true, ["roleArn"] = true, ["alarmName"] = true, ["stateValue"] = true, nil }

function asserts.AssertCloudwatchAlarmAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloudwatchAlarmAction to be of type 'table'")
	assert(struct["roleArn"], "Expected key roleArn to exist in table")
	assert(struct["alarmName"], "Expected key alarmName to exist in table")
	assert(struct["stateReason"], "Expected key stateReason to exist in table")
	assert(struct["stateValue"], "Expected key stateValue to exist in table")
	if struct["stateReason"] then asserts.AssertStateReason(struct["stateReason"]) end
	if struct["roleArn"] then asserts.AssertAwsArn(struct["roleArn"]) end
	if struct["alarmName"] then asserts.AssertAlarmName(struct["alarmName"]) end
	if struct["stateValue"] then asserts.AssertStateValue(struct["stateValue"]) end
	for k,_ in pairs(struct) do
		assert(keys.CloudwatchAlarmAction[k], "CloudwatchAlarmAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloudwatchAlarmAction
-- <p>Describes an action that updates a CloudWatch alarm.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * stateReason [StateReason] <p>The reason for the alarm change.</p>
-- * roleArn [AwsArn] <p>The IAM role that allows access to the CloudWatch alarm.</p>
-- * alarmName [AlarmName] <p>The CloudWatch alarm name.</p>
-- * stateValue [StateValue] <p>The value of the alarm state. Acceptable values are: OK, ALARM, INSUFFICIENT_DATA.</p>
-- Required key: roleArn
-- Required key: alarmName
-- Required key: stateReason
-- Required key: stateValue
-- @return CloudwatchAlarmAction structure as a key-value pair table
function M.CloudwatchAlarmAction(args)
	assert(args, "You must provdide an argument table when creating CloudwatchAlarmAction")
	local t = { 
		["stateReason"] = args["stateReason"],
		["roleArn"] = args["roleArn"],
		["alarmName"] = args["alarmName"],
		["stateValue"] = args["stateValue"],
	}
	asserts.AssertCloudwatchAlarmAction(t)
	return t
end

keys.ListPolicyVersionsResponse = { ["policyVersions"] = true, nil }

function asserts.AssertListPolicyVersionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPolicyVersionsResponse to be of type 'table'")
	if struct["policyVersions"] then asserts.AssertPolicyVersions(struct["policyVersions"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPolicyVersionsResponse[k], "ListPolicyVersionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPolicyVersionsResponse
-- <p>The output from the ListPolicyVersions operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * policyVersions [PolicyVersions] <p>The policy versions.</p>
-- @return ListPolicyVersionsResponse structure as a key-value pair table
function M.ListPolicyVersionsResponse(args)
	assert(args, "You must provdide an argument table when creating ListPolicyVersionsResponse")
	local t = { 
		["policyVersions"] = args["policyVersions"],
	}
	asserts.AssertListPolicyVersionsResponse(t)
	return t
end

keys.Policy = { ["policyName"] = true, ["policyArn"] = true, nil }

function asserts.AssertPolicy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Policy to be of type 'table'")
	if struct["policyName"] then asserts.AssertPolicyName(struct["policyName"]) end
	if struct["policyArn"] then asserts.AssertPolicyArn(struct["policyArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.Policy[k], "Policy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Policy
-- <p>Describes an AWS IoT policy.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * policyName [PolicyName] <p>The policy name.</p>
-- * policyArn [PolicyArn] <p>The policy ARN.</p>
-- @return Policy structure as a key-value pair table
function M.Policy(args)
	assert(args, "You must provdide an argument table when creating Policy")
	local t = { 
		["policyName"] = args["policyName"],
		["policyArn"] = args["policyArn"],
	}
	asserts.AssertPolicy(t)
	return t
end

keys.GetPolicyRequest = { ["policyName"] = true, nil }

function asserts.AssertGetPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPolicyRequest to be of type 'table'")
	assert(struct["policyName"], "Expected key policyName to exist in table")
	if struct["policyName"] then asserts.AssertPolicyName(struct["policyName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetPolicyRequest[k], "GetPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPolicyRequest
-- <p>The input for the GetPolicy operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * policyName [PolicyName] <p>The name of the policy.</p>
-- Required key: policyName
-- @return GetPolicyRequest structure as a key-value pair table
function M.GetPolicyRequest(args)
	assert(args, "You must provdide an argument table when creating GetPolicyRequest")
	local t = { 
		["policyName"] = args["policyName"],
	}
	asserts.AssertGetPolicyRequest(t)
	return t
end

keys.DeleteRegistrationCodeResponse = { nil }

function asserts.AssertDeleteRegistrationCodeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRegistrationCodeResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteRegistrationCodeResponse[k], "DeleteRegistrationCodeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRegistrationCodeResponse
-- <p>The output for the DeleteRegistrationCode operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteRegistrationCodeResponse structure as a key-value pair table
function M.DeleteRegistrationCodeResponse(args)
	assert(args, "You must provdide an argument table when creating DeleteRegistrationCodeResponse")
	local t = { 
	}
	asserts.AssertDeleteRegistrationCodeResponse(t)
	return t
end

keys.DescribeThingResponse = { ["thingTypeName"] = true, ["attributes"] = true, ["version"] = true, ["thingName"] = true, ["defaultClientId"] = true, nil }

function asserts.AssertDescribeThingResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeThingResponse to be of type 'table'")
	if struct["thingTypeName"] then asserts.AssertThingTypeName(struct["thingTypeName"]) end
	if struct["attributes"] then asserts.AssertAttributes(struct["attributes"]) end
	if struct["version"] then asserts.AssertVersion(struct["version"]) end
	if struct["thingName"] then asserts.AssertThingName(struct["thingName"]) end
	if struct["defaultClientId"] then asserts.AssertClientId(struct["defaultClientId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeThingResponse[k], "DescribeThingResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeThingResponse
-- <p>The output from the DescribeThing operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * thingTypeName [ThingTypeName] <p>The thing type name.</p>
-- * attributes [Attributes] <p>The thing attributes.</p>
-- * version [Version] <p>The current version of the thing record in the registry.</p> <note> <p>To avoid unintentional changes to the information in the registry, you can pass the version information in the <code>expectedVersion</code> parameter of the <code>UpdateThing</code> and <code>DeleteThing</code> calls.</p> </note>
-- * thingName [ThingName] <p>The name of the thing.</p>
-- * defaultClientId [ClientId] <p>The default client ID.</p>
-- @return DescribeThingResponse structure as a key-value pair table
function M.DescribeThingResponse(args)
	assert(args, "You must provdide an argument table when creating DescribeThingResponse")
	local t = { 
		["thingTypeName"] = args["thingTypeName"],
		["attributes"] = args["attributes"],
		["version"] = args["version"],
		["thingName"] = args["thingName"],
		["defaultClientId"] = args["defaultClientId"],
	}
	asserts.AssertDescribeThingResponse(t)
	return t
end

keys.DeprecateThingTypeRequest = { ["thingTypeName"] = true, ["undoDeprecate"] = true, nil }

function asserts.AssertDeprecateThingTypeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeprecateThingTypeRequest to be of type 'table'")
	assert(struct["thingTypeName"], "Expected key thingTypeName to exist in table")
	if struct["thingTypeName"] then asserts.AssertThingTypeName(struct["thingTypeName"]) end
	if struct["undoDeprecate"] then asserts.AssertUndoDeprecate(struct["undoDeprecate"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeprecateThingTypeRequest[k], "DeprecateThingTypeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeprecateThingTypeRequest
-- <p>The input for the DeprecateThingType operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * thingTypeName [ThingTypeName] <p>The name of the thing type to deprecate.</p>
-- * undoDeprecate [UndoDeprecate] <p>Whether to undeprecate a deprecated thing type. If <b>true</b>, the thing type will not be deprecated anymore and you can associate it with things.</p>
-- Required key: thingTypeName
-- @return DeprecateThingTypeRequest structure as a key-value pair table
function M.DeprecateThingTypeRequest(args)
	assert(args, "You must provdide an argument table when creating DeprecateThingTypeRequest")
	local t = { 
		["thingTypeName"] = args["thingTypeName"],
		["undoDeprecate"] = args["undoDeprecate"],
	}
	asserts.AssertDeprecateThingTypeRequest(t)
	return t
end

keys.GetPolicyResponse = { ["policyName"] = true, ["policyDocument"] = true, ["defaultVersionId"] = true, ["policyArn"] = true, nil }

function asserts.AssertGetPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPolicyResponse to be of type 'table'")
	if struct["policyName"] then asserts.AssertPolicyName(struct["policyName"]) end
	if struct["policyDocument"] then asserts.AssertPolicyDocument(struct["policyDocument"]) end
	if struct["defaultVersionId"] then asserts.AssertPolicyVersionId(struct["defaultVersionId"]) end
	if struct["policyArn"] then asserts.AssertPolicyArn(struct["policyArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetPolicyResponse[k], "GetPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPolicyResponse
-- <p>The output from the GetPolicy operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * policyName [PolicyName] <p>The policy name.</p>
-- * policyDocument [PolicyDocument] <p>The JSON document that describes the policy.</p>
-- * defaultVersionId [PolicyVersionId] <p>The default policy version ID.</p>
-- * policyArn [PolicyArn] <p>The policy ARN.</p>
-- @return GetPolicyResponse structure as a key-value pair table
function M.GetPolicyResponse(args)
	assert(args, "You must provdide an argument table when creating GetPolicyResponse")
	local t = { 
		["policyName"] = args["policyName"],
		["policyDocument"] = args["policyDocument"],
		["defaultVersionId"] = args["defaultVersionId"],
		["policyArn"] = args["policyArn"],
	}
	asserts.AssertGetPolicyResponse(t)
	return t
end

keys.SetDefaultPolicyVersionRequest = { ["policyName"] = true, ["policyVersionId"] = true, nil }

function asserts.AssertSetDefaultPolicyVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetDefaultPolicyVersionRequest to be of type 'table'")
	assert(struct["policyName"], "Expected key policyName to exist in table")
	assert(struct["policyVersionId"], "Expected key policyVersionId to exist in table")
	if struct["policyName"] then asserts.AssertPolicyName(struct["policyName"]) end
	if struct["policyVersionId"] then asserts.AssertPolicyVersionId(struct["policyVersionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetDefaultPolicyVersionRequest[k], "SetDefaultPolicyVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetDefaultPolicyVersionRequest
-- <p>The input for the SetDefaultPolicyVersion operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * policyName [PolicyName] <p>The policy name.</p>
-- * policyVersionId [PolicyVersionId] <p>The policy version ID.</p>
-- Required key: policyName
-- Required key: policyVersionId
-- @return SetDefaultPolicyVersionRequest structure as a key-value pair table
function M.SetDefaultPolicyVersionRequest(args)
	assert(args, "You must provdide an argument table when creating SetDefaultPolicyVersionRequest")
	local t = { 
		["policyName"] = args["policyName"],
		["policyVersionId"] = args["policyVersionId"],
	}
	asserts.AssertSetDefaultPolicyVersionRequest(t)
	return t
end

keys.ListPrincipalThingsRequest = { ["nextToken"] = true, ["maxResults"] = true, ["principal"] = true, nil }

function asserts.AssertListPrincipalThingsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPrincipalThingsRequest to be of type 'table'")
	assert(struct["principal"], "Expected key principal to exist in table")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertRegistryMaxResults(struct["maxResults"]) end
	if struct["principal"] then asserts.AssertPrincipal(struct["principal"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPrincipalThingsRequest[k], "ListPrincipalThingsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPrincipalThingsRequest
-- <p>The input for the ListPrincipalThings operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>The token for the next set of results, or <b>null</b> if there are no additional results.</p>
-- * maxResults [RegistryMaxResults] <p>The maximum number of results to return in this operation.</p>
-- * principal [Principal] <p>The principal.</p>
-- Required key: principal
-- @return ListPrincipalThingsRequest structure as a key-value pair table
function M.ListPrincipalThingsRequest(args)
	assert(args, "You must provdide an argument table when creating ListPrincipalThingsRequest")
	local t = { 
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
		["principal"] = args["principal"],
	}
	asserts.AssertListPrincipalThingsRequest(t)
	return t
end

keys.KinesisAction = { ["roleArn"] = true, ["streamName"] = true, ["partitionKey"] = true, nil }

function asserts.AssertKinesisAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KinesisAction to be of type 'table'")
	assert(struct["roleArn"], "Expected key roleArn to exist in table")
	assert(struct["streamName"], "Expected key streamName to exist in table")
	if struct["roleArn"] then asserts.AssertAwsArn(struct["roleArn"]) end
	if struct["streamName"] then asserts.AssertStreamName(struct["streamName"]) end
	if struct["partitionKey"] then asserts.AssertPartitionKey(struct["partitionKey"]) end
	for k,_ in pairs(struct) do
		assert(keys.KinesisAction[k], "KinesisAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KinesisAction
-- <p>Describes an action to write data to an Amazon Kinesis stream.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * roleArn [AwsArn] <p>The ARN of the IAM role that grants access to the Amazon Kinesis stream.</p>
-- * streamName [StreamName] <p>The name of the Amazon Kinesis stream.</p>
-- * partitionKey [PartitionKey] <p>The partition key.</p>
-- Required key: roleArn
-- Required key: streamName
-- @return KinesisAction structure as a key-value pair table
function M.KinesisAction(args)
	assert(args, "You must provdide an argument table when creating KinesisAction")
	local t = { 
		["roleArn"] = args["roleArn"],
		["streamName"] = args["streamName"],
		["partitionKey"] = args["partitionKey"],
	}
	asserts.AssertKinesisAction(t)
	return t
end

keys.ListCertificatesByCARequest = { ["marker"] = true, ["caCertificateId"] = true, ["ascendingOrder"] = true, ["pageSize"] = true, nil }

function asserts.AssertListCertificatesByCARequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCertificatesByCARequest to be of type 'table'")
	assert(struct["caCertificateId"], "Expected key caCertificateId to exist in table")
	if struct["marker"] then asserts.AssertMarker(struct["marker"]) end
	if struct["caCertificateId"] then asserts.AssertCertificateId(struct["caCertificateId"]) end
	if struct["ascendingOrder"] then asserts.AssertAscendingOrder(struct["ascendingOrder"]) end
	if struct["pageSize"] then asserts.AssertPageSize(struct["pageSize"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListCertificatesByCARequest[k], "ListCertificatesByCARequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCertificatesByCARequest
-- <p>The input to the ListCertificatesByCA operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * marker [Marker] <p>The marker for the next set of results.</p>
-- * caCertificateId [CertificateId] <p>The ID of the CA certificate. This operation will list all registered device certificate that were signed by this CA certificate.</p>
-- * ascendingOrder [AscendingOrder] <p>Specifies the order for results. If True, the results are returned in ascending order, based on the creation date.</p>
-- * pageSize [PageSize] <p>The result page size.</p>
-- Required key: caCertificateId
-- @return ListCertificatesByCARequest structure as a key-value pair table
function M.ListCertificatesByCARequest(args)
	assert(args, "You must provdide an argument table when creating ListCertificatesByCARequest")
	local t = { 
		["marker"] = args["marker"],
		["caCertificateId"] = args["caCertificateId"],
		["ascendingOrder"] = args["ascendingOrder"],
		["pageSize"] = args["pageSize"],
	}
	asserts.AssertListCertificatesByCARequest(t)
	return t
end

keys.RegistrationCodeValidationException = { ["message"] = true, nil }

function asserts.AssertRegistrationCodeValidationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegistrationCodeValidationException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegistrationCodeValidationException[k], "RegistrationCodeValidationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegistrationCodeValidationException
-- <p>The registration code is invalid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [errorMessage] <p>Additional information about the exception.</p>
-- @return RegistrationCodeValidationException structure as a key-value pair table
function M.RegistrationCodeValidationException(args)
	assert(args, "You must provdide an argument table when creating RegistrationCodeValidationException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertRegistrationCodeValidationException(t)
	return t
end

keys.CreateCertificateFromCsrRequest = { ["certificateSigningRequest"] = true, ["setAsActive"] = true, nil }

function asserts.AssertCreateCertificateFromCsrRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCertificateFromCsrRequest to be of type 'table'")
	assert(struct["certificateSigningRequest"], "Expected key certificateSigningRequest to exist in table")
	if struct["certificateSigningRequest"] then asserts.AssertCertificateSigningRequest(struct["certificateSigningRequest"]) end
	if struct["setAsActive"] then asserts.AssertSetAsActive(struct["setAsActive"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateCertificateFromCsrRequest[k], "CreateCertificateFromCsrRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCertificateFromCsrRequest
-- <p>The input for the CreateCertificateFromCsr operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * certificateSigningRequest [CertificateSigningRequest] <p>The certificate signing request (CSR).</p>
-- * setAsActive [SetAsActive] <p>Specifies whether the certificate is active.</p>
-- Required key: certificateSigningRequest
-- @return CreateCertificateFromCsrRequest structure as a key-value pair table
function M.CreateCertificateFromCsrRequest(args)
	assert(args, "You must provdide an argument table when creating CreateCertificateFromCsrRequest")
	local t = { 
		["certificateSigningRequest"] = args["certificateSigningRequest"],
		["setAsActive"] = args["setAsActive"],
	}
	asserts.AssertCreateCertificateFromCsrRequest(t)
	return t
end

keys.KeyPair = { ["PublicKey"] = true, ["PrivateKey"] = true, nil }

function asserts.AssertKeyPair(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KeyPair to be of type 'table'")
	if struct["PublicKey"] then asserts.AssertPublicKey(struct["PublicKey"]) end
	if struct["PrivateKey"] then asserts.AssertPrivateKey(struct["PrivateKey"]) end
	for k,_ in pairs(struct) do
		assert(keys.KeyPair[k], "KeyPair contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KeyPair
-- <p>Describes a key pair.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PublicKey [PublicKey] <p>The public key.</p>
-- * PrivateKey [PrivateKey] <p>The private key.</p>
-- @return KeyPair structure as a key-value pair table
function M.KeyPair(args)
	assert(args, "You must provdide an argument table when creating KeyPair")
	local t = { 
		["PublicKey"] = args["PublicKey"],
		["PrivateKey"] = args["PrivateKey"],
	}
	asserts.AssertKeyPair(t)
	return t
end

keys.CancelCertificateTransferRequest = { ["certificateId"] = true, nil }

function asserts.AssertCancelCertificateTransferRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelCertificateTransferRequest to be of type 'table'")
	assert(struct["certificateId"], "Expected key certificateId to exist in table")
	if struct["certificateId"] then asserts.AssertCertificateId(struct["certificateId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CancelCertificateTransferRequest[k], "CancelCertificateTransferRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelCertificateTransferRequest
-- <p>The input for the CancelCertificateTransfer operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * certificateId [CertificateId] <p>The ID of the certificate.</p>
-- Required key: certificateId
-- @return CancelCertificateTransferRequest structure as a key-value pair table
function M.CancelCertificateTransferRequest(args)
	assert(args, "You must provdide an argument table when creating CancelCertificateTransferRequest")
	local t = { 
		["certificateId"] = args["certificateId"],
	}
	asserts.AssertCancelCertificateTransferRequest(t)
	return t
end

keys.DetachPrincipalPolicyRequest = { ["policyName"] = true, ["principal"] = true, nil }

function asserts.AssertDetachPrincipalPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetachPrincipalPolicyRequest to be of type 'table'")
	assert(struct["policyName"], "Expected key policyName to exist in table")
	assert(struct["principal"], "Expected key principal to exist in table")
	if struct["policyName"] then asserts.AssertPolicyName(struct["policyName"]) end
	if struct["principal"] then asserts.AssertPrincipal(struct["principal"]) end
	for k,_ in pairs(struct) do
		assert(keys.DetachPrincipalPolicyRequest[k], "DetachPrincipalPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetachPrincipalPolicyRequest
-- <p>The input for the DetachPrincipalPolicy operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * policyName [PolicyName] <p>The name of the policy to detach.</p>
-- * principal [Principal] <p>The principal.</p> <p>If the principal is a certificate, specify the certificate ARN. If the principal is an Amazon Cognito identity, specify the identity ID.</p>
-- Required key: policyName
-- Required key: principal
-- @return DetachPrincipalPolicyRequest structure as a key-value pair table
function M.DetachPrincipalPolicyRequest(args)
	assert(args, "You must provdide an argument table when creating DetachPrincipalPolicyRequest")
	local t = { 
		["policyName"] = args["policyName"],
		["principal"] = args["principal"],
	}
	asserts.AssertDetachPrincipalPolicyRequest(t)
	return t
end

keys.LambdaAction = { ["functionArn"] = true, nil }

function asserts.AssertLambdaAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LambdaAction to be of type 'table'")
	assert(struct["functionArn"], "Expected key functionArn to exist in table")
	if struct["functionArn"] then asserts.AssertFunctionArn(struct["functionArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.LambdaAction[k], "LambdaAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LambdaAction
-- <p>Describes an action to invoke a Lambda function.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * functionArn [FunctionArn] <p>The ARN of the Lambda function.</p>
-- Required key: functionArn
-- @return LambdaAction structure as a key-value pair table
function M.LambdaAction(args)
	assert(args, "You must provdide an argument table when creating LambdaAction")
	local t = { 
		["functionArn"] = args["functionArn"],
	}
	asserts.AssertLambdaAction(t)
	return t
end

keys.DescribeCACertificateRequest = { ["certificateId"] = true, nil }

function asserts.AssertDescribeCACertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCACertificateRequest to be of type 'table'")
	assert(struct["certificateId"], "Expected key certificateId to exist in table")
	if struct["certificateId"] then asserts.AssertCertificateId(struct["certificateId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeCACertificateRequest[k], "DescribeCACertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCACertificateRequest
-- <p>The input for the DescribeCACertificate operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * certificateId [CertificateId] <p>The CA certificate identifier.</p>
-- Required key: certificateId
-- @return DescribeCACertificateRequest structure as a key-value pair table
function M.DescribeCACertificateRequest(args)
	assert(args, "You must provdide an argument table when creating DescribeCACertificateRequest")
	local t = { 
		["certificateId"] = args["certificateId"],
	}
	asserts.AssertDescribeCACertificateRequest(t)
	return t
end

keys.CreateTopicRuleRequest = { ["topicRulePayload"] = true, ["ruleName"] = true, nil }

function asserts.AssertCreateTopicRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTopicRuleRequest to be of type 'table'")
	assert(struct["ruleName"], "Expected key ruleName to exist in table")
	assert(struct["topicRulePayload"], "Expected key topicRulePayload to exist in table")
	if struct["topicRulePayload"] then asserts.AssertTopicRulePayload(struct["topicRulePayload"]) end
	if struct["ruleName"] then asserts.AssertRuleName(struct["ruleName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateTopicRuleRequest[k], "CreateTopicRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTopicRuleRequest
-- <p>The input for the CreateTopicRule operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * topicRulePayload [TopicRulePayload] <p>The rule payload.</p>
-- * ruleName [RuleName] <p>The name of the rule.</p>
-- Required key: ruleName
-- Required key: topicRulePayload
-- @return CreateTopicRuleRequest structure as a key-value pair table
function M.CreateTopicRuleRequest(args)
	assert(args, "You must provdide an argument table when creating CreateTopicRuleRequest")
	local t = { 
		["topicRulePayload"] = args["topicRulePayload"],
		["ruleName"] = args["ruleName"],
	}
	asserts.AssertCreateTopicRuleRequest(t)
	return t
end

keys.PutItemInput = { ["tableName"] = true, nil }

function asserts.AssertPutItemInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutItemInput to be of type 'table'")
	assert(struct["tableName"], "Expected key tableName to exist in table")
	if struct["tableName"] then asserts.AssertTableName(struct["tableName"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutItemInput[k], "PutItemInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutItemInput
-- <p>The input for the DynamoActionVS action that specifies the DynamoDB table to which the message data will be written.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * tableName [TableName] <p>The table where the message data will be written</p>
-- Required key: tableName
-- @return PutItemInput structure as a key-value pair table
function M.PutItemInput(args)
	assert(args, "You must provdide an argument table when creating PutItemInput")
	local t = { 
		["tableName"] = args["tableName"],
	}
	asserts.AssertPutItemInput(t)
	return t
end

keys.TransferCertificateRequest = { ["transferMessage"] = true, ["certificateId"] = true, ["targetAwsAccount"] = true, nil }

function asserts.AssertTransferCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TransferCertificateRequest to be of type 'table'")
	assert(struct["certificateId"], "Expected key certificateId to exist in table")
	assert(struct["targetAwsAccount"], "Expected key targetAwsAccount to exist in table")
	if struct["transferMessage"] then asserts.AssertMessage(struct["transferMessage"]) end
	if struct["certificateId"] then asserts.AssertCertificateId(struct["certificateId"]) end
	if struct["targetAwsAccount"] then asserts.AssertAwsAccountId(struct["targetAwsAccount"]) end
	for k,_ in pairs(struct) do
		assert(keys.TransferCertificateRequest[k], "TransferCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TransferCertificateRequest
-- <p>The input for the TransferCertificate operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * transferMessage [Message] <p>The transfer message.</p>
-- * certificateId [CertificateId] <p>The ID of the certificate.</p>
-- * targetAwsAccount [AwsAccountId] <p>The AWS account.</p>
-- Required key: certificateId
-- Required key: targetAwsAccount
-- @return TransferCertificateRequest structure as a key-value pair table
function M.TransferCertificateRequest(args)
	assert(args, "You must provdide an argument table when creating TransferCertificateRequest")
	local t = { 
		["transferMessage"] = args["transferMessage"],
		["certificateId"] = args["certificateId"],
		["targetAwsAccount"] = args["targetAwsAccount"],
	}
	asserts.AssertTransferCertificateRequest(t)
	return t
end

keys.DeleteThingTypeRequest = { ["thingTypeName"] = true, nil }

function asserts.AssertDeleteThingTypeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteThingTypeRequest to be of type 'table'")
	assert(struct["thingTypeName"], "Expected key thingTypeName to exist in table")
	if struct["thingTypeName"] then asserts.AssertThingTypeName(struct["thingTypeName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteThingTypeRequest[k], "DeleteThingTypeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteThingTypeRequest
-- <p>The input for the DeleteThingType operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * thingTypeName [ThingTypeName] <p>The name of the thing type.</p>
-- Required key: thingTypeName
-- @return DeleteThingTypeRequest structure as a key-value pair table
function M.DeleteThingTypeRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteThingTypeRequest")
	local t = { 
		["thingTypeName"] = args["thingTypeName"],
	}
	asserts.AssertDeleteThingTypeRequest(t)
	return t
end

keys.CertificateDescription = { ["certificateArn"] = true, ["status"] = true, ["previousOwnedBy"] = true, ["certificateId"] = true, ["lastModifiedDate"] = true, ["certificatePem"] = true, ["transferData"] = true, ["ownedBy"] = true, ["caCertificateId"] = true, ["creationDate"] = true, nil }

function asserts.AssertCertificateDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CertificateDescription to be of type 'table'")
	if struct["certificateArn"] then asserts.AssertCertificateArn(struct["certificateArn"]) end
	if struct["status"] then asserts.AssertCertificateStatus(struct["status"]) end
	if struct["previousOwnedBy"] then asserts.AssertAwsAccountId(struct["previousOwnedBy"]) end
	if struct["certificateId"] then asserts.AssertCertificateId(struct["certificateId"]) end
	if struct["lastModifiedDate"] then asserts.AssertDateType(struct["lastModifiedDate"]) end
	if struct["certificatePem"] then asserts.AssertCertificatePem(struct["certificatePem"]) end
	if struct["transferData"] then asserts.AssertTransferData(struct["transferData"]) end
	if struct["ownedBy"] then asserts.AssertAwsAccountId(struct["ownedBy"]) end
	if struct["caCertificateId"] then asserts.AssertCertificateId(struct["caCertificateId"]) end
	if struct["creationDate"] then asserts.AssertDateType(struct["creationDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.CertificateDescription[k], "CertificateDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CertificateDescription
-- <p>Describes a certificate.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * certificateArn [CertificateArn] <p>The ARN of the certificate.</p>
-- * status [CertificateStatus] <p>The status of the certificate.</p>
-- * previousOwnedBy [AwsAccountId] <p>The ID of the AWS account of the previous owner of the certificate.</p>
-- * certificateId [CertificateId] <p>The ID of the certificate.</p>
-- * lastModifiedDate [DateType] <p>The date and time the certificate was last modified.</p>
-- * certificatePem [CertificatePem] <p>The certificate data, in PEM format.</p>
-- * transferData [TransferData] <p>The transfer data.</p>
-- * ownedBy [AwsAccountId] <p>The ID of the AWS account that owns the certificate.</p>
-- * caCertificateId [CertificateId] <p>The certificate ID of the CA certificate used to sign this certificate.</p>
-- * creationDate [DateType] <p>The date and time the certificate was created.</p>
-- @return CertificateDescription structure as a key-value pair table
function M.CertificateDescription(args)
	assert(args, "You must provdide an argument table when creating CertificateDescription")
	local t = { 
		["certificateArn"] = args["certificateArn"],
		["status"] = args["status"],
		["previousOwnedBy"] = args["previousOwnedBy"],
		["certificateId"] = args["certificateId"],
		["lastModifiedDate"] = args["lastModifiedDate"],
		["certificatePem"] = args["certificatePem"],
		["transferData"] = args["transferData"],
		["ownedBy"] = args["ownedBy"],
		["caCertificateId"] = args["caCertificateId"],
		["creationDate"] = args["creationDate"],
	}
	asserts.AssertCertificateDescription(t)
	return t
end

function asserts.AssertAutoRegistrationStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected AutoRegistrationStatus to be of type 'string'")
end

--  
function M.AutoRegistrationStatus(str)
	asserts.AssertAutoRegistrationStatus(str)
	return str
end

function asserts.AssertStateValue(str)
	assert(str)
	assert(type(str) == "string", "Expected StateValue to be of type 'string'")
end

--  
function M.StateValue(str)
	asserts.AssertStateValue(str)
	return str
end

function asserts.AssertSalesforceToken(str)
	assert(str)
	assert(type(str) == "string", "Expected SalesforceToken to be of type 'string'")
	assert(#str >= 40, "Expected string to be min 40 characters")
end

--  
function M.SalesforceToken(str)
	asserts.AssertSalesforceToken(str)
	return str
end

function asserts.AssertPolicyVersionId(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyVersionId to be of type 'string'")
end

--  
function M.PolicyVersionId(str)
	asserts.AssertPolicyVersionId(str)
	return str
end

function asserts.AssertCertificateSigningRequest(str)
	assert(str)
	assert(type(str) == "string", "Expected CertificateSigningRequest to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.CertificateSigningRequest(str)
	asserts.AssertCertificateSigningRequest(str)
	return str
end

function asserts.AssertEndpointAddress(str)
	assert(str)
	assert(type(str) == "string", "Expected EndpointAddress to be of type 'string'")
end

--  
function M.EndpointAddress(str)
	asserts.AssertEndpointAddress(str)
	return str
end

function asserts.AsserterrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected errorMessage to be of type 'string'")
end

--  
function M.errorMessage(str)
	asserts.AsserterrorMessage(str)
	return str
end

function asserts.AssertHashKeyValue(str)
	assert(str)
	assert(type(str) == "string", "Expected HashKeyValue to be of type 'string'")
end

--  
function M.HashKeyValue(str)
	asserts.AssertHashKeyValue(str)
	return str
end

function asserts.AssertCertificateId(str)
	assert(str)
	assert(type(str) == "string", "Expected CertificateId to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 64, "Expected string to be min 64 characters")
end

--  
function M.CertificateId(str)
	asserts.AssertCertificateId(str)
	return str
end

function asserts.AssertCertificatePem(str)
	assert(str)
	assert(type(str) == "string", "Expected CertificatePem to be of type 'string'")
	assert(#str <= 65536, "Expected string to be max 65536 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.CertificatePem(str)
	asserts.AssertCertificatePem(str)
	return str
end

function asserts.AssertAttributeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeValue to be of type 'string'")
	assert(#str <= 800, "Expected string to be max 800 characters")
end

-- An attribute value for an Thing. An empty or null value in Update means that existing value for that attribute should be deleted. Empty and null values in create are ignored.
function M.AttributeValue(str)
	asserts.AssertAttributeValue(str)
	return str
end

function asserts.AssertMessageFormat(str)
	assert(str)
	assert(type(str) == "string", "Expected MessageFormat to be of type 'string'")
end

--  
function M.MessageFormat(str)
	asserts.AssertMessageFormat(str)
	return str
end

function asserts.AssertTopic(str)
	assert(str)
	assert(type(str) == "string", "Expected Topic to be of type 'string'")
end

--  
function M.Topic(str)
	asserts.AssertTopic(str)
	return str
end

function asserts.AssertPartitionKey(str)
	assert(str)
	assert(type(str) == "string", "Expected PartitionKey to be of type 'string'")
end

--  
function M.PartitionKey(str)
	asserts.AssertPartitionKey(str)
	return str
end

function asserts.AssertSQL(str)
	assert(str)
	assert(type(str) == "string", "Expected SQL to be of type 'string'")
end

--  
function M.SQL(str)
	asserts.AssertSQL(str)
	return str
end

function asserts.AssertDynamoKeyType(str)
	assert(str)
	assert(type(str) == "string", "Expected DynamoKeyType to be of type 'string'")
end

--  
function M.DynamoKeyType(str)
	asserts.AssertDynamoKeyType(str)
	return str
end

function asserts.AssertPolicyDocument(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyDocument to be of type 'string'")
end

--  
function M.PolicyDocument(str)
	asserts.AssertPolicyDocument(str)
	return str
end

function asserts.AssertAttributeName(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
end

--  
function M.AttributeName(str)
	asserts.AssertAttributeName(str)
	return str
end

function asserts.AssertElasticsearchId(str)
	assert(str)
	assert(type(str) == "string", "Expected ElasticsearchId to be of type 'string'")
end

--  
function M.ElasticsearchId(str)
	asserts.AssertElasticsearchId(str)
	return str
end

function asserts.AssertPolicyName(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PolicyName(str)
	asserts.AssertPolicyName(str)
	return str
end

function asserts.AssertDeliveryStreamName(str)
	assert(str)
	assert(type(str) == "string", "Expected DeliveryStreamName to be of type 'string'")
end

--  
function M.DeliveryStreamName(str)
	asserts.AssertDeliveryStreamName(str)
	return str
end

function asserts.AssertHashKeyField(str)
	assert(str)
	assert(type(str) == "string", "Expected HashKeyField to be of type 'string'")
end

--  
function M.HashKeyField(str)
	asserts.AssertHashKeyField(str)
	return str
end

function asserts.AssertThingArn(str)
	assert(str)
	assert(type(str) == "string", "Expected ThingArn to be of type 'string'")
end

--  
function M.ThingArn(str)
	asserts.AssertThingArn(str)
	return str
end

function asserts.AssertTableName(str)
	assert(str)
	assert(type(str) == "string", "Expected TableName to be of type 'string'")
end

--  
function M.TableName(str)
	asserts.AssertTableName(str)
	return str
end

function asserts.AssertMetricTimestamp(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricTimestamp to be of type 'string'")
end

--  
function M.MetricTimestamp(str)
	asserts.AssertMetricTimestamp(str)
	return str
end

function asserts.AssertKey(str)
	assert(str)
	assert(type(str) == "string", "Expected Key to be of type 'string'")
end

--  
function M.Key(str)
	asserts.AssertKey(str)
	return str
end

function asserts.AssertAwsIotSqlVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected AwsIotSqlVersion to be of type 'string'")
end

--  
function M.AwsIotSqlVersion(str)
	asserts.AssertAwsIotSqlVersion(str)
	return str
end

function asserts.AssertBucketName(str)
	assert(str)
	assert(type(str) == "string", "Expected BucketName to be of type 'string'")
end

--  
function M.BucketName(str)
	asserts.AssertBucketName(str)
	return str
end

function asserts.AssertRangeKeyField(str)
	assert(str)
	assert(type(str) == "string", "Expected RangeKeyField to be of type 'string'")
end

--  
function M.RangeKeyField(str)
	asserts.AssertRangeKeyField(str)
	return str
end

function asserts.AssertCertificateArn(str)
	assert(str)
	assert(type(str) == "string", "Expected CertificateArn to be of type 'string'")
end

--  
function M.CertificateArn(str)
	asserts.AssertCertificateArn(str)
	return str
end

function asserts.AssertTopicPattern(str)
	assert(str)
	assert(type(str) == "string", "Expected TopicPattern to be of type 'string'")
end

--  
function M.TopicPattern(str)
	asserts.AssertTopicPattern(str)
	return str
end

function asserts.AssertThingTypeName(str)
	assert(str)
	assert(type(str) == "string", "Expected ThingTypeName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ThingTypeName(str)
	asserts.AssertThingTypeName(str)
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

function asserts.AssertMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected Message to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
end

--  
function M.Message(str)
	asserts.AssertMessage(str)
	return str
end

function asserts.AssertElasticsearchEndpoint(str)
	assert(str)
	assert(type(str) == "string", "Expected ElasticsearchEndpoint to be of type 'string'")
end

--  
function M.ElasticsearchEndpoint(str)
	asserts.AssertElasticsearchEndpoint(str)
	return str
end

function asserts.AssertMetricValue(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricValue to be of type 'string'")
end

--  
function M.MetricValue(str)
	asserts.AssertMetricValue(str)
	return str
end

function asserts.AssertresourceId(str)
	assert(str)
	assert(type(str) == "string", "Expected resourceId to be of type 'string'")
end

--  
function M.resourceId(str)
	asserts.AssertresourceId(str)
	return str
end

function asserts.AssertLogLevel(str)
	assert(str)
	assert(type(str) == "string", "Expected LogLevel to be of type 'string'")
end

--  
function M.LogLevel(str)
	asserts.AssertLogLevel(str)
	return str
end

function asserts.AssertDynamoOperation(str)
	assert(str)
	assert(type(str) == "string", "Expected DynamoOperation to be of type 'string'")
end

--  
function M.DynamoOperation(str)
	asserts.AssertDynamoOperation(str)
	return str
end

function asserts.AssertThingTypeDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected ThingTypeDescription to be of type 'string'")
	assert(#str <= 2028, "Expected string to be max 2028 characters")
end

--  
function M.ThingTypeDescription(str)
	asserts.AssertThingTypeDescription(str)
	return str
end

function asserts.AssertElasticsearchType(str)
	assert(str)
	assert(type(str) == "string", "Expected ElasticsearchType to be of type 'string'")
end

--  
function M.ElasticsearchType(str)
	asserts.AssertElasticsearchType(str)
	return str
end

function asserts.AssertPolicyArn(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyArn to be of type 'string'")
end

--  
function M.PolicyArn(str)
	asserts.AssertPolicyArn(str)
	return str
end

function asserts.AssertRangeKeyValue(str)
	assert(str)
	assert(type(str) == "string", "Expected RangeKeyValue to be of type 'string'")
end

--  
function M.RangeKeyValue(str)
	asserts.AssertRangeKeyValue(str)
	return str
end

function asserts.AssertRuleArn(str)
	assert(str)
	assert(type(str) == "string", "Expected RuleArn to be of type 'string'")
end

--  
function M.RuleArn(str)
	asserts.AssertRuleArn(str)
	return str
end

function asserts.AssertAwsArn(str)
	assert(str)
	assert(type(str) == "string", "Expected AwsArn to be of type 'string'")
end

--  
function M.AwsArn(str)
	asserts.AssertAwsArn(str)
	return str
end

function asserts.AssertCannedAccessControlList(str)
	assert(str)
	assert(type(str) == "string", "Expected CannedAccessControlList to be of type 'string'")
end

--  
function M.CannedAccessControlList(str)
	asserts.AssertCannedAccessControlList(str)
	return str
end

function asserts.AssertAlarmName(str)
	assert(str)
	assert(type(str) == "string", "Expected AlarmName to be of type 'string'")
end

--  
function M.AlarmName(str)
	asserts.AssertAlarmName(str)
	return str
end

function asserts.AssertMarker(str)
	assert(str)
	assert(type(str) == "string", "Expected Marker to be of type 'string'")
end

--  
function M.Marker(str)
	asserts.AssertMarker(str)
	return str
end

function asserts.AssertQueueUrl(str)
	assert(str)
	assert(type(str) == "string", "Expected QueueUrl to be of type 'string'")
end

--  
function M.QueueUrl(str)
	asserts.AssertQueueUrl(str)
	return str
end

function asserts.AssertStreamName(str)
	assert(str)
	assert(type(str) == "string", "Expected StreamName to be of type 'string'")
end

--  
function M.StreamName(str)
	asserts.AssertStreamName(str)
	return str
end

function asserts.AssertMetricUnit(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricUnit to be of type 'string'")
end

--  
function M.MetricUnit(str)
	asserts.AssertMetricUnit(str)
	return str
end

function asserts.AssertClientId(str)
	assert(str)
	assert(type(str) == "string", "Expected ClientId to be of type 'string'")
end

--  
function M.ClientId(str)
	asserts.AssertClientId(str)
	return str
end

function asserts.AssertRegistrationCode(str)
	assert(str)
	assert(type(str) == "string", "Expected RegistrationCode to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 64, "Expected string to be min 64 characters")
end

--  
function M.RegistrationCode(str)
	asserts.AssertRegistrationCode(str)
	return str
end

function asserts.AssertresourceArn(str)
	assert(str)
	assert(type(str) == "string", "Expected resourceArn to be of type 'string'")
end

--  
function M.resourceArn(str)
	asserts.AssertresourceArn(str)
	return str
end

function asserts.AssertAwsAccountId(str)
	assert(str)
	assert(type(str) == "string", "Expected AwsAccountId to be of type 'string'")
end

--  
function M.AwsAccountId(str)
	asserts.AssertAwsAccountId(str)
	return str
end

function asserts.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
end

--  
function M.NextToken(str)
	asserts.AssertNextToken(str)
	return str
end

function asserts.AssertDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected Description to be of type 'string'")
end

--  
function M.Description(str)
	asserts.AssertDescription(str)
	return str
end

function asserts.AssertFirehoseSeparator(str)
	assert(str)
	assert(type(str) == "string", "Expected FirehoseSeparator to be of type 'string'")
end

--  
function M.FirehoseSeparator(str)
	asserts.AssertFirehoseSeparator(str)
	return str
end

function asserts.AssertPrincipalArn(str)
	assert(str)
	assert(type(str) == "string", "Expected PrincipalArn to be of type 'string'")
end

--  
function M.PrincipalArn(str)
	asserts.AssertPrincipalArn(str)
	return str
end

function asserts.AssertThingName(str)
	assert(str)
	assert(type(str) == "string", "Expected ThingName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ThingName(str)
	asserts.AssertThingName(str)
	return str
end

function asserts.AssertMetricNamespace(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricNamespace to be of type 'string'")
end

--  
function M.MetricNamespace(str)
	asserts.AssertMetricNamespace(str)
	return str
end

function asserts.AssertMetricName(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricName to be of type 'string'")
end

--  
function M.MetricName(str)
	asserts.AssertMetricName(str)
	return str
end

function asserts.AssertCACertificateStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected CACertificateStatus to be of type 'string'")
end

--  
function M.CACertificateStatus(str)
	asserts.AssertCACertificateStatus(str)
	return str
end

function asserts.AssertElasticsearchIndex(str)
	assert(str)
	assert(type(str) == "string", "Expected ElasticsearchIndex to be of type 'string'")
end

--  
function M.ElasticsearchIndex(str)
	asserts.AssertElasticsearchIndex(str)
	return str
end

function asserts.AssertStateReason(str)
	assert(str)
	assert(type(str) == "string", "Expected StateReason to be of type 'string'")
end

--  
function M.StateReason(str)
	asserts.AssertStateReason(str)
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

function asserts.AssertPayloadField(str)
	assert(str)
	assert(type(str) == "string", "Expected PayloadField to be of type 'string'")
end

--  
function M.PayloadField(str)
	asserts.AssertPayloadField(str)
	return str
end

function asserts.AssertThingTypeArn(str)
	assert(str)
	assert(type(str) == "string", "Expected ThingTypeArn to be of type 'string'")
end

--  
function M.ThingTypeArn(str)
	asserts.AssertThingTypeArn(str)
	return str
end

function asserts.AssertPrivateKey(str)
	assert(str)
	assert(type(str) == "string", "Expected PrivateKey to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PrivateKey(str)
	asserts.AssertPrivateKey(str)
	return str
end

function asserts.AssertSalesforceEndpoint(str)
	assert(str)
	assert(type(str) == "string", "Expected SalesforceEndpoint to be of type 'string'")
	assert(#str <= 2000, "Expected string to be max 2000 characters")
end

--  
function M.SalesforceEndpoint(str)
	asserts.AssertSalesforceEndpoint(str)
	return str
end

function asserts.AssertPublicKey(str)
	assert(str)
	assert(type(str) == "string", "Expected PublicKey to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PublicKey(str)
	asserts.AssertPublicKey(str)
	return str
end

function asserts.AssertRuleName(str)
	assert(str)
	assert(type(str) == "string", "Expected RuleName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RuleName(str)
	asserts.AssertRuleName(str)
	return str
end

function asserts.AssertCertificateStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected CertificateStatus to be of type 'string'")
end

--  
function M.CertificateStatus(str)
	asserts.AssertCertificateStatus(str)
	return str
end

function asserts.AssertOptionalVersion(long)
	assert(long)
	assert(type(long) == "number", "Expected OptionalVersion to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.OptionalVersion(long)
	asserts.AssertOptionalVersion(long)
	return long
end

function asserts.AssertVersion(long)
	assert(long)
	assert(type(long) == "number", "Expected Version to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.Version(long)
	asserts.AssertVersion(long)
	return long
end

function asserts.AssertPageSize(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PageSize to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 250, "Expected integer to be max 250")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.PageSize(integer)
	asserts.AssertPageSize(integer)
	return integer
end

function asserts.AssertMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10000, "Expected integer to be max 10000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxResults(integer)
	asserts.AssertMaxResults(integer)
	return integer
end

function asserts.AssertRegistryMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected RegistryMaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 250, "Expected integer to be max 250")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.RegistryMaxResults(integer)
	asserts.AssertRegistryMaxResults(integer)
	return integer
end

function asserts.AssertSetAsActive(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected SetAsActive to be of type 'boolean'")
end

function M.SetAsActive(boolean)
	asserts.AssertSetAsActive(boolean)
	return boolean
end

function asserts.AssertRemoveThingType(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected RemoveThingType to be of type 'boolean'")
end

function M.RemoveThingType(boolean)
	asserts.AssertRemoveThingType(boolean)
	return boolean
end

function asserts.AssertSetAsActiveFlag(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected SetAsActiveFlag to be of type 'boolean'")
end

function M.SetAsActiveFlag(boolean)
	asserts.AssertSetAsActiveFlag(boolean)
	return boolean
end

function asserts.AssertAllowAutoRegistration(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected AllowAutoRegistration to be of type 'boolean'")
end

function M.AllowAutoRegistration(boolean)
	asserts.AssertAllowAutoRegistration(boolean)
	return boolean
end

function asserts.AssertUseBase64(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected UseBase64 to be of type 'boolean'")
end

function M.UseBase64(boolean)
	asserts.AssertUseBase64(boolean)
	return boolean
end

function asserts.AssertAscendingOrder(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected AscendingOrder to be of type 'boolean'")
end

function M.AscendingOrder(boolean)
	asserts.AssertAscendingOrder(boolean)
	return boolean
end

function asserts.AssertSetAsDefault(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected SetAsDefault to be of type 'boolean'")
end

function M.SetAsDefault(boolean)
	asserts.AssertSetAsDefault(boolean)
	return boolean
end

function asserts.AssertFlag(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Flag to be of type 'boolean'")
end

function M.Flag(boolean)
	asserts.AssertFlag(boolean)
	return boolean
end

function asserts.AssertIsDisabled(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected IsDisabled to be of type 'boolean'")
end

function M.IsDisabled(boolean)
	asserts.AssertIsDisabled(boolean)
	return boolean
end

function asserts.AssertIsDefaultVersion(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected IsDefaultVersion to be of type 'boolean'")
end

function M.IsDefaultVersion(boolean)
	asserts.AssertIsDefaultVersion(boolean)
	return boolean
end

function asserts.AssertUndoDeprecate(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected UndoDeprecate to be of type 'boolean'")
end

function M.UndoDeprecate(boolean)
	asserts.AssertUndoDeprecate(boolean)
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

function asserts.AssertAttributes(map)
	assert(map)
	assert(type(map) == "table", "Expected Attributes to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertAttributeName(k)
		asserts.AssertAttributeValue(v)
	end
end

function M.Attributes(map)
	asserts.AssertAttributes(map)
	return map
end

function asserts.AssertDateType(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected DateType to be of type 'string'")
end

function M.DateType(timestamp)
	asserts.AssertDateType(timestamp)
	return timestamp
end

function asserts.AssertCreatedAtDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected CreatedAtDate to be of type 'string'")
end

function M.CreatedAtDate(timestamp)
	asserts.AssertCreatedAtDate(timestamp)
	return timestamp
end

function asserts.AssertDeprecationDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected DeprecationDate to be of type 'string'")
end

function M.DeprecationDate(timestamp)
	asserts.AssertDeprecationDate(timestamp)
	return timestamp
end

function asserts.AssertCreationDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected CreationDate to be of type 'string'")
end

function M.CreationDate(timestamp)
	asserts.AssertCreationDate(timestamp)
	return timestamp
end

function asserts.AssertSearchableAttributes(list)
	assert(list)
	assert(type(list) == "table", "Expected SearchableAttributes to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAttributeName(v)
	end
end

--  
-- List of AttributeName objects
function M.SearchableAttributes(list)
	asserts.AssertSearchableAttributes(list)
	return list
end

function asserts.AssertThingNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected ThingNameList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertThingName(v)
	end
end

--  
-- List of ThingName objects
function M.ThingNameList(list)
	asserts.AssertThingNameList(list)
	return list
end

function asserts.AssertCertificates(list)
	assert(list)
	assert(type(list) == "table", "Expected Certificates to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCertificate(v)
	end
end

--  
-- List of Certificate objects
function M.Certificates(list)
	asserts.AssertCertificates(list)
	return list
end

function asserts.AssertTopicRuleList(list)
	assert(list)
	assert(type(list) == "table", "Expected TopicRuleList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTopicRuleListItem(v)
	end
end

--  
-- List of TopicRuleListItem objects
function M.TopicRuleList(list)
	asserts.AssertTopicRuleList(list)
	return list
end

function asserts.AssertThingTypeList(list)
	assert(list)
	assert(type(list) == "table", "Expected ThingTypeList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertThingTypeDefinition(v)
	end
end

--  
-- List of ThingTypeDefinition objects
function M.ThingTypeList(list)
	asserts.AssertThingTypeList(list)
	return list
end

function asserts.AssertActionList(list)
	assert(list)
	assert(type(list) == "table", "Expected ActionList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	for _,v in ipairs(list) do
		asserts.AssertAction(v)
	end
end

--  
-- List of Action objects
function M.ActionList(list)
	asserts.AssertActionList(list)
	return list
end

function asserts.AssertPolicies(list)
	assert(list)
	assert(type(list) == "table", "Expected Policies to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPolicy(v)
	end
end

--  
-- List of Policy objects
function M.Policies(list)
	asserts.AssertPolicies(list)
	return list
end

function asserts.AssertPolicyVersions(list)
	assert(list)
	assert(type(list) == "table", "Expected PolicyVersions to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPolicyVersion(v)
	end
end

--  
-- List of PolicyVersion objects
function M.PolicyVersions(list)
	asserts.AssertPolicyVersions(list)
	return list
end

function asserts.AssertPrincipals(list)
	assert(list)
	assert(type(list) == "table", "Expected Principals to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPrincipalArn(v)
	end
end

--  
-- List of PrincipalArn objects
function M.Principals(list)
	asserts.AssertPrincipals(list)
	return list
end

function asserts.AssertOutgoingCertificates(list)
	assert(list)
	assert(type(list) == "table", "Expected OutgoingCertificates to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOutgoingCertificate(v)
	end
end

--  
-- List of OutgoingCertificate objects
function M.OutgoingCertificates(list)
	asserts.AssertOutgoingCertificates(list)
	return list
end

function asserts.AssertThingAttributeList(list)
	assert(list)
	assert(type(list) == "table", "Expected ThingAttributeList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertThingAttribute(v)
	end
end

--  
-- List of ThingAttribute objects
function M.ThingAttributeList(list)
	asserts.AssertThingAttributeList(list)
	return list
end

function asserts.AssertCACertificates(list)
	assert(list)
	assert(type(list) == "table", "Expected CACertificates to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCACertificate(v)
	end
end

--  
-- List of CACertificate objects
function M.CACertificates(list)
	asserts.AssertCACertificates(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "iot.amazonaws.com"
		end
	end
	local ss = { "iot" }
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
	settings.uri = (config.scheme or "https") .. "://" .. settings.endpoint
end


--
-- OPERATIONS
--
--- Call ReplaceTopicRule asynchronously, invoking a callback when done
-- @param ReplaceTopicRuleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ReplaceTopicRuleAsync(ReplaceTopicRuleRequest, cb)
	assert(ReplaceTopicRuleRequest, "You must provide a ReplaceTopicRuleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ReplaceTopicRule",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(settings.uri, "/rules/{ruleName}", ReplaceTopicRuleRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ReplaceTopicRule synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ReplaceTopicRuleRequest
-- @return response
-- @return error_message
function M.ReplaceTopicRuleSync(ReplaceTopicRuleRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ReplaceTopicRuleAsync(ReplaceTopicRuleRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteThingType asynchronously, invoking a callback when done
-- @param DeleteThingTypeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteThingTypeAsync(DeleteThingTypeRequest, cb)
	assert(DeleteThingTypeRequest, "You must provide a DeleteThingTypeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteThingType",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(settings.uri, "/thing-types/{thingTypeName}", DeleteThingTypeRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteThingType synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteThingTypeRequest
-- @return response
-- @return error_message
function M.DeleteThingTypeSync(DeleteThingTypeRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteThingTypeAsync(DeleteThingTypeRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DetachThingPrincipal asynchronously, invoking a callback when done
-- @param DetachThingPrincipalRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DetachThingPrincipalAsync(DetachThingPrincipalRequest, cb)
	assert(DetachThingPrincipalRequest, "You must provide a DetachThingPrincipalRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DetachThingPrincipal",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(settings.uri, "/things/{thingName}/principals", DetachThingPrincipalRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DetachThingPrincipal synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DetachThingPrincipalRequest
-- @return response
-- @return error_message
function M.DetachThingPrincipalSync(DetachThingPrincipalRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DetachThingPrincipalAsync(DetachThingPrincipalRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeprecateThingType asynchronously, invoking a callback when done
-- @param DeprecateThingTypeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeprecateThingTypeAsync(DeprecateThingTypeRequest, cb)
	assert(DeprecateThingTypeRequest, "You must provide a DeprecateThingTypeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeprecateThingType",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/thing-types/{thingTypeName}/deprecate", DeprecateThingTypeRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeprecateThingType synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeprecateThingTypeRequest
-- @return response
-- @return error_message
function M.DeprecateThingTypeSync(DeprecateThingTypeRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeprecateThingTypeAsync(DeprecateThingTypeRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListPolicyVersions asynchronously, invoking a callback when done
-- @param ListPolicyVersionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListPolicyVersionsAsync(ListPolicyVersionsRequest, cb)
	assert(ListPolicyVersionsRequest, "You must provide a ListPolicyVersionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListPolicyVersions",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/policies/{policyName}/version", ListPolicyVersionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListPolicyVersions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListPolicyVersionsRequest
-- @return response
-- @return error_message
function M.ListPolicyVersionsSync(ListPolicyVersionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListPolicyVersionsAsync(ListPolicyVersionsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeletePolicy asynchronously, invoking a callback when done
-- @param DeletePolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeletePolicyAsync(DeletePolicyRequest, cb)
	assert(DeletePolicyRequest, "You must provide a DeletePolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeletePolicy",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(settings.uri, "/policies/{policyName}", DeletePolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeletePolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeletePolicyRequest
-- @return response
-- @return error_message
function M.DeletePolicySync(DeletePolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeletePolicyAsync(DeletePolicyRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeletePolicyVersion asynchronously, invoking a callback when done
-- @param DeletePolicyVersionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeletePolicyVersionAsync(DeletePolicyVersionRequest, cb)
	assert(DeletePolicyVersionRequest, "You must provide a DeletePolicyVersionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeletePolicyVersion",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(settings.uri, "/policies/{policyName}/version/{policyVersionId}", DeletePolicyVersionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeletePolicyVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeletePolicyVersionRequest
-- @return response
-- @return error_message
function M.DeletePolicyVersionSync(DeletePolicyVersionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeletePolicyVersionAsync(DeletePolicyVersionRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateTopicRule asynchronously, invoking a callback when done
-- @param CreateTopicRuleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateTopicRuleAsync(CreateTopicRuleRequest, cb)
	assert(CreateTopicRuleRequest, "You must provide a CreateTopicRuleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateTopicRule",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/rules/{ruleName}", CreateTopicRuleRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateTopicRule synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateTopicRuleRequest
-- @return response
-- @return error_message
function M.CreateTopicRuleSync(CreateTopicRuleRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateTopicRuleAsync(CreateTopicRuleRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call SetDefaultPolicyVersion asynchronously, invoking a callback when done
-- @param SetDefaultPolicyVersionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SetDefaultPolicyVersionAsync(SetDefaultPolicyVersionRequest, cb)
	assert(SetDefaultPolicyVersionRequest, "You must provide a SetDefaultPolicyVersionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SetDefaultPolicyVersion",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(settings.uri, "/policies/{policyName}/version/{policyVersionId}", SetDefaultPolicyVersionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SetDefaultPolicyVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetDefaultPolicyVersionRequest
-- @return response
-- @return error_message
function M.SetDefaultPolicyVersionSync(SetDefaultPolicyVersionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetDefaultPolicyVersionAsync(SetDefaultPolicyVersionRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DisableTopicRule asynchronously, invoking a callback when done
-- @param DisableTopicRuleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DisableTopicRuleAsync(DisableTopicRuleRequest, cb)
	assert(DisableTopicRuleRequest, "You must provide a DisableTopicRuleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DisableTopicRule",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/rules/{ruleName}/disable", DisableTopicRuleRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DisableTopicRule synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisableTopicRuleRequest
-- @return response
-- @return error_message
function M.DisableTopicRuleSync(DisableTopicRuleRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisableTopicRuleAsync(DisableTopicRuleRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListPrincipalPolicies asynchronously, invoking a callback when done
-- @param ListPrincipalPoliciesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListPrincipalPoliciesAsync(ListPrincipalPoliciesRequest, cb)
	assert(ListPrincipalPoliciesRequest, "You must provide a ListPrincipalPoliciesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListPrincipalPolicies",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/principal-policies", ListPrincipalPoliciesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListPrincipalPolicies synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListPrincipalPoliciesRequest
-- @return response
-- @return error_message
function M.ListPrincipalPoliciesSync(ListPrincipalPoliciesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListPrincipalPoliciesAsync(ListPrincipalPoliciesRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetLoggingOptions asynchronously, invoking a callback when done
-- @param GetLoggingOptionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetLoggingOptionsAsync(GetLoggingOptionsRequest, cb)
	assert(GetLoggingOptionsRequest, "You must provide a GetLoggingOptionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetLoggingOptions",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/loggingOptions", GetLoggingOptionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetLoggingOptions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetLoggingOptionsRequest
-- @return response
-- @return error_message
function M.GetLoggingOptionsSync(GetLoggingOptionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetLoggingOptionsAsync(GetLoggingOptionsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call TransferCertificate asynchronously, invoking a callback when done
-- @param TransferCertificateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.TransferCertificateAsync(TransferCertificateRequest, cb)
	assert(TransferCertificateRequest, "You must provide a TransferCertificateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".TransferCertificate",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(settings.uri, "/transfer-certificate/{certificateId}", TransferCertificateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call TransferCertificate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param TransferCertificateRequest
-- @return response
-- @return error_message
function M.TransferCertificateSync(TransferCertificateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.TransferCertificateAsync(TransferCertificateRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetPolicy asynchronously, invoking a callback when done
-- @param GetPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetPolicyAsync(GetPolicyRequest, cb)
	assert(GetPolicyRequest, "You must provide a GetPolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/policies/{policyName}", GetPolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetPolicyRequest
-- @return response
-- @return error_message
function M.GetPolicySync(GetPolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetPolicyAsync(GetPolicyRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RejectCertificateTransfer asynchronously, invoking a callback when done
-- @param RejectCertificateTransferRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RejectCertificateTransferAsync(RejectCertificateTransferRequest, cb)
	assert(RejectCertificateTransferRequest, "You must provide a RejectCertificateTransferRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RejectCertificateTransfer",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(settings.uri, "/reject-certificate-transfer/{certificateId}", RejectCertificateTransferRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RejectCertificateTransfer synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RejectCertificateTransferRequest
-- @return response
-- @return error_message
function M.RejectCertificateTransferSync(RejectCertificateTransferRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RejectCertificateTransferAsync(RejectCertificateTransferRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListCertificates asynchronously, invoking a callback when done
-- @param ListCertificatesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListCertificatesAsync(ListCertificatesRequest, cb)
	assert(ListCertificatesRequest, "You must provide a ListCertificatesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListCertificates",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/certificates", ListCertificatesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListCertificates synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListCertificatesRequest
-- @return response
-- @return error_message
function M.ListCertificatesSync(ListCertificatesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListCertificatesAsync(ListCertificatesRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteCACertificate asynchronously, invoking a callback when done
-- @param DeleteCACertificateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteCACertificateAsync(DeleteCACertificateRequest, cb)
	assert(DeleteCACertificateRequest, "You must provide a DeleteCACertificateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteCACertificate",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(settings.uri, "/cacertificate/{caCertificateId}", DeleteCACertificateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteCACertificate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteCACertificateRequest
-- @return response
-- @return error_message
function M.DeleteCACertificateSync(DeleteCACertificateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteCACertificateAsync(DeleteCACertificateRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteCertificate asynchronously, invoking a callback when done
-- @param DeleteCertificateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteCertificateAsync(DeleteCertificateRequest, cb)
	assert(DeleteCertificateRequest, "You must provide a DeleteCertificateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteCertificate",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(settings.uri, "/certificates/{certificateId}", DeleteCertificateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteCertificate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteCertificateRequest
-- @return response
-- @return error_message
function M.DeleteCertificateSync(DeleteCertificateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteCertificateAsync(DeleteCertificateRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListPolicyPrincipals asynchronously, invoking a callback when done
-- @param ListPolicyPrincipalsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListPolicyPrincipalsAsync(ListPolicyPrincipalsRequest, cb)
	assert(ListPolicyPrincipalsRequest, "You must provide a ListPolicyPrincipalsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListPolicyPrincipals",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/policy-principals", ListPolicyPrincipalsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListPolicyPrincipals synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListPolicyPrincipalsRequest
-- @return response
-- @return error_message
function M.ListPolicyPrincipalsSync(ListPolicyPrincipalsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListPolicyPrincipalsAsync(ListPolicyPrincipalsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AttachPrincipalPolicy asynchronously, invoking a callback when done
-- @param AttachPrincipalPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AttachPrincipalPolicyAsync(AttachPrincipalPolicyRequest, cb)
	assert(AttachPrincipalPolicyRequest, "You must provide a AttachPrincipalPolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".AttachPrincipalPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(settings.uri, "/principal-policies/{policyName}", AttachPrincipalPolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AttachPrincipalPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AttachPrincipalPolicyRequest
-- @return response
-- @return error_message
function M.AttachPrincipalPolicySync(AttachPrincipalPolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AttachPrincipalPolicyAsync(AttachPrincipalPolicyRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListCACertificates asynchronously, invoking a callback when done
-- @param ListCACertificatesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListCACertificatesAsync(ListCACertificatesRequest, cb)
	assert(ListCACertificatesRequest, "You must provide a ListCACertificatesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListCACertificates",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/cacertificates", ListCACertificatesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListCACertificates synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListCACertificatesRequest
-- @return response
-- @return error_message
function M.ListCACertificatesSync(ListCACertificatesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListCACertificatesAsync(ListCACertificatesRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateThingType asynchronously, invoking a callback when done
-- @param CreateThingTypeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateThingTypeAsync(CreateThingTypeRequest, cb)
	assert(CreateThingTypeRequest, "You must provide a CreateThingTypeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateThingType",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/thing-types/{thingTypeName}", CreateThingTypeRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateThingType synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateThingTypeRequest
-- @return response
-- @return error_message
function M.CreateThingTypeSync(CreateThingTypeRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateThingTypeAsync(CreateThingTypeRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListOutgoingCertificates asynchronously, invoking a callback when done
-- @param ListOutgoingCertificatesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListOutgoingCertificatesAsync(ListOutgoingCertificatesRequest, cb)
	assert(ListOutgoingCertificatesRequest, "You must provide a ListOutgoingCertificatesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListOutgoingCertificates",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/certificates-out-going", ListOutgoingCertificatesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListOutgoingCertificates synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListOutgoingCertificatesRequest
-- @return response
-- @return error_message
function M.ListOutgoingCertificatesSync(ListOutgoingCertificatesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListOutgoingCertificatesAsync(ListOutgoingCertificatesRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteRegistrationCode asynchronously, invoking a callback when done
-- @param DeleteRegistrationCodeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteRegistrationCodeAsync(DeleteRegistrationCodeRequest, cb)
	assert(DeleteRegistrationCodeRequest, "You must provide a DeleteRegistrationCodeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteRegistrationCode",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(settings.uri, "/registrationcode", DeleteRegistrationCodeRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteRegistrationCode synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteRegistrationCodeRequest
-- @return response
-- @return error_message
function M.DeleteRegistrationCodeSync(DeleteRegistrationCodeRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteRegistrationCodeAsync(DeleteRegistrationCodeRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeCACertificate asynchronously, invoking a callback when done
-- @param DescribeCACertificateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeCACertificateAsync(DescribeCACertificateRequest, cb)
	assert(DescribeCACertificateRequest, "You must provide a DescribeCACertificateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeCACertificate",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/cacertificate/{caCertificateId}", DescribeCACertificateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeCACertificate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeCACertificateRequest
-- @return response
-- @return error_message
function M.DescribeCACertificateSync(DescribeCACertificateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeCACertificateAsync(DescribeCACertificateRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetPolicyVersion asynchronously, invoking a callback when done
-- @param GetPolicyVersionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetPolicyVersionAsync(GetPolicyVersionRequest, cb)
	assert(GetPolicyVersionRequest, "You must provide a GetPolicyVersionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetPolicyVersion",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/policies/{policyName}/version/{policyVersionId}", GetPolicyVersionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetPolicyVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetPolicyVersionRequest
-- @return response
-- @return error_message
function M.GetPolicyVersionSync(GetPolicyVersionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetPolicyVersionAsync(GetPolicyVersionRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListThingTypes asynchronously, invoking a callback when done
-- @param ListThingTypesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListThingTypesAsync(ListThingTypesRequest, cb)
	assert(ListThingTypesRequest, "You must provide a ListThingTypesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListThingTypes",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/thing-types", ListThingTypesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListThingTypes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListThingTypesRequest
-- @return response
-- @return error_message
function M.ListThingTypesSync(ListThingTypesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListThingTypesAsync(ListThingTypesRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetTopicRule asynchronously, invoking a callback when done
-- @param GetTopicRuleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetTopicRuleAsync(GetTopicRuleRequest, cb)
	assert(GetTopicRuleRequest, "You must provide a GetTopicRuleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetTopicRule",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/rules/{ruleName}", GetTopicRuleRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetTopicRule synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetTopicRuleRequest
-- @return response
-- @return error_message
function M.GetTopicRuleSync(GetTopicRuleRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetTopicRuleAsync(GetTopicRuleRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateKeysAndCertificate asynchronously, invoking a callback when done
-- @param CreateKeysAndCertificateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateKeysAndCertificateAsync(CreateKeysAndCertificateRequest, cb)
	assert(CreateKeysAndCertificateRequest, "You must provide a CreateKeysAndCertificateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateKeysAndCertificate",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/keys-and-certificate", CreateKeysAndCertificateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateKeysAndCertificate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateKeysAndCertificateRequest
-- @return response
-- @return error_message
function M.CreateKeysAndCertificateSync(CreateKeysAndCertificateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateKeysAndCertificateAsync(CreateKeysAndCertificateRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AcceptCertificateTransfer asynchronously, invoking a callback when done
-- @param AcceptCertificateTransferRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AcceptCertificateTransferAsync(AcceptCertificateTransferRequest, cb)
	assert(AcceptCertificateTransferRequest, "You must provide a AcceptCertificateTransferRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".AcceptCertificateTransfer",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(settings.uri, "/accept-certificate-transfer/{certificateId}", AcceptCertificateTransferRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AcceptCertificateTransfer synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AcceptCertificateTransferRequest
-- @return response
-- @return error_message
function M.AcceptCertificateTransferSync(AcceptCertificateTransferRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AcceptCertificateTransferAsync(AcceptCertificateTransferRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteThing asynchronously, invoking a callback when done
-- @param DeleteThingRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteThingAsync(DeleteThingRequest, cb)
	assert(DeleteThingRequest, "You must provide a DeleteThingRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteThing",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(settings.uri, "/things/{thingName}", DeleteThingRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteThing synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteThingRequest
-- @return response
-- @return error_message
function M.DeleteThingSync(DeleteThingRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteThingAsync(DeleteThingRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListThings asynchronously, invoking a callback when done
-- @param ListThingsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListThingsAsync(ListThingsRequest, cb)
	assert(ListThingsRequest, "You must provide a ListThingsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListThings",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/things", ListThingsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListThings synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListThingsRequest
-- @return response
-- @return error_message
function M.ListThingsSync(ListThingsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListThingsAsync(ListThingsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListCertificatesByCA asynchronously, invoking a callback when done
-- @param ListCertificatesByCARequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListCertificatesByCAAsync(ListCertificatesByCARequest, cb)
	assert(ListCertificatesByCARequest, "You must provide a ListCertificatesByCARequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListCertificatesByCA",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/certificates-by-ca/{caCertificateId}", ListCertificatesByCARequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListCertificatesByCA synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListCertificatesByCARequest
-- @return response
-- @return error_message
function M.ListCertificatesByCASync(ListCertificatesByCARequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListCertificatesByCAAsync(ListCertificatesByCARequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateCertificate asynchronously, invoking a callback when done
-- @param UpdateCertificateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateCertificateAsync(UpdateCertificateRequest, cb)
	assert(UpdateCertificateRequest, "You must provide a UpdateCertificateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateCertificate",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(settings.uri, "/certificates/{certificateId}", UpdateCertificateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateCertificate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateCertificateRequest
-- @return response
-- @return error_message
function M.UpdateCertificateSync(UpdateCertificateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateCertificateAsync(UpdateCertificateRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetRegistrationCode asynchronously, invoking a callback when done
-- @param GetRegistrationCodeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetRegistrationCodeAsync(GetRegistrationCodeRequest, cb)
	assert(GetRegistrationCodeRequest, "You must provide a GetRegistrationCodeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetRegistrationCode",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/registrationcode", GetRegistrationCodeRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetRegistrationCode synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetRegistrationCodeRequest
-- @return response
-- @return error_message
function M.GetRegistrationCodeSync(GetRegistrationCodeRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetRegistrationCodeAsync(GetRegistrationCodeRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListPrincipalThings asynchronously, invoking a callback when done
-- @param ListPrincipalThingsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListPrincipalThingsAsync(ListPrincipalThingsRequest, cb)
	assert(ListPrincipalThingsRequest, "You must provide a ListPrincipalThingsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListPrincipalThings",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/principals/things", ListPrincipalThingsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListPrincipalThings synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListPrincipalThingsRequest
-- @return response
-- @return error_message
function M.ListPrincipalThingsSync(ListPrincipalThingsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListPrincipalThingsAsync(ListPrincipalThingsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CancelCertificateTransfer asynchronously, invoking a callback when done
-- @param CancelCertificateTransferRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CancelCertificateTransferAsync(CancelCertificateTransferRequest, cb)
	assert(CancelCertificateTransferRequest, "You must provide a CancelCertificateTransferRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CancelCertificateTransfer",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(settings.uri, "/cancel-certificate-transfer/{certificateId}", CancelCertificateTransferRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CancelCertificateTransfer synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CancelCertificateTransferRequest
-- @return response
-- @return error_message
function M.CancelCertificateTransferSync(CancelCertificateTransferRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CancelCertificateTransferAsync(CancelCertificateTransferRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RegisterCACertificate asynchronously, invoking a callback when done
-- @param RegisterCACertificateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RegisterCACertificateAsync(RegisterCACertificateRequest, cb)
	assert(RegisterCACertificateRequest, "You must provide a RegisterCACertificateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RegisterCACertificate",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/cacertificate", RegisterCACertificateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RegisterCACertificate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RegisterCACertificateRequest
-- @return response
-- @return error_message
function M.RegisterCACertificateSync(RegisterCACertificateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RegisterCACertificateAsync(RegisterCACertificateRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeCertificate asynchronously, invoking a callback when done
-- @param DescribeCertificateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeCertificateAsync(DescribeCertificateRequest, cb)
	assert(DescribeCertificateRequest, "You must provide a DescribeCertificateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeCertificate",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/certificates/{certificateId}", DescribeCertificateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeCertificate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeCertificateRequest
-- @return response
-- @return error_message
function M.DescribeCertificateSync(DescribeCertificateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeCertificateAsync(DescribeCertificateRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeEndpoint asynchronously, invoking a callback when done
-- @param DescribeEndpointRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeEndpointAsync(DescribeEndpointRequest, cb)
	assert(DescribeEndpointRequest, "You must provide a DescribeEndpointRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeEndpoint",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/endpoint", DescribeEndpointRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeEndpoint synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeEndpointRequest
-- @return response
-- @return error_message
function M.DescribeEndpointSync(DescribeEndpointRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeEndpointAsync(DescribeEndpointRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTopicRules asynchronously, invoking a callback when done
-- @param ListTopicRulesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListTopicRulesAsync(ListTopicRulesRequest, cb)
	assert(ListTopicRulesRequest, "You must provide a ListTopicRulesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListTopicRules",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/rules", ListTopicRulesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTopicRules synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTopicRulesRequest
-- @return response
-- @return error_message
function M.ListTopicRulesSync(ListTopicRulesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTopicRulesAsync(ListTopicRulesRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreatePolicyVersion asynchronously, invoking a callback when done
-- @param CreatePolicyVersionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreatePolicyVersionAsync(CreatePolicyVersionRequest, cb)
	assert(CreatePolicyVersionRequest, "You must provide a CreatePolicyVersionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreatePolicyVersion",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/policies/{policyName}/version", CreatePolicyVersionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreatePolicyVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreatePolicyVersionRequest
-- @return response
-- @return error_message
function M.CreatePolicyVersionSync(CreatePolicyVersionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreatePolicyVersionAsync(CreatePolicyVersionRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateCertificateFromCsr asynchronously, invoking a callback when done
-- @param CreateCertificateFromCsrRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateCertificateFromCsrAsync(CreateCertificateFromCsrRequest, cb)
	assert(CreateCertificateFromCsrRequest, "You must provide a CreateCertificateFromCsrRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateCertificateFromCsr",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/certificates", CreateCertificateFromCsrRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateCertificateFromCsr synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateCertificateFromCsrRequest
-- @return response
-- @return error_message
function M.CreateCertificateFromCsrSync(CreateCertificateFromCsrRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateCertificateFromCsrAsync(CreateCertificateFromCsrRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeThingType asynchronously, invoking a callback when done
-- @param DescribeThingTypeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeThingTypeAsync(DescribeThingTypeRequest, cb)
	assert(DescribeThingTypeRequest, "You must provide a DescribeThingTypeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeThingType",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/thing-types/{thingTypeName}", DescribeThingTypeRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeThingType synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeThingTypeRequest
-- @return response
-- @return error_message
function M.DescribeThingTypeSync(DescribeThingTypeRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeThingTypeAsync(DescribeThingTypeRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListPolicies asynchronously, invoking a callback when done
-- @param ListPoliciesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListPoliciesAsync(ListPoliciesRequest, cb)
	assert(ListPoliciesRequest, "You must provide a ListPoliciesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListPolicies",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/policies", ListPoliciesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListPolicies synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListPoliciesRequest
-- @return response
-- @return error_message
function M.ListPoliciesSync(ListPoliciesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListPoliciesAsync(ListPoliciesRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateThing asynchronously, invoking a callback when done
-- @param CreateThingRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateThingAsync(CreateThingRequest, cb)
	assert(CreateThingRequest, "You must provide a CreateThingRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateThing",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/things/{thingName}", CreateThingRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateThing synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateThingRequest
-- @return response
-- @return error_message
function M.CreateThingSync(CreateThingRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateThingAsync(CreateThingRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateCACertificate asynchronously, invoking a callback when done
-- @param UpdateCACertificateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateCACertificateAsync(UpdateCACertificateRequest, cb)
	assert(UpdateCACertificateRequest, "You must provide a UpdateCACertificateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateCACertificate",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(settings.uri, "/cacertificate/{caCertificateId}", UpdateCACertificateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateCACertificate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateCACertificateRequest
-- @return response
-- @return error_message
function M.UpdateCACertificateSync(UpdateCACertificateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateCACertificateAsync(UpdateCACertificateRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateThing asynchronously, invoking a callback when done
-- @param UpdateThingRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateThingAsync(UpdateThingRequest, cb)
	assert(UpdateThingRequest, "You must provide a UpdateThingRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateThing",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(settings.uri, "/things/{thingName}", UpdateThingRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateThing synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateThingRequest
-- @return response
-- @return error_message
function M.UpdateThingSync(UpdateThingRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateThingAsync(UpdateThingRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AttachThingPrincipal asynchronously, invoking a callback when done
-- @param AttachThingPrincipalRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AttachThingPrincipalAsync(AttachThingPrincipalRequest, cb)
	assert(AttachThingPrincipalRequest, "You must provide a AttachThingPrincipalRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".AttachThingPrincipal",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(settings.uri, "/things/{thingName}/principals", AttachThingPrincipalRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AttachThingPrincipal synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AttachThingPrincipalRequest
-- @return response
-- @return error_message
function M.AttachThingPrincipalSync(AttachThingPrincipalRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AttachThingPrincipalAsync(AttachThingPrincipalRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DetachPrincipalPolicy asynchronously, invoking a callback when done
-- @param DetachPrincipalPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DetachPrincipalPolicyAsync(DetachPrincipalPolicyRequest, cb)
	assert(DetachPrincipalPolicyRequest, "You must provide a DetachPrincipalPolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DetachPrincipalPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(settings.uri, "/principal-policies/{policyName}", DetachPrincipalPolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DetachPrincipalPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DetachPrincipalPolicyRequest
-- @return response
-- @return error_message
function M.DetachPrincipalPolicySync(DetachPrincipalPolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DetachPrincipalPolicyAsync(DetachPrincipalPolicyRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call EnableTopicRule asynchronously, invoking a callback when done
-- @param EnableTopicRuleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.EnableTopicRuleAsync(EnableTopicRuleRequest, cb)
	assert(EnableTopicRuleRequest, "You must provide a EnableTopicRuleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".EnableTopicRule",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/rules/{ruleName}/enable", EnableTopicRuleRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call EnableTopicRule synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param EnableTopicRuleRequest
-- @return response
-- @return error_message
function M.EnableTopicRuleSync(EnableTopicRuleRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.EnableTopicRuleAsync(EnableTopicRuleRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreatePolicy asynchronously, invoking a callback when done
-- @param CreatePolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreatePolicyAsync(CreatePolicyRequest, cb)
	assert(CreatePolicyRequest, "You must provide a CreatePolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreatePolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/policies/{policyName}", CreatePolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreatePolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreatePolicyRequest
-- @return response
-- @return error_message
function M.CreatePolicySync(CreatePolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreatePolicyAsync(CreatePolicyRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RegisterCertificate asynchronously, invoking a callback when done
-- @param RegisterCertificateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RegisterCertificateAsync(RegisterCertificateRequest, cb)
	assert(RegisterCertificateRequest, "You must provide a RegisterCertificateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RegisterCertificate",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/certificate/register", RegisterCertificateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RegisterCertificate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RegisterCertificateRequest
-- @return response
-- @return error_message
function M.RegisterCertificateSync(RegisterCertificateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RegisterCertificateAsync(RegisterCertificateRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeThing asynchronously, invoking a callback when done
-- @param DescribeThingRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeThingAsync(DescribeThingRequest, cb)
	assert(DescribeThingRequest, "You must provide a DescribeThingRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeThing",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/things/{thingName}", DescribeThingRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeThing synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeThingRequest
-- @return response
-- @return error_message
function M.DescribeThingSync(DescribeThingRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeThingAsync(DescribeThingRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call SetLoggingOptions asynchronously, invoking a callback when done
-- @param SetLoggingOptionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SetLoggingOptionsAsync(SetLoggingOptionsRequest, cb)
	assert(SetLoggingOptionsRequest, "You must provide a SetLoggingOptionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SetLoggingOptions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/loggingOptions", SetLoggingOptionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SetLoggingOptions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetLoggingOptionsRequest
-- @return response
-- @return error_message
function M.SetLoggingOptionsSync(SetLoggingOptionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetLoggingOptionsAsync(SetLoggingOptionsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListThingPrincipals asynchronously, invoking a callback when done
-- @param ListThingPrincipalsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListThingPrincipalsAsync(ListThingPrincipalsRequest, cb)
	assert(ListThingPrincipalsRequest, "You must provide a ListThingPrincipalsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListThingPrincipals",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/things/{thingName}/principals", ListThingPrincipalsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListThingPrincipals synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListThingPrincipalsRequest
-- @return response
-- @return error_message
function M.ListThingPrincipalsSync(ListThingPrincipalsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListThingPrincipalsAsync(ListThingPrincipalsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteTopicRule asynchronously, invoking a callback when done
-- @param DeleteTopicRuleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteTopicRuleAsync(DeleteTopicRuleRequest, cb)
	assert(DeleteTopicRuleRequest, "You must provide a DeleteTopicRuleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteTopicRule",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(settings.uri, "/rules/{ruleName}", DeleteTopicRuleRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteTopicRule synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteTopicRuleRequest
-- @return response
-- @return error_message
function M.DeleteTopicRuleSync(DeleteTopicRuleRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteTopicRuleAsync(DeleteTopicRuleRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
