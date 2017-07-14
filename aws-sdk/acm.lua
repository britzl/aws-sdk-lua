--- GENERATED CODE - DO NOT MODIFY
-- AWS Certificate Manager (acm-2015-12-08)

local M = {}

M.metadata = {
	api_version = "2015-12-08",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "acm",
	service_abbreviation = "ACM",
	service_full_name = "AWS Certificate Manager",
	signature_version = "v4",
	target_prefix = "CertificateManager",
	timestamp_format = "",
	global_endpoint = "",
	uid = "acm-2015-12-08",
}

local LimitExceededException_keys = { "message" = true, nil }

function M.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(LimitExceededException_keys[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- <p>An ACM limit has been exceeded. For example, you may have input more domains than are allowed or you've requested too many certificates for your account. See the exception message returned by ACM to determine which limit you have violated. For more information about ACM limits, see the <a href="http://docs.aws.amazon.com/acm/latest/userguide/acm-limits.html">Limits</a> topic.</p>
-- @param message [String] <p>An ACM limit has been exceeded. For example, you may have input more domains than are allowed or you've requested too many certificates for your account. See the exception message returned by ACM to determine which limit you have violated. For more information about ACM limits, see the <a href="http://docs.aws.amazon.com/acm/latest/userguide/acm-limits.html">Limits</a> topic.</p>
function M.LimitExceededException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
		["message"] = message,
	}
	M.AssertLimitExceededException(t)
	return t
end

local DeleteCertificateRequest_keys = { "CertificateArn" = true, nil }

function M.AssertDeleteCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteCertificateRequest to be of type 'table'")
	assert(struct["CertificateArn"], "Expected key CertificateArn to exist in table")
	if struct["CertificateArn"] then M.AssertArn(struct["CertificateArn"]) end
	for k,_ in pairs(struct) do
		assert(DeleteCertificateRequest_keys[k], "DeleteCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteCertificateRequest
--  
-- @param CertificateArn [Arn] <p>String that contains the ARN of the ACM Certificate to be deleted. This must be of the form:</p> <p> <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code> </p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
-- Required parameter: CertificateArn
function M.DeleteCertificateRequest(CertificateArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteCertificateRequest")
	local t = { 
		["CertificateArn"] = CertificateArn,
	}
	M.AssertDeleteCertificateRequest(t)
	return t
end

local GetCertificateResponse_keys = { "CertificateChain" = true, "Certificate" = true, nil }

function M.AssertGetCertificateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCertificateResponse to be of type 'table'")
	if struct["CertificateChain"] then M.AssertCertificateChain(struct["CertificateChain"]) end
	if struct["Certificate"] then M.AssertCertificateBody(struct["Certificate"]) end
	for k,_ in pairs(struct) do
		assert(GetCertificateResponse_keys[k], "GetCertificateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCertificateResponse
--  
-- @param CertificateChain [CertificateChain] <p>The certificate chain that contains the root certificate issued by the certificate authority (CA).</p>
-- @param Certificate [CertificateBody] <p>String that contains the ACM Certificate represented by the ARN specified at input.</p>
function M.GetCertificateResponse(CertificateChain, Certificate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCertificateResponse")
	local t = { 
		["CertificateChain"] = CertificateChain,
		["Certificate"] = Certificate,
	}
	M.AssertGetCertificateResponse(t)
	return t
end

local CertificateSummary_keys = { "CertificateArn" = true, "DomainName" = true, nil }

function M.AssertCertificateSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CertificateSummary to be of type 'table'")
	if struct["CertificateArn"] then M.AssertArn(struct["CertificateArn"]) end
	if struct["DomainName"] then M.AssertDomainNameString(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(CertificateSummary_keys[k], "CertificateSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CertificateSummary
-- <p>This structure is returned in the response object of <a>ListCertificates</a> action.</p>
-- @param CertificateArn [Arn] <p>Amazon Resource Name (ARN) of the certificate. This is of the form:</p> <p> <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code> </p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
-- @param DomainName [DomainNameString] <p>Fully qualified domain name (FQDN), such as www.example.com or example.com, for the certificate.</p>
function M.CertificateSummary(CertificateArn, DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CertificateSummary")
	local t = { 
		["CertificateArn"] = CertificateArn,
		["DomainName"] = DomainName,
	}
	M.AssertCertificateSummary(t)
	return t
end

local TooManyTagsException_keys = { "message" = true, nil }

function M.AssertTooManyTagsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyTagsException to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(TooManyTagsException_keys[k], "TooManyTagsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyTagsException
-- <p>The request contains too many tags. Try the request again with fewer tags.</p>
-- @param message [String] <p>The request contains too many tags. Try the request again with fewer tags.</p>
function M.TooManyTagsException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyTagsException")
	local t = { 
		["message"] = message,
	}
	M.AssertTooManyTagsException(t)
	return t
end

local ListCertificatesRequest_keys = { "NextToken" = true, "CertificateStatuses" = true, "MaxItems" = true, nil }

function M.AssertListCertificatesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCertificatesRequest to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["CertificateStatuses"] then M.AssertCertificateStatuses(struct["CertificateStatuses"]) end
	if struct["MaxItems"] then M.AssertMaxItems(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(ListCertificatesRequest_keys[k], "ListCertificatesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCertificatesRequest
--  
-- @param NextToken [NextToken] <p>Use this parameter only when paginating results and only in a subsequent request after you receive a response with truncated results. Set it to the value of <code>NextToken</code> from the response you just received.</p>
-- @param CertificateStatuses [CertificateStatuses] <p>The status or statuses on which to filter the list of ACM Certificates.</p>
-- @param MaxItems [MaxItems] <p>Use this parameter when paginating results to specify the maximum number of items to return in the response. If additional items exist beyond the number you specify, the <code>NextToken</code> element is sent in the response. Use this <code>NextToken</code> value in a subsequent request to retrieve additional items.</p>
function M.ListCertificatesRequest(NextToken, CertificateStatuses, MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListCertificatesRequest")
	local t = { 
		["NextToken"] = NextToken,
		["CertificateStatuses"] = CertificateStatuses,
		["MaxItems"] = MaxItems,
	}
	M.AssertListCertificatesRequest(t)
	return t
end

local RemoveTagsFromCertificateRequest_keys = { "CertificateArn" = true, "Tags" = true, nil }

function M.AssertRemoveTagsFromCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveTagsFromCertificateRequest to be of type 'table'")
	assert(struct["CertificateArn"], "Expected key CertificateArn to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["CertificateArn"] then M.AssertArn(struct["CertificateArn"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(RemoveTagsFromCertificateRequest_keys[k], "RemoveTagsFromCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveTagsFromCertificateRequest
--  
-- @param CertificateArn [Arn] <p>String that contains the ARN of the ACM Certificate with one or more tags that you want to remove. This must be of the form:</p> <p> <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code> </p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
-- @param Tags [TagList] <p>The key-value pair that defines the tag to remove.</p>
-- Required parameter: CertificateArn
-- Required parameter: Tags
function M.RemoveTagsFromCertificateRequest(CertificateArn, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveTagsFromCertificateRequest")
	local t = { 
		["CertificateArn"] = CertificateArn,
		["Tags"] = Tags,
	}
	M.AssertRemoveTagsFromCertificateRequest(t)
	return t
end

local DescribeCertificateResponse_keys = { "Certificate" = true, nil }

function M.AssertDescribeCertificateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCertificateResponse to be of type 'table'")
	if struct["Certificate"] then M.AssertCertificateDetail(struct["Certificate"]) end
	for k,_ in pairs(struct) do
		assert(DescribeCertificateResponse_keys[k], "DescribeCertificateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCertificateResponse
--  
-- @param Certificate [CertificateDetail] <p>Metadata about an ACM certificate.</p>
function M.DescribeCertificateResponse(Certificate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeCertificateResponse")
	local t = { 
		["Certificate"] = Certificate,
	}
	M.AssertDescribeCertificateResponse(t)
	return t
end

local RequestCertificateRequest_keys = { "IdempotencyToken" = true, "SubjectAlternativeNames" = true, "DomainValidationOptions" = true, "DomainName" = true, nil }

function M.AssertRequestCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RequestCertificateRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["IdempotencyToken"] then M.AssertIdempotencyToken(struct["IdempotencyToken"]) end
	if struct["SubjectAlternativeNames"] then M.AssertDomainList(struct["SubjectAlternativeNames"]) end
	if struct["DomainValidationOptions"] then M.AssertDomainValidationOptionList(struct["DomainValidationOptions"]) end
	if struct["DomainName"] then M.AssertDomainNameString(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(RequestCertificateRequest_keys[k], "RequestCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RequestCertificateRequest
--  
-- @param IdempotencyToken [IdempotencyToken] <p>Customer chosen string that can be used to distinguish between calls to <code>RequestCertificate</code>. Idempotency tokens time out after one hour. Therefore, if you call <code>RequestCertificate</code> multiple times with the same idempotency token within one hour, ACM recognizes that you are requesting only one certificate and will issue only one. If you change the idempotency token for each call, ACM recognizes that you are requesting multiple certificates.</p>
-- @param SubjectAlternativeNames [DomainList] <p>Additional FQDNs to be included in the Subject Alternative Name extension of the ACM Certificate. For example, add the name www.example.net to a certificate for which the <code>DomainName</code> field is www.example.com if users can reach your site by using either name. The maximum number of domain names that you can add to an ACM Certificate is 100. However, the initial limit is 10 domain names. If you need more than 10 names, you must request a limit increase. For more information, see <a href="http://docs.aws.amazon.com/acm/latest/userguide/acm-limits.html">Limits</a>.</p>
-- @param DomainValidationOptions [DomainValidationOptionList] <p>The domain name that you want ACM to use to send you emails to validate your ownership of the domain.</p>
-- @param DomainName [DomainNameString] <p> Fully qualified domain name (FQDN), such as www.example.com, of the site that you want to secure with an ACM Certificate. Use an asterisk (*) to create a wildcard certificate that protects several sites in the same domain. For example, *.example.com protects www.example.com, site.example.com, and images.example.com. </p> <p> The maximum length of a DNS name is 253 octets. The name is made up of multiple labels separated by periods. No label can be longer than 63 octets. Consider the following examples: </p> <p> <code>(63 octets).(63 octets).(63 octets).(61 octets)</code> is legal because the total length is 253 octets (63+1+63+1+63+1+61) and no label exceeds 63 octets. </p> <p> <code>(64 octets).(63 octets).(63 octets).(61 octets)</code> is not legal because the total length exceeds 253 octets (64+1+63+1+63+1+61) and the first label exceeds 63 octets. </p> <p> <code>(63 octets).(63 octets).(63 octets).(62 octets)</code> is not legal because the total length of the DNS name (63+1+63+1+63+1+62) exceeds 253 octets. </p>
-- Required parameter: DomainName
function M.RequestCertificateRequest(IdempotencyToken, SubjectAlternativeNames, DomainValidationOptions, DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RequestCertificateRequest")
	local t = { 
		["IdempotencyToken"] = IdempotencyToken,
		["SubjectAlternativeNames"] = SubjectAlternativeNames,
		["DomainValidationOptions"] = DomainValidationOptions,
		["DomainName"] = DomainName,
	}
	M.AssertRequestCertificateRequest(t)
	return t
end

local DomainValidation_keys = { "ValidationEmails" = true, "ValidationStatus" = true, "ValidationDomain" = true, "DomainName" = true, nil }

function M.AssertDomainValidation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DomainValidation to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["ValidationEmails"] then M.AssertValidationEmailList(struct["ValidationEmails"]) end
	if struct["ValidationStatus"] then M.AssertDomainStatus(struct["ValidationStatus"]) end
	if struct["ValidationDomain"] then M.AssertDomainNameString(struct["ValidationDomain"]) end
	if struct["DomainName"] then M.AssertDomainNameString(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(DomainValidation_keys[k], "DomainValidation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DomainValidation
-- <p>Contains information about the validation of each domain name in the certificate.</p>
-- @param ValidationEmails [ValidationEmailList] <p>A list of email addresses that ACM used to send domain validation emails.</p>
-- @param ValidationStatus [DomainStatus] <p>The validation status of the domain name.</p>
-- @param ValidationDomain [DomainNameString] <p>The domain name that ACM used to send domain validation emails.</p>
-- @param DomainName [DomainNameString] <p>A fully qualified domain name (FQDN) in the certificate. For example, <code>www.example.com</code> or <code>example.com</code>.</p>
-- Required parameter: DomainName
function M.DomainValidation(ValidationEmails, ValidationStatus, ValidationDomain, DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DomainValidation")
	local t = { 
		["ValidationEmails"] = ValidationEmails,
		["ValidationStatus"] = ValidationStatus,
		["ValidationDomain"] = ValidationDomain,
		["DomainName"] = DomainName,
	}
	M.AssertDomainValidation(t)
	return t
end

local ListTagsForCertificateResponse_keys = { "Tags" = true, nil }

function M.AssertListTagsForCertificateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForCertificateResponse to be of type 'table'")
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(ListTagsForCertificateResponse_keys[k], "ListTagsForCertificateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForCertificateResponse
--  
-- @param Tags [TagList] <p>The key-value pairs that define the applied tags.</p>
function M.ListTagsForCertificateResponse(Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsForCertificateResponse")
	local t = { 
		["Tags"] = Tags,
	}
	M.AssertListTagsForCertificateResponse(t)
	return t
end

local ResourceInUseException_keys = { "message" = true, nil }

function M.AssertResourceInUseException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceInUseException to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ResourceInUseException_keys[k], "ResourceInUseException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceInUseException
-- <p>The certificate is in use by another AWS service in the caller's account. Remove the association and try again.</p>
-- @param message [String] <p>The certificate is in use by another AWS service in the caller's account. Remove the association and try again.</p>
function M.ResourceInUseException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceInUseException")
	local t = { 
		["message"] = message,
	}
	M.AssertResourceInUseException(t)
	return t
end

local ListCertificatesResponse_keys = { "CertificateSummaryList" = true, "NextToken" = true, nil }

function M.AssertListCertificatesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCertificatesResponse to be of type 'table'")
	if struct["CertificateSummaryList"] then M.AssertCertificateSummaryList(struct["CertificateSummaryList"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListCertificatesResponse_keys[k], "ListCertificatesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCertificatesResponse
--  
-- @param CertificateSummaryList [CertificateSummaryList] <p>A list of ACM Certificates.</p>
-- @param NextToken [NextToken] <p>When the list is truncated, this value is present and contains the value to use for the <code>NextToken</code> parameter in a subsequent pagination request.</p>
function M.ListCertificatesResponse(CertificateSummaryList, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListCertificatesResponse")
	local t = { 
		["CertificateSummaryList"] = CertificateSummaryList,
		["NextToken"] = NextToken,
	}
	M.AssertListCertificatesResponse(t)
	return t
end

local InvalidTagException_keys = { "message" = true, nil }

function M.AssertInvalidTagException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidTagException to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidTagException_keys[k], "InvalidTagException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidTagException
-- <p>One or both of the values that make up the key-value pair is not valid. For example, you cannot specify a tag value that begins with <code>aws:</code>.</p>
-- @param message [String] <p>One or both of the values that make up the key-value pair is not valid. For example, you cannot specify a tag value that begins with <code>aws:</code>.</p>
function M.InvalidTagException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidTagException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidTagException(t)
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
-- <p>A key-value pair that identifies or specifies metadata about an ACM resource.</p>
-- @param Value [TagValue] <p>The value of the tag.</p>
-- @param Key [TagKey] <p>The key of the tag.</p>
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

local ImportCertificateRequest_keys = { "CertificateArn" = true, "CertificateChain" = true, "PrivateKey" = true, "Certificate" = true, nil }

function M.AssertImportCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImportCertificateRequest to be of type 'table'")
	assert(struct["Certificate"], "Expected key Certificate to exist in table")
	assert(struct["PrivateKey"], "Expected key PrivateKey to exist in table")
	if struct["CertificateArn"] then M.AssertArn(struct["CertificateArn"]) end
	if struct["CertificateChain"] then M.AssertCertificateChainBlob(struct["CertificateChain"]) end
	if struct["PrivateKey"] then M.AssertPrivateKeyBlob(struct["PrivateKey"]) end
	if struct["Certificate"] then M.AssertCertificateBodyBlob(struct["Certificate"]) end
	for k,_ in pairs(struct) do
		assert(ImportCertificateRequest_keys[k], "ImportCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImportCertificateRequest
--  
-- @param CertificateArn [Arn] <p>The <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of an imported certificate to replace. To import a new certificate, omit this field.</p>
-- @param CertificateChain [CertificateChainBlob] <p>The certificate chain. It must be PEM-encoded.</p>
-- @param PrivateKey [PrivateKeyBlob] <p>The private key that matches the public key in the certificate. It must meet the following requirements:</p> <ul> <li> <p>Must be PEM-encoded.</p> </li> <li> <p>Must be unencrypted. You cannot import a private key that is protected by a password or passphrase.</p> </li> </ul>
-- @param Certificate [CertificateBodyBlob] <p>The certificate to import. It must meet the following requirements:</p> <ul> <li> <p>Must be PEM-encoded.</p> </li> <li> <p>Must contain a 1024-bit or 2048-bit RSA public key.</p> </li> <li> <p>Must be valid at the time of import. You cannot import a certificate before its validity period begins (the certificate's <code>NotBefore</code> date) or after it expires (the certificate's <code>NotAfter</code> date).</p> </li> </ul>
-- Required parameter: Certificate
-- Required parameter: PrivateKey
function M.ImportCertificateRequest(CertificateArn, CertificateChain, PrivateKey, Certificate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ImportCertificateRequest")
	local t = { 
		["CertificateArn"] = CertificateArn,
		["CertificateChain"] = CertificateChain,
		["PrivateKey"] = PrivateKey,
		["Certificate"] = Certificate,
	}
	M.AssertImportCertificateRequest(t)
	return t
end

local RequestInProgressException_keys = { "message" = true, nil }

function M.AssertRequestInProgressException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RequestInProgressException to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(RequestInProgressException_keys[k], "RequestInProgressException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RequestInProgressException
-- <p>The certificate request is in process and the certificate in your account has not yet been issued.</p>
-- @param message [String] <p>The certificate request is in process and the certificate in your account has not yet been issued.</p>
function M.RequestInProgressException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RequestInProgressException")
	local t = { 
		["message"] = message,
	}
	M.AssertRequestInProgressException(t)
	return t
end

local ImportCertificateResponse_keys = { "CertificateArn" = true, nil }

function M.AssertImportCertificateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImportCertificateResponse to be of type 'table'")
	if struct["CertificateArn"] then M.AssertArn(struct["CertificateArn"]) end
	for k,_ in pairs(struct) do
		assert(ImportCertificateResponse_keys[k], "ImportCertificateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImportCertificateResponse
--  
-- @param CertificateArn [Arn] <p>The <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of the imported certificate.</p>
function M.ImportCertificateResponse(CertificateArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ImportCertificateResponse")
	local t = { 
		["CertificateArn"] = CertificateArn,
	}
	M.AssertImportCertificateResponse(t)
	return t
end

local DescribeCertificateRequest_keys = { "CertificateArn" = true, nil }

function M.AssertDescribeCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCertificateRequest to be of type 'table'")
	assert(struct["CertificateArn"], "Expected key CertificateArn to exist in table")
	if struct["CertificateArn"] then M.AssertArn(struct["CertificateArn"]) end
	for k,_ in pairs(struct) do
		assert(DescribeCertificateRequest_keys[k], "DescribeCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCertificateRequest
--  
-- @param CertificateArn [Arn] <p>The Amazon Resource Name (ARN) of the ACM Certificate. The ARN must have the following form:</p> <p> <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code> </p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
-- Required parameter: CertificateArn
function M.DescribeCertificateRequest(CertificateArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeCertificateRequest")
	local t = { 
		["CertificateArn"] = CertificateArn,
	}
	M.AssertDescribeCertificateRequest(t)
	return t
end

local DomainValidationOption_keys = { "ValidationDomain" = true, "DomainName" = true, nil }

function M.AssertDomainValidationOption(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DomainValidationOption to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["ValidationDomain"], "Expected key ValidationDomain to exist in table")
	if struct["ValidationDomain"] then M.AssertDomainNameString(struct["ValidationDomain"]) end
	if struct["DomainName"] then M.AssertDomainNameString(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(DomainValidationOption_keys[k], "DomainValidationOption contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DomainValidationOption
-- <p>Contains information about the domain names that you want ACM to use to send you emails to validate your ownership of the domain.</p>
-- @param ValidationDomain [DomainNameString] <p>The domain name that you want ACM to use to send you validation emails. This domain name is the suffix of the email addresses that you want ACM to use. This must be the same as the <code>DomainName</code> value or a superdomain of the <code>DomainName</code> value. For example, if you request a certificate for <code>testing.example.com</code>, you can specify <code>example.com</code> for this value. In that case, ACM sends domain validation emails to the following five addresses:</p> <ul> <li> <p>admin@example.com</p> </li> <li> <p>administrator@example.com</p> </li> <li> <p>hostmaster@example.com</p> </li> <li> <p>postmaster@example.com</p> </li> <li> <p>webmaster@example.com</p> </li> </ul>
-- @param DomainName [DomainNameString] <p>A fully qualified domain name (FQDN) in the certificate request.</p>
-- Required parameter: DomainName
-- Required parameter: ValidationDomain
function M.DomainValidationOption(ValidationDomain, DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DomainValidationOption")
	local t = { 
		["ValidationDomain"] = ValidationDomain,
		["DomainName"] = DomainName,
	}
	M.AssertDomainValidationOption(t)
	return t
end

local ResendValidationEmailRequest_keys = { "CertificateArn" = true, "Domain" = true, "ValidationDomain" = true, nil }

function M.AssertResendValidationEmailRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResendValidationEmailRequest to be of type 'table'")
	assert(struct["CertificateArn"], "Expected key CertificateArn to exist in table")
	assert(struct["Domain"], "Expected key Domain to exist in table")
	assert(struct["ValidationDomain"], "Expected key ValidationDomain to exist in table")
	if struct["CertificateArn"] then M.AssertArn(struct["CertificateArn"]) end
	if struct["Domain"] then M.AssertDomainNameString(struct["Domain"]) end
	if struct["ValidationDomain"] then M.AssertDomainNameString(struct["ValidationDomain"]) end
	for k,_ in pairs(struct) do
		assert(ResendValidationEmailRequest_keys[k], "ResendValidationEmailRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResendValidationEmailRequest
--  
-- @param CertificateArn [Arn] <p>String that contains the ARN of the requested certificate. The certificate ARN is generated and returned by the <a>RequestCertificate</a> action as soon as the request is made. By default, using this parameter causes email to be sent to all top-level domains you specified in the certificate request.</p> <p>The ARN must be of the form:</p> <p> <code>arn:aws:acm:us-east-1:123456789012:certificate/12345678-1234-1234-1234-123456789012</code> </p>
-- @param Domain [DomainNameString] <p>The fully qualified domain name (FQDN) of the certificate that needs to be validated.</p>
-- @param ValidationDomain [DomainNameString] <p>The base validation domain that will act as the suffix of the email addresses that are used to send the emails. This must be the same as the <code>Domain</code> value or a superdomain of the <code>Domain</code> value. For example, if you requested a certificate for <code>site.subdomain.example.com</code> and specify a <b>ValidationDomain</b> of <code>subdomain.example.com</code>, ACM sends email to the domain registrant, technical contact, and administrative contact in WHOIS and the following five addresses:</p> <ul> <li> <p>admin@subdomain.example.com</p> </li> <li> <p>administrator@subdomain.example.com</p> </li> <li> <p>hostmaster@subdomain.example.com</p> </li> <li> <p>postmaster@subdomain.example.com</p> </li> <li> <p>webmaster@subdomain.example.com</p> </li> </ul>
-- Required parameter: CertificateArn
-- Required parameter: Domain
-- Required parameter: ValidationDomain
function M.ResendValidationEmailRequest(CertificateArn, Domain, ValidationDomain, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResendValidationEmailRequest")
	local t = { 
		["CertificateArn"] = CertificateArn,
		["Domain"] = Domain,
		["ValidationDomain"] = ValidationDomain,
	}
	M.AssertResendValidationEmailRequest(t)
	return t
end

local InvalidArnException_keys = { "message" = true, nil }

function M.AssertInvalidArnException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidArnException to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidArnException_keys[k], "InvalidArnException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidArnException
-- <p>The requested Amazon Resource Name (ARN) does not refer to an existing resource.</p>
-- @param message [String] <p>The requested Amazon Resource Name (ARN) does not refer to an existing resource.</p>
function M.InvalidArnException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidArnException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidArnException(t)
	return t
end

local RenewalSummary_keys = { "RenewalStatus" = true, "DomainValidationOptions" = true, nil }

function M.AssertRenewalSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RenewalSummary to be of type 'table'")
	assert(struct["RenewalStatus"], "Expected key RenewalStatus to exist in table")
	assert(struct["DomainValidationOptions"], "Expected key DomainValidationOptions to exist in table")
	if struct["RenewalStatus"] then M.AssertRenewalStatus(struct["RenewalStatus"]) end
	if struct["DomainValidationOptions"] then M.AssertDomainValidationList(struct["DomainValidationOptions"]) end
	for k,_ in pairs(struct) do
		assert(RenewalSummary_keys[k], "RenewalSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RenewalSummary
-- <p>Contains information about the status of ACM's <a href="http://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html">managed renewal</a> for the certificate. This structure exists only when the certificate type is <code>AMAZON_ISSUED</code>.</p>
-- @param RenewalStatus [RenewalStatus] <p>The status of ACM's <a href="http://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html">managed renewal</a> of the certificate.</p>
-- @param DomainValidationOptions [DomainValidationList] <p>Contains information about the validation of each domain name in the certificate, as it pertains to ACM's <a href="http://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html">managed renewal</a>. This is different from the initial validation that occurs as a result of the <a>RequestCertificate</a> request. This field exists only when the certificate type is <code>AMAZON_ISSUED</code>.</p>
-- Required parameter: RenewalStatus
-- Required parameter: DomainValidationOptions
function M.RenewalSummary(RenewalStatus, DomainValidationOptions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RenewalSummary")
	local t = { 
		["RenewalStatus"] = RenewalStatus,
		["DomainValidationOptions"] = DomainValidationOptions,
	}
	M.AssertRenewalSummary(t)
	return t
end

local ListTagsForCertificateRequest_keys = { "CertificateArn" = true, nil }

function M.AssertListTagsForCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForCertificateRequest to be of type 'table'")
	assert(struct["CertificateArn"], "Expected key CertificateArn to exist in table")
	if struct["CertificateArn"] then M.AssertArn(struct["CertificateArn"]) end
	for k,_ in pairs(struct) do
		assert(ListTagsForCertificateRequest_keys[k], "ListTagsForCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForCertificateRequest
--  
-- @param CertificateArn [Arn] <p>String that contains the ARN of the ACM Certificate for which you want to list the tags. This has the following form:</p> <p> <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code> </p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
-- Required parameter: CertificateArn
function M.ListTagsForCertificateRequest(CertificateArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsForCertificateRequest")
	local t = { 
		["CertificateArn"] = CertificateArn,
	}
	M.AssertListTagsForCertificateRequest(t)
	return t
end

local RequestCertificateResponse_keys = { "CertificateArn" = true, nil }

function M.AssertRequestCertificateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RequestCertificateResponse to be of type 'table'")
	if struct["CertificateArn"] then M.AssertArn(struct["CertificateArn"]) end
	for k,_ in pairs(struct) do
		assert(RequestCertificateResponse_keys[k], "RequestCertificateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RequestCertificateResponse
--  
-- @param CertificateArn [Arn] <p>String that contains the ARN of the issued certificate. This must be of the form:</p> <p> <code>arn:aws:acm:us-east-1:123456789012:certificate/12345678-1234-1234-1234-123456789012</code> </p>
function M.RequestCertificateResponse(CertificateArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RequestCertificateResponse")
	local t = { 
		["CertificateArn"] = CertificateArn,
	}
	M.AssertRequestCertificateResponse(t)
	return t
end

local AddTagsToCertificateRequest_keys = { "CertificateArn" = true, "Tags" = true, nil }

function M.AssertAddTagsToCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddTagsToCertificateRequest to be of type 'table'")
	assert(struct["CertificateArn"], "Expected key CertificateArn to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["CertificateArn"] then M.AssertArn(struct["CertificateArn"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(AddTagsToCertificateRequest_keys[k], "AddTagsToCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddTagsToCertificateRequest
--  
-- @param CertificateArn [Arn] <p>String that contains the ARN of the ACM Certificate to which the tag is to be applied. This must be of the form:</p> <p> <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code> </p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
-- @param Tags [TagList] <p>The key-value pair that defines the tag. The tag value is optional.</p>
-- Required parameter: CertificateArn
-- Required parameter: Tags
function M.AddTagsToCertificateRequest(CertificateArn, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddTagsToCertificateRequest")
	local t = { 
		["CertificateArn"] = CertificateArn,
		["Tags"] = Tags,
	}
	M.AssertAddTagsToCertificateRequest(t)
	return t
end

local InvalidDomainValidationOptionsException_keys = { "message" = true, nil }

function M.AssertInvalidDomainValidationOptionsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDomainValidationOptionsException to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidDomainValidationOptionsException_keys[k], "InvalidDomainValidationOptionsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDomainValidationOptionsException
-- <p>One or more values in the <a>DomainValidationOption</a> structure is incorrect.</p>
-- @param message [String] <p>One or more values in the <a>DomainValidationOption</a> structure is incorrect.</p>
function M.InvalidDomainValidationOptionsException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidDomainValidationOptionsException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidDomainValidationOptionsException(t)
	return t
end

local GetCertificateRequest_keys = { "CertificateArn" = true, nil }

function M.AssertGetCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCertificateRequest to be of type 'table'")
	assert(struct["CertificateArn"], "Expected key CertificateArn to exist in table")
	if struct["CertificateArn"] then M.AssertArn(struct["CertificateArn"]) end
	for k,_ in pairs(struct) do
		assert(GetCertificateRequest_keys[k], "GetCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCertificateRequest
--  
-- @param CertificateArn [Arn] <p>String that contains a certificate ARN in the following format:</p> <p> <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code> </p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
-- Required parameter: CertificateArn
function M.GetCertificateRequest(CertificateArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCertificateRequest")
	local t = { 
		["CertificateArn"] = CertificateArn,
	}
	M.AssertGetCertificateRequest(t)
	return t
end

local CertificateDetail_keys = { "CertificateArn" = true, "Status" = true, "SubjectAlternativeNames" = true, "RenewalSummary" = true, "DomainName" = true, "RevokedAt" = true, "Type" = true, "NotBefore" = true, "KeyAlgorithm" = true, "NotAfter" = true, "ImportedAt" = true, "InUseBy" = true, "SignatureAlgorithm" = true, "CreatedAt" = true, "IssuedAt" = true, "Serial" = true, "Issuer" = true, "RevocationReason" = true, "FailureReason" = true, "DomainValidationOptions" = true, "Subject" = true, nil }

function M.AssertCertificateDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CertificateDetail to be of type 'table'")
	if struct["CertificateArn"] then M.AssertArn(struct["CertificateArn"]) end
	if struct["Status"] then M.AssertCertificateStatus(struct["Status"]) end
	if struct["SubjectAlternativeNames"] then M.AssertDomainList(struct["SubjectAlternativeNames"]) end
	if struct["RenewalSummary"] then M.AssertRenewalSummary(struct["RenewalSummary"]) end
	if struct["DomainName"] then M.AssertDomainNameString(struct["DomainName"]) end
	if struct["RevokedAt"] then M.AssertTStamp(struct["RevokedAt"]) end
	if struct["Type"] then M.AssertCertificateType(struct["Type"]) end
	if struct["NotBefore"] then M.AssertTStamp(struct["NotBefore"]) end
	if struct["KeyAlgorithm"] then M.AssertKeyAlgorithm(struct["KeyAlgorithm"]) end
	if struct["NotAfter"] then M.AssertTStamp(struct["NotAfter"]) end
	if struct["ImportedAt"] then M.AssertTStamp(struct["ImportedAt"]) end
	if struct["InUseBy"] then M.AssertInUseList(struct["InUseBy"]) end
	if struct["SignatureAlgorithm"] then M.AssertString(struct["SignatureAlgorithm"]) end
	if struct["CreatedAt"] then M.AssertTStamp(struct["CreatedAt"]) end
	if struct["IssuedAt"] then M.AssertTStamp(struct["IssuedAt"]) end
	if struct["Serial"] then M.AssertString(struct["Serial"]) end
	if struct["Issuer"] then M.AssertString(struct["Issuer"]) end
	if struct["RevocationReason"] then M.AssertRevocationReason(struct["RevocationReason"]) end
	if struct["FailureReason"] then M.AssertFailureReason(struct["FailureReason"]) end
	if struct["DomainValidationOptions"] then M.AssertDomainValidationList(struct["DomainValidationOptions"]) end
	if struct["Subject"] then M.AssertString(struct["Subject"]) end
	for k,_ in pairs(struct) do
		assert(CertificateDetail_keys[k], "CertificateDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CertificateDetail
-- <p>Contains metadata about an ACM certificate. This structure is returned in the response to a <a>DescribeCertificate</a> request.</p>
-- @param CertificateArn [Arn] <p>The Amazon Resource Name (ARN) of the certificate. For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>
-- @param Status [CertificateStatus] <p>The status of the certificate.</p>
-- @param SubjectAlternativeNames [DomainList] <p>One or more domain names (subject alternative names) included in the certificate. This list contains the domain names that are bound to the public key that is contained in the certificate. The subject alternative names include the canonical domain name (CN) of the certificate and additional domain names that can be used to connect to the website.</p>
-- @param RenewalSummary [RenewalSummary] <p>Contains information about the status of ACM's <a href="http://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html">managed renewal</a> for the certificate. This field exists only when the certificate type is <code>AMAZON_ISSUED</code>.</p>
-- @param DomainName [DomainNameString] <p>The fully qualified domain name for the certificate, such as www.example.com or example.com.</p>
-- @param RevokedAt [TStamp] <p>The time at which the certificate was revoked. This value exists only when the certificate status is <code>REVOKED</code>.</p>
-- @param Type [CertificateType] <p>The source of the certificate. For certificates provided by ACM, this value is <code>AMAZON_ISSUED</code>. For certificates that you imported with <a>ImportCertificate</a>, this value is <code>IMPORTED</code>. ACM does not provide <a href="http://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html">managed renewal</a> for imported certificates. For more information about the differences between certificates that you import and those that ACM provides, see <a href="http://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html">Importing Certificates</a> in the <i>AWS Certificate Manager User Guide</i>.</p>
-- @param NotBefore [TStamp] <p>The time before which the certificate is not valid.</p>
-- @param KeyAlgorithm [KeyAlgorithm] <p>The algorithm that was used to generate the key pair (the public and private key).</p>
-- @param NotAfter [TStamp] <p>The time after which the certificate is not valid.</p>
-- @param ImportedAt [TStamp] <p>The date and time at which the certificate was imported. This value exists only when the certificate type is <code>IMPORTED</code>.</p>
-- @param InUseBy [InUseList] <p>A list of ARNs for the AWS resources that are using the certificate. A certificate can be used by multiple AWS resources.</p>
-- @param SignatureAlgorithm [String] <p>The algorithm that was used to sign the certificate.</p>
-- @param CreatedAt [TStamp] <p>The time at which the certificate was requested. This value exists only when the certificate type is <code>AMAZON_ISSUED</code>.</p>
-- @param IssuedAt [TStamp] <p>The time at which the certificate was issued. This value exists only when the certificate type is <code>AMAZON_ISSUED</code>.</p>
-- @param Serial [String] <p>The serial number of the certificate.</p>
-- @param Issuer [String] <p>The name of the certificate authority that issued and signed the certificate.</p>
-- @param RevocationReason [RevocationReason] <p>The reason the certificate was revoked. This value exists only when the certificate status is <code>REVOKED</code>.</p>
-- @param FailureReason [FailureReason] <p>The reason the certificate request failed. This value exists only when the certificate status is <code>FAILED</code>. For more information, see <a href="http://docs.aws.amazon.com/acm/latest/userguide/troubleshooting.html#troubleshooting-failed">Certificate Request Failed</a> in the <i>AWS Certificate Manager User Guide</i>.</p>
-- @param DomainValidationOptions [DomainValidationList] <p>Contains information about the initial validation of each domain name that occurs as a result of the <a>RequestCertificate</a> request. This field exists only when the certificate type is <code>AMAZON_ISSUED</code>.</p>
-- @param Subject [String] <p>The name of the entity that is associated with the public key contained in the certificate.</p>
function M.CertificateDetail(CertificateArn, Status, SubjectAlternativeNames, RenewalSummary, DomainName, RevokedAt, Type, NotBefore, KeyAlgorithm, NotAfter, ImportedAt, InUseBy, SignatureAlgorithm, CreatedAt, IssuedAt, Serial, Issuer, RevocationReason, FailureReason, DomainValidationOptions, Subject, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CertificateDetail")
	local t = { 
		["CertificateArn"] = CertificateArn,
		["Status"] = Status,
		["SubjectAlternativeNames"] = SubjectAlternativeNames,
		["RenewalSummary"] = RenewalSummary,
		["DomainName"] = DomainName,
		["RevokedAt"] = RevokedAt,
		["Type"] = Type,
		["NotBefore"] = NotBefore,
		["KeyAlgorithm"] = KeyAlgorithm,
		["NotAfter"] = NotAfter,
		["ImportedAt"] = ImportedAt,
		["InUseBy"] = InUseBy,
		["SignatureAlgorithm"] = SignatureAlgorithm,
		["CreatedAt"] = CreatedAt,
		["IssuedAt"] = IssuedAt,
		["Serial"] = Serial,
		["Issuer"] = Issuer,
		["RevocationReason"] = RevocationReason,
		["FailureReason"] = FailureReason,
		["DomainValidationOptions"] = DomainValidationOptions,
		["Subject"] = Subject,
	}
	M.AssertCertificateDetail(t)
	return t
end

local InvalidStateException_keys = { "message" = true, nil }

function M.AssertInvalidStateException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidStateException to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidStateException_keys[k], "InvalidStateException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidStateException
-- <p>Processing has reached an invalid state. For example, this exception can occur if the specified domain is not using email validation, or the current certificate status does not permit the requested operation. See the exception message returned by ACM to determine which state is not valid.</p>
-- @param message [String] <p>Processing has reached an invalid state. For example, this exception can occur if the specified domain is not using email validation, or the current certificate status does not permit the requested operation. See the exception message returned by ACM to determine which state is not valid.</p>
function M.InvalidStateException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidStateException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidStateException(t)
	return t
end

local ResourceNotFoundException_keys = { "message" = true, nil }

function M.AssertResourceNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundException to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ResourceNotFoundException_keys[k], "ResourceNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundException
-- <p>The specified certificate cannot be found in the caller's account, or the caller's account cannot be found.</p>
-- @param message [String] <p>The specified certificate cannot be found in the caller's account, or the caller's account cannot be found.</p>
function M.ResourceNotFoundException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundException")
	local t = { 
		["message"] = message,
	}
	M.AssertResourceNotFoundException(t)
	return t
end

function M.AssertDomainStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected DomainStatus to be of type 'string'")
end

--  
function M.DomainStatus(str)
	M.AssertDomainStatus(str)
	return str
end

function M.AssertDomainNameString(str)
	assert(str)
	assert(type(str) == "string", "Expected DomainNameString to be of type 'string'")
	assert(#str <= 253, "Expected string to be max 253 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("^(%*%.)?(((?!-)[A-Za-z0-9-]{0,62}[A-Za-z0-9])%.)+((?!-)[A-Za-z0-9-]{1,62}[A-Za-z0-9])$"), "Expected string to match pattern '^(%*%.)?(((?!-)[A-Za-z0-9-]{0,62}[A-Za-z0-9])%.)+((?!-)[A-Za-z0-9-]{1,62}[A-Za-z0-9])$'")
end

--  
function M.DomainNameString(str)
	M.AssertDomainNameString(str)
	return str
end

function M.AssertKeyAlgorithm(str)
	assert(str)
	assert(type(str) == "string", "Expected KeyAlgorithm to be of type 'string'")
end

--  
function M.KeyAlgorithm(str)
	M.AssertKeyAlgorithm(str)
	return str
end

function M.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
	assert(#str <= 320, "Expected string to be max 320 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%u0009%u000A%u000D%u0020-%u00FF]*"), "Expected string to match pattern '[%u0009%u000A%u000D%u0020-%u00FF]*'")
end

--  
function M.NextToken(str)
	M.AssertNextToken(str)
	return str
end

function M.AssertCertificateBody(str)
	assert(str)
	assert(type(str) == "string", "Expected CertificateBody to be of type 'string'")
	assert(#str <= 32768, "Expected string to be max 32768 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("-{5}BEGIN CERTIFICATE-{5}%u000D?%u000A([A-Za-z0-9/+]{64}%u000D?%u000A)*[A-Za-z0-9/+]{1,64}={0,2}%u000D?%u000A-{5}END CERTIFICATE-{5}(%u000D?%u000A)?"), "Expected string to match pattern '-{5}BEGIN CERTIFICATE-{5}%u000D?%u000A([A-Za-z0-9/+]{64}%u000D?%u000A)*[A-Za-z0-9/+]{1,64}={0,2}%u000D?%u000A-{5}END CERTIFICATE-{5}(%u000D?%u000A)?'")
end

--  
function M.CertificateBody(str)
	M.AssertCertificateBody(str)
	return str
end

function M.AssertTagKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TagKey to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%p{L}%p{Z}%p{N}_.:%/=+%-@]*"), "Expected string to match pattern '[%p{L}%p{Z}%p{N}_.:%/=+%-@]*'")
end

--  
function M.TagKey(str)
	M.AssertTagKey(str)
	return str
end

function M.AssertRenewalStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected RenewalStatus to be of type 'string'")
end

--  
function M.RenewalStatus(str)
	M.AssertRenewalStatus(str)
	return str
end

function M.AssertCertificateChain(str)
	assert(str)
	assert(type(str) == "string", "Expected CertificateChain to be of type 'string'")
	assert(#str <= 2097152, "Expected string to be max 2097152 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("(-{5}BEGIN CERTIFICATE-{5}%u000D?%u000A([A-Za-z0-9/+]{64}%u000D?%u000A)*[A-Za-z0-9/+]{1,64}={0,2}%u000D?%u000A-{5}END CERTIFICATE-{5}%u000D?%u000A)*-{5}BEGIN CERTIFICATE-{5}%u000D?%u000A([A-Za-z0-9/+]{64}%u000D?%u000A)*[A-Za-z0-9/+]{1,64}={0,2}%u000D?%u000A-{5}END CERTIFICATE-{5}(%u000D?%u000A)?"), "Expected string to match pattern '(-{5}BEGIN CERTIFICATE-{5}%u000D?%u000A([A-Za-z0-9/+]{64}%u000D?%u000A)*[A-Za-z0-9/+]{1,64}={0,2}%u000D?%u000A-{5}END CERTIFICATE-{5}%u000D?%u000A)*-{5}BEGIN CERTIFICATE-{5}%u000D?%u000A([A-Za-z0-9/+]{64}%u000D?%u000A)*[A-Za-z0-9/+]{1,64}={0,2}%u000D?%u000A-{5}END CERTIFICATE-{5}(%u000D?%u000A)?'")
end

--  
function M.CertificateChain(str)
	M.AssertCertificateChain(str)
	return str
end

function M.AssertFailureReason(str)
	assert(str)
	assert(type(str) == "string", "Expected FailureReason to be of type 'string'")
end

--  
function M.FailureReason(str)
	M.AssertFailureReason(str)
	return str
end

function M.AssertIdempotencyToken(str)
	assert(str)
	assert(type(str) == "string", "Expected IdempotencyToken to be of type 'string'")
	assert(#str <= 32, "Expected string to be max 32 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("%w+"), "Expected string to match pattern '%w+'")
end

--  
function M.IdempotencyToken(str)
	M.AssertIdempotencyToken(str)
	return str
end

function M.AssertCertificateType(str)
	assert(str)
	assert(type(str) == "string", "Expected CertificateType to be of type 'string'")
end

--  
function M.CertificateType(str)
	M.AssertCertificateType(str)
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

function M.AssertTagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TagValue to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(str:match("[%p{L}%p{Z}%p{N}_.:%/=+%-@]*"), "Expected string to match pattern '[%p{L}%p{Z}%p{N}_.:%/=+%-@]*'")
end

--  
function M.TagValue(str)
	M.AssertTagValue(str)
	return str
end

function M.AssertRevocationReason(str)
	assert(str)
	assert(type(str) == "string", "Expected RevocationReason to be of type 'string'")
end

--  
function M.RevocationReason(str)
	M.AssertRevocationReason(str)
	return str
end

function M.AssertCertificateStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected CertificateStatus to be of type 'string'")
end

--  
function M.CertificateStatus(str)
	M.AssertCertificateStatus(str)
	return str
end

function M.AssertArn(str)
	assert(str)
	assert(type(str) == "string", "Expected Arn to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 20, "Expected string to be min 20 characters")
	assert(str:match("arn:[%w+=/,.@-]+:[%w+=/,.@-]+:[%w+=/,.@-]*:[0-9]+:[%w+=,.@-]+(/[%w+=/,.@-]+)*"), "Expected string to match pattern 'arn:[%w+=/,.@-]+:[%w+=/,.@-]+:[%w+=/,.@-]*:[0-9]+:[%w+=,.@-]+(/[%w+=/,.@-]+)*'")
end

--  
function M.Arn(str)
	M.AssertArn(str)
	return str
end

function M.AssertMaxItems(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxItems to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1000, "Expected integer to be max 1000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxItems(integer)
	M.AssertMaxItems(integer)
	return integer
end

function M.AssertTStamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected TStamp to be of type 'string'")
end

function M.TStamp(timestamp)
	M.AssertTStamp(timestamp)
	return timestamp
end

function M.AssertCertificateBodyBlob(blob)
	assert(blob)
	assert(type(string) == "string", "Expected CertificateBodyBlob to be of type 'string'")
	assert(#blob <= 32768, "Expected blob to be max 32768")
	assert(#blob >= 1, "Expected blob to be max 1")
end

function M.CertificateBodyBlob(blob)
	M.AssertCertificateBodyBlob(blob)
	return blob
end

function M.AssertCertificateChainBlob(blob)
	assert(blob)
	assert(type(string) == "string", "Expected CertificateChainBlob to be of type 'string'")
	assert(#blob <= 2097152, "Expected blob to be max 2097152")
	assert(#blob >= 1, "Expected blob to be max 1")
end

function M.CertificateChainBlob(blob)
	M.AssertCertificateChainBlob(blob)
	return blob
end

function M.AssertPrivateKeyBlob(blob)
	assert(blob)
	assert(type(string) == "string", "Expected PrivateKeyBlob to be of type 'string'")
	assert(#blob <= 524288, "Expected blob to be max 524288")
	assert(#blob >= 1, "Expected blob to be max 1")
end

function M.PrivateKeyBlob(blob)
	M.AssertPrivateKeyBlob(blob)
	return blob
end

function M.AssertValidationEmailList(list)
	assert(list)
	assert(type(list) == "table", "Expected ValidationEmailList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.ValidationEmailList(list)
	M.AssertValidationEmailList(list)
	return list
end

function M.AssertDomainValidationList(list)
	assert(list)
	assert(type(list) == "table", "Expected DomainValidationList to be of type ''table")
	assert(#list <= 1000, "Expected list to be contain 1000 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertDomainValidation(v)
	end
end

--  
-- List of DomainValidation objects
function M.DomainValidationList(list)
	M.AssertDomainValidationList(list)
	return list
end

function M.AssertDomainValidationOptionList(list)
	assert(list)
	assert(type(list) == "table", "Expected DomainValidationOptionList to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertDomainValidationOption(v)
	end
end

--  
-- List of DomainValidationOption objects
function M.DomainValidationOptionList(list)
	M.AssertDomainValidationOptionList(list)
	return list
end

function M.AssertDomainList(list)
	assert(list)
	assert(type(list) == "table", "Expected DomainList to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertDomainNameString(v)
	end
end

--  
-- List of DomainNameString objects
function M.DomainList(list)
	M.AssertDomainList(list)
	return list
end

function M.AssertCertificateStatuses(list)
	assert(list)
	assert(type(list) == "table", "Expected CertificateStatuses to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertCertificateStatus(v)
	end
end

--  
-- List of CertificateStatus objects
function M.CertificateStatuses(list)
	M.AssertCertificateStatuses(list)
	return list
end

function M.AssertInUseList(list)
	assert(list)
	assert(type(list) == "table", "Expected InUseList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.InUseList(list)
	M.AssertInUseList(list)
	return list
end

function M.AssertCertificateSummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected CertificateSummaryList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertCertificateSummary(v)
	end
end

--  
-- List of CertificateSummary objects
function M.CertificateSummaryList(list)
	M.AssertCertificateSummaryList(list)
	return list
end

function M.AssertTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
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
			return "acm.amazonaws.com"
		end
	end
	local ss = { "acm" }
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
--- ResendValidationEmail
-- @param ResendValidationEmailRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ResendValidationEmailAsync(ResendValidationEmailRequest, cb)
	assert(ResendValidationEmailRequest, "You must provide a ResendValidationEmailRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CertificateManager.ResendValidationEmail",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ResendValidationEmailRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AddTagsToCertificate
-- @param AddTagsToCertificateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AddTagsToCertificateAsync(AddTagsToCertificateRequest, cb)
	assert(AddTagsToCertificateRequest, "You must provide a AddTagsToCertificateRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CertificateManager.AddTagsToCertificate",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AddTagsToCertificateRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListCertificates
-- @param ListCertificatesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListCertificatesAsync(ListCertificatesRequest, cb)
	assert(ListCertificatesRequest, "You must provide a ListCertificatesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CertificateManager.ListCertificates",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListCertificatesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetCertificate
-- @param GetCertificateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetCertificateAsync(GetCertificateRequest, cb)
	assert(GetCertificateRequest, "You must provide a GetCertificateRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CertificateManager.GetCertificate",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetCertificateRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListTagsForCertificate
-- @param ListTagsForCertificateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListTagsForCertificateAsync(ListTagsForCertificateRequest, cb)
	assert(ListTagsForCertificateRequest, "You must provide a ListTagsForCertificateRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CertificateManager.ListTagsForCertificate",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListTagsForCertificateRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RemoveTagsFromCertificate
-- @param RemoveTagsFromCertificateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RemoveTagsFromCertificateAsync(RemoveTagsFromCertificateRequest, cb)
	assert(RemoveTagsFromCertificateRequest, "You must provide a RemoveTagsFromCertificateRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CertificateManager.RemoveTagsFromCertificate",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RemoveTagsFromCertificateRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RequestCertificate
-- @param RequestCertificateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RequestCertificateAsync(RequestCertificateRequest, cb)
	assert(RequestCertificateRequest, "You must provide a RequestCertificateRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CertificateManager.RequestCertificate",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RequestCertificateRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ImportCertificate
-- @param ImportCertificateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ImportCertificateAsync(ImportCertificateRequest, cb)
	assert(ImportCertificateRequest, "You must provide a ImportCertificateRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CertificateManager.ImportCertificate",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ImportCertificateRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteCertificate
-- @param DeleteCertificateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteCertificateAsync(DeleteCertificateRequest, cb)
	assert(DeleteCertificateRequest, "You must provide a DeleteCertificateRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CertificateManager.DeleteCertificate",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteCertificateRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeCertificate
-- @param DescribeCertificateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeCertificateAsync(DescribeCertificateRequest, cb)
	assert(DescribeCertificateRequest, "You must provide a DescribeCertificateRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CertificateManager.DescribeCertificate",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeCertificateRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
