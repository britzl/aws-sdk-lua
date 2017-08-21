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

local keys = {}
local asserts = {}

keys.LimitExceededException = { ["message"] = true, nil }

function asserts.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.LimitExceededException[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- <p>An ACM limit has been exceeded. For example, you may have input more domains than are allowed or you've requested too many certificates for your account. See the exception message returned by ACM to determine which limit you have violated. For more information about ACM limits, see the <a href="http://docs.aws.amazon.com/acm/latest/userguide/acm-limits.html">Limits</a> topic.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- @return LimitExceededException structure as a key-value pair table
function M.LimitExceededException(args)
	assert(args, "You must provdide an argument table when creating LimitExceededException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertLimitExceededException(t)
	return t
end

keys.DeleteCertificateRequest = { ["CertificateArn"] = true, nil }

function asserts.AssertDeleteCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteCertificateRequest to be of type 'table'")
	assert(struct["CertificateArn"], "Expected key CertificateArn to exist in table")
	if struct["CertificateArn"] then asserts.AssertArn(struct["CertificateArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteCertificateRequest[k], "DeleteCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteCertificateRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CertificateArn [Arn] <p>String that contains the ARN of the ACM Certificate to be deleted. This must be of the form:</p> <p> <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code> </p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
-- Required key: CertificateArn
-- @return DeleteCertificateRequest structure as a key-value pair table
function M.DeleteCertificateRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteCertificateRequest")
	local t = { 
		["CertificateArn"] = args["CertificateArn"],
	}
	asserts.AssertDeleteCertificateRequest(t)
	return t
end

keys.GetCertificateResponse = { ["CertificateChain"] = true, ["Certificate"] = true, nil }

function asserts.AssertGetCertificateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCertificateResponse to be of type 'table'")
	if struct["CertificateChain"] then asserts.AssertCertificateChain(struct["CertificateChain"]) end
	if struct["Certificate"] then asserts.AssertCertificateBody(struct["Certificate"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCertificateResponse[k], "GetCertificateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCertificateResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CertificateChain [CertificateChain] <p>The certificate chain that contains the root certificate issued by the certificate authority (CA).</p>
-- * Certificate [CertificateBody] <p>String that contains the ACM Certificate represented by the ARN specified at input.</p>
-- @return GetCertificateResponse structure as a key-value pair table
function M.GetCertificateResponse(args)
	assert(args, "You must provdide an argument table when creating GetCertificateResponse")
	local t = { 
		["CertificateChain"] = args["CertificateChain"],
		["Certificate"] = args["Certificate"],
	}
	asserts.AssertGetCertificateResponse(t)
	return t
end

keys.CertificateSummary = { ["CertificateArn"] = true, ["DomainName"] = true, nil }

function asserts.AssertCertificateSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CertificateSummary to be of type 'table'")
	if struct["CertificateArn"] then asserts.AssertArn(struct["CertificateArn"]) end
	if struct["DomainName"] then asserts.AssertDomainNameString(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CertificateSummary[k], "CertificateSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CertificateSummary
-- <p>This structure is returned in the response object of <a>ListCertificates</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CertificateArn [Arn] <p>Amazon Resource Name (ARN) of the certificate. This is of the form:</p> <p> <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code> </p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
-- * DomainName [DomainNameString] <p>Fully qualified domain name (FQDN), such as www.example.com or example.com, for the certificate.</p>
-- @return CertificateSummary structure as a key-value pair table
function M.CertificateSummary(args)
	assert(args, "You must provdide an argument table when creating CertificateSummary")
	local t = { 
		["CertificateArn"] = args["CertificateArn"],
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertCertificateSummary(t)
	return t
end

keys.TooManyTagsException = { ["message"] = true, nil }

function asserts.AssertTooManyTagsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyTagsException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TooManyTagsException[k], "TooManyTagsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyTagsException
-- <p>The request contains too many tags. Try the request again with fewer tags.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- @return TooManyTagsException structure as a key-value pair table
function M.TooManyTagsException(args)
	assert(args, "You must provdide an argument table when creating TooManyTagsException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertTooManyTagsException(t)
	return t
end

keys.ListCertificatesRequest = { ["NextToken"] = true, ["CertificateStatuses"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListCertificatesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCertificatesRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["CertificateStatuses"] then asserts.AssertCertificateStatuses(struct["CertificateStatuses"]) end
	if struct["MaxItems"] then asserts.AssertMaxItems(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListCertificatesRequest[k], "ListCertificatesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCertificatesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>Use this parameter only when paginating results and only in a subsequent request after you receive a response with truncated results. Set it to the value of <code>NextToken</code> from the response you just received.</p>
-- * CertificateStatuses [CertificateStatuses] <p>The status or statuses on which to filter the list of ACM Certificates.</p>
-- * MaxItems [MaxItems] <p>Use this parameter when paginating results to specify the maximum number of items to return in the response. If additional items exist beyond the number you specify, the <code>NextToken</code> element is sent in the response. Use this <code>NextToken</code> value in a subsequent request to retrieve additional items.</p>
-- @return ListCertificatesRequest structure as a key-value pair table
function M.ListCertificatesRequest(args)
	assert(args, "You must provdide an argument table when creating ListCertificatesRequest")
	local t = { 
		["NextToken"] = args["NextToken"],
		["CertificateStatuses"] = args["CertificateStatuses"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertListCertificatesRequest(t)
	return t
end

keys.RemoveTagsFromCertificateRequest = { ["CertificateArn"] = true, ["Tags"] = true, nil }

function asserts.AssertRemoveTagsFromCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveTagsFromCertificateRequest to be of type 'table'")
	assert(struct["CertificateArn"], "Expected key CertificateArn to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["CertificateArn"] then asserts.AssertArn(struct["CertificateArn"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.RemoveTagsFromCertificateRequest[k], "RemoveTagsFromCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveTagsFromCertificateRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CertificateArn [Arn] <p>String that contains the ARN of the ACM Certificate with one or more tags that you want to remove. This must be of the form:</p> <p> <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code> </p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
-- * Tags [TagList] <p>The key-value pair that defines the tag to remove.</p>
-- Required key: CertificateArn
-- Required key: Tags
-- @return RemoveTagsFromCertificateRequest structure as a key-value pair table
function M.RemoveTagsFromCertificateRequest(args)
	assert(args, "You must provdide an argument table when creating RemoveTagsFromCertificateRequest")
	local t = { 
		["CertificateArn"] = args["CertificateArn"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertRemoveTagsFromCertificateRequest(t)
	return t
end

keys.DescribeCertificateResponse = { ["Certificate"] = true, nil }

function asserts.AssertDescribeCertificateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCertificateResponse to be of type 'table'")
	if struct["Certificate"] then asserts.AssertCertificateDetail(struct["Certificate"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeCertificateResponse[k], "DescribeCertificateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCertificateResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Certificate [CertificateDetail] <p>Metadata about an ACM certificate.</p>
-- @return DescribeCertificateResponse structure as a key-value pair table
function M.DescribeCertificateResponse(args)
	assert(args, "You must provdide an argument table when creating DescribeCertificateResponse")
	local t = { 
		["Certificate"] = args["Certificate"],
	}
	asserts.AssertDescribeCertificateResponse(t)
	return t
end

keys.RequestCertificateRequest = { ["IdempotencyToken"] = true, ["SubjectAlternativeNames"] = true, ["DomainValidationOptions"] = true, ["DomainName"] = true, nil }

function asserts.AssertRequestCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RequestCertificateRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["IdempotencyToken"] then asserts.AssertIdempotencyToken(struct["IdempotencyToken"]) end
	if struct["SubjectAlternativeNames"] then asserts.AssertDomainList(struct["SubjectAlternativeNames"]) end
	if struct["DomainValidationOptions"] then asserts.AssertDomainValidationOptionList(struct["DomainValidationOptions"]) end
	if struct["DomainName"] then asserts.AssertDomainNameString(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.RequestCertificateRequest[k], "RequestCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RequestCertificateRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IdempotencyToken [IdempotencyToken] <p>Customer chosen string that can be used to distinguish between calls to <code>RequestCertificate</code>. Idempotency tokens time out after one hour. Therefore, if you call <code>RequestCertificate</code> multiple times with the same idempotency token within one hour, ACM recognizes that you are requesting only one certificate and will issue only one. If you change the idempotency token for each call, ACM recognizes that you are requesting multiple certificates.</p>
-- * SubjectAlternativeNames [DomainList] <p>Additional FQDNs to be included in the Subject Alternative Name extension of the ACM Certificate. For example, add the name www.example.net to a certificate for which the <code>DomainName</code> field is www.example.com if users can reach your site by using either name. The maximum number of domain names that you can add to an ACM Certificate is 100. However, the initial limit is 10 domain names. If you need more than 10 names, you must request a limit increase. For more information, see <a href="http://docs.aws.amazon.com/acm/latest/userguide/acm-limits.html">Limits</a>.</p>
-- * DomainValidationOptions [DomainValidationOptionList] <p>The domain name that you want ACM to use to send you emails to validate your ownership of the domain.</p>
-- * DomainName [DomainNameString] <p> Fully qualified domain name (FQDN), such as www.example.com, of the site that you want to secure with an ACM Certificate. Use an asterisk (*) to create a wildcard certificate that protects several sites in the same domain. For example, *.example.com protects www.example.com, site.example.com, and images.example.com. </p> <p> The maximum length of a DNS name is 253 octets. The name is made up of multiple labels separated by periods. No label can be longer than 63 octets. Consider the following examples: </p> <p> <code>(63 octets).(63 octets).(63 octets).(61 octets)</code> is legal because the total length is 253 octets (63+1+63+1+63+1+61) and no label exceeds 63 octets. </p> <p> <code>(64 octets).(63 octets).(63 octets).(61 octets)</code> is not legal because the total length exceeds 253 octets (64+1+63+1+63+1+61) and the first label exceeds 63 octets. </p> <p> <code>(63 octets).(63 octets).(63 octets).(62 octets)</code> is not legal because the total length of the DNS name (63+1+63+1+63+1+62) exceeds 253 octets. </p>
-- Required key: DomainName
-- @return RequestCertificateRequest structure as a key-value pair table
function M.RequestCertificateRequest(args)
	assert(args, "You must provdide an argument table when creating RequestCertificateRequest")
	local t = { 
		["IdempotencyToken"] = args["IdempotencyToken"],
		["SubjectAlternativeNames"] = args["SubjectAlternativeNames"],
		["DomainValidationOptions"] = args["DomainValidationOptions"],
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertRequestCertificateRequest(t)
	return t
end

keys.DomainValidation = { ["ValidationEmails"] = true, ["ValidationStatus"] = true, ["ValidationDomain"] = true, ["DomainName"] = true, nil }

function asserts.AssertDomainValidation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DomainValidation to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["ValidationEmails"] then asserts.AssertValidationEmailList(struct["ValidationEmails"]) end
	if struct["ValidationStatus"] then asserts.AssertDomainStatus(struct["ValidationStatus"]) end
	if struct["ValidationDomain"] then asserts.AssertDomainNameString(struct["ValidationDomain"]) end
	if struct["DomainName"] then asserts.AssertDomainNameString(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DomainValidation[k], "DomainValidation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DomainValidation
-- <p>Contains information about the validation of each domain name in the certificate.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ValidationEmails [ValidationEmailList] <p>A list of email addresses that ACM used to send domain validation emails.</p>
-- * ValidationStatus [DomainStatus] <p>The validation status of the domain name.</p>
-- * ValidationDomain [DomainNameString] <p>The domain name that ACM used to send domain validation emails.</p>
-- * DomainName [DomainNameString] <p>A fully qualified domain name (FQDN) in the certificate. For example, <code>www.example.com</code> or <code>example.com</code>.</p>
-- Required key: DomainName
-- @return DomainValidation structure as a key-value pair table
function M.DomainValidation(args)
	assert(args, "You must provdide an argument table when creating DomainValidation")
	local t = { 
		["ValidationEmails"] = args["ValidationEmails"],
		["ValidationStatus"] = args["ValidationStatus"],
		["ValidationDomain"] = args["ValidationDomain"],
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertDomainValidation(t)
	return t
end

keys.ListTagsForCertificateResponse = { ["Tags"] = true, nil }

function asserts.AssertListTagsForCertificateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForCertificateResponse to be of type 'table'")
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsForCertificateResponse[k], "ListTagsForCertificateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForCertificateResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Tags [TagList] <p>The key-value pairs that define the applied tags.</p>
-- @return ListTagsForCertificateResponse structure as a key-value pair table
function M.ListTagsForCertificateResponse(args)
	assert(args, "You must provdide an argument table when creating ListTagsForCertificateResponse")
	local t = { 
		["Tags"] = args["Tags"],
	}
	asserts.AssertListTagsForCertificateResponse(t)
	return t
end

keys.ResourceInUseException = { ["message"] = true, nil }

function asserts.AssertResourceInUseException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceInUseException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceInUseException[k], "ResourceInUseException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceInUseException
-- <p>The certificate is in use by another AWS service in the caller's account. Remove the association and try again.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- @return ResourceInUseException structure as a key-value pair table
function M.ResourceInUseException(args)
	assert(args, "You must provdide an argument table when creating ResourceInUseException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertResourceInUseException(t)
	return t
end

keys.ListCertificatesResponse = { ["CertificateSummaryList"] = true, ["NextToken"] = true, nil }

function asserts.AssertListCertificatesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCertificatesResponse to be of type 'table'")
	if struct["CertificateSummaryList"] then asserts.AssertCertificateSummaryList(struct["CertificateSummaryList"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListCertificatesResponse[k], "ListCertificatesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCertificatesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CertificateSummaryList [CertificateSummaryList] <p>A list of ACM Certificates.</p>
-- * NextToken [NextToken] <p>When the list is truncated, this value is present and contains the value to use for the <code>NextToken</code> parameter in a subsequent pagination request.</p>
-- @return ListCertificatesResponse structure as a key-value pair table
function M.ListCertificatesResponse(args)
	assert(args, "You must provdide an argument table when creating ListCertificatesResponse")
	local t = { 
		["CertificateSummaryList"] = args["CertificateSummaryList"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListCertificatesResponse(t)
	return t
end

keys.InvalidTagException = { ["message"] = true, nil }

function asserts.AssertInvalidTagException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidTagException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidTagException[k], "InvalidTagException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidTagException
-- <p>One or both of the values that make up the key-value pair is not valid. For example, you cannot specify a tag value that begins with <code>aws:</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- @return InvalidTagException structure as a key-value pair table
function M.InvalidTagException(args)
	assert(args, "You must provdide an argument table when creating InvalidTagException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidTagException(t)
	return t
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
-- <p>A key-value pair that identifies or specifies metadata about an ACM resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [TagValue] <p>The value of the tag.</p>
-- * Key [TagKey] <p>The key of the tag.</p>
-- Required key: Key
-- @return Tag structure as a key-value pair table
function M.Tag(args)
	assert(args, "You must provdide an argument table when creating Tag")
	local t = { 
		["Value"] = args["Value"],
		["Key"] = args["Key"],
	}
	asserts.AssertTag(t)
	return t
end

keys.ImportCertificateRequest = { ["CertificateArn"] = true, ["CertificateChain"] = true, ["PrivateKey"] = true, ["Certificate"] = true, nil }

function asserts.AssertImportCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImportCertificateRequest to be of type 'table'")
	assert(struct["Certificate"], "Expected key Certificate to exist in table")
	assert(struct["PrivateKey"], "Expected key PrivateKey to exist in table")
	if struct["CertificateArn"] then asserts.AssertArn(struct["CertificateArn"]) end
	if struct["CertificateChain"] then asserts.AssertCertificateChainBlob(struct["CertificateChain"]) end
	if struct["PrivateKey"] then asserts.AssertPrivateKeyBlob(struct["PrivateKey"]) end
	if struct["Certificate"] then asserts.AssertCertificateBodyBlob(struct["Certificate"]) end
	for k,_ in pairs(struct) do
		assert(keys.ImportCertificateRequest[k], "ImportCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImportCertificateRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CertificateArn [Arn] <p>The <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of an imported certificate to replace. To import a new certificate, omit this field.</p>
-- * CertificateChain [CertificateChainBlob] <p>The certificate chain. It must be PEM-encoded.</p>
-- * PrivateKey [PrivateKeyBlob] <p>The private key that matches the public key in the certificate. It must meet the following requirements:</p> <ul> <li> <p>Must be PEM-encoded.</p> </li> <li> <p>Must be unencrypted. You cannot import a private key that is protected by a password or passphrase.</p> </li> </ul>
-- * Certificate [CertificateBodyBlob] <p>The certificate to import. It must meet the following requirements:</p> <ul> <li> <p>Must be PEM-encoded.</p> </li> <li> <p>Must contain a 1024-bit or 2048-bit RSA public key.</p> </li> <li> <p>Must be valid at the time of import. You cannot import a certificate before its validity period begins (the certificate's <code>NotBefore</code> date) or after it expires (the certificate's <code>NotAfter</code> date).</p> </li> </ul>
-- Required key: Certificate
-- Required key: PrivateKey
-- @return ImportCertificateRequest structure as a key-value pair table
function M.ImportCertificateRequest(args)
	assert(args, "You must provdide an argument table when creating ImportCertificateRequest")
	local t = { 
		["CertificateArn"] = args["CertificateArn"],
		["CertificateChain"] = args["CertificateChain"],
		["PrivateKey"] = args["PrivateKey"],
		["Certificate"] = args["Certificate"],
	}
	asserts.AssertImportCertificateRequest(t)
	return t
end

keys.RequestInProgressException = { ["message"] = true, nil }

function asserts.AssertRequestInProgressException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RequestInProgressException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.RequestInProgressException[k], "RequestInProgressException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RequestInProgressException
-- <p>The certificate request is in process and the certificate in your account has not yet been issued.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- @return RequestInProgressException structure as a key-value pair table
function M.RequestInProgressException(args)
	assert(args, "You must provdide an argument table when creating RequestInProgressException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertRequestInProgressException(t)
	return t
end

keys.ImportCertificateResponse = { ["CertificateArn"] = true, nil }

function asserts.AssertImportCertificateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImportCertificateResponse to be of type 'table'")
	if struct["CertificateArn"] then asserts.AssertArn(struct["CertificateArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ImportCertificateResponse[k], "ImportCertificateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImportCertificateResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CertificateArn [Arn] <p>The <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of the imported certificate.</p>
-- @return ImportCertificateResponse structure as a key-value pair table
function M.ImportCertificateResponse(args)
	assert(args, "You must provdide an argument table when creating ImportCertificateResponse")
	local t = { 
		["CertificateArn"] = args["CertificateArn"],
	}
	asserts.AssertImportCertificateResponse(t)
	return t
end

keys.DescribeCertificateRequest = { ["CertificateArn"] = true, nil }

function asserts.AssertDescribeCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCertificateRequest to be of type 'table'")
	assert(struct["CertificateArn"], "Expected key CertificateArn to exist in table")
	if struct["CertificateArn"] then asserts.AssertArn(struct["CertificateArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeCertificateRequest[k], "DescribeCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCertificateRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CertificateArn [Arn] <p>The Amazon Resource Name (ARN) of the ACM Certificate. The ARN must have the following form:</p> <p> <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code> </p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
-- Required key: CertificateArn
-- @return DescribeCertificateRequest structure as a key-value pair table
function M.DescribeCertificateRequest(args)
	assert(args, "You must provdide an argument table when creating DescribeCertificateRequest")
	local t = { 
		["CertificateArn"] = args["CertificateArn"],
	}
	asserts.AssertDescribeCertificateRequest(t)
	return t
end

keys.DomainValidationOption = { ["ValidationDomain"] = true, ["DomainName"] = true, nil }

function asserts.AssertDomainValidationOption(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DomainValidationOption to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["ValidationDomain"], "Expected key ValidationDomain to exist in table")
	if struct["ValidationDomain"] then asserts.AssertDomainNameString(struct["ValidationDomain"]) end
	if struct["DomainName"] then asserts.AssertDomainNameString(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DomainValidationOption[k], "DomainValidationOption contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DomainValidationOption
-- <p>Contains information about the domain names that you want ACM to use to send you emails to validate your ownership of the domain.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ValidationDomain [DomainNameString] <p>The domain name that you want ACM to use to send you validation emails. This domain name is the suffix of the email addresses that you want ACM to use. This must be the same as the <code>DomainName</code> value or a superdomain of the <code>DomainName</code> value. For example, if you request a certificate for <code>testing.example.com</code>, you can specify <code>example.com</code> for this value. In that case, ACM sends domain validation emails to the following five addresses:</p> <ul> <li> <p>admin@example.com</p> </li> <li> <p>administrator@example.com</p> </li> <li> <p>hostmaster@example.com</p> </li> <li> <p>postmaster@example.com</p> </li> <li> <p>webmaster@example.com</p> </li> </ul>
-- * DomainName [DomainNameString] <p>A fully qualified domain name (FQDN) in the certificate request.</p>
-- Required key: DomainName
-- Required key: ValidationDomain
-- @return DomainValidationOption structure as a key-value pair table
function M.DomainValidationOption(args)
	assert(args, "You must provdide an argument table when creating DomainValidationOption")
	local t = { 
		["ValidationDomain"] = args["ValidationDomain"],
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertDomainValidationOption(t)
	return t
end

keys.ResendValidationEmailRequest = { ["CertificateArn"] = true, ["Domain"] = true, ["ValidationDomain"] = true, nil }

function asserts.AssertResendValidationEmailRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResendValidationEmailRequest to be of type 'table'")
	assert(struct["CertificateArn"], "Expected key CertificateArn to exist in table")
	assert(struct["Domain"], "Expected key Domain to exist in table")
	assert(struct["ValidationDomain"], "Expected key ValidationDomain to exist in table")
	if struct["CertificateArn"] then asserts.AssertArn(struct["CertificateArn"]) end
	if struct["Domain"] then asserts.AssertDomainNameString(struct["Domain"]) end
	if struct["ValidationDomain"] then asserts.AssertDomainNameString(struct["ValidationDomain"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResendValidationEmailRequest[k], "ResendValidationEmailRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResendValidationEmailRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CertificateArn [Arn] <p>String that contains the ARN of the requested certificate. The certificate ARN is generated and returned by the <a>RequestCertificate</a> action as soon as the request is made. By default, using this parameter causes email to be sent to all top-level domains you specified in the certificate request.</p> <p>The ARN must be of the form:</p> <p> <code>arn:aws:acm:us-east-1:123456789012:certificate/12345678-1234-1234-1234-123456789012</code> </p>
-- * Domain [DomainNameString] <p>The fully qualified domain name (FQDN) of the certificate that needs to be validated.</p>
-- * ValidationDomain [DomainNameString] <p>The base validation domain that will act as the suffix of the email addresses that are used to send the emails. This must be the same as the <code>Domain</code> value or a superdomain of the <code>Domain</code> value. For example, if you requested a certificate for <code>site.subdomain.example.com</code> and specify a <b>ValidationDomain</b> of <code>subdomain.example.com</code>, ACM sends email to the domain registrant, technical contact, and administrative contact in WHOIS and the following five addresses:</p> <ul> <li> <p>admin@subdomain.example.com</p> </li> <li> <p>administrator@subdomain.example.com</p> </li> <li> <p>hostmaster@subdomain.example.com</p> </li> <li> <p>postmaster@subdomain.example.com</p> </li> <li> <p>webmaster@subdomain.example.com</p> </li> </ul>
-- Required key: CertificateArn
-- Required key: Domain
-- Required key: ValidationDomain
-- @return ResendValidationEmailRequest structure as a key-value pair table
function M.ResendValidationEmailRequest(args)
	assert(args, "You must provdide an argument table when creating ResendValidationEmailRequest")
	local t = { 
		["CertificateArn"] = args["CertificateArn"],
		["Domain"] = args["Domain"],
		["ValidationDomain"] = args["ValidationDomain"],
	}
	asserts.AssertResendValidationEmailRequest(t)
	return t
end

keys.InvalidArnException = { ["message"] = true, nil }

function asserts.AssertInvalidArnException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidArnException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidArnException[k], "InvalidArnException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidArnException
-- <p>The requested Amazon Resource Name (ARN) does not refer to an existing resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- @return InvalidArnException structure as a key-value pair table
function M.InvalidArnException(args)
	assert(args, "You must provdide an argument table when creating InvalidArnException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidArnException(t)
	return t
end

keys.RenewalSummary = { ["RenewalStatus"] = true, ["DomainValidationOptions"] = true, nil }

function asserts.AssertRenewalSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RenewalSummary to be of type 'table'")
	assert(struct["RenewalStatus"], "Expected key RenewalStatus to exist in table")
	assert(struct["DomainValidationOptions"], "Expected key DomainValidationOptions to exist in table")
	if struct["RenewalStatus"] then asserts.AssertRenewalStatus(struct["RenewalStatus"]) end
	if struct["DomainValidationOptions"] then asserts.AssertDomainValidationList(struct["DomainValidationOptions"]) end
	for k,_ in pairs(struct) do
		assert(keys.RenewalSummary[k], "RenewalSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RenewalSummary
-- <p>Contains information about the status of ACM's <a href="http://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html">managed renewal</a> for the certificate. This structure exists only when the certificate type is <code>AMAZON_ISSUED</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RenewalStatus [RenewalStatus] <p>The status of ACM's <a href="http://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html">managed renewal</a> of the certificate.</p>
-- * DomainValidationOptions [DomainValidationList] <p>Contains information about the validation of each domain name in the certificate, as it pertains to ACM's <a href="http://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html">managed renewal</a>. This is different from the initial validation that occurs as a result of the <a>RequestCertificate</a> request. This field exists only when the certificate type is <code>AMAZON_ISSUED</code>.</p>
-- Required key: RenewalStatus
-- Required key: DomainValidationOptions
-- @return RenewalSummary structure as a key-value pair table
function M.RenewalSummary(args)
	assert(args, "You must provdide an argument table when creating RenewalSummary")
	local t = { 
		["RenewalStatus"] = args["RenewalStatus"],
		["DomainValidationOptions"] = args["DomainValidationOptions"],
	}
	asserts.AssertRenewalSummary(t)
	return t
end

keys.ListTagsForCertificateRequest = { ["CertificateArn"] = true, nil }

function asserts.AssertListTagsForCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForCertificateRequest to be of type 'table'")
	assert(struct["CertificateArn"], "Expected key CertificateArn to exist in table")
	if struct["CertificateArn"] then asserts.AssertArn(struct["CertificateArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsForCertificateRequest[k], "ListTagsForCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForCertificateRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CertificateArn [Arn] <p>String that contains the ARN of the ACM Certificate for which you want to list the tags. This has the following form:</p> <p> <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code> </p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
-- Required key: CertificateArn
-- @return ListTagsForCertificateRequest structure as a key-value pair table
function M.ListTagsForCertificateRequest(args)
	assert(args, "You must provdide an argument table when creating ListTagsForCertificateRequest")
	local t = { 
		["CertificateArn"] = args["CertificateArn"],
	}
	asserts.AssertListTagsForCertificateRequest(t)
	return t
end

keys.RequestCertificateResponse = { ["CertificateArn"] = true, nil }

function asserts.AssertRequestCertificateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RequestCertificateResponse to be of type 'table'")
	if struct["CertificateArn"] then asserts.AssertArn(struct["CertificateArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.RequestCertificateResponse[k], "RequestCertificateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RequestCertificateResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CertificateArn [Arn] <p>String that contains the ARN of the issued certificate. This must be of the form:</p> <p> <code>arn:aws:acm:us-east-1:123456789012:certificate/12345678-1234-1234-1234-123456789012</code> </p>
-- @return RequestCertificateResponse structure as a key-value pair table
function M.RequestCertificateResponse(args)
	assert(args, "You must provdide an argument table when creating RequestCertificateResponse")
	local t = { 
		["CertificateArn"] = args["CertificateArn"],
	}
	asserts.AssertRequestCertificateResponse(t)
	return t
end

keys.AddTagsToCertificateRequest = { ["CertificateArn"] = true, ["Tags"] = true, nil }

function asserts.AssertAddTagsToCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddTagsToCertificateRequest to be of type 'table'")
	assert(struct["CertificateArn"], "Expected key CertificateArn to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["CertificateArn"] then asserts.AssertArn(struct["CertificateArn"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddTagsToCertificateRequest[k], "AddTagsToCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddTagsToCertificateRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CertificateArn [Arn] <p>String that contains the ARN of the ACM Certificate to which the tag is to be applied. This must be of the form:</p> <p> <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code> </p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
-- * Tags [TagList] <p>The key-value pair that defines the tag. The tag value is optional.</p>
-- Required key: CertificateArn
-- Required key: Tags
-- @return AddTagsToCertificateRequest structure as a key-value pair table
function M.AddTagsToCertificateRequest(args)
	assert(args, "You must provdide an argument table when creating AddTagsToCertificateRequest")
	local t = { 
		["CertificateArn"] = args["CertificateArn"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertAddTagsToCertificateRequest(t)
	return t
end

keys.InvalidDomainValidationOptionsException = { ["message"] = true, nil }

function asserts.AssertInvalidDomainValidationOptionsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDomainValidationOptionsException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidDomainValidationOptionsException[k], "InvalidDomainValidationOptionsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDomainValidationOptionsException
-- <p>One or more values in the <a>DomainValidationOption</a> structure is incorrect.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- @return InvalidDomainValidationOptionsException structure as a key-value pair table
function M.InvalidDomainValidationOptionsException(args)
	assert(args, "You must provdide an argument table when creating InvalidDomainValidationOptionsException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidDomainValidationOptionsException(t)
	return t
end

keys.GetCertificateRequest = { ["CertificateArn"] = true, nil }

function asserts.AssertGetCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCertificateRequest to be of type 'table'")
	assert(struct["CertificateArn"], "Expected key CertificateArn to exist in table")
	if struct["CertificateArn"] then asserts.AssertArn(struct["CertificateArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCertificateRequest[k], "GetCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCertificateRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CertificateArn [Arn] <p>String that contains a certificate ARN in the following format:</p> <p> <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code> </p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
-- Required key: CertificateArn
-- @return GetCertificateRequest structure as a key-value pair table
function M.GetCertificateRequest(args)
	assert(args, "You must provdide an argument table when creating GetCertificateRequest")
	local t = { 
		["CertificateArn"] = args["CertificateArn"],
	}
	asserts.AssertGetCertificateRequest(t)
	return t
end

keys.CertificateDetail = { ["CertificateArn"] = true, ["Status"] = true, ["SubjectAlternativeNames"] = true, ["RenewalSummary"] = true, ["DomainName"] = true, ["RevokedAt"] = true, ["Type"] = true, ["NotBefore"] = true, ["KeyAlgorithm"] = true, ["NotAfter"] = true, ["ImportedAt"] = true, ["InUseBy"] = true, ["SignatureAlgorithm"] = true, ["CreatedAt"] = true, ["IssuedAt"] = true, ["Serial"] = true, ["Issuer"] = true, ["RevocationReason"] = true, ["FailureReason"] = true, ["DomainValidationOptions"] = true, ["Subject"] = true, nil }

function asserts.AssertCertificateDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CertificateDetail to be of type 'table'")
	if struct["CertificateArn"] then asserts.AssertArn(struct["CertificateArn"]) end
	if struct["Status"] then asserts.AssertCertificateStatus(struct["Status"]) end
	if struct["SubjectAlternativeNames"] then asserts.AssertDomainList(struct["SubjectAlternativeNames"]) end
	if struct["RenewalSummary"] then asserts.AssertRenewalSummary(struct["RenewalSummary"]) end
	if struct["DomainName"] then asserts.AssertDomainNameString(struct["DomainName"]) end
	if struct["RevokedAt"] then asserts.AssertTStamp(struct["RevokedAt"]) end
	if struct["Type"] then asserts.AssertCertificateType(struct["Type"]) end
	if struct["NotBefore"] then asserts.AssertTStamp(struct["NotBefore"]) end
	if struct["KeyAlgorithm"] then asserts.AssertKeyAlgorithm(struct["KeyAlgorithm"]) end
	if struct["NotAfter"] then asserts.AssertTStamp(struct["NotAfter"]) end
	if struct["ImportedAt"] then asserts.AssertTStamp(struct["ImportedAt"]) end
	if struct["InUseBy"] then asserts.AssertInUseList(struct["InUseBy"]) end
	if struct["SignatureAlgorithm"] then asserts.AssertString(struct["SignatureAlgorithm"]) end
	if struct["CreatedAt"] then asserts.AssertTStamp(struct["CreatedAt"]) end
	if struct["IssuedAt"] then asserts.AssertTStamp(struct["IssuedAt"]) end
	if struct["Serial"] then asserts.AssertString(struct["Serial"]) end
	if struct["Issuer"] then asserts.AssertString(struct["Issuer"]) end
	if struct["RevocationReason"] then asserts.AssertRevocationReason(struct["RevocationReason"]) end
	if struct["FailureReason"] then asserts.AssertFailureReason(struct["FailureReason"]) end
	if struct["DomainValidationOptions"] then asserts.AssertDomainValidationList(struct["DomainValidationOptions"]) end
	if struct["Subject"] then asserts.AssertString(struct["Subject"]) end
	for k,_ in pairs(struct) do
		assert(keys.CertificateDetail[k], "CertificateDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CertificateDetail
-- <p>Contains metadata about an ACM certificate. This structure is returned in the response to a <a>DescribeCertificate</a> request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CertificateArn [Arn] <p>The Amazon Resource Name (ARN) of the certificate. For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>
-- * Status [CertificateStatus] <p>The status of the certificate.</p>
-- * SubjectAlternativeNames [DomainList] <p>One or more domain names (subject alternative names) included in the certificate. This list contains the domain names that are bound to the public key that is contained in the certificate. The subject alternative names include the canonical domain name (CN) of the certificate and additional domain names that can be used to connect to the website.</p>
-- * RenewalSummary [RenewalSummary] <p>Contains information about the status of ACM's <a href="http://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html">managed renewal</a> for the certificate. This field exists only when the certificate type is <code>AMAZON_ISSUED</code>.</p>
-- * DomainName [DomainNameString] <p>The fully qualified domain name for the certificate, such as www.example.com or example.com.</p>
-- * RevokedAt [TStamp] <p>The time at which the certificate was revoked. This value exists only when the certificate status is <code>REVOKED</code>.</p>
-- * Type [CertificateType] <p>The source of the certificate. For certificates provided by ACM, this value is <code>AMAZON_ISSUED</code>. For certificates that you imported with <a>ImportCertificate</a>, this value is <code>IMPORTED</code>. ACM does not provide <a href="http://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html">managed renewal</a> for imported certificates. For more information about the differences between certificates that you import and those that ACM provides, see <a href="http://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html">Importing Certificates</a> in the <i>AWS Certificate Manager User Guide</i>.</p>
-- * NotBefore [TStamp] <p>The time before which the certificate is not valid.</p>
-- * KeyAlgorithm [KeyAlgorithm] <p>The algorithm that was used to generate the key pair (the public and private key).</p>
-- * NotAfter [TStamp] <p>The time after which the certificate is not valid.</p>
-- * ImportedAt [TStamp] <p>The date and time at which the certificate was imported. This value exists only when the certificate type is <code>IMPORTED</code>.</p>
-- * InUseBy [InUseList] <p>A list of ARNs for the AWS resources that are using the certificate. A certificate can be used by multiple AWS resources.</p>
-- * SignatureAlgorithm [String] <p>The algorithm that was used to sign the certificate.</p>
-- * CreatedAt [TStamp] <p>The time at which the certificate was requested. This value exists only when the certificate type is <code>AMAZON_ISSUED</code>.</p>
-- * IssuedAt [TStamp] <p>The time at which the certificate was issued. This value exists only when the certificate type is <code>AMAZON_ISSUED</code>.</p>
-- * Serial [String] <p>The serial number of the certificate.</p>
-- * Issuer [String] <p>The name of the certificate authority that issued and signed the certificate.</p>
-- * RevocationReason [RevocationReason] <p>The reason the certificate was revoked. This value exists only when the certificate status is <code>REVOKED</code>.</p>
-- * FailureReason [FailureReason] <p>The reason the certificate request failed. This value exists only when the certificate status is <code>FAILED</code>. For more information, see <a href="http://docs.aws.amazon.com/acm/latest/userguide/troubleshooting.html#troubleshooting-failed">Certificate Request Failed</a> in the <i>AWS Certificate Manager User Guide</i>.</p>
-- * DomainValidationOptions [DomainValidationList] <p>Contains information about the initial validation of each domain name that occurs as a result of the <a>RequestCertificate</a> request. This field exists only when the certificate type is <code>AMAZON_ISSUED</code>.</p>
-- * Subject [String] <p>The name of the entity that is associated with the public key contained in the certificate.</p>
-- @return CertificateDetail structure as a key-value pair table
function M.CertificateDetail(args)
	assert(args, "You must provdide an argument table when creating CertificateDetail")
	local t = { 
		["CertificateArn"] = args["CertificateArn"],
		["Status"] = args["Status"],
		["SubjectAlternativeNames"] = args["SubjectAlternativeNames"],
		["RenewalSummary"] = args["RenewalSummary"],
		["DomainName"] = args["DomainName"],
		["RevokedAt"] = args["RevokedAt"],
		["Type"] = args["Type"],
		["NotBefore"] = args["NotBefore"],
		["KeyAlgorithm"] = args["KeyAlgorithm"],
		["NotAfter"] = args["NotAfter"],
		["ImportedAt"] = args["ImportedAt"],
		["InUseBy"] = args["InUseBy"],
		["SignatureAlgorithm"] = args["SignatureAlgorithm"],
		["CreatedAt"] = args["CreatedAt"],
		["IssuedAt"] = args["IssuedAt"],
		["Serial"] = args["Serial"],
		["Issuer"] = args["Issuer"],
		["RevocationReason"] = args["RevocationReason"],
		["FailureReason"] = args["FailureReason"],
		["DomainValidationOptions"] = args["DomainValidationOptions"],
		["Subject"] = args["Subject"],
	}
	asserts.AssertCertificateDetail(t)
	return t
end

keys.InvalidStateException = { ["message"] = true, nil }

function asserts.AssertInvalidStateException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidStateException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidStateException[k], "InvalidStateException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidStateException
-- <p>Processing has reached an invalid state. For example, this exception can occur if the specified domain is not using email validation, or the current certificate status does not permit the requested operation. See the exception message returned by ACM to determine which state is not valid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- @return InvalidStateException structure as a key-value pair table
function M.InvalidStateException(args)
	assert(args, "You must provdide an argument table when creating InvalidStateException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidStateException(t)
	return t
end

keys.ResourceNotFoundException = { ["message"] = true, nil }

function asserts.AssertResourceNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceNotFoundException[k], "ResourceNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundException
-- <p>The specified certificate cannot be found in the caller's account, or the caller's account cannot be found.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- @return ResourceNotFoundException structure as a key-value pair table
function M.ResourceNotFoundException(args)
	assert(args, "You must provdide an argument table when creating ResourceNotFoundException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertResourceNotFoundException(t)
	return t
end

function asserts.AssertDomainStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected DomainStatus to be of type 'string'")
end

--  
function M.DomainStatus(str)
	asserts.AssertDomainStatus(str)
	return str
end

function asserts.AssertDomainNameString(str)
	assert(str)
	assert(type(str) == "string", "Expected DomainNameString to be of type 'string'")
	assert(#str <= 253, "Expected string to be max 253 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DomainNameString(str)
	asserts.AssertDomainNameString(str)
	return str
end

function asserts.AssertKeyAlgorithm(str)
	assert(str)
	assert(type(str) == "string", "Expected KeyAlgorithm to be of type 'string'")
end

--  
function M.KeyAlgorithm(str)
	asserts.AssertKeyAlgorithm(str)
	return str
end

function asserts.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
	assert(#str <= 320, "Expected string to be max 320 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.NextToken(str)
	asserts.AssertNextToken(str)
	return str
end

function asserts.AssertCertificateBody(str)
	assert(str)
	assert(type(str) == "string", "Expected CertificateBody to be of type 'string'")
	assert(#str <= 32768, "Expected string to be max 32768 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.CertificateBody(str)
	asserts.AssertCertificateBody(str)
	return str
end

function asserts.AssertTagKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TagKey to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TagKey(str)
	asserts.AssertTagKey(str)
	return str
end

function asserts.AssertRenewalStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected RenewalStatus to be of type 'string'")
end

--  
function M.RenewalStatus(str)
	asserts.AssertRenewalStatus(str)
	return str
end

function asserts.AssertCertificateChain(str)
	assert(str)
	assert(type(str) == "string", "Expected CertificateChain to be of type 'string'")
	assert(#str <= 2097152, "Expected string to be max 2097152 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.CertificateChain(str)
	asserts.AssertCertificateChain(str)
	return str
end

function asserts.AssertFailureReason(str)
	assert(str)
	assert(type(str) == "string", "Expected FailureReason to be of type 'string'")
end

--  
function M.FailureReason(str)
	asserts.AssertFailureReason(str)
	return str
end

function asserts.AssertIdempotencyToken(str)
	assert(str)
	assert(type(str) == "string", "Expected IdempotencyToken to be of type 'string'")
	assert(#str <= 32, "Expected string to be max 32 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.IdempotencyToken(str)
	asserts.AssertIdempotencyToken(str)
	return str
end

function asserts.AssertCertificateType(str)
	assert(str)
	assert(type(str) == "string", "Expected CertificateType to be of type 'string'")
end

--  
function M.CertificateType(str)
	asserts.AssertCertificateType(str)
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

function asserts.AssertRevocationReason(str)
	assert(str)
	assert(type(str) == "string", "Expected RevocationReason to be of type 'string'")
end

--  
function M.RevocationReason(str)
	asserts.AssertRevocationReason(str)
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

function asserts.AssertArn(str)
	assert(str)
	assert(type(str) == "string", "Expected Arn to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 20, "Expected string to be min 20 characters")
end

--  
function M.Arn(str)
	asserts.AssertArn(str)
	return str
end

function asserts.AssertMaxItems(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxItems to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1000, "Expected integer to be max 1000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxItems(integer)
	asserts.AssertMaxItems(integer)
	return integer
end

function asserts.AssertTStamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected TStamp to be of type 'string'")
end

function M.TStamp(timestamp)
	asserts.AssertTStamp(timestamp)
	return timestamp
end

function asserts.AssertCertificateBodyBlob(blob)
	assert(blob)
	assert(type(string) == "string", "Expected CertificateBodyBlob to be of type 'string'")
	assert(#blob <= 32768, "Expected blob to be max 32768")
	assert(#blob >= 1, "Expected blob to be max 1")
end

function M.CertificateBodyBlob(blob)
	asserts.AssertCertificateBodyBlob(blob)
	return blob
end

function asserts.AssertCertificateChainBlob(blob)
	assert(blob)
	assert(type(string) == "string", "Expected CertificateChainBlob to be of type 'string'")
	assert(#blob <= 2097152, "Expected blob to be max 2097152")
	assert(#blob >= 1, "Expected blob to be max 1")
end

function M.CertificateChainBlob(blob)
	asserts.AssertCertificateChainBlob(blob)
	return blob
end

function asserts.AssertPrivateKeyBlob(blob)
	assert(blob)
	assert(type(string) == "string", "Expected PrivateKeyBlob to be of type 'string'")
	assert(#blob <= 524288, "Expected blob to be max 524288")
	assert(#blob >= 1, "Expected blob to be max 1")
end

function M.PrivateKeyBlob(blob)
	asserts.AssertPrivateKeyBlob(blob)
	return blob
end

function asserts.AssertValidationEmailList(list)
	assert(list)
	assert(type(list) == "table", "Expected ValidationEmailList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.ValidationEmailList(list)
	asserts.AssertValidationEmailList(list)
	return list
end

function asserts.AssertDomainValidationList(list)
	assert(list)
	assert(type(list) == "table", "Expected DomainValidationList to be of type ''table")
	assert(#list <= 1000, "Expected list to be contain 1000 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertDomainValidation(v)
	end
end

--  
-- List of DomainValidation objects
function M.DomainValidationList(list)
	asserts.AssertDomainValidationList(list)
	return list
end

function asserts.AssertDomainValidationOptionList(list)
	assert(list)
	assert(type(list) == "table", "Expected DomainValidationOptionList to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertDomainValidationOption(v)
	end
end

--  
-- List of DomainValidationOption objects
function M.DomainValidationOptionList(list)
	asserts.AssertDomainValidationOptionList(list)
	return list
end

function asserts.AssertDomainList(list)
	assert(list)
	assert(type(list) == "table", "Expected DomainList to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertDomainNameString(v)
	end
end

--  
-- List of DomainNameString objects
function M.DomainList(list)
	asserts.AssertDomainList(list)
	return list
end

function asserts.AssertCertificateStatuses(list)
	assert(list)
	assert(type(list) == "table", "Expected CertificateStatuses to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCertificateStatus(v)
	end
end

--  
-- List of CertificateStatus objects
function M.CertificateStatuses(list)
	asserts.AssertCertificateStatuses(list)
	return list
end

function asserts.AssertInUseList(list)
	assert(list)
	assert(type(list) == "table", "Expected InUseList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.InUseList(list)
	asserts.AssertInUseList(list)
	return list
end

function asserts.AssertCertificateSummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected CertificateSummaryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCertificateSummary(v)
	end
end

--  
-- List of CertificateSummary objects
function M.CertificateSummaryList(list)
	asserts.AssertCertificateSummaryList(list)
	return list
end

function asserts.AssertTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
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
--- Call ResendValidationEmail asynchronously, invoking a callback when done
-- @param ResendValidationEmailRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ResendValidationEmailAsync(ResendValidationEmailRequest, cb)
	assert(ResendValidationEmailRequest, "You must provide a ResendValidationEmailRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CertificateManager.ResendValidationEmail",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ResendValidationEmailRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ResendValidationEmail synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ResendValidationEmailRequest
-- @return response
-- @return error_message
function M.ResendValidationEmailSync(ResendValidationEmailRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ResendValidationEmailAsync(ResendValidationEmailRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AddTagsToCertificate asynchronously, invoking a callback when done
-- @param AddTagsToCertificateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AddTagsToCertificateAsync(AddTagsToCertificateRequest, cb)
	assert(AddTagsToCertificateRequest, "You must provide a AddTagsToCertificateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CertificateManager.AddTagsToCertificate",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", AddTagsToCertificateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AddTagsToCertificate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AddTagsToCertificateRequest
-- @return response
-- @return error_message
function M.AddTagsToCertificateSync(AddTagsToCertificateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddTagsToCertificateAsync(AddTagsToCertificateRequest, function(response, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = "CertificateManager.ListCertificates",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ListCertificatesRequest, headers, settings, cb)
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

--- Call GetCertificate asynchronously, invoking a callback when done
-- @param GetCertificateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetCertificateAsync(GetCertificateRequest, cb)
	assert(GetCertificateRequest, "You must provide a GetCertificateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CertificateManager.GetCertificate",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetCertificateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetCertificate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetCertificateRequest
-- @return response
-- @return error_message
function M.GetCertificateSync(GetCertificateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetCertificateAsync(GetCertificateRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTagsForCertificate asynchronously, invoking a callback when done
-- @param ListTagsForCertificateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListTagsForCertificateAsync(ListTagsForCertificateRequest, cb)
	assert(ListTagsForCertificateRequest, "You must provide a ListTagsForCertificateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CertificateManager.ListTagsForCertificate",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ListTagsForCertificateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTagsForCertificate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTagsForCertificateRequest
-- @return response
-- @return error_message
function M.ListTagsForCertificateSync(ListTagsForCertificateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTagsForCertificateAsync(ListTagsForCertificateRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RemoveTagsFromCertificate asynchronously, invoking a callback when done
-- @param RemoveTagsFromCertificateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RemoveTagsFromCertificateAsync(RemoveTagsFromCertificateRequest, cb)
	assert(RemoveTagsFromCertificateRequest, "You must provide a RemoveTagsFromCertificateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CertificateManager.RemoveTagsFromCertificate",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", RemoveTagsFromCertificateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RemoveTagsFromCertificate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RemoveTagsFromCertificateRequest
-- @return response
-- @return error_message
function M.RemoveTagsFromCertificateSync(RemoveTagsFromCertificateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RemoveTagsFromCertificateAsync(RemoveTagsFromCertificateRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RequestCertificate asynchronously, invoking a callback when done
-- @param RequestCertificateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RequestCertificateAsync(RequestCertificateRequest, cb)
	assert(RequestCertificateRequest, "You must provide a RequestCertificateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CertificateManager.RequestCertificate",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", RequestCertificateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RequestCertificate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RequestCertificateRequest
-- @return response
-- @return error_message
function M.RequestCertificateSync(RequestCertificateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RequestCertificateAsync(RequestCertificateRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ImportCertificate asynchronously, invoking a callback when done
-- @param ImportCertificateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ImportCertificateAsync(ImportCertificateRequest, cb)
	assert(ImportCertificateRequest, "You must provide a ImportCertificateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CertificateManager.ImportCertificate",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ImportCertificateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ImportCertificate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ImportCertificateRequest
-- @return response
-- @return error_message
function M.ImportCertificateSync(ImportCertificateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ImportCertificateAsync(ImportCertificateRequest, function(response, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = "CertificateManager.DeleteCertificate",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteCertificateRequest, headers, settings, cb)
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

--- Call DescribeCertificate asynchronously, invoking a callback when done
-- @param DescribeCertificateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeCertificateAsync(DescribeCertificateRequest, cb)
	assert(DescribeCertificateRequest, "You must provide a DescribeCertificateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CertificateManager.DescribeCertificate",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeCertificateRequest, headers, settings, cb)
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


return M
