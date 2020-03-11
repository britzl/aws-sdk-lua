--- GENERATED CODE - DO NOT MODIFY
-- AWS Certificate Manager Private Certificate Authority (acm-pca-2017-08-22)

local M = {}

M.metadata = {
	api_version = "2017-08-22",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "acm-pca",
	service_abbreviation = "ACM-PCA",
	service_full_name = "AWS Certificate Manager Private Certificate Authority",
	signature_version = "v4",
	target_prefix = "ACMPrivateCA",
	timestamp_format = "",
	global_endpoint = "",
	uid = "acm-pca-2017-08-22",
}

local keys = {}
local asserts = {}

keys.DescribeCertificateAuthorityRequest = { ["CertificateAuthorityArn"] = true, nil }

function asserts.AssertDescribeCertificateAuthorityRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCertificateAuthorityRequest to be of type 'table'")
	assert(struct["CertificateAuthorityArn"], "Expected key CertificateAuthorityArn to exist in table")
	if struct["CertificateAuthorityArn"] then asserts.AssertArn(struct["CertificateAuthorityArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeCertificateAuthorityRequest[k], "DescribeCertificateAuthorityRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCertificateAuthorityRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CertificateAuthorityArn [Arn] <p>The Amazon Resource Name (ARN) that was returned when you called <a>CreateCertificateAuthority</a>. This must be of the form: </p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code>. </p>
-- Required key: CertificateAuthorityArn
-- @return DescribeCertificateAuthorityRequest structure as a key-value pair table
function M.DescribeCertificateAuthorityRequest(args)
	assert(args, "You must provide an argument table when creating DescribeCertificateAuthorityRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CertificateAuthorityArn"] = args["CertificateAuthorityArn"],
	}
	asserts.AssertDescribeCertificateAuthorityRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTagsRequest = { ["NextToken"] = true, ["MaxResults"] = true, ["CertificateAuthorityArn"] = true, nil }

function asserts.AssertListTagsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsRequest to be of type 'table'")
	assert(struct["CertificateAuthorityArn"], "Expected key CertificateAuthorityArn to exist in table")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	if struct["CertificateAuthorityArn"] then asserts.AssertArn(struct["CertificateAuthorityArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsRequest[k], "ListTagsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>Use this parameter when paginating results in a subsequent request after you receive a response with truncated results. Set it to the value of <b>NextToken</b> from the response you just received.</p>
-- * MaxResults [MaxResults] <p>Use this parameter when paginating results to specify the maximum number of items to return in the response. If additional items exist beyond the number you specify, the <b>NextToken</b> element is sent in the response. Use this <b>NextToken</b> value in a subsequent request to retrieve additional items.</p>
-- * CertificateAuthorityArn [Arn] <p>The Amazon Resource Name (ARN) that was returned when you called the <a>CreateCertificateAuthority</a> operation. This must be of the form: </p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code> </p>
-- Required key: CertificateAuthorityArn
-- @return ListTagsRequest structure as a key-value pair table
function M.ListTagsRequest(args)
	assert(args, "You must provide an argument table when creating ListTagsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["CertificateAuthorityArn"] = args["CertificateAuthorityArn"],
	}
	asserts.AssertListTagsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating InvalidArnException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidArnException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListCertificateAuthoritiesResponse = { ["NextToken"] = true, ["CertificateAuthorities"] = true, nil }

function asserts.AssertListCertificateAuthoritiesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCertificateAuthoritiesResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["CertificateAuthorities"] then asserts.AssertCertificateAuthorities(struct["CertificateAuthorities"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListCertificateAuthoritiesResponse[k], "ListCertificateAuthoritiesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCertificateAuthoritiesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>When the list is truncated, this value is present and should be used for the <code>NextToken</code> parameter in a subsequent pagination request.</p>
-- * CertificateAuthorities [CertificateAuthorities] <p>Summary information about each certificate authority you have created.</p>
-- @return ListCertificateAuthoritiesResponse structure as a key-value pair table
function M.ListCertificateAuthoritiesResponse(args)
	assert(args, "You must provide an argument table when creating ListCertificateAuthoritiesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["CertificateAuthorities"] = args["CertificateAuthorities"],
	}
	asserts.AssertListCertificateAuthoritiesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidNextTokenException = { ["message"] = true, nil }

function asserts.AssertInvalidNextTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidNextTokenException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidNextTokenException[k], "InvalidNextTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidNextTokenException
-- <p>The token specified in the <code>NextToken</code> argument is not valid. Use the token returned from your previous call to <a>ListCertificateAuthorities</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- @return InvalidNextTokenException structure as a key-value pair table
function M.InvalidNextTokenException(args)
	assert(args, "You must provide an argument table when creating InvalidNextTokenException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidNextTokenException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>The tag associated with the CA is not valid. The invalid argument is contained in the message field.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- @return InvalidTagException structure as a key-value pair table
function M.InvalidTagException(args)
	assert(args, "You must provide an argument table when creating InvalidTagException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidTagException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MalformedCSRException = { ["message"] = true, nil }

function asserts.AssertMalformedCSRException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MalformedCSRException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.MalformedCSRException[k], "MalformedCSRException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MalformedCSRException
-- <p>The certificate signing request is invalid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- @return MalformedCSRException structure as a key-value pair table
function M.MalformedCSRException(args)
	assert(args, "You must provide an argument table when creating MalformedCSRException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertMalformedCSRException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UntagCertificateAuthorityRequest = { ["CertificateAuthorityArn"] = true, ["Tags"] = true, nil }

function asserts.AssertUntagCertificateAuthorityRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UntagCertificateAuthorityRequest to be of type 'table'")
	assert(struct["CertificateAuthorityArn"], "Expected key CertificateAuthorityArn to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["CertificateAuthorityArn"] then asserts.AssertArn(struct["CertificateAuthorityArn"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.UntagCertificateAuthorityRequest[k], "UntagCertificateAuthorityRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UntagCertificateAuthorityRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CertificateAuthorityArn [Arn] <p>The Amazon Resource Name (ARN) that was returned when you called <a>CreateCertificateAuthority</a>. This must be of the form: </p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code> </p>
-- * Tags [TagList] <p>List of tags to be removed from the CA.</p>
-- Required key: CertificateAuthorityArn
-- Required key: Tags
-- @return UntagCertificateAuthorityRequest structure as a key-value pair table
function M.UntagCertificateAuthorityRequest(args)
	assert(args, "You must provide an argument table when creating UntagCertificateAuthorityRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CertificateAuthorityArn"] = args["CertificateAuthorityArn"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertUntagCertificateAuthorityRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RestoreCertificateAuthorityRequest = { ["CertificateAuthorityArn"] = true, nil }

function asserts.AssertRestoreCertificateAuthorityRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreCertificateAuthorityRequest to be of type 'table'")
	assert(struct["CertificateAuthorityArn"], "Expected key CertificateAuthorityArn to exist in table")
	if struct["CertificateAuthorityArn"] then asserts.AssertArn(struct["CertificateAuthorityArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.RestoreCertificateAuthorityRequest[k], "RestoreCertificateAuthorityRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreCertificateAuthorityRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CertificateAuthorityArn [Arn] <p>The Amazon Resource Name (ARN) that was returned when you called the <a>CreateCertificateAuthority</a> operation. This must be of the form: </p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code> </p>
-- Required key: CertificateAuthorityArn
-- @return RestoreCertificateAuthorityRequest structure as a key-value pair table
function M.RestoreCertificateAuthorityRequest(args)
	assert(args, "You must provide an argument table when creating RestoreCertificateAuthorityRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CertificateAuthorityArn"] = args["CertificateAuthorityArn"],
	}
	asserts.AssertRestoreCertificateAuthorityRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>The private CA is in a state during which a report cannot be generated.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- @return InvalidStateException structure as a key-value pair table
function M.InvalidStateException(args)
	assert(args, "You must provide an argument table when creating InvalidStateException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidStateException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetCertificateRequest = { ["CertificateArn"] = true, ["CertificateAuthorityArn"] = true, nil }

function asserts.AssertGetCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCertificateRequest to be of type 'table'")
	assert(struct["CertificateAuthorityArn"], "Expected key CertificateAuthorityArn to exist in table")
	assert(struct["CertificateArn"], "Expected key CertificateArn to exist in table")
	if struct["CertificateArn"] then asserts.AssertArn(struct["CertificateArn"]) end
	if struct["CertificateAuthorityArn"] then asserts.AssertArn(struct["CertificateAuthorityArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCertificateRequest[k], "GetCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCertificateRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CertificateArn [Arn] <p>The ARN of the issued certificate. The ARN contains the certificate serial number and must be in the following form: </p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>/certificate/<i>286535153982981100925020015808220737245</i> </code> </p>
-- * CertificateAuthorityArn [Arn] <p>The Amazon Resource Name (ARN) that was returned when you called <a>CreateCertificateAuthority</a>. This must be of the form: </p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code>. </p>
-- Required key: CertificateAuthorityArn
-- Required key: CertificateArn
-- @return GetCertificateRequest structure as a key-value pair table
function M.GetCertificateRequest(args)
	assert(args, "You must provide an argument table when creating GetCertificateRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CertificateArn"] = args["CertificateArn"],
		["CertificateAuthorityArn"] = args["CertificateAuthorityArn"],
	}
	asserts.AssertGetCertificateRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ASN1Subject = { ["Surname"] = true, ["GenerationQualifier"] = true, ["Locality"] = true, ["Country"] = true, ["SerialNumber"] = true, ["CommonName"] = true, ["DistinguishedNameQualifier"] = true, ["State"] = true, ["Title"] = true, ["Organization"] = true, ["GivenName"] = true, ["Pseudonym"] = true, ["OrganizationalUnit"] = true, ["Initials"] = true, nil }

function asserts.AssertASN1Subject(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ASN1Subject to be of type 'table'")
	if struct["Surname"] then asserts.AssertString40(struct["Surname"]) end
	if struct["GenerationQualifier"] then asserts.AssertString3(struct["GenerationQualifier"]) end
	if struct["Locality"] then asserts.AssertString128(struct["Locality"]) end
	if struct["Country"] then asserts.AssertCountryCodeString(struct["Country"]) end
	if struct["SerialNumber"] then asserts.AssertString64(struct["SerialNumber"]) end
	if struct["CommonName"] then asserts.AssertString64(struct["CommonName"]) end
	if struct["DistinguishedNameQualifier"] then asserts.AssertDistinguishedNameQualifierString(struct["DistinguishedNameQualifier"]) end
	if struct["State"] then asserts.AssertString128(struct["State"]) end
	if struct["Title"] then asserts.AssertString64(struct["Title"]) end
	if struct["Organization"] then asserts.AssertString64(struct["Organization"]) end
	if struct["GivenName"] then asserts.AssertString16(struct["GivenName"]) end
	if struct["Pseudonym"] then asserts.AssertString128(struct["Pseudonym"]) end
	if struct["OrganizationalUnit"] then asserts.AssertString64(struct["OrganizationalUnit"]) end
	if struct["Initials"] then asserts.AssertString5(struct["Initials"]) end
	for k,_ in pairs(struct) do
		assert(keys.ASN1Subject[k], "ASN1Subject contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ASN1Subject
-- <p>Contains information about the certificate subject. The certificate can be one issued by your private certificate authority (CA) or it can be your private CA certificate. The <b>Subject</b> field in the certificate identifies the entity that owns or controls the public key in the certificate. The entity can be a user, computer, device, or service. The <b>Subject</b> must contain an X.500 distinguished name (DN). A DN is a sequence of relative distinguished names (RDNs). The RDNs are separated by commas in the certificate. The DN must be unique for each entity, but your private CA can issue more than one certificate with the same DN to the same entity. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Surname [String40] <p>Family name. In the US and the UK, for example, the surname of an individual is ordered last. In Asian cultures the surname is typically ordered first.</p>
-- * GenerationQualifier [String3] <p>Typically a qualifier appended to the name of an individual. Examples include Jr. for junior, Sr. for senior, and III for third.</p>
-- * Locality [String128] <p>The locality (such as a city or town) in which the certificate subject is located.</p>
-- * Country [CountryCodeString] <p>Two-digit code that specifies the country in which the certificate subject located.</p>
-- * SerialNumber [String64] <p>The certificate serial number.</p>
-- * CommonName [String64] <p>Fully qualified domain name (FQDN) associated with the certificate subject.</p>
-- * DistinguishedNameQualifier [DistinguishedNameQualifierString] <p>Disambiguating information for the certificate subject.</p>
-- * State [String128] <p>State in which the subject of the certificate is located.</p>
-- * Title [String64] <p>A title such as Mr. or Ms., which is pre-pended to the name to refer formally to the certificate subject.</p>
-- * Organization [String64] <p>Legal name of the organization with which the certificate subject is affiliated. </p>
-- * GivenName [String16] <p>First name.</p>
-- * Pseudonym [String128] <p>Typically a shortened version of a longer <b>GivenName</b>. For example, Jonathan is often shortened to John. Elizabeth is often shortened to Beth, Liz, or Eliza.</p>
-- * OrganizationalUnit [String64] <p>A subdivision or unit of the organization (such as sales or finance) with which the certificate subject is affiliated.</p>
-- * Initials [String5] <p>Concatenation that typically contains the first letter of the <b>GivenName</b>, the first letter of the middle name if one exists, and the first letter of the <b>SurName</b>.</p>
-- @return ASN1Subject structure as a key-value pair table
function M.ASN1Subject(args)
	assert(args, "You must provide an argument table when creating ASN1Subject")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Surname"] = args["Surname"],
		["GenerationQualifier"] = args["GenerationQualifier"],
		["Locality"] = args["Locality"],
		["Country"] = args["Country"],
		["SerialNumber"] = args["SerialNumber"],
		["CommonName"] = args["CommonName"],
		["DistinguishedNameQualifier"] = args["DistinguishedNameQualifier"],
		["State"] = args["State"],
		["Title"] = args["Title"],
		["Organization"] = args["Organization"],
		["GivenName"] = args["GivenName"],
		["Pseudonym"] = args["Pseudonym"],
		["OrganizationalUnit"] = args["OrganizationalUnit"],
		["Initials"] = args["Initials"],
	}
	asserts.AssertASN1Subject(all_args)
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
-- <p>Tags are labels that you can use to identify and organize your private CAs. Each tag consists of a key and an optional value. You can associate up to 50 tags with a private CA. To add one or more tags to a private CA, call the <a>TagCertificateAuthority</a> operation. To remove a tag, call the <a>UntagCertificateAuthority</a> operation. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [TagValue] <p>Value of the tag.</p>
-- * Key [TagKey] <p>Key (name) of the tag.</p>
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

keys.GetCertificateAuthorityCertificateRequest = { ["CertificateAuthorityArn"] = true, nil }

function asserts.AssertGetCertificateAuthorityCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCertificateAuthorityCertificateRequest to be of type 'table'")
	assert(struct["CertificateAuthorityArn"], "Expected key CertificateAuthorityArn to exist in table")
	if struct["CertificateAuthorityArn"] then asserts.AssertArn(struct["CertificateAuthorityArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCertificateAuthorityCertificateRequest[k], "GetCertificateAuthorityCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCertificateAuthorityCertificateRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CertificateAuthorityArn [Arn] <p>The Amazon Resource Name (ARN) of your private CA. This is of the form:</p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code>. </p>
-- Required key: CertificateAuthorityArn
-- @return GetCertificateAuthorityCertificateRequest structure as a key-value pair table
function M.GetCertificateAuthorityCertificateRequest(args)
	assert(args, "You must provide an argument table when creating GetCertificateAuthorityCertificateRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CertificateAuthorityArn"] = args["CertificateAuthorityArn"],
	}
	asserts.AssertGetCertificateAuthorityCertificateRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeCertificateAuthorityAuditReportResponse = { ["AuditReportStatus"] = true, ["S3Key"] = true, ["S3BucketName"] = true, ["CreatedAt"] = true, nil }

function asserts.AssertDescribeCertificateAuthorityAuditReportResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCertificateAuthorityAuditReportResponse to be of type 'table'")
	if struct["AuditReportStatus"] then asserts.AssertAuditReportStatus(struct["AuditReportStatus"]) end
	if struct["S3Key"] then asserts.AssertString(struct["S3Key"]) end
	if struct["S3BucketName"] then asserts.AssertString(struct["S3BucketName"]) end
	if struct["CreatedAt"] then asserts.AssertTStamp(struct["CreatedAt"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeCertificateAuthorityAuditReportResponse[k], "DescribeCertificateAuthorityAuditReportResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCertificateAuthorityAuditReportResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AuditReportStatus [AuditReportStatus] <p>Specifies whether report creation is in progress, has succeeded, or has failed.</p>
-- * S3Key [String] <p>S3 <b>key</b> that uniquely identifies the report file in your S3 bucket.</p>
-- * S3BucketName [String] <p>Name of the S3 bucket that contains the report.</p>
-- * CreatedAt [TStamp] <p>The date and time at which the report was created.</p>
-- @return DescribeCertificateAuthorityAuditReportResponse structure as a key-value pair table
function M.DescribeCertificateAuthorityAuditReportResponse(args)
	assert(args, "You must provide an argument table when creating DescribeCertificateAuthorityAuditReportResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AuditReportStatus"] = args["AuditReportStatus"],
		["S3Key"] = args["S3Key"],
		["S3BucketName"] = args["S3BucketName"],
		["CreatedAt"] = args["CreatedAt"],
	}
	asserts.AssertDescribeCertificateAuthorityAuditReportResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

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
-- <p>An ACM PCA limit has been exceeded. See the exception message returned to determine the limit that was exceeded.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
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

keys.ConcurrentModificationException = { ["message"] = true, nil }

function asserts.AssertConcurrentModificationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConcurrentModificationException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConcurrentModificationException[k], "ConcurrentModificationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConcurrentModificationException
-- <p>A previous update to your private CA is still ongoing.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- @return ConcurrentModificationException structure as a key-value pair table
function M.ConcurrentModificationException(args)
	assert(args, "You must provide an argument table when creating ConcurrentModificationException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertConcurrentModificationException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CertificateAuthorityConfiguration = { ["KeyAlgorithm"] = true, ["SigningAlgorithm"] = true, ["Subject"] = true, nil }

function asserts.AssertCertificateAuthorityConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CertificateAuthorityConfiguration to be of type 'table'")
	assert(struct["KeyAlgorithm"], "Expected key KeyAlgorithm to exist in table")
	assert(struct["SigningAlgorithm"], "Expected key SigningAlgorithm to exist in table")
	assert(struct["Subject"], "Expected key Subject to exist in table")
	if struct["KeyAlgorithm"] then asserts.AssertKeyAlgorithm(struct["KeyAlgorithm"]) end
	if struct["SigningAlgorithm"] then asserts.AssertSigningAlgorithm(struct["SigningAlgorithm"]) end
	if struct["Subject"] then asserts.AssertASN1Subject(struct["Subject"]) end
	for k,_ in pairs(struct) do
		assert(keys.CertificateAuthorityConfiguration[k], "CertificateAuthorityConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CertificateAuthorityConfiguration
-- <p>Contains configuration information for your private certificate authority (CA). This includes information about the class of public key algorithm and the key pair that your private CA creates when it issues a certificate, the signature algorithm it uses used when issuing certificates, and its X.500 distinguished name. You must specify this information when you call the <a>CreateCertificateAuthority</a> operation. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * KeyAlgorithm [KeyAlgorithm] <p>Type of the public key algorithm and size, in bits, of the key pair that your key pair creates when it issues a certificate.</p>
-- * SigningAlgorithm [SigningAlgorithm] <p>Name of the algorithm your private CA uses to sign certificate requests.</p>
-- * Subject [ASN1Subject] <p>Structure that contains X.500 distinguished name information for your private CA.</p>
-- Required key: KeyAlgorithm
-- Required key: SigningAlgorithm
-- Required key: Subject
-- @return CertificateAuthorityConfiguration structure as a key-value pair table
function M.CertificateAuthorityConfiguration(args)
	assert(args, "You must provide an argument table when creating CertificateAuthorityConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["KeyAlgorithm"] = args["KeyAlgorithm"],
		["SigningAlgorithm"] = args["SigningAlgorithm"],
		["Subject"] = args["Subject"],
	}
	asserts.AssertCertificateAuthorityConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetCertificateAuthorityCsrRequest = { ["CertificateAuthorityArn"] = true, nil }

function asserts.AssertGetCertificateAuthorityCsrRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCertificateAuthorityCsrRequest to be of type 'table'")
	assert(struct["CertificateAuthorityArn"], "Expected key CertificateAuthorityArn to exist in table")
	if struct["CertificateAuthorityArn"] then asserts.AssertArn(struct["CertificateAuthorityArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCertificateAuthorityCsrRequest[k], "GetCertificateAuthorityCsrRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCertificateAuthorityCsrRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CertificateAuthorityArn [Arn] <p>The Amazon Resource Name (ARN) that was returned when you called the <a>CreateCertificateAuthority</a> operation. This must be of the form: </p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code> </p>
-- Required key: CertificateAuthorityArn
-- @return GetCertificateAuthorityCsrRequest structure as a key-value pair table
function M.GetCertificateAuthorityCsrRequest(args)
	assert(args, "You must provide an argument table when creating GetCertificateAuthorityCsrRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CertificateAuthorityArn"] = args["CertificateAuthorityArn"],
	}
	asserts.AssertGetCertificateAuthorityCsrRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RequestAlreadyProcessedException = { ["message"] = true, nil }

function asserts.AssertRequestAlreadyProcessedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RequestAlreadyProcessedException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.RequestAlreadyProcessedException[k], "RequestAlreadyProcessedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RequestAlreadyProcessedException
-- <p>Your request has already been completed.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- @return RequestAlreadyProcessedException structure as a key-value pair table
function M.RequestAlreadyProcessedException(args)
	assert(args, "You must provide an argument table when creating RequestAlreadyProcessedException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertRequestAlreadyProcessedException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidArgsException = { ["message"] = true, nil }

function asserts.AssertInvalidArgsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidArgsException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidArgsException[k], "InvalidArgsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidArgsException
-- <p>One or more of the specified arguments was not valid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- @return InvalidArgsException structure as a key-value pair table
function M.InvalidArgsException(args)
	assert(args, "You must provide an argument table when creating InvalidArgsException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidArgsException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TagCertificateAuthorityRequest = { ["CertificateAuthorityArn"] = true, ["Tags"] = true, nil }

function asserts.AssertTagCertificateAuthorityRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagCertificateAuthorityRequest to be of type 'table'")
	assert(struct["CertificateAuthorityArn"], "Expected key CertificateAuthorityArn to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["CertificateAuthorityArn"] then asserts.AssertArn(struct["CertificateAuthorityArn"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.TagCertificateAuthorityRequest[k], "TagCertificateAuthorityRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagCertificateAuthorityRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CertificateAuthorityArn [Arn] <p>The Amazon Resource Name (ARN) that was returned when you called <a>CreateCertificateAuthority</a>. This must be of the form: </p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code> </p>
-- * Tags [TagList] <p>List of tags to be associated with the CA.</p>
-- Required key: CertificateAuthorityArn
-- Required key: Tags
-- @return TagCertificateAuthorityRequest structure as a key-value pair table
function M.TagCertificateAuthorityRequest(args)
	assert(args, "You must provide an argument table when creating TagCertificateAuthorityRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CertificateAuthorityArn"] = args["CertificateAuthorityArn"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertTagCertificateAuthorityRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListCertificateAuthoritiesRequest = { ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListCertificateAuthoritiesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCertificateAuthoritiesRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListCertificateAuthoritiesRequest[k], "ListCertificateAuthoritiesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCertificateAuthoritiesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>Use this parameter when paginating results in a subsequent request after you receive a response with truncated results. Set it to the value of the <code>NextToken</code> parameter from the response you just received.</p>
-- * MaxResults [MaxResults] <p>Use this parameter when paginating results to specify the maximum number of items to return in the response on each page. If additional items exist beyond the number you specify, the <code>NextToken</code> element is sent in the response. Use this <code>NextToken</code> value in a subsequent request to retrieve additional items.</p>
-- @return ListCertificateAuthoritiesRequest structure as a key-value pair table
function M.ListCertificateAuthoritiesRequest(args)
	assert(args, "You must provide an argument table when creating ListCertificateAuthoritiesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListCertificateAuthoritiesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateCertificateAuthorityAuditReportRequest = { ["AuditReportResponseFormat"] = true, ["S3BucketName"] = true, ["CertificateAuthorityArn"] = true, nil }

function asserts.AssertCreateCertificateAuthorityAuditReportRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCertificateAuthorityAuditReportRequest to be of type 'table'")
	assert(struct["CertificateAuthorityArn"], "Expected key CertificateAuthorityArn to exist in table")
	assert(struct["S3BucketName"], "Expected key S3BucketName to exist in table")
	assert(struct["AuditReportResponseFormat"], "Expected key AuditReportResponseFormat to exist in table")
	if struct["AuditReportResponseFormat"] then asserts.AssertAuditReportResponseFormat(struct["AuditReportResponseFormat"]) end
	if struct["S3BucketName"] then asserts.AssertString(struct["S3BucketName"]) end
	if struct["CertificateAuthorityArn"] then asserts.AssertArn(struct["CertificateAuthorityArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateCertificateAuthorityAuditReportRequest[k], "CreateCertificateAuthorityAuditReportRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCertificateAuthorityAuditReportRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AuditReportResponseFormat [AuditReportResponseFormat] <p>Format in which to create the report. This can be either <b>JSON</b> or <b>CSV</b>.</p>
-- * S3BucketName [String] <p>Name of the S3 bucket that will contain the audit report.</p>
-- * CertificateAuthorityArn [Arn] <p>Amazon Resource Name (ARN) of the CA to be audited. This is of the form:</p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code>.</p>
-- Required key: CertificateAuthorityArn
-- Required key: S3BucketName
-- Required key: AuditReportResponseFormat
-- @return CreateCertificateAuthorityAuditReportRequest structure as a key-value pair table
function M.CreateCertificateAuthorityAuditReportRequest(args)
	assert(args, "You must provide an argument table when creating CreateCertificateAuthorityAuditReportRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AuditReportResponseFormat"] = args["AuditReportResponseFormat"],
		["S3BucketName"] = args["S3BucketName"],
		["CertificateAuthorityArn"] = args["CertificateAuthorityArn"],
	}
	asserts.AssertCreateCertificateAuthorityAuditReportRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.IssueCertificateResponse = { ["CertificateArn"] = true, nil }

function asserts.AssertIssueCertificateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IssueCertificateResponse to be of type 'table'")
	if struct["CertificateArn"] then asserts.AssertArn(struct["CertificateArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.IssueCertificateResponse[k], "IssueCertificateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IssueCertificateResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CertificateArn [Arn] <p>The Amazon Resource Name (ARN) of the issued certificate and the certificate serial number. This is of the form:</p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>/certificate/<i>286535153982981100925020015808220737245</i> </code> </p>
-- @return IssueCertificateResponse structure as a key-value pair table
function M.IssueCertificateResponse(args)
	assert(args, "You must provide an argument table when creating IssueCertificateResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CertificateArn"] = args["CertificateArn"],
	}
	asserts.AssertIssueCertificateResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RevokeCertificateRequest = { ["CertificateSerial"] = true, ["RevocationReason"] = true, ["CertificateAuthorityArn"] = true, nil }

function asserts.AssertRevokeCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RevokeCertificateRequest to be of type 'table'")
	assert(struct["CertificateAuthorityArn"], "Expected key CertificateAuthorityArn to exist in table")
	assert(struct["CertificateSerial"], "Expected key CertificateSerial to exist in table")
	assert(struct["RevocationReason"], "Expected key RevocationReason to exist in table")
	if struct["CertificateSerial"] then asserts.AssertString128(struct["CertificateSerial"]) end
	if struct["RevocationReason"] then asserts.AssertRevocationReason(struct["RevocationReason"]) end
	if struct["CertificateAuthorityArn"] then asserts.AssertArn(struct["CertificateAuthorityArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.RevokeCertificateRequest[k], "RevokeCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RevokeCertificateRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CertificateSerial [String128] <p>Serial number of the certificate to be revoked. This must be in hexadecimal format. You can retrieve the serial number by calling <a>GetCertificate</a> with the Amazon Resource Name (ARN) of the certificate you want and the ARN of your private CA. The <b>GetCertificate</b> operation retrieves the certificate in the PEM format. You can use the following OpenSSL command to list the certificate in text format and copy the hexadecimal serial number. </p> <p> <code>openssl x509 -in <i>file_path</i> -text -noout</code> </p> <p>You can also copy the serial number from the console or use the <a href="https://docs.aws.amazon.com/acm/latest/APIReference/API_DescribeCertificate.html">DescribeCertificate</a> operation in the <i>AWS Certificate Manager API Reference</i>. </p>
-- * RevocationReason [RevocationReason] <p>Specifies why you revoked the certificate.</p>
-- * CertificateAuthorityArn [Arn] <p>Amazon Resource Name (ARN) of the private CA that issued the certificate to be revoked. This must be of the form:</p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code> </p>
-- Required key: CertificateAuthorityArn
-- Required key: CertificateSerial
-- Required key: RevocationReason
-- @return RevokeCertificateRequest structure as a key-value pair table
function M.RevokeCertificateRequest(args)
	assert(args, "You must provide an argument table when creating RevokeCertificateRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CertificateSerial"] = args["CertificateSerial"],
		["RevocationReason"] = args["RevocationReason"],
		["CertificateAuthorityArn"] = args["CertificateAuthorityArn"],
	}
	asserts.AssertRevokeCertificateRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * CertificateChain [CertificateChain] <p>The base64 PEM-encoded certificate chain that chains up to the on-premises root CA certificate that you used to sign your private CA certificate. </p>
-- * Certificate [CertificateBody] <p>The base64 PEM-encoded certificate specified by the <code>CertificateArn</code> parameter.</p>
-- @return GetCertificateResponse structure as a key-value pair table
function M.GetCertificateResponse(args)
	assert(args, "You must provide an argument table when creating GetCertificateResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CertificateChain"] = args["CertificateChain"],
		["Certificate"] = args["Certificate"],
	}
	asserts.AssertGetCertificateResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetCertificateAuthorityCertificateResponse = { ["CertificateChain"] = true, ["Certificate"] = true, nil }

function asserts.AssertGetCertificateAuthorityCertificateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCertificateAuthorityCertificateResponse to be of type 'table'")
	if struct["CertificateChain"] then asserts.AssertCertificateChain(struct["CertificateChain"]) end
	if struct["Certificate"] then asserts.AssertCertificateBody(struct["Certificate"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCertificateAuthorityCertificateResponse[k], "GetCertificateAuthorityCertificateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCertificateAuthorityCertificateResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CertificateChain [CertificateChain] <p>Base64-encoded certificate chain that includes any intermediate certificates and chains up to root on-premises certificate that you used to sign your private CA certificate. The chain does not include your private CA certificate. </p>
-- * Certificate [CertificateBody] <p>Base64-encoded certificate authority (CA) certificate.</p>
-- @return GetCertificateAuthorityCertificateResponse structure as a key-value pair table
function M.GetCertificateAuthorityCertificateResponse(args)
	assert(args, "You must provide an argument table when creating GetCertificateAuthorityCertificateResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CertificateChain"] = args["CertificateChain"],
		["Certificate"] = args["Certificate"],
	}
	asserts.AssertGetCertificateAuthorityCertificateResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeCertificateAuthorityAuditReportRequest = { ["AuditReportId"] = true, ["CertificateAuthorityArn"] = true, nil }

function asserts.AssertDescribeCertificateAuthorityAuditReportRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCertificateAuthorityAuditReportRequest to be of type 'table'")
	assert(struct["CertificateAuthorityArn"], "Expected key CertificateAuthorityArn to exist in table")
	assert(struct["AuditReportId"], "Expected key AuditReportId to exist in table")
	if struct["AuditReportId"] then asserts.AssertAuditReportId(struct["AuditReportId"]) end
	if struct["CertificateAuthorityArn"] then asserts.AssertArn(struct["CertificateAuthorityArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeCertificateAuthorityAuditReportRequest[k], "DescribeCertificateAuthorityAuditReportRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCertificateAuthorityAuditReportRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AuditReportId [AuditReportId] <p>The report ID returned by calling the <a>CreateCertificateAuthorityAuditReport</a> operation.</p>
-- * CertificateAuthorityArn [Arn] <p>The Amazon Resource Name (ARN) of the private CA. This must be of the form:</p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code>. </p>
-- Required key: CertificateAuthorityArn
-- Required key: AuditReportId
-- @return DescribeCertificateAuthorityAuditReportRequest structure as a key-value pair table
function M.DescribeCertificateAuthorityAuditReportRequest(args)
	assert(args, "You must provide an argument table when creating DescribeCertificateAuthorityAuditReportRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AuditReportId"] = args["AuditReportId"],
		["CertificateAuthorityArn"] = args["CertificateAuthorityArn"],
	}
	asserts.AssertDescribeCertificateAuthorityAuditReportRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CertificateAuthority = { ["Status"] = true, ["LastStateChangeAt"] = true, ["NotBefore"] = true, ["RestorableUntil"] = true, ["NotAfter"] = true, ["Arn"] = true, ["Serial"] = true, ["CertificateAuthorityConfiguration"] = true, ["Type"] = true, ["RevocationConfiguration"] = true, ["CreatedAt"] = true, ["FailureReason"] = true, nil }

function asserts.AssertCertificateAuthority(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CertificateAuthority to be of type 'table'")
	if struct["Status"] then asserts.AssertCertificateAuthorityStatus(struct["Status"]) end
	if struct["LastStateChangeAt"] then asserts.AssertTStamp(struct["LastStateChangeAt"]) end
	if struct["NotBefore"] then asserts.AssertTStamp(struct["NotBefore"]) end
	if struct["RestorableUntil"] then asserts.AssertTStamp(struct["RestorableUntil"]) end
	if struct["NotAfter"] then asserts.AssertTStamp(struct["NotAfter"]) end
	if struct["Arn"] then asserts.AssertArn(struct["Arn"]) end
	if struct["Serial"] then asserts.AssertString(struct["Serial"]) end
	if struct["CertificateAuthorityConfiguration"] then asserts.AssertCertificateAuthorityConfiguration(struct["CertificateAuthorityConfiguration"]) end
	if struct["Type"] then asserts.AssertCertificateAuthorityType(struct["Type"]) end
	if struct["RevocationConfiguration"] then asserts.AssertRevocationConfiguration(struct["RevocationConfiguration"]) end
	if struct["CreatedAt"] then asserts.AssertTStamp(struct["CreatedAt"]) end
	if struct["FailureReason"] then asserts.AssertFailureReason(struct["FailureReason"]) end
	for k,_ in pairs(struct) do
		assert(keys.CertificateAuthority[k], "CertificateAuthority contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CertificateAuthority
-- <p>Contains information about your private certificate authority (CA). Your private CA can issue and revoke X.509 digital certificates. Digital certificates verify that the entity named in the certificate <b>Subject</b> field owns or controls the public key contained in the <b>Subject Public Key Info</b> field. Call the <a>CreateCertificateAuthority</a> operation to create your private CA. You must then call the <a>GetCertificateAuthorityCertificate</a> operation to retrieve a private CA certificate signing request (CSR). Take the CSR to your on-premises CA and sign it with the root CA certificate or a subordinate certificate. Call the <a>ImportCertificateAuthorityCertificate</a> operation to import the signed certificate into AWS Certificate Manager (ACM). </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [CertificateAuthorityStatus] <p>Status of your private CA.</p>
-- * LastStateChangeAt [TStamp] <p>Date and time at which your private CA was last updated.</p>
-- * NotBefore [TStamp] <p>Date and time before which your private CA certificate is not valid.</p>
-- * RestorableUntil [TStamp] <p>The period during which a deleted CA can be restored. For more information, see the <code>PermanentDeletionTimeInDays</code> parameter of the <a>DeleteCertificateAuthorityRequest</a> operation. </p>
-- * NotAfter [TStamp] <p>Date and time after which your private CA certificate is not valid.</p>
-- * Arn [Arn] <p>Amazon Resource Name (ARN) for your private certificate authority (CA). The format is <code> <i>12345678-1234-1234-1234-123456789012</i> </code>.</p>
-- * Serial [String] <p>Serial number of your private CA.</p>
-- * CertificateAuthorityConfiguration [CertificateAuthorityConfiguration] <p>Your private CA configuration.</p>
-- * Type [CertificateAuthorityType] <p>Type of your private CA.</p>
-- * RevocationConfiguration [RevocationConfiguration] <p>Information about the certificate revocation list (CRL) created and maintained by your private CA. </p>
-- * CreatedAt [TStamp] <p>Date and time at which your private CA was created.</p>
-- * FailureReason [FailureReason] <p>Reason the request to create your private CA failed.</p>
-- @return CertificateAuthority structure as a key-value pair table
function M.CertificateAuthority(args)
	assert(args, "You must provide an argument table when creating CertificateAuthority")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["LastStateChangeAt"] = args["LastStateChangeAt"],
		["NotBefore"] = args["NotBefore"],
		["RestorableUntil"] = args["RestorableUntil"],
		["NotAfter"] = args["NotAfter"],
		["Arn"] = args["Arn"],
		["Serial"] = args["Serial"],
		["CertificateAuthorityConfiguration"] = args["CertificateAuthorityConfiguration"],
		["Type"] = args["Type"],
		["RevocationConfiguration"] = args["RevocationConfiguration"],
		["CreatedAt"] = args["CreatedAt"],
		["FailureReason"] = args["FailureReason"],
	}
	asserts.AssertCertificateAuthority(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateCertificateAuthorityAuditReportResponse = { ["AuditReportId"] = true, ["S3Key"] = true, nil }

function asserts.AssertCreateCertificateAuthorityAuditReportResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCertificateAuthorityAuditReportResponse to be of type 'table'")
	if struct["AuditReportId"] then asserts.AssertAuditReportId(struct["AuditReportId"]) end
	if struct["S3Key"] then asserts.AssertString(struct["S3Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateCertificateAuthorityAuditReportResponse[k], "CreateCertificateAuthorityAuditReportResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCertificateAuthorityAuditReportResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AuditReportId [AuditReportId] <p>An alphanumeric string that contains a report identifier.</p>
-- * S3Key [String] <p>The <b>key</b> that uniquely identifies the report file in your S3 bucket.</p>
-- @return CreateCertificateAuthorityAuditReportResponse structure as a key-value pair table
function M.CreateCertificateAuthorityAuditReportResponse(args)
	assert(args, "You must provide an argument table when creating CreateCertificateAuthorityAuditReportResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AuditReportId"] = args["AuditReportId"],
		["S3Key"] = args["S3Key"],
	}
	asserts.AssertCreateCertificateAuthorityAuditReportResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeCertificateAuthorityResponse = { ["CertificateAuthority"] = true, nil }

function asserts.AssertDescribeCertificateAuthorityResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCertificateAuthorityResponse to be of type 'table'")
	if struct["CertificateAuthority"] then asserts.AssertCertificateAuthority(struct["CertificateAuthority"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeCertificateAuthorityResponse[k], "DescribeCertificateAuthorityResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCertificateAuthorityResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CertificateAuthority [CertificateAuthority] <p>A <a>CertificateAuthority</a> structure that contains information about your private CA.</p>
-- @return DescribeCertificateAuthorityResponse structure as a key-value pair table
function M.DescribeCertificateAuthorityResponse(args)
	assert(args, "You must provide an argument table when creating DescribeCertificateAuthorityResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CertificateAuthority"] = args["CertificateAuthority"],
	}
	asserts.AssertDescribeCertificateAuthorityResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidPolicyException = { ["message"] = true, nil }

function asserts.AssertInvalidPolicyException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidPolicyException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidPolicyException[k], "InvalidPolicyException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidPolicyException
-- <p>The S3 bucket policy is not valid. The policy must give ACM PCA rights to read from and write to the bucket and find the bucket location.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- @return InvalidPolicyException structure as a key-value pair table
function M.InvalidPolicyException(args)
	assert(args, "You must provide an argument table when creating InvalidPolicyException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidPolicyException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CertificateMismatchException = { ["message"] = true, nil }

function asserts.AssertCertificateMismatchException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CertificateMismatchException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.CertificateMismatchException[k], "CertificateMismatchException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CertificateMismatchException
-- <p>The certificate authority certificate you are importing does not comply with conditions specified in the certificate that signed it.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- @return CertificateMismatchException structure as a key-value pair table
function M.CertificateMismatchException(args)
	assert(args, "You must provide an argument table when creating CertificateMismatchException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertCertificateMismatchException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>You can associate up to 50 tags with a private CA. Exception information is contained in the exception message field.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- @return TooManyTagsException structure as a key-value pair table
function M.TooManyTagsException(args)
	assert(args, "You must provide an argument table when creating TooManyTagsException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertTooManyTagsException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Your request is already in progress.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- @return RequestInProgressException structure as a key-value pair table
function M.RequestInProgressException(args)
	assert(args, "You must provide an argument table when creating RequestInProgressException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertRequestInProgressException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>A resource such as a private CA, S3 bucket, certificate, or audit report cannot be found.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- @return ResourceNotFoundException structure as a key-value pair table
function M.ResourceNotFoundException(args)
	assert(args, "You must provide an argument table when creating ResourceNotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertResourceNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateCertificateAuthorityRequest = { ["Status"] = true, ["RevocationConfiguration"] = true, ["CertificateAuthorityArn"] = true, nil }

function asserts.AssertUpdateCertificateAuthorityRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateCertificateAuthorityRequest to be of type 'table'")
	assert(struct["CertificateAuthorityArn"], "Expected key CertificateAuthorityArn to exist in table")
	if struct["Status"] then asserts.AssertCertificateAuthorityStatus(struct["Status"]) end
	if struct["RevocationConfiguration"] then asserts.AssertRevocationConfiguration(struct["RevocationConfiguration"]) end
	if struct["CertificateAuthorityArn"] then asserts.AssertArn(struct["CertificateAuthorityArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateCertificateAuthorityRequest[k], "UpdateCertificateAuthorityRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateCertificateAuthorityRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [CertificateAuthorityStatus] <p>Status of your private CA.</p>
-- * RevocationConfiguration [RevocationConfiguration] <p>Revocation information for your private CA.</p>
-- * CertificateAuthorityArn [Arn] <p>Amazon Resource Name (ARN) of the private CA that issued the certificate to be revoked. This must be of the form:</p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code> </p>
-- Required key: CertificateAuthorityArn
-- @return UpdateCertificateAuthorityRequest structure as a key-value pair table
function M.UpdateCertificateAuthorityRequest(args)
	assert(args, "You must provide an argument table when creating UpdateCertificateAuthorityRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["RevocationConfiguration"] = args["RevocationConfiguration"],
		["CertificateAuthorityArn"] = args["CertificateAuthorityArn"],
	}
	asserts.AssertUpdateCertificateAuthorityRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MalformedCertificateException = { ["message"] = true, nil }

function asserts.AssertMalformedCertificateException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MalformedCertificateException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.MalformedCertificateException[k], "MalformedCertificateException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MalformedCertificateException
-- <p>One or more fields in the certificate are invalid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- @return MalformedCertificateException structure as a key-value pair table
function M.MalformedCertificateException(args)
	assert(args, "You must provide an argument table when creating MalformedCertificateException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertMalformedCertificateException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteCertificateAuthorityRequest = { ["PermanentDeletionTimeInDays"] = true, ["CertificateAuthorityArn"] = true, nil }

function asserts.AssertDeleteCertificateAuthorityRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteCertificateAuthorityRequest to be of type 'table'")
	assert(struct["CertificateAuthorityArn"], "Expected key CertificateAuthorityArn to exist in table")
	if struct["PermanentDeletionTimeInDays"] then asserts.AssertPermanentDeletionTimeInDays(struct["PermanentDeletionTimeInDays"]) end
	if struct["CertificateAuthorityArn"] then asserts.AssertArn(struct["CertificateAuthorityArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteCertificateAuthorityRequest[k], "DeleteCertificateAuthorityRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteCertificateAuthorityRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PermanentDeletionTimeInDays [PermanentDeletionTimeInDays] <p>The number of days to make a CA restorable after it has been deleted. This can be anywhere from 7 to 30 days, with 30 being the default.</p>
-- * CertificateAuthorityArn [Arn] <p>The Amazon Resource Name (ARN) that was returned when you called <a>CreateCertificateAuthority</a>. This must have the following form: </p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code>. </p>
-- Required key: CertificateAuthorityArn
-- @return DeleteCertificateAuthorityRequest structure as a key-value pair table
function M.DeleteCertificateAuthorityRequest(args)
	assert(args, "You must provide an argument table when creating DeleteCertificateAuthorityRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PermanentDeletionTimeInDays"] = args["PermanentDeletionTimeInDays"],
		["CertificateAuthorityArn"] = args["CertificateAuthorityArn"],
	}
	asserts.AssertDeleteCertificateAuthorityRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ImportCertificateAuthorityCertificateRequest = { ["CertificateChain"] = true, ["Certificate"] = true, ["CertificateAuthorityArn"] = true, nil }

function asserts.AssertImportCertificateAuthorityCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImportCertificateAuthorityCertificateRequest to be of type 'table'")
	assert(struct["CertificateAuthorityArn"], "Expected key CertificateAuthorityArn to exist in table")
	assert(struct["Certificate"], "Expected key Certificate to exist in table")
	assert(struct["CertificateChain"], "Expected key CertificateChain to exist in table")
	if struct["CertificateChain"] then asserts.AssertCertificateChainBlob(struct["CertificateChain"]) end
	if struct["Certificate"] then asserts.AssertCertificateBodyBlob(struct["Certificate"]) end
	if struct["CertificateAuthorityArn"] then asserts.AssertArn(struct["CertificateAuthorityArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ImportCertificateAuthorityCertificateRequest[k], "ImportCertificateAuthorityCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImportCertificateAuthorityCertificateRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CertificateChain [CertificateChainBlob] <p>A PEM-encoded file that contains all of your certificates, other than the certificate you're importing, chaining up to your root CA. Your on-premises root certificate is the last in the chain, and each certificate in the chain signs the one preceding. </p>
-- * Certificate [CertificateBodyBlob] <p>The PEM-encoded certificate for your private CA. This must be signed by using your on-premises CA.</p>
-- * CertificateAuthorityArn [Arn] <p>The Amazon Resource Name (ARN) that was returned when you called <a>CreateCertificateAuthority</a>. This must be of the form: </p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code> </p>
-- Required key: CertificateAuthorityArn
-- Required key: Certificate
-- Required key: CertificateChain
-- @return ImportCertificateAuthorityCertificateRequest structure as a key-value pair table
function M.ImportCertificateAuthorityCertificateRequest(args)
	assert(args, "You must provide an argument table when creating ImportCertificateAuthorityCertificateRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CertificateChain"] = args["CertificateChain"],
		["Certificate"] = args["Certificate"],
		["CertificateAuthorityArn"] = args["CertificateAuthorityArn"],
	}
	asserts.AssertImportCertificateAuthorityCertificateRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CrlConfiguration = { ["CustomCname"] = true, ["Enabled"] = true, ["S3BucketName"] = true, ["ExpirationInDays"] = true, nil }

function asserts.AssertCrlConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CrlConfiguration to be of type 'table'")
	assert(struct["Enabled"], "Expected key Enabled to exist in table")
	if struct["CustomCname"] then asserts.AssertString253(struct["CustomCname"]) end
	if struct["Enabled"] then asserts.AssertBoolean(struct["Enabled"]) end
	if struct["S3BucketName"] then asserts.AssertString3To255(struct["S3BucketName"]) end
	if struct["ExpirationInDays"] then asserts.AssertInteger1To5000(struct["ExpirationInDays"]) end
	for k,_ in pairs(struct) do
		assert(keys.CrlConfiguration[k], "CrlConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CrlConfiguration
-- <p>Contains configuration information for a certificate revocation list (CRL). Your private certificate authority (CA) creates base CRLs. Delta CRLs are not supported. You can enable CRLs for your new or an existing private CA by setting the <b>Enabled</b> parameter to <code>true</code>. Your private CA writes CRLs to an S3 bucket that you specify in the <b>S3BucketName</b> parameter. You can hide the name of your bucket by specifying a value for the <b>CustomCname</b> parameter. Your private CA copies the CNAME or the S3 bucket name to the <b>CRL Distribution Points</b> extension of each certificate it issues. Your S3 bucket policy must give write permission to ACM PCA. </p> <p>Your private CA uses the value in the <b>ExpirationInDays</b> parameter to calculate the <b>nextUpdate</b> field in the CRL. The CRL is refreshed at 1/2 the age of next update or when a certificate is revoked. When a certificate is revoked, it is recorded in the next CRL that is generated and in the next audit report. Only time valid certificates are listed in the CRL. Expired certificates are not included. </p> <p>CRLs contain the following fields:</p> <ul> <li> <p> <b>Version</b>: The current version number defined in RFC 5280 is V2. The integer value is 0x1. </p> </li> <li> <p> <b>Signature Algorithm</b>: The name of the algorithm used to sign the CRL.</p> </li> <li> <p> <b>Issuer</b>: The X.500 distinguished name of your private CA that issued the CRL.</p> </li> <li> <p> <b>Last Update</b>: The issue date and time of this CRL.</p> </li> <li> <p> <b>Next Update</b>: The day and time by which the next CRL will be issued.</p> </li> <li> <p> <b>Revoked Certificates</b>: List of revoked certificates. Each list item contains the following information.</p> <ul> <li> <p> <b>Serial Number</b>: The serial number, in hexadecimal format, of the revoked certificate.</p> </li> <li> <p> <b>Revocation Date</b>: Date and time the certificate was revoked.</p> </li> <li> <p> <b>CRL Entry Extensions</b>: Optional extensions for the CRL entry.</p> <ul> <li> <p> <b>X509v3 CRL Reason Code</b>: Reason the certificate was revoked.</p> </li> </ul> </li> </ul> </li> <li> <p> <b>CRL Extensions</b>: Optional extensions for the CRL.</p> <ul> <li> <p> <b>X509v3 Authority Key Identifier</b>: Identifies the public key associated with the private key used to sign the certificate.</p> </li> <li> <p> <b>X509v3 CRL Number:</b>: Decimal sequence number for the CRL.</p> </li> </ul> </li> <li> <p> <b>Signature Algorithm</b>: Algorithm used by your private CA to sign the CRL.</p> </li> <li> <p> <b>Signature Value</b>: Signature computed over the CRL.</p> </li> </ul> <p>Certificate revocation lists created by ACM PCA are DER-encoded. You can use the following OpenSSL command to list a CRL.</p> <p> <code>openssl crl -inform DER -text -in <i>crl_path</i> -noout</code> </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CustomCname [String253] <p>Name inserted into the certificate <b>CRL Distribution Points</b> extension that enables the use of an alias for the CRL distribution point. Use this value if you don't want the name of your S3 bucket to be public.</p>
-- * Enabled [Boolean] <p>Boolean value that specifies whether certificate revocation lists (CRLs) are enabled. You can use this value to enable certificate revocation for a new CA when you call the <a>CreateCertificateAuthority</a> operation or for an existing CA when you call the <a>UpdateCertificateAuthority</a> operation. </p>
-- * S3BucketName [String3To255] <p>Name of the S3 bucket that contains the CRL. If you do not provide a value for the <b>CustomCname</b> argument, the name of your S3 bucket is placed into the <b>CRL Distribution Points</b> extension of the issued certificate. You can change the name of your bucket by calling the <a>UpdateCertificateAuthority</a> operation. You must specify a bucket policy that allows ACM PCA to write the CRL to your bucket.</p>
-- * ExpirationInDays [Integer1To5000] <p>Number of days until a certificate expires.</p>
-- Required key: Enabled
-- @return CrlConfiguration structure as a key-value pair table
function M.CrlConfiguration(args)
	assert(args, "You must provide an argument table when creating CrlConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CustomCname"] = args["CustomCname"],
		["Enabled"] = args["Enabled"],
		["S3BucketName"] = args["S3BucketName"],
		["ExpirationInDays"] = args["ExpirationInDays"],
	}
	asserts.AssertCrlConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateCertificateAuthorityRequest = { ["IdempotencyToken"] = true, ["CertificateAuthorityConfiguration"] = true, ["CertificateAuthorityType"] = true, ["RevocationConfiguration"] = true, nil }

function asserts.AssertCreateCertificateAuthorityRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCertificateAuthorityRequest to be of type 'table'")
	assert(struct["CertificateAuthorityConfiguration"], "Expected key CertificateAuthorityConfiguration to exist in table")
	assert(struct["CertificateAuthorityType"], "Expected key CertificateAuthorityType to exist in table")
	if struct["IdempotencyToken"] then asserts.AssertIdempotencyToken(struct["IdempotencyToken"]) end
	if struct["CertificateAuthorityConfiguration"] then asserts.AssertCertificateAuthorityConfiguration(struct["CertificateAuthorityConfiguration"]) end
	if struct["CertificateAuthorityType"] then asserts.AssertCertificateAuthorityType(struct["CertificateAuthorityType"]) end
	if struct["RevocationConfiguration"] then asserts.AssertRevocationConfiguration(struct["RevocationConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateCertificateAuthorityRequest[k], "CreateCertificateAuthorityRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCertificateAuthorityRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IdempotencyToken [IdempotencyToken] <p>Alphanumeric string that can be used to distinguish between calls to <b>CreateCertificateAuthority</b>. Idempotency tokens time out after five minutes. Therefore, if you call <b>CreateCertificateAuthority</b> multiple times with the same idempotency token within a five minute period, ACM PCA recognizes that you are requesting only one certificate. As a result, ACM PCA issues only one. If you change the idempotency token for each call, however, ACM PCA recognizes that you are requesting multiple certificates.</p>
-- * CertificateAuthorityConfiguration [CertificateAuthorityConfiguration] <p>Name and bit size of the private key algorithm, the name of the signing algorithm, and X.500 certificate subject information.</p>
-- * CertificateAuthorityType [CertificateAuthorityType] <p>The type of the certificate authority. Currently, this must be <b>SUBORDINATE</b>.</p>
-- * RevocationConfiguration [RevocationConfiguration] <p>Contains a Boolean value that you can use to enable a certification revocation list (CRL) for the CA, the name of the S3 bucket to which ACM PCA will write the CRL, and an optional CNAME alias that you can use to hide the name of your bucket in the <b>CRL Distribution Points</b> extension of your CA certificate. For more information, see the <a>CrlConfiguration</a> structure. </p>
-- Required key: CertificateAuthorityConfiguration
-- Required key: CertificateAuthorityType
-- @return CreateCertificateAuthorityRequest structure as a key-value pair table
function M.CreateCertificateAuthorityRequest(args)
	assert(args, "You must provide an argument table when creating CreateCertificateAuthorityRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IdempotencyToken"] = args["IdempotencyToken"],
		["CertificateAuthorityConfiguration"] = args["CertificateAuthorityConfiguration"],
		["CertificateAuthorityType"] = args["CertificateAuthorityType"],
		["RevocationConfiguration"] = args["RevocationConfiguration"],
	}
	asserts.AssertCreateCertificateAuthorityRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RequestFailedException = { ["message"] = true, nil }

function asserts.AssertRequestFailedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RequestFailedException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.RequestFailedException[k], "RequestFailedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RequestFailedException
-- <p>The request has failed for an unspecified reason.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- @return RequestFailedException structure as a key-value pair table
function M.RequestFailedException(args)
	assert(args, "You must provide an argument table when creating RequestFailedException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertRequestFailedException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Validity = { ["Type"] = true, ["Value"] = true, nil }

function asserts.AssertValidity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Validity to be of type 'table'")
	assert(struct["Value"], "Expected key Value to exist in table")
	assert(struct["Type"], "Expected key Type to exist in table")
	if struct["Type"] then asserts.AssertValidityPeriodType(struct["Type"]) end
	if struct["Value"] then asserts.AssertPositiveLong(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(keys.Validity[k], "Validity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Validity
-- <p>Length of time for which the certificate issued by your private certificate authority (CA), or by the private CA itself, is valid in days, months, or years. You can issue a certificate by calling the <a>IssueCertificate</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Type [ValidityPeriodType] <p>Specifies whether the <code>Value</code> parameter represents days, months, or years.</p>
-- * Value [PositiveLong] <p>Time period.</p>
-- Required key: Value
-- Required key: Type
-- @return Validity structure as a key-value pair table
function M.Validity(args)
	assert(args, "You must provide an argument table when creating Validity")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Type"] = args["Type"],
		["Value"] = args["Value"],
	}
	asserts.AssertValidity(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RevocationConfiguration = { ["CrlConfiguration"] = true, nil }

function asserts.AssertRevocationConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RevocationConfiguration to be of type 'table'")
	if struct["CrlConfiguration"] then asserts.AssertCrlConfiguration(struct["CrlConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.RevocationConfiguration[k], "RevocationConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RevocationConfiguration
-- <p>Certificate revocation information used by the <a>CreateCertificateAuthority</a> and <a>UpdateCertificateAuthority</a> operations. Your private certificate authority (CA) can create and maintain a certificate revocation list (CRL). A CRL contains information about certificates revoked by your CA. For more information, see <a>RevokeCertificate</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CrlConfiguration [CrlConfiguration] <p>Configuration of the certificate revocation list (CRL), if any, maintained by your private CA.</p>
-- @return RevocationConfiguration structure as a key-value pair table
function M.RevocationConfiguration(args)
	assert(args, "You must provide an argument table when creating RevocationConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CrlConfiguration"] = args["CrlConfiguration"],
	}
	asserts.AssertRevocationConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.IssueCertificateRequest = { ["IdempotencyToken"] = true, ["SigningAlgorithm"] = true, ["Validity"] = true, ["CertificateAuthorityArn"] = true, ["Csr"] = true, nil }

function asserts.AssertIssueCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IssueCertificateRequest to be of type 'table'")
	assert(struct["CertificateAuthorityArn"], "Expected key CertificateAuthorityArn to exist in table")
	assert(struct["Csr"], "Expected key Csr to exist in table")
	assert(struct["SigningAlgorithm"], "Expected key SigningAlgorithm to exist in table")
	assert(struct["Validity"], "Expected key Validity to exist in table")
	if struct["IdempotencyToken"] then asserts.AssertIdempotencyToken(struct["IdempotencyToken"]) end
	if struct["SigningAlgorithm"] then asserts.AssertSigningAlgorithm(struct["SigningAlgorithm"]) end
	if struct["Validity"] then asserts.AssertValidity(struct["Validity"]) end
	if struct["CertificateAuthorityArn"] then asserts.AssertArn(struct["CertificateAuthorityArn"]) end
	if struct["Csr"] then asserts.AssertCsrBlob(struct["Csr"]) end
	for k,_ in pairs(struct) do
		assert(keys.IssueCertificateRequest[k], "IssueCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IssueCertificateRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IdempotencyToken [IdempotencyToken] <p>Custom string that can be used to distinguish between calls to the <b>IssueCertificate</b> operation. Idempotency tokens time out after one hour. Therefore, if you call <b>IssueCertificate</b> multiple times with the same idempotency token within 5 minutes, ACM PCA recognizes that you are requesting only one certificate and will issue only one. If you change the idempotency token for each call, PCA recognizes that you are requesting multiple certificates.</p>
-- * SigningAlgorithm [SigningAlgorithm] <p>The name of the algorithm that will be used to sign the certificate to be issued.</p>
-- * Validity [Validity] <p>The type of the validity period.</p>
-- * CertificateAuthorityArn [Arn] <p>The Amazon Resource Name (ARN) that was returned when you called <a>CreateCertificateAuthority</a>. This must be of the form:</p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code> </p>
-- * Csr [CsrBlob] <p>The certificate signing request (CSR) for the certificate you want to issue. You can use the following OpenSSL command to create the CSR and a 2048 bit RSA private key. </p> <p> <code>openssl req -new -newkey rsa:2048 -days 365 -keyout private/test_cert_priv_key.pem -out csr/test_cert_.csr</code> </p> <p>If you have a configuration file, you can use the following OpenSSL command. The <code>usr_cert</code> block in the configuration file contains your X509 version 3 extensions. </p> <p> <code>openssl req -new -config openssl_rsa.cnf -extensions usr_cert -newkey rsa:2048 -days -365 -keyout private/test_cert_priv_key.pem -out csr/test_cert_.csr</code> </p>
-- Required key: CertificateAuthorityArn
-- Required key: Csr
-- Required key: SigningAlgorithm
-- Required key: Validity
-- @return IssueCertificateRequest structure as a key-value pair table
function M.IssueCertificateRequest(args)
	assert(args, "You must provide an argument table when creating IssueCertificateRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IdempotencyToken"] = args["IdempotencyToken"],
		["SigningAlgorithm"] = args["SigningAlgorithm"],
		["Validity"] = args["Validity"],
		["CertificateAuthorityArn"] = args["CertificateAuthorityArn"],
		["Csr"] = args["Csr"],
	}
	asserts.AssertIssueCertificateRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateCertificateAuthorityResponse = { ["CertificateAuthorityArn"] = true, nil }

function asserts.AssertCreateCertificateAuthorityResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCertificateAuthorityResponse to be of type 'table'")
	if struct["CertificateAuthorityArn"] then asserts.AssertArn(struct["CertificateAuthorityArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateCertificateAuthorityResponse[k], "CreateCertificateAuthorityResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCertificateAuthorityResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CertificateAuthorityArn [Arn] <p>If successful, the Amazon Resource Name (ARN) of the certificate authority (CA). This is of the form: </p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code>. </p>
-- @return CreateCertificateAuthorityResponse structure as a key-value pair table
function M.CreateCertificateAuthorityResponse(args)
	assert(args, "You must provide an argument table when creating CreateCertificateAuthorityResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CertificateAuthorityArn"] = args["CertificateAuthorityArn"],
	}
	asserts.AssertCreateCertificateAuthorityResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetCertificateAuthorityCsrResponse = { ["Csr"] = true, nil }

function asserts.AssertGetCertificateAuthorityCsrResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCertificateAuthorityCsrResponse to be of type 'table'")
	if struct["Csr"] then asserts.AssertCsrBody(struct["Csr"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCertificateAuthorityCsrResponse[k], "GetCertificateAuthorityCsrResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCertificateAuthorityCsrResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Csr [CsrBody] <p>The base64 PEM-encoded certificate signing request (CSR) for your private CA certificate.</p>
-- @return GetCertificateAuthorityCsrResponse structure as a key-value pair table
function M.GetCertificateAuthorityCsrResponse(args)
	assert(args, "You must provide an argument table when creating GetCertificateAuthorityCsrResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Csr"] = args["Csr"],
	}
	asserts.AssertGetCertificateAuthorityCsrResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTagsResponse = { ["NextToken"] = true, ["Tags"] = true, nil }

function asserts.AssertListTagsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsResponse[k], "ListTagsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>When the list is truncated, this value is present and should be used for the <b>NextToken</b> parameter in a subsequent pagination request. </p>
-- * Tags [TagList] <p>The tags associated with your private CA.</p>
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
		["NextToken"] = args["NextToken"],
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

function asserts.AssertCertificateBody(str)
	assert(str)
	assert(type(str) == "string", "Expected CertificateBody to be of type 'string'")
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

function asserts.AssertCertificateChain(str)
	assert(str)
	assert(type(str) == "string", "Expected CertificateChain to be of type 'string'")
end

--  
function M.CertificateChain(str)
	asserts.AssertCertificateChain(str)
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

function asserts.AssertString128(str)
	assert(str)
	assert(type(str) == "string", "Expected String128 to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
end

--  
function M.String128(str)
	asserts.AssertString128(str)
	return str
end

function asserts.AssertString3To255(str)
	assert(str)
	assert(type(str) == "string", "Expected String3To255 to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
end

--  
function M.String3To255(str)
	asserts.AssertString3To255(str)
	return str
end

function asserts.AssertCountryCodeString(str)
	assert(str)
	assert(type(str) == "string", "Expected CountryCodeString to be of type 'string'")
end

--  
function M.CountryCodeString(str)
	asserts.AssertCountryCodeString(str)
	return str
end

function asserts.AssertArn(str)
	assert(str)
	assert(type(str) == "string", "Expected Arn to be of type 'string'")
	assert(#str <= 200, "Expected string to be max 200 characters")
	assert(#str >= 5, "Expected string to be min 5 characters")
end

--  
function M.Arn(str)
	asserts.AssertArn(str)
	return str
end

function asserts.AssertCertificateAuthorityType(str)
	assert(str)
	assert(type(str) == "string", "Expected CertificateAuthorityType to be of type 'string'")
end

--  
function M.CertificateAuthorityType(str)
	asserts.AssertCertificateAuthorityType(str)
	return str
end

function asserts.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
	assert(#str <= 500, "Expected string to be max 500 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.NextToken(str)
	asserts.AssertNextToken(str)
	return str
end

function asserts.AssertString3(str)
	assert(str)
	assert(type(str) == "string", "Expected String3 to be of type 'string'")
	assert(#str <= 3, "Expected string to be max 3 characters")
end

--  
function M.String3(str)
	asserts.AssertString3(str)
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

function asserts.AssertFailureReason(str)
	assert(str)
	assert(type(str) == "string", "Expected FailureReason to be of type 'string'")
end

--  
function M.FailureReason(str)
	asserts.AssertFailureReason(str)
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

function asserts.AssertString253(str)
	assert(str)
	assert(type(str) == "string", "Expected String253 to be of type 'string'")
	assert(#str <= 253, "Expected string to be max 253 characters")
end

--  
function M.String253(str)
	asserts.AssertString253(str)
	return str
end

function asserts.AssertCsrBody(str)
	assert(str)
	assert(type(str) == "string", "Expected CsrBody to be of type 'string'")
end

--  
function M.CsrBody(str)
	asserts.AssertCsrBody(str)
	return str
end

function asserts.AssertSigningAlgorithm(str)
	assert(str)
	assert(type(str) == "string", "Expected SigningAlgorithm to be of type 'string'")
end

--  
function M.SigningAlgorithm(str)
	asserts.AssertSigningAlgorithm(str)
	return str
end

function asserts.AssertValidityPeriodType(str)
	assert(str)
	assert(type(str) == "string", "Expected ValidityPeriodType to be of type 'string'")
end

--  
function M.ValidityPeriodType(str)
	asserts.AssertValidityPeriodType(str)
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

function asserts.AssertAuditReportId(str)
	assert(str)
	assert(type(str) == "string", "Expected AuditReportId to be of type 'string'")
	assert(#str <= 36, "Expected string to be max 36 characters")
	assert(#str >= 36, "Expected string to be min 36 characters")
end

--  
function M.AuditReportId(str)
	asserts.AssertAuditReportId(str)
	return str
end

function asserts.AssertString40(str)
	assert(str)
	assert(type(str) == "string", "Expected String40 to be of type 'string'")
	assert(#str <= 40, "Expected string to be max 40 characters")
end

--  
function M.String40(str)
	asserts.AssertString40(str)
	return str
end

function asserts.AssertDistinguishedNameQualifierString(str)
	assert(str)
	assert(type(str) == "string", "Expected DistinguishedNameQualifierString to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
end

--  
function M.DistinguishedNameQualifierString(str)
	asserts.AssertDistinguishedNameQualifierString(str)
	return str
end

function asserts.AssertString64(str)
	assert(str)
	assert(type(str) == "string", "Expected String64 to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
end

--  
function M.String64(str)
	asserts.AssertString64(str)
	return str
end

function asserts.AssertString5(str)
	assert(str)
	assert(type(str) == "string", "Expected String5 to be of type 'string'")
	assert(#str <= 5, "Expected string to be max 5 characters")
end

--  
function M.String5(str)
	asserts.AssertString5(str)
	return str
end

function asserts.AssertAuditReportResponseFormat(str)
	assert(str)
	assert(type(str) == "string", "Expected AuditReportResponseFormat to be of type 'string'")
end

--  
function M.AuditReportResponseFormat(str)
	asserts.AssertAuditReportResponseFormat(str)
	return str
end

function asserts.AssertIdempotencyToken(str)
	assert(str)
	assert(type(str) == "string", "Expected IdempotencyToken to be of type 'string'")
	assert(#str <= 36, "Expected string to be max 36 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.IdempotencyToken(str)
	asserts.AssertIdempotencyToken(str)
	return str
end

function asserts.AssertCertificateAuthorityStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected CertificateAuthorityStatus to be of type 'string'")
end

--  
function M.CertificateAuthorityStatus(str)
	asserts.AssertCertificateAuthorityStatus(str)
	return str
end

function asserts.AssertAuditReportStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected AuditReportStatus to be of type 'string'")
end

--  
function M.AuditReportStatus(str)
	asserts.AssertAuditReportStatus(str)
	return str
end

function asserts.AssertString16(str)
	assert(str)
	assert(type(str) == "string", "Expected String16 to be of type 'string'")
	assert(#str <= 16, "Expected string to be max 16 characters")
end

--  
function M.String16(str)
	asserts.AssertString16(str)
	return str
end

function asserts.AssertPositiveLong(long)
	assert(long)
	assert(type(long) == "number", "Expected PositiveLong to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.PositiveLong(long)
	asserts.AssertPositiveLong(long)
	return long
end

function asserts.AssertPermanentDeletionTimeInDays(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PermanentDeletionTimeInDays to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 30, "Expected integer to be max 30")
	assert(integer >= 7, "Expected integer to be min 7")
end

function M.PermanentDeletionTimeInDays(integer)
	asserts.AssertPermanentDeletionTimeInDays(integer)
	return integer
end

function asserts.AssertMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1000, "Expected integer to be max 1000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxResults(integer)
	asserts.AssertMaxResults(integer)
	return integer
end

function asserts.AssertInteger1To5000(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Integer1To5000 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 5000, "Expected integer to be max 5000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.Integer1To5000(integer)
	asserts.AssertInteger1To5000(integer)
	return integer
end

function asserts.AssertBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Boolean to be of type 'boolean'")
end

function M.Boolean(boolean)
	asserts.AssertBoolean(boolean)
	return boolean
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
	assert(type(blob) == "string", "Expected CertificateBodyBlob to be of type 'string'")
	assert(#blob <= 32768, "Expected blob to be max 32768")
	assert(#blob >= 1, "Expected blob to be max 1")
end

function M.CertificateBodyBlob(blob)
	asserts.AssertCertificateBodyBlob(blob)
	return blob
end

function asserts.AssertCertificateChainBlob(blob)
	assert(blob)
	assert(type(blob) == "string", "Expected CertificateChainBlob to be of type 'string'")
	assert(#blob <= 2097152, "Expected blob to be max 2097152")
end

function M.CertificateChainBlob(blob)
	asserts.AssertCertificateChainBlob(blob)
	return blob
end

function asserts.AssertCsrBlob(blob)
	assert(blob)
	assert(type(blob) == "string", "Expected CsrBlob to be of type 'string'")
	assert(#blob <= 32768, "Expected blob to be max 32768")
	assert(#blob >= 1, "Expected blob to be max 1")
end

function M.CsrBlob(blob)
	asserts.AssertCsrBlob(blob)
	return blob
end

function asserts.AssertCertificateAuthorities(list)
	assert(list)
	assert(type(list) == "table", "Expected CertificateAuthorities to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCertificateAuthority(v)
	end
end

--  
-- List of CertificateAuthority objects
function M.CertificateAuthorities(list)
	asserts.AssertCertificateAuthorities(list)
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
			return "acm-pca.amazonaws.com"
		end
	end
	local ss = { "acm-pca" }
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
--- Call RestoreCertificateAuthority asynchronously, invoking a callback when done
-- @param RestoreCertificateAuthorityRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RestoreCertificateAuthorityAsync(RestoreCertificateAuthorityRequest, cb)
	assert(RestoreCertificateAuthorityRequest, "You must provide a RestoreCertificateAuthorityRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "ACMPrivateCA.RestoreCertificateAuthority",
	}
	for header,value in pairs(RestoreCertificateAuthorityRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RestoreCertificateAuthorityRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RestoreCertificateAuthority synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RestoreCertificateAuthorityRequest
-- @return response
-- @return error_type
-- @return error_message
function M.RestoreCertificateAuthoritySync(RestoreCertificateAuthorityRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RestoreCertificateAuthorityAsync(RestoreCertificateAuthorityRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListCertificateAuthorities asynchronously, invoking a callback when done
-- @param ListCertificateAuthoritiesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListCertificateAuthoritiesAsync(ListCertificateAuthoritiesRequest, cb)
	assert(ListCertificateAuthoritiesRequest, "You must provide a ListCertificateAuthoritiesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "ACMPrivateCA.ListCertificateAuthorities",
	}
	for header,value in pairs(ListCertificateAuthoritiesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListCertificateAuthoritiesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListCertificateAuthorities synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListCertificateAuthoritiesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListCertificateAuthoritiesSync(ListCertificateAuthoritiesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListCertificateAuthoritiesAsync(ListCertificateAuthoritiesRequest, function(response, error_type, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = "ACMPrivateCA.ListTags",
	}
	for header,value in pairs(ListTagsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListTagsRequest, headers, settings, cb)
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

--- Call UntagCertificateAuthority asynchronously, invoking a callback when done
-- @param UntagCertificateAuthorityRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UntagCertificateAuthorityAsync(UntagCertificateAuthorityRequest, cb)
	assert(UntagCertificateAuthorityRequest, "You must provide a UntagCertificateAuthorityRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "ACMPrivateCA.UntagCertificateAuthority",
	}
	for header,value in pairs(UntagCertificateAuthorityRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UntagCertificateAuthorityRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UntagCertificateAuthority synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UntagCertificateAuthorityRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UntagCertificateAuthoritySync(UntagCertificateAuthorityRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UntagCertificateAuthorityAsync(UntagCertificateAuthorityRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateCertificateAuthority asynchronously, invoking a callback when done
-- @param UpdateCertificateAuthorityRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateCertificateAuthorityAsync(UpdateCertificateAuthorityRequest, cb)
	assert(UpdateCertificateAuthorityRequest, "You must provide a UpdateCertificateAuthorityRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "ACMPrivateCA.UpdateCertificateAuthority",
	}
	for header,value in pairs(UpdateCertificateAuthorityRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateCertificateAuthorityRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateCertificateAuthority synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateCertificateAuthorityRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateCertificateAuthoritySync(UpdateCertificateAuthorityRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateCertificateAuthorityAsync(UpdateCertificateAuthorityRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetCertificateAuthorityCertificate asynchronously, invoking a callback when done
-- @param GetCertificateAuthorityCertificateRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetCertificateAuthorityCertificateAsync(GetCertificateAuthorityCertificateRequest, cb)
	assert(GetCertificateAuthorityCertificateRequest, "You must provide a GetCertificateAuthorityCertificateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "ACMPrivateCA.GetCertificateAuthorityCertificate",
	}
	for header,value in pairs(GetCertificateAuthorityCertificateRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetCertificateAuthorityCertificateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetCertificateAuthorityCertificate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetCertificateAuthorityCertificateRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetCertificateAuthorityCertificateSync(GetCertificateAuthorityCertificateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetCertificateAuthorityCertificateAsync(GetCertificateAuthorityCertificateRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ImportCertificateAuthorityCertificate asynchronously, invoking a callback when done
-- @param ImportCertificateAuthorityCertificateRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ImportCertificateAuthorityCertificateAsync(ImportCertificateAuthorityCertificateRequest, cb)
	assert(ImportCertificateAuthorityCertificateRequest, "You must provide a ImportCertificateAuthorityCertificateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "ACMPrivateCA.ImportCertificateAuthorityCertificate",
	}
	for header,value in pairs(ImportCertificateAuthorityCertificateRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ImportCertificateAuthorityCertificateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ImportCertificateAuthorityCertificate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ImportCertificateAuthorityCertificateRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ImportCertificateAuthorityCertificateSync(ImportCertificateAuthorityCertificateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ImportCertificateAuthorityCertificateAsync(ImportCertificateAuthorityCertificateRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call IssueCertificate asynchronously, invoking a callback when done
-- @param IssueCertificateRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.IssueCertificateAsync(IssueCertificateRequest, cb)
	assert(IssueCertificateRequest, "You must provide a IssueCertificateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "ACMPrivateCA.IssueCertificate",
	}
	for header,value in pairs(IssueCertificateRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", IssueCertificateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call IssueCertificate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param IssueCertificateRequest
-- @return response
-- @return error_type
-- @return error_message
function M.IssueCertificateSync(IssueCertificateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.IssueCertificateAsync(IssueCertificateRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetCertificate asynchronously, invoking a callback when done
-- @param GetCertificateRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetCertificateAsync(GetCertificateRequest, cb)
	assert(GetCertificateRequest, "You must provide a GetCertificateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "ACMPrivateCA.GetCertificate",
	}
	for header,value in pairs(GetCertificateRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.GetCertificateSync(GetCertificateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetCertificateAsync(GetCertificateRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call TagCertificateAuthority asynchronously, invoking a callback when done
-- @param TagCertificateAuthorityRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.TagCertificateAuthorityAsync(TagCertificateAuthorityRequest, cb)
	assert(TagCertificateAuthorityRequest, "You must provide a TagCertificateAuthorityRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "ACMPrivateCA.TagCertificateAuthority",
	}
	for header,value in pairs(TagCertificateAuthorityRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", TagCertificateAuthorityRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call TagCertificateAuthority synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param TagCertificateAuthorityRequest
-- @return response
-- @return error_type
-- @return error_message
function M.TagCertificateAuthoritySync(TagCertificateAuthorityRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.TagCertificateAuthorityAsync(TagCertificateAuthorityRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeCertificateAuthorityAuditReport asynchronously, invoking a callback when done
-- @param DescribeCertificateAuthorityAuditReportRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeCertificateAuthorityAuditReportAsync(DescribeCertificateAuthorityAuditReportRequest, cb)
	assert(DescribeCertificateAuthorityAuditReportRequest, "You must provide a DescribeCertificateAuthorityAuditReportRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "ACMPrivateCA.DescribeCertificateAuthorityAuditReport",
	}
	for header,value in pairs(DescribeCertificateAuthorityAuditReportRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeCertificateAuthorityAuditReportRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeCertificateAuthorityAuditReport synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeCertificateAuthorityAuditReportRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeCertificateAuthorityAuditReportSync(DescribeCertificateAuthorityAuditReportRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeCertificateAuthorityAuditReportAsync(DescribeCertificateAuthorityAuditReportRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeCertificateAuthority asynchronously, invoking a callback when done
-- @param DescribeCertificateAuthorityRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeCertificateAuthorityAsync(DescribeCertificateAuthorityRequest, cb)
	assert(DescribeCertificateAuthorityRequest, "You must provide a DescribeCertificateAuthorityRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "ACMPrivateCA.DescribeCertificateAuthority",
	}
	for header,value in pairs(DescribeCertificateAuthorityRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeCertificateAuthorityRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeCertificateAuthority synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeCertificateAuthorityRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeCertificateAuthoritySync(DescribeCertificateAuthorityRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeCertificateAuthorityAsync(DescribeCertificateAuthorityRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetCertificateAuthorityCsr asynchronously, invoking a callback when done
-- @param GetCertificateAuthorityCsrRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetCertificateAuthorityCsrAsync(GetCertificateAuthorityCsrRequest, cb)
	assert(GetCertificateAuthorityCsrRequest, "You must provide a GetCertificateAuthorityCsrRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "ACMPrivateCA.GetCertificateAuthorityCsr",
	}
	for header,value in pairs(GetCertificateAuthorityCsrRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetCertificateAuthorityCsrRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetCertificateAuthorityCsr synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetCertificateAuthorityCsrRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetCertificateAuthorityCsrSync(GetCertificateAuthorityCsrRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetCertificateAuthorityCsrAsync(GetCertificateAuthorityCsrRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateCertificateAuthority asynchronously, invoking a callback when done
-- @param CreateCertificateAuthorityRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateCertificateAuthorityAsync(CreateCertificateAuthorityRequest, cb)
	assert(CreateCertificateAuthorityRequest, "You must provide a CreateCertificateAuthorityRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "ACMPrivateCA.CreateCertificateAuthority",
	}
	for header,value in pairs(CreateCertificateAuthorityRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateCertificateAuthorityRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateCertificateAuthority synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateCertificateAuthorityRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateCertificateAuthoritySync(CreateCertificateAuthorityRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateCertificateAuthorityAsync(CreateCertificateAuthorityRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteCertificateAuthority asynchronously, invoking a callback when done
-- @param DeleteCertificateAuthorityRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteCertificateAuthorityAsync(DeleteCertificateAuthorityRequest, cb)
	assert(DeleteCertificateAuthorityRequest, "You must provide a DeleteCertificateAuthorityRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "ACMPrivateCA.DeleteCertificateAuthority",
	}
	for header,value in pairs(DeleteCertificateAuthorityRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteCertificateAuthorityRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteCertificateAuthority synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteCertificateAuthorityRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteCertificateAuthoritySync(DeleteCertificateAuthorityRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteCertificateAuthorityAsync(DeleteCertificateAuthorityRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RevokeCertificate asynchronously, invoking a callback when done
-- @param RevokeCertificateRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RevokeCertificateAsync(RevokeCertificateRequest, cb)
	assert(RevokeCertificateRequest, "You must provide a RevokeCertificateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "ACMPrivateCA.RevokeCertificate",
	}
	for header,value in pairs(RevokeCertificateRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RevokeCertificateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RevokeCertificate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RevokeCertificateRequest
-- @return response
-- @return error_type
-- @return error_message
function M.RevokeCertificateSync(RevokeCertificateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RevokeCertificateAsync(RevokeCertificateRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateCertificateAuthorityAuditReport asynchronously, invoking a callback when done
-- @param CreateCertificateAuthorityAuditReportRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateCertificateAuthorityAuditReportAsync(CreateCertificateAuthorityAuditReportRequest, cb)
	assert(CreateCertificateAuthorityAuditReportRequest, "You must provide a CreateCertificateAuthorityAuditReportRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "ACMPrivateCA.CreateCertificateAuthorityAuditReport",
	}
	for header,value in pairs(CreateCertificateAuthorityAuditReportRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateCertificateAuthorityAuditReportRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateCertificateAuthorityAuditReport synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateCertificateAuthorityAuditReportRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateCertificateAuthorityAuditReportSync(CreateCertificateAuthorityAuditReportRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateCertificateAuthorityAuditReportAsync(CreateCertificateAuthorityAuditReportRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
