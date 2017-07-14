--- GENERATED CODE - DO NOT MODIFY
-- Amazon CloudSearch (cloudsearch-2013-01-01)

local M = {}

M.metadata = {
	api_version = "2013-01-01",
	json_version = "",
	protocol = "query",
	checksum_format = "",
	endpoint_prefix = "cloudsearch",
	service_abbreviation = "",
	service_full_name = "Amazon CloudSearch",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "cloudsearch-2013-01-01",
}

local ExpressionStatus_keys = { "Status" = true, "Options" = true, nil }

function M.AssertExpressionStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExpressionStatus to be of type 'table'")
	assert(struct["Options"], "Expected key Options to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["Status"] then M.AssertOptionStatus(struct["Status"]) end
	if struct["Options"] then M.AssertExpression(struct["Options"]) end
	for k,_ in pairs(struct) do
		assert(ExpressionStatus_keys[k], "ExpressionStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExpressionStatus
-- &lt;p&gt;The value of an &lt;code&gt;Expression&lt;/code&gt; and its current status.&lt;/p&gt;
-- @param Status [OptionStatus] &lt;p&gt;The value of an &lt;code&gt;Expression&lt;/code&gt; and its current status.&lt;/p&gt;
-- @param Options [Expression] &lt;p&gt;The expression that is evaluated for sorting while processing a search request.&lt;/p&gt;
-- Required parameter: Options
-- Required parameter: Status
function M.ExpressionStatus(Status, Options, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExpressionStatus")
	local t = { 
		["Status"] = Status,
		["Options"] = Options,
	}
	M.AssertExpressionStatus(t)
	return t
end

local DescribeAnalysisSchemesResponse_keys = { "AnalysisSchemes" = true, nil }

function M.AssertDescribeAnalysisSchemesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAnalysisSchemesResponse to be of type 'table'")
	assert(struct["AnalysisSchemes"], "Expected key AnalysisSchemes to exist in table")
	if struct["AnalysisSchemes"] then M.AssertAnalysisSchemeStatusList(struct["AnalysisSchemes"]) end
	for k,_ in pairs(struct) do
		assert(DescribeAnalysisSchemesResponse_keys[k], "DescribeAnalysisSchemesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAnalysisSchemesResponse
-- &lt;p&gt;The result of a &lt;code&gt;DescribeAnalysisSchemes&lt;/code&gt; request. Contains the analysis schemes configured for the domain specified in the request.&lt;/p&gt;
-- @param AnalysisSchemes [AnalysisSchemeStatusList] &lt;p&gt;The analysis scheme descriptions.&lt;/p&gt;
-- Required parameter: AnalysisSchemes
function M.DescribeAnalysisSchemesResponse(AnalysisSchemes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAnalysisSchemesResponse")
	local t = { 
		["AnalysisSchemes"] = AnalysisSchemes,
	}
	M.AssertDescribeAnalysisSchemesResponse(t)
	return t
end

local DeleteAnalysisSchemeRequest_keys = { "AnalysisSchemeName" = true, "DomainName" = true, nil }

function M.AssertDeleteAnalysisSchemeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteAnalysisSchemeRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["AnalysisSchemeName"], "Expected key AnalysisSchemeName to exist in table")
	if struct["AnalysisSchemeName"] then M.AssertStandardName(struct["AnalysisSchemeName"]) end
	if struct["DomainName"] then M.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteAnalysisSchemeRequest_keys[k], "DeleteAnalysisSchemeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteAnalysisSchemeRequest
-- &lt;p&gt;Container for the parameters to the &lt;code&gt;&lt;a&gt;DeleteAnalysisScheme&lt;/a&gt;&lt;/code&gt; operation. Specifies the name of the domain you want to update and the analysis scheme you want to delete. &lt;/p&gt;
-- @param AnalysisSchemeName [StandardName] &lt;p&gt;The name of the analysis scheme you want to delete.&lt;/p&gt;
-- @param DomainName [DomainName] &lt;p&gt;Container for the parameters to the &lt;code&gt;&lt;a&gt;DeleteAnalysisScheme&lt;/a&gt;&lt;/code&gt; operation. Specifies the name of the domain you want to update and the analysis scheme you want to delete. &lt;/p&gt;
-- Required parameter: DomainName
-- Required parameter: AnalysisSchemeName
function M.DeleteAnalysisSchemeRequest(AnalysisSchemeName, DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteAnalysisSchemeRequest")
	local t = { 
		["AnalysisSchemeName"] = AnalysisSchemeName,
		["DomainName"] = DomainName,
	}
	M.AssertDeleteAnalysisSchemeRequest(t)
	return t
end

local IndexDocumentsResponse_keys = { "FieldNames" = true, nil }

function M.AssertIndexDocumentsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IndexDocumentsResponse to be of type 'table'")
	if struct["FieldNames"] then M.AssertFieldNameList(struct["FieldNames"]) end
	for k,_ in pairs(struct) do
		assert(IndexDocumentsResponse_keys[k], "IndexDocumentsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IndexDocumentsResponse
-- &lt;p&gt;The result of an &lt;code&gt;IndexDocuments&lt;/code&gt; request. Contains the status of the indexing operation, including the fields being indexed.&lt;/p&gt;
-- @param FieldNames [FieldNameList] &lt;p&gt;The names of the fields that are currently being indexed.&lt;/p&gt;
function M.IndexDocumentsResponse(FieldNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IndexDocumentsResponse")
	local t = { 
		["FieldNames"] = FieldNames,
	}
	M.AssertIndexDocumentsResponse(t)
	return t
end

local UpdateServiceAccessPoliciesRequest_keys = { "AccessPolicies" = true, "DomainName" = true, nil }

function M.AssertUpdateServiceAccessPoliciesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateServiceAccessPoliciesRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["AccessPolicies"], "Expected key AccessPolicies to exist in table")
	if struct["AccessPolicies"] then M.AssertPolicyDocument(struct["AccessPolicies"]) end
	if struct["DomainName"] then M.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(UpdateServiceAccessPoliciesRequest_keys[k], "UpdateServiceAccessPoliciesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateServiceAccessPoliciesRequest
-- &lt;p&gt;Container for the parameters to the &lt;code&gt;&lt;a&gt;UpdateServiceAccessPolicies&lt;/a&gt;&lt;/code&gt; operation. Specifies the name of the domain you want to update and the access rules you want to configure.&lt;/p&gt;
-- @param AccessPolicies [PolicyDocument] &lt;p&gt;The access rules you want to configure. These rules replace any existing rules. &lt;/p&gt;
-- @param DomainName [DomainName] &lt;p&gt;Container for the parameters to the &lt;code&gt;&lt;a&gt;UpdateServiceAccessPolicies&lt;/a&gt;&lt;/code&gt; operation. Specifies the name of the domain you want to update and the access rules you want to configure.&lt;/p&gt;
-- Required parameter: DomainName
-- Required parameter: AccessPolicies
function M.UpdateServiceAccessPoliciesRequest(AccessPolicies, DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateServiceAccessPoliciesRequest")
	local t = { 
		["AccessPolicies"] = AccessPolicies,
		["DomainName"] = DomainName,
	}
	M.AssertUpdateServiceAccessPoliciesRequest(t)
	return t
end

local DeleteIndexFieldResponse_keys = { "IndexField" = true, nil }

function M.AssertDeleteIndexFieldResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteIndexFieldResponse to be of type 'table'")
	assert(struct["IndexField"], "Expected key IndexField to exist in table")
	if struct["IndexField"] then M.AssertIndexFieldStatus(struct["IndexField"]) end
	for k,_ in pairs(struct) do
		assert(DeleteIndexFieldResponse_keys[k], "DeleteIndexFieldResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteIndexFieldResponse
-- &lt;p&gt;The result of a &lt;code&gt;&lt;a&gt;DeleteIndexField&lt;/a&gt;&lt;/code&gt; request.&lt;/p&gt;
-- @param IndexField [IndexFieldStatus] &lt;p&gt;The status of the index field being deleted.&lt;/p&gt;
-- Required parameter: IndexField
function M.DeleteIndexFieldResponse(IndexField, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteIndexFieldResponse")
	local t = { 
		["IndexField"] = IndexField,
	}
	M.AssertDeleteIndexFieldResponse(t)
	return t
end

local DoubleOptions_keys = { "SourceField" = true, "DefaultValue" = true, "FacetEnabled" = true, "SearchEnabled" = true, "SortEnabled" = true, "ReturnEnabled" = true, nil }

function M.AssertDoubleOptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DoubleOptions to be of type 'table'")
	if struct["SourceField"] then M.AssertFieldName(struct["SourceField"]) end
	if struct["DefaultValue"] then M.AssertDouble(struct["DefaultValue"]) end
	if struct["FacetEnabled"] then M.AssertBoolean(struct["FacetEnabled"]) end
	if struct["SearchEnabled"] then M.AssertBoolean(struct["SearchEnabled"]) end
	if struct["SortEnabled"] then M.AssertBoolean(struct["SortEnabled"]) end
	if struct["ReturnEnabled"] then M.AssertBoolean(struct["ReturnEnabled"]) end
	for k,_ in pairs(struct) do
		assert(DoubleOptions_keys[k], "DoubleOptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DoubleOptions
-- &lt;p&gt;Options for a double-precision 64-bit floating point field. Present if &lt;code&gt;IndexFieldType&lt;/code&gt; specifies the field is of type &lt;code&gt;double&lt;/code&gt;. All options are enabled by default.&lt;/p&gt;
-- @param SourceField [FieldName] &lt;p&gt;The name of the source field to map to the field. &lt;/p&gt;
-- @param DefaultValue [Double] &lt;p&gt;A value to use for the field if the field isn't specified for a document. This can be important if you are using the field in an expression and that field is not present in every document.&lt;/p&gt;
-- @param FacetEnabled [Boolean] &lt;p&gt;Whether facet information can be returned for the field.&lt;/p&gt;
-- @param SearchEnabled [Boolean] &lt;p&gt;Whether the contents of the field are searchable.&lt;/p&gt;
-- @param SortEnabled [Boolean] &lt;p&gt;Whether the field can be used to sort the search results.&lt;/p&gt;
-- @param ReturnEnabled [Boolean] &lt;p&gt;Whether the contents of the field can be returned in the search results.&lt;/p&gt;
function M.DoubleOptions(SourceField, DefaultValue, FacetEnabled, SearchEnabled, SortEnabled, ReturnEnabled, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DoubleOptions")
	local t = { 
		["SourceField"] = SourceField,
		["DefaultValue"] = DefaultValue,
		["FacetEnabled"] = FacetEnabled,
		["SearchEnabled"] = SearchEnabled,
		["SortEnabled"] = SortEnabled,
		["ReturnEnabled"] = ReturnEnabled,
	}
	M.AssertDoubleOptions(t)
	return t
end

local ListDomainNamesResponse_keys = { "DomainNames" = true, nil }

function M.AssertListDomainNamesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDomainNamesResponse to be of type 'table'")
	if struct["DomainNames"] then M.AssertDomainNameMap(struct["DomainNames"]) end
	for k,_ in pairs(struct) do
		assert(ListDomainNamesResponse_keys[k], "ListDomainNamesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDomainNamesResponse
-- &lt;p&gt;The result of a &lt;code&gt;ListDomainNames&lt;/code&gt; request. Contains a list of the domains owned by an account.&lt;/p&gt;
-- @param DomainNames [DomainNameMap] &lt;p&gt;The names of the search domains owned by an account.&lt;/p&gt;
function M.ListDomainNamesResponse(DomainNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDomainNamesResponse")
	local t = { 
		["DomainNames"] = DomainNames,
	}
	M.AssertListDomainNamesResponse(t)
	return t
end

local AnalysisSchemeStatus_keys = { "Status" = true, "Options" = true, nil }

function M.AssertAnalysisSchemeStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AnalysisSchemeStatus to be of type 'table'")
	assert(struct["Options"], "Expected key Options to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["Status"] then M.AssertOptionStatus(struct["Status"]) end
	if struct["Options"] then M.AssertAnalysisScheme(struct["Options"]) end
	for k,_ in pairs(struct) do
		assert(AnalysisSchemeStatus_keys[k], "AnalysisSchemeStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AnalysisSchemeStatus
-- &lt;p&gt;The status and configuration of an &lt;code&gt;AnalysisScheme&lt;/code&gt;.&lt;/p&gt;
-- @param Status [OptionStatus] &lt;p&gt;The status and configuration of an &lt;code&gt;AnalysisScheme&lt;/code&gt;.&lt;/p&gt;
-- @param Options [AnalysisScheme] &lt;p&gt;The status and configuration of an &lt;code&gt;AnalysisScheme&lt;/code&gt;.&lt;/p&gt;
-- Required parameter: Options
-- Required parameter: Status
function M.AnalysisSchemeStatus(Status, Options, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AnalysisSchemeStatus")
	local t = { 
		["Status"] = Status,
		["Options"] = Options,
	}
	M.AssertAnalysisSchemeStatus(t)
	return t
end

local DateArrayOptions_keys = { "SourceFields" = true, "FacetEnabled" = true, "DefaultValue" = true, "ReturnEnabled" = true, "SearchEnabled" = true, nil }

function M.AssertDateArrayOptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DateArrayOptions to be of type 'table'")
	if struct["SourceFields"] then M.AssertFieldNameCommaList(struct["SourceFields"]) end
	if struct["FacetEnabled"] then M.AssertBoolean(struct["FacetEnabled"]) end
	if struct["DefaultValue"] then M.AssertFieldValue(struct["DefaultValue"]) end
	if struct["ReturnEnabled"] then M.AssertBoolean(struct["ReturnEnabled"]) end
	if struct["SearchEnabled"] then M.AssertBoolean(struct["SearchEnabled"]) end
	for k,_ in pairs(struct) do
		assert(DateArrayOptions_keys[k], "DateArrayOptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DateArrayOptions
-- &lt;p&gt;Options for a field that contains an array of dates. Present if &lt;code&gt;IndexFieldType&lt;/code&gt; specifies the field is of type &lt;code&gt;date-array&lt;/code&gt;. All options are enabled by default.&lt;/p&gt;
-- @param SourceFields [FieldNameCommaList] &lt;p&gt;A list of source fields to map to the field. &lt;/p&gt;
-- @param FacetEnabled [Boolean] &lt;p&gt;Whether facet information can be returned for the field.&lt;/p&gt;
-- @param DefaultValue [FieldValue] A value to use for the field if the field isn't specified for a document.
-- @param ReturnEnabled [Boolean] &lt;p&gt;Whether the contents of the field can be returned in the search results.&lt;/p&gt;
-- @param SearchEnabled [Boolean] &lt;p&gt;Whether the contents of the field are searchable.&lt;/p&gt;
function M.DateArrayOptions(SourceFields, FacetEnabled, DefaultValue, ReturnEnabled, SearchEnabled, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DateArrayOptions")
	local t = { 
		["SourceFields"] = SourceFields,
		["FacetEnabled"] = FacetEnabled,
		["DefaultValue"] = DefaultValue,
		["ReturnEnabled"] = ReturnEnabled,
		["SearchEnabled"] = SearchEnabled,
	}
	M.AssertDateArrayOptions(t)
	return t
end

local DescribeDomainsResponse_keys = { "DomainStatusList" = true, nil }

function M.AssertDescribeDomainsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDomainsResponse to be of type 'table'")
	assert(struct["DomainStatusList"], "Expected key DomainStatusList to exist in table")
	if struct["DomainStatusList"] then M.AssertDomainStatusList(struct["DomainStatusList"]) end
	for k,_ in pairs(struct) do
		assert(DescribeDomainsResponse_keys[k], "DescribeDomainsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDomainsResponse
-- &lt;p&gt;The result of a &lt;code&gt;DescribeDomains&lt;/code&gt; request. Contains the status of the domains specified in the request or all domains owned by the account.&lt;/p&gt;
-- @param DomainStatusList [DomainStatusList] &lt;p&gt;The result of a &lt;code&gt;DescribeDomains&lt;/code&gt; request. Contains the status of the domains specified in the request or all domains owned by the account.&lt;/p&gt;
-- Required parameter: DomainStatusList
function M.DescribeDomainsResponse(DomainStatusList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDomainsResponse")
	local t = { 
		["DomainStatusList"] = DomainStatusList,
	}
	M.AssertDescribeDomainsResponse(t)
	return t
end

local AvailabilityOptionsStatus_keys = { "Status" = true, "Options" = true, nil }

function M.AssertAvailabilityOptionsStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AvailabilityOptionsStatus to be of type 'table'")
	assert(struct["Options"], "Expected key Options to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["Status"] then M.AssertOptionStatus(struct["Status"]) end
	if struct["Options"] then M.AssertMultiAZ(struct["Options"]) end
	for k,_ in pairs(struct) do
		assert(AvailabilityOptionsStatus_keys[k], "AvailabilityOptionsStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AvailabilityOptionsStatus
-- &lt;p&gt;The status and configuration of the domain's availability options.&lt;/p&gt;
-- @param Status [OptionStatus] &lt;p&gt;The status and configuration of the domain's availability options.&lt;/p&gt;
-- @param Options [MultiAZ] &lt;p&gt;The availability options configured for the domain.&lt;/p&gt;
-- Required parameter: Options
-- Required parameter: Status
function M.AvailabilityOptionsStatus(Status, Options, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AvailabilityOptionsStatus")
	local t = { 
		["Status"] = Status,
		["Options"] = Options,
	}
	M.AssertAvailabilityOptionsStatus(t)
	return t
end

local DescribeServiceAccessPoliciesRequest_keys = { "Deployed" = true, "DomainName" = true, nil }

function M.AssertDescribeServiceAccessPoliciesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeServiceAccessPoliciesRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["Deployed"] then M.AssertBoolean(struct["Deployed"]) end
	if struct["DomainName"] then M.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(DescribeServiceAccessPoliciesRequest_keys[k], "DescribeServiceAccessPoliciesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeServiceAccessPoliciesRequest
-- &lt;p&gt;Container for the parameters to the &lt;code&gt;&lt;a&gt;DescribeServiceAccessPolicies&lt;/a&gt;&lt;/code&gt; operation. Specifies the name of the domain you want to describe. To show the active configuration and exclude any pending changes, set the &lt;code&gt;Deployed&lt;/code&gt; option to &lt;code&gt;true&lt;/code&gt;.&lt;/p&gt;
-- @param Deployed [Boolean] &lt;p&gt;Whether to display the deployed configuration (&lt;code&gt;true&lt;/code&gt;) or include any pending changes (&lt;code&gt;false&lt;/code&gt;). Defaults to &lt;code&gt;false&lt;/code&gt;.&lt;/p&gt;
-- @param DomainName [DomainName] &lt;p&gt;The name of the domain you want to describe.&lt;/p&gt;
-- Required parameter: DomainName
function M.DescribeServiceAccessPoliciesRequest(Deployed, DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeServiceAccessPoliciesRequest")
	local t = { 
		["Deployed"] = Deployed,
		["DomainName"] = DomainName,
	}
	M.AssertDescribeServiceAccessPoliciesRequest(t)
	return t
end

local DefineExpressionRequest_keys = { "Expression" = true, "DomainName" = true, nil }

function M.AssertDefineExpressionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DefineExpressionRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["Expression"], "Expected key Expression to exist in table")
	if struct["Expression"] then M.AssertExpression(struct["Expression"]) end
	if struct["DomainName"] then M.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(DefineExpressionRequest_keys[k], "DefineExpressionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DefineExpressionRequest
-- &lt;p&gt;Container for the parameters to the &lt;code&gt;&lt;a&gt;DefineExpression&lt;/a&gt;&lt;/code&gt; operation. Specifies the name of the domain you want to update and the expression you want to configure.&lt;/p&gt;
-- @param Expression [Expression] &lt;p&gt;Container for the parameters to the &lt;code&gt;&lt;a&gt;DefineExpression&lt;/a&gt;&lt;/code&gt; operation. Specifies the name of the domain you want to update and the expression you want to configure.&lt;/p&gt;
-- @param DomainName [DomainName] &lt;p&gt;Container for the parameters to the &lt;code&gt;&lt;a&gt;DefineExpression&lt;/a&gt;&lt;/code&gt; operation. Specifies the name of the domain you want to update and the expression you want to configure.&lt;/p&gt;
-- Required parameter: DomainName
-- Required parameter: Expression
function M.DefineExpressionRequest(Expression, DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DefineExpressionRequest")
	local t = { 
		["Expression"] = Expression,
		["DomainName"] = DomainName,
	}
	M.AssertDefineExpressionRequest(t)
	return t
end

local DeleteIndexFieldRequest_keys = { "IndexFieldName" = true, "DomainName" = true, nil }

function M.AssertDeleteIndexFieldRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteIndexFieldRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["IndexFieldName"], "Expected key IndexFieldName to exist in table")
	if struct["IndexFieldName"] then M.AssertDynamicFieldName(struct["IndexFieldName"]) end
	if struct["DomainName"] then M.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteIndexFieldRequest_keys[k], "DeleteIndexFieldRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteIndexFieldRequest
-- &lt;p&gt;Container for the parameters to the &lt;code&gt;&lt;a&gt;DeleteIndexField&lt;/a&gt;&lt;/code&gt; operation. Specifies the name of the domain you want to update and the name of the index field you want to delete.&lt;/p&gt;
-- @param IndexFieldName [DynamicFieldName] &lt;p&gt;The name of the index field your want to remove from the domain's indexing options.&lt;/p&gt;
-- @param DomainName [DomainName] &lt;p&gt;Container for the parameters to the &lt;code&gt;&lt;a&gt;DeleteIndexField&lt;/a&gt;&lt;/code&gt; operation. Specifies the name of the domain you want to update and the name of the index field you want to delete.&lt;/p&gt;
-- Required parameter: DomainName
-- Required parameter: IndexFieldName
function M.DeleteIndexFieldRequest(IndexFieldName, DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteIndexFieldRequest")
	local t = { 
		["IndexFieldName"] = IndexFieldName,
		["DomainName"] = DomainName,
	}
	M.AssertDeleteIndexFieldRequest(t)
	return t
end

local LiteralArrayOptions_keys = { "SourceFields" = true, "FacetEnabled" = true, "DefaultValue" = true, "ReturnEnabled" = true, "SearchEnabled" = true, nil }

function M.AssertLiteralArrayOptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LiteralArrayOptions to be of type 'table'")
	if struct["SourceFields"] then M.AssertFieldNameCommaList(struct["SourceFields"]) end
	if struct["FacetEnabled"] then M.AssertBoolean(struct["FacetEnabled"]) end
	if struct["DefaultValue"] then M.AssertFieldValue(struct["DefaultValue"]) end
	if struct["ReturnEnabled"] then M.AssertBoolean(struct["ReturnEnabled"]) end
	if struct["SearchEnabled"] then M.AssertBoolean(struct["SearchEnabled"]) end
	for k,_ in pairs(struct) do
		assert(LiteralArrayOptions_keys[k], "LiteralArrayOptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LiteralArrayOptions
-- &lt;p&gt;Options for a field that contains an array of literal strings. Present if &lt;code&gt;IndexFieldType&lt;/code&gt; specifies the field is of type &lt;code&gt;literal-array&lt;/code&gt;. All options are enabled by default.&lt;/p&gt;
-- @param SourceFields [FieldNameCommaList] &lt;p&gt;A list of source fields to map to the field. &lt;/p&gt;
-- @param FacetEnabled [Boolean] &lt;p&gt;Whether facet information can be returned for the field.&lt;/p&gt;
-- @param DefaultValue [FieldValue] A value to use for the field if the field isn't specified for a document.
-- @param ReturnEnabled [Boolean] &lt;p&gt;Whether the contents of the field can be returned in the search results.&lt;/p&gt;
-- @param SearchEnabled [Boolean] &lt;p&gt;Whether the contents of the field are searchable.&lt;/p&gt;
function M.LiteralArrayOptions(SourceFields, FacetEnabled, DefaultValue, ReturnEnabled, SearchEnabled, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LiteralArrayOptions")
	local t = { 
		["SourceFields"] = SourceFields,
		["FacetEnabled"] = FacetEnabled,
		["DefaultValue"] = DefaultValue,
		["ReturnEnabled"] = ReturnEnabled,
		["SearchEnabled"] = SearchEnabled,
	}
	M.AssertLiteralArrayOptions(t)
	return t
end

local AccessPoliciesStatus_keys = { "Status" = true, "Options" = true, nil }

function M.AssertAccessPoliciesStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccessPoliciesStatus to be of type 'table'")
	assert(struct["Options"], "Expected key Options to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["Status"] then M.AssertOptionStatus(struct["Status"]) end
	if struct["Options"] then M.AssertPolicyDocument(struct["Options"]) end
	for k,_ in pairs(struct) do
		assert(AccessPoliciesStatus_keys[k], "AccessPoliciesStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccessPoliciesStatus
-- &lt;p&gt;The configured access rules for the domain's document and search endpoints, and the current status of those rules.&lt;/p&gt;
-- @param Status [OptionStatus] &lt;p&gt;The configured access rules for the domain's document and search endpoints, and the current status of those rules.&lt;/p&gt;
-- @param Options [PolicyDocument] &lt;p&gt;The configured access rules for the domain's document and search endpoints, and the current status of those rules.&lt;/p&gt;
-- Required parameter: Options
-- Required parameter: Status
function M.AccessPoliciesStatus(Status, Options, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AccessPoliciesStatus")
	local t = { 
		["Status"] = Status,
		["Options"] = Options,
	}
	M.AssertAccessPoliciesStatus(t)
	return t
end

local UpdateAvailabilityOptionsResponse_keys = { "AvailabilityOptions" = true, nil }

function M.AssertUpdateAvailabilityOptionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateAvailabilityOptionsResponse to be of type 'table'")
	if struct["AvailabilityOptions"] then M.AssertAvailabilityOptionsStatus(struct["AvailabilityOptions"]) end
	for k,_ in pairs(struct) do
		assert(UpdateAvailabilityOptionsResponse_keys[k], "UpdateAvailabilityOptionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateAvailabilityOptionsResponse
-- &lt;p&gt;The result of a &lt;code&gt;UpdateAvailabilityOptions&lt;/code&gt; request. Contains the status of the domain's availability options. &lt;/p&gt;
-- @param AvailabilityOptions [AvailabilityOptionsStatus] &lt;p&gt;The newly-configured availability options. Indicates whether Multi-AZ is enabled for the domain. &lt;/p&gt;
function M.UpdateAvailabilityOptionsResponse(AvailabilityOptions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateAvailabilityOptionsResponse")
	local t = { 
		["AvailabilityOptions"] = AvailabilityOptions,
	}
	M.AssertUpdateAvailabilityOptionsResponse(t)
	return t
end

local DefineExpressionResponse_keys = { "Expression" = true, nil }

function M.AssertDefineExpressionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DefineExpressionResponse to be of type 'table'")
	assert(struct["Expression"], "Expected key Expression to exist in table")
	if struct["Expression"] then M.AssertExpressionStatus(struct["Expression"]) end
	for k,_ in pairs(struct) do
		assert(DefineExpressionResponse_keys[k], "DefineExpressionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DefineExpressionResponse
-- &lt;p&gt;The result of a &lt;code&gt;DefineExpression&lt;/code&gt; request. Contains the status of the newly-configured expression.&lt;/p&gt;
-- @param Expression [ExpressionStatus] &lt;p&gt;The result of a &lt;code&gt;DefineExpression&lt;/code&gt; request. Contains the status of the newly-configured expression.&lt;/p&gt;
-- Required parameter: Expression
function M.DefineExpressionResponse(Expression, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DefineExpressionResponse")
	local t = { 
		["Expression"] = Expression,
	}
	M.AssertDefineExpressionResponse(t)
	return t
end

local DocumentSuggesterOptions_keys = { "SortExpression" = true, "FuzzyMatching" = true, "SourceField" = true, nil }

function M.AssertDocumentSuggesterOptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DocumentSuggesterOptions to be of type 'table'")
	assert(struct["SourceField"], "Expected key SourceField to exist in table")
	if struct["SortExpression"] then M.AssertString(struct["SortExpression"]) end
	if struct["FuzzyMatching"] then M.AssertSuggesterFuzzyMatching(struct["FuzzyMatching"]) end
	if struct["SourceField"] then M.AssertFieldName(struct["SourceField"]) end
	for k,_ in pairs(struct) do
		assert(DocumentSuggesterOptions_keys[k], "DocumentSuggesterOptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DocumentSuggesterOptions
-- &lt;p&gt;Options for a search suggester.&lt;/p&gt;
-- @param SortExpression [String] &lt;p&gt;An expression that computes a score for each suggestion to control how they are sorted. The scores are rounded to the nearest integer, with a floor of 0 and a ceiling of 2^31-1. A document's relevance score is not computed for suggestions, so sort expressions cannot reference the &lt;code&gt;_score&lt;/code&gt; value. To sort suggestions using a numeric field or existing expression, simply specify the name of the field or expression. If no expression is configured for the suggester, the suggestions are sorted with the closest matches listed first.&lt;/p&gt;
-- @param FuzzyMatching [SuggesterFuzzyMatching] &lt;p&gt;The level of fuzziness allowed when suggesting matches for a string: &lt;code&gt;none&lt;/code&gt;, &lt;code&gt;low&lt;/code&gt;, or &lt;code&gt;high&lt;/code&gt;. With none, the specified string is treated as an exact prefix. With low, suggestions must differ from the specified string by no more than one character. With high, suggestions can differ by up to two characters. The default is none. &lt;/p&gt;
-- @param SourceField [FieldName] &lt;p&gt;The name of the index field you want to use for suggestions. &lt;/p&gt;
-- Required parameter: SourceField
function M.DocumentSuggesterOptions(SortExpression, FuzzyMatching, SourceField, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DocumentSuggesterOptions")
	local t = { 
		["SortExpression"] = SortExpression,
		["FuzzyMatching"] = FuzzyMatching,
		["SourceField"] = SourceField,
	}
	M.AssertDocumentSuggesterOptions(t)
	return t
end

local DefineAnalysisSchemeResponse_keys = { "AnalysisScheme" = true, nil }

function M.AssertDefineAnalysisSchemeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DefineAnalysisSchemeResponse to be of type 'table'")
	assert(struct["AnalysisScheme"], "Expected key AnalysisScheme to exist in table")
	if struct["AnalysisScheme"] then M.AssertAnalysisSchemeStatus(struct["AnalysisScheme"]) end
	for k,_ in pairs(struct) do
		assert(DefineAnalysisSchemeResponse_keys[k], "DefineAnalysisSchemeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DefineAnalysisSchemeResponse
-- &lt;p&gt;The result of a &lt;code&gt;&lt;a&gt;DefineAnalysisScheme&lt;/a&gt;&lt;/code&gt; request. Contains the status of the newly-configured analysis scheme.&lt;/p&gt;
-- @param AnalysisScheme [AnalysisSchemeStatus] &lt;p&gt;The result of a &lt;code&gt;&lt;a&gt;DefineAnalysisScheme&lt;/a&gt;&lt;/code&gt; request. Contains the status of the newly-configured analysis scheme.&lt;/p&gt;
-- Required parameter: AnalysisScheme
function M.DefineAnalysisSchemeResponse(AnalysisScheme, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DefineAnalysisSchemeResponse")
	local t = { 
		["AnalysisScheme"] = AnalysisScheme,
	}
	M.AssertDefineAnalysisSchemeResponse(t)
	return t
end

local DeleteDomainRequest_keys = { "DomainName" = true, nil }

function M.AssertDeleteDomainRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDomainRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["DomainName"] then M.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteDomainRequest_keys[k], "DeleteDomainRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDomainRequest
-- &lt;p&gt;Container for the parameters to the &lt;code&gt;&lt;a&gt;DeleteDomain&lt;/a&gt;&lt;/code&gt; operation. Specifies the name of the domain you want to delete.&lt;/p&gt;
-- @param DomainName [DomainName] &lt;p&gt;The name of the domain you want to permanently delete.&lt;/p&gt;
-- Required parameter: DomainName
function M.DeleteDomainRequest(DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDomainRequest")
	local t = { 
		["DomainName"] = DomainName,
	}
	M.AssertDeleteDomainRequest(t)
	return t
end

local UpdateScalingParametersResponse_keys = { "ScalingParameters" = true, nil }

function M.AssertUpdateScalingParametersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateScalingParametersResponse to be of type 'table'")
	assert(struct["ScalingParameters"], "Expected key ScalingParameters to exist in table")
	if struct["ScalingParameters"] then M.AssertScalingParametersStatus(struct["ScalingParameters"]) end
	for k,_ in pairs(struct) do
		assert(UpdateScalingParametersResponse_keys[k], "UpdateScalingParametersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateScalingParametersResponse
-- &lt;p&gt;The result of a &lt;code&gt;UpdateScalingParameters&lt;/code&gt; request. Contains the status of the newly-configured scaling parameters.&lt;/p&gt;
-- @param ScalingParameters [ScalingParametersStatus] &lt;p&gt;The result of a &lt;code&gt;UpdateScalingParameters&lt;/code&gt; request. Contains the status of the newly-configured scaling parameters.&lt;/p&gt;
-- Required parameter: ScalingParameters
function M.UpdateScalingParametersResponse(ScalingParameters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateScalingParametersResponse")
	local t = { 
		["ScalingParameters"] = ScalingParameters,
	}
	M.AssertUpdateScalingParametersResponse(t)
	return t
end

local SuggesterStatus_keys = { "Status" = true, "Options" = true, nil }

function M.AssertSuggesterStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SuggesterStatus to be of type 'table'")
	assert(struct["Options"], "Expected key Options to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["Status"] then M.AssertOptionStatus(struct["Status"]) end
	if struct["Options"] then M.AssertSuggester(struct["Options"]) end
	for k,_ in pairs(struct) do
		assert(SuggesterStatus_keys[k], "SuggesterStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SuggesterStatus
-- &lt;p&gt;The value of a &lt;code&gt;Suggester&lt;/code&gt; and its current status.&lt;/p&gt;
-- @param Status [OptionStatus] &lt;p&gt;The value of a &lt;code&gt;Suggester&lt;/code&gt; and its current status.&lt;/p&gt;
-- @param Options [Suggester] &lt;p&gt;The value of a &lt;code&gt;Suggester&lt;/code&gt; and its current status.&lt;/p&gt;
-- Required parameter: Options
-- Required parameter: Status
function M.SuggesterStatus(Status, Options, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SuggesterStatus")
	local t = { 
		["Status"] = Status,
		["Options"] = Options,
	}
	M.AssertSuggesterStatus(t)
	return t
end

local DescribeScalingParametersRequest_keys = { "DomainName" = true, nil }

function M.AssertDescribeScalingParametersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeScalingParametersRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["DomainName"] then M.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(DescribeScalingParametersRequest_keys[k], "DescribeScalingParametersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeScalingParametersRequest
-- &lt;p&gt;Container for the parameters to the &lt;code&gt;&lt;a&gt;DescribeScalingParameters&lt;/a&gt;&lt;/code&gt; operation. Specifies the name of the domain you want to describe. &lt;/p&gt;
-- @param DomainName [DomainName] &lt;p&gt;Container for the parameters to the &lt;code&gt;&lt;a&gt;DescribeScalingParameters&lt;/a&gt;&lt;/code&gt; operation. Specifies the name of the domain you want to describe. &lt;/p&gt;
-- Required parameter: DomainName
function M.DescribeScalingParametersRequest(DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeScalingParametersRequest")
	local t = { 
		["DomainName"] = DomainName,
	}
	M.AssertDescribeScalingParametersRequest(t)
	return t
end

local DeleteSuggesterResponse_keys = { "Suggester" = true, nil }

function M.AssertDeleteSuggesterResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSuggesterResponse to be of type 'table'")
	assert(struct["Suggester"], "Expected key Suggester to exist in table")
	if struct["Suggester"] then M.AssertSuggesterStatus(struct["Suggester"]) end
	for k,_ in pairs(struct) do
		assert(DeleteSuggesterResponse_keys[k], "DeleteSuggesterResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSuggesterResponse
-- &lt;p&gt;The result of a &lt;code&gt;DeleteSuggester&lt;/code&gt; request. Contains the status of the deleted suggester.&lt;/p&gt;
-- @param Suggester [SuggesterStatus] &lt;p&gt;The status of the suggester being deleted.&lt;/p&gt;
-- Required parameter: Suggester
function M.DeleteSuggesterResponse(Suggester, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteSuggesterResponse")
	local t = { 
		["Suggester"] = Suggester,
	}
	M.AssertDeleteSuggesterResponse(t)
	return t
end

local DeleteExpressionResponse_keys = { "Expression" = true, nil }

function M.AssertDeleteExpressionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteExpressionResponse to be of type 'table'")
	assert(struct["Expression"], "Expected key Expression to exist in table")
	if struct["Expression"] then M.AssertExpressionStatus(struct["Expression"]) end
	for k,_ in pairs(struct) do
		assert(DeleteExpressionResponse_keys[k], "DeleteExpressionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteExpressionResponse
-- &lt;p&gt;The result of a &lt;code&gt;&lt;a&gt;DeleteExpression&lt;/a&gt;&lt;/code&gt; request. Specifies the expression being deleted.&lt;/p&gt;
-- @param Expression [ExpressionStatus] &lt;p&gt;The status of the expression being deleted.&lt;/p&gt;
-- Required parameter: Expression
function M.DeleteExpressionResponse(Expression, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteExpressionResponse")
	local t = { 
		["Expression"] = Expression,
	}
	M.AssertDeleteExpressionResponse(t)
	return t
end

local ScalingParameters_keys = { "DesiredPartitionCount" = true, "DesiredInstanceType" = true, "DesiredReplicationCount" = true, nil }

function M.AssertScalingParameters(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScalingParameters to be of type 'table'")
	if struct["DesiredPartitionCount"] then M.AssertUIntValue(struct["DesiredPartitionCount"]) end
	if struct["DesiredInstanceType"] then M.AssertPartitionInstanceType(struct["DesiredInstanceType"]) end
	if struct["DesiredReplicationCount"] then M.AssertUIntValue(struct["DesiredReplicationCount"]) end
	for k,_ in pairs(struct) do
		assert(ScalingParameters_keys[k], "ScalingParameters contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScalingParameters
-- &lt;p&gt;The desired instance type and desired number of replicas of each index partition.&lt;/p&gt;
-- @param DesiredPartitionCount [UIntValue] &lt;p&gt;The number of partitions you want to preconfigure for your domain. Only valid when you select &lt;code&gt;m2.2xlarge&lt;/code&gt; as the desired instance type.&lt;/p&gt;
-- @param DesiredInstanceType [PartitionInstanceType] &lt;p&gt;The instance type that you want to preconfigure for your domain. For example, &lt;code&gt;search.m1.small&lt;/code&gt;.&lt;/p&gt;
-- @param DesiredReplicationCount [UIntValue] &lt;p&gt;The number of replicas you want to preconfigure for each index partition.&lt;/p&gt;
function M.ScalingParameters(DesiredPartitionCount, DesiredInstanceType, DesiredReplicationCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ScalingParameters")
	local t = { 
		["DesiredPartitionCount"] = DesiredPartitionCount,
		["DesiredInstanceType"] = DesiredInstanceType,
		["DesiredReplicationCount"] = DesiredReplicationCount,
	}
	M.AssertScalingParameters(t)
	return t
end

local DeleteAnalysisSchemeResponse_keys = { "AnalysisScheme" = true, nil }

function M.AssertDeleteAnalysisSchemeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteAnalysisSchemeResponse to be of type 'table'")
	assert(struct["AnalysisScheme"], "Expected key AnalysisScheme to exist in table")
	if struct["AnalysisScheme"] then M.AssertAnalysisSchemeStatus(struct["AnalysisScheme"]) end
	for k,_ in pairs(struct) do
		assert(DeleteAnalysisSchemeResponse_keys[k], "DeleteAnalysisSchemeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteAnalysisSchemeResponse
-- &lt;p&gt;The result of a &lt;code&gt;DeleteAnalysisScheme&lt;/code&gt; request. Contains the status of the deleted analysis scheme.&lt;/p&gt;
-- @param AnalysisScheme [AnalysisSchemeStatus] &lt;p&gt;The status of the analysis scheme being deleted.&lt;/p&gt;
-- Required parameter: AnalysisScheme
function M.DeleteAnalysisSchemeResponse(AnalysisScheme, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteAnalysisSchemeResponse")
	local t = { 
		["AnalysisScheme"] = AnalysisScheme,
	}
	M.AssertDeleteAnalysisSchemeResponse(t)
	return t
end

local DefineSuggesterRequest_keys = { "Suggester" = true, "DomainName" = true, nil }

function M.AssertDefineSuggesterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DefineSuggesterRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["Suggester"], "Expected key Suggester to exist in table")
	if struct["Suggester"] then M.AssertSuggester(struct["Suggester"]) end
	if struct["DomainName"] then M.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(DefineSuggesterRequest_keys[k], "DefineSuggesterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DefineSuggesterRequest
-- &lt;p&gt;Container for the parameters to the &lt;code&gt;&lt;a&gt;DefineSuggester&lt;/a&gt;&lt;/code&gt; operation. Specifies the name of the domain you want to update and the suggester configuration.&lt;/p&gt;
-- @param Suggester [Suggester] &lt;p&gt;Container for the parameters to the &lt;code&gt;&lt;a&gt;DefineSuggester&lt;/a&gt;&lt;/code&gt; operation. Specifies the name of the domain you want to update and the suggester configuration.&lt;/p&gt;
-- @param DomainName [DomainName] &lt;p&gt;Container for the parameters to the &lt;code&gt;&lt;a&gt;DefineSuggester&lt;/a&gt;&lt;/code&gt; operation. Specifies the name of the domain you want to update and the suggester configuration.&lt;/p&gt;
-- Required parameter: DomainName
-- Required parameter: Suggester
function M.DefineSuggesterRequest(Suggester, DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DefineSuggesterRequest")
	local t = { 
		["Suggester"] = Suggester,
		["DomainName"] = DomainName,
	}
	M.AssertDefineSuggesterRequest(t)
	return t
end

local LimitExceededException_keys = { nil }

function M.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(LimitExceededException_keys[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- &lt;p&gt;The request was rejected because a resource limit has already been met.&lt;/p&gt;
function M.LimitExceededException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
	}
	M.AssertLimitExceededException(t)
	return t
end

local Suggester_keys = { "DocumentSuggesterOptions" = true, "SuggesterName" = true, nil }

function M.AssertSuggester(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Suggester to be of type 'table'")
	assert(struct["SuggesterName"], "Expected key SuggesterName to exist in table")
	assert(struct["DocumentSuggesterOptions"], "Expected key DocumentSuggesterOptions to exist in table")
	if struct["DocumentSuggesterOptions"] then M.AssertDocumentSuggesterOptions(struct["DocumentSuggesterOptions"]) end
	if struct["SuggesterName"] then M.AssertStandardName(struct["SuggesterName"]) end
	for k,_ in pairs(struct) do
		assert(Suggester_keys[k], "Suggester contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Suggester
-- &lt;p&gt;Configuration information for a search suggester. Each suggester has a unique name and specifies the text field you want to use for suggestions. The following options can be configured for a suggester: &lt;code&gt;FuzzyMatching&lt;/code&gt;, &lt;code&gt;SortExpression&lt;/code&gt;. &lt;/p&gt;
-- @param DocumentSuggesterOptions [DocumentSuggesterOptions] &lt;p&gt;Configuration information for a search suggester. Each suggester has a unique name and specifies the text field you want to use for suggestions. The following options can be configured for a suggester: &lt;code&gt;FuzzyMatching&lt;/code&gt;, &lt;code&gt;SortExpression&lt;/code&gt;. &lt;/p&gt;
-- @param SuggesterName [StandardName] &lt;p&gt;Configuration information for a search suggester. Each suggester has a unique name and specifies the text field you want to use for suggestions. The following options can be configured for a suggester: &lt;code&gt;FuzzyMatching&lt;/code&gt;, &lt;code&gt;SortExpression&lt;/code&gt;. &lt;/p&gt;
-- Required parameter: SuggesterName
-- Required parameter: DocumentSuggesterOptions
function M.Suggester(DocumentSuggesterOptions, SuggesterName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Suggester")
	local t = { 
		["DocumentSuggesterOptions"] = DocumentSuggesterOptions,
		["SuggesterName"] = SuggesterName,
	}
	M.AssertSuggester(t)
	return t
end

local DescribeExpressionsResponse_keys = { "Expressions" = true, nil }

function M.AssertDescribeExpressionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeExpressionsResponse to be of type 'table'")
	assert(struct["Expressions"], "Expected key Expressions to exist in table")
	if struct["Expressions"] then M.AssertExpressionStatusList(struct["Expressions"]) end
	for k,_ in pairs(struct) do
		assert(DescribeExpressionsResponse_keys[k], "DescribeExpressionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeExpressionsResponse
-- &lt;p&gt;The result of a &lt;code&gt;DescribeExpressions&lt;/code&gt; request. Contains the expressions configured for the domain specified in the request.&lt;/p&gt;
-- @param Expressions [ExpressionStatusList] &lt;p&gt;The expressions configured for the domain.&lt;/p&gt;
-- Required parameter: Expressions
function M.DescribeExpressionsResponse(Expressions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeExpressionsResponse")
	local t = { 
		["Expressions"] = Expressions,
	}
	M.AssertDescribeExpressionsResponse(t)
	return t
end

local UpdateScalingParametersRequest_keys = { "ScalingParameters" = true, "DomainName" = true, nil }

function M.AssertUpdateScalingParametersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateScalingParametersRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["ScalingParameters"], "Expected key ScalingParameters to exist in table")
	if struct["ScalingParameters"] then M.AssertScalingParameters(struct["ScalingParameters"]) end
	if struct["DomainName"] then M.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(UpdateScalingParametersRequest_keys[k], "UpdateScalingParametersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateScalingParametersRequest
-- &lt;p&gt;Container for the parameters to the &lt;code&gt;&lt;a&gt;UpdateScalingParameters&lt;/a&gt;&lt;/code&gt; operation. Specifies the name of the domain you want to update and the scaling parameters you want to configure.&lt;/p&gt;
-- @param ScalingParameters [ScalingParameters] &lt;p&gt;Container for the parameters to the &lt;code&gt;&lt;a&gt;UpdateScalingParameters&lt;/a&gt;&lt;/code&gt; operation. Specifies the name of the domain you want to update and the scaling parameters you want to configure.&lt;/p&gt;
-- @param DomainName [DomainName] &lt;p&gt;Container for the parameters to the &lt;code&gt;&lt;a&gt;UpdateScalingParameters&lt;/a&gt;&lt;/code&gt; operation. Specifies the name of the domain you want to update and the scaling parameters you want to configure.&lt;/p&gt;
-- Required parameter: DomainName
-- Required parameter: ScalingParameters
function M.UpdateScalingParametersRequest(ScalingParameters, DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateScalingParametersRequest")
	local t = { 
		["ScalingParameters"] = ScalingParameters,
		["DomainName"] = DomainName,
	}
	M.AssertUpdateScalingParametersRequest(t)
	return t
end

local LiteralOptions_keys = { "SourceField" = true, "DefaultValue" = true, "FacetEnabled" = true, "SearchEnabled" = true, "SortEnabled" = true, "ReturnEnabled" = true, nil }

function M.AssertLiteralOptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LiteralOptions to be of type 'table'")
	if struct["SourceField"] then M.AssertFieldName(struct["SourceField"]) end
	if struct["DefaultValue"] then M.AssertFieldValue(struct["DefaultValue"]) end
	if struct["FacetEnabled"] then M.AssertBoolean(struct["FacetEnabled"]) end
	if struct["SearchEnabled"] then M.AssertBoolean(struct["SearchEnabled"]) end
	if struct["SortEnabled"] then M.AssertBoolean(struct["SortEnabled"]) end
	if struct["ReturnEnabled"] then M.AssertBoolean(struct["ReturnEnabled"]) end
	for k,_ in pairs(struct) do
		assert(LiteralOptions_keys[k], "LiteralOptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LiteralOptions
-- &lt;p&gt;Options for literal field. Present if &lt;code&gt;IndexFieldType&lt;/code&gt; specifies the field is of type &lt;code&gt;literal&lt;/code&gt;. All options are enabled by default.&lt;/p&gt;
-- @param SourceField [FieldName] &lt;p&gt;Options for literal field. Present if &lt;code&gt;IndexFieldType&lt;/code&gt; specifies the field is of type &lt;code&gt;literal&lt;/code&gt;. All options are enabled by default.&lt;/p&gt;
-- @param DefaultValue [FieldValue] A value to use for the field if the field isn't specified for a document.
-- @param FacetEnabled [Boolean] &lt;p&gt;Whether facet information can be returned for the field.&lt;/p&gt;
-- @param SearchEnabled [Boolean] &lt;p&gt;Whether the contents of the field are searchable.&lt;/p&gt;
-- @param SortEnabled [Boolean] &lt;p&gt;Whether the field can be used to sort the search results.&lt;/p&gt;
-- @param ReturnEnabled [Boolean] &lt;p&gt;Whether the contents of the field can be returned in the search results.&lt;/p&gt;
function M.LiteralOptions(SourceField, DefaultValue, FacetEnabled, SearchEnabled, SortEnabled, ReturnEnabled, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LiteralOptions")
	local t = { 
		["SourceField"] = SourceField,
		["DefaultValue"] = DefaultValue,
		["FacetEnabled"] = FacetEnabled,
		["SearchEnabled"] = SearchEnabled,
		["SortEnabled"] = SortEnabled,
		["ReturnEnabled"] = ReturnEnabled,
	}
	M.AssertLiteralOptions(t)
	return t
end

local CreateDomainResponse_keys = { "DomainStatus" = true, nil }

function M.AssertCreateDomainResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDomainResponse to be of type 'table'")
	if struct["DomainStatus"] then M.AssertDomainStatus(struct["DomainStatus"]) end
	for k,_ in pairs(struct) do
		assert(CreateDomainResponse_keys[k], "CreateDomainResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDomainResponse
-- &lt;p&gt;The result of a &lt;code&gt;CreateDomainRequest&lt;/code&gt;. Contains the status of a newly created domain.&lt;/p&gt;
-- @param DomainStatus [DomainStatus] &lt;p&gt;The result of a &lt;code&gt;CreateDomainRequest&lt;/code&gt;. Contains the status of a newly created domain.&lt;/p&gt;
function M.CreateDomainResponse(DomainStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDomainResponse")
	local t = { 
		["DomainStatus"] = DomainStatus,
	}
	M.AssertCreateDomainResponse(t)
	return t
end

local ServiceEndpoint_keys = { "Endpoint" = true, nil }

function M.AssertServiceEndpoint(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceEndpoint to be of type 'table'")
	if struct["Endpoint"] then M.AssertServiceUrl(struct["Endpoint"]) end
	for k,_ in pairs(struct) do
		assert(ServiceEndpoint_keys[k], "ServiceEndpoint contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceEndpoint
-- &lt;p&gt;The endpoint to which service requests can be submitted.&lt;/p&gt;
-- @param Endpoint [ServiceUrl] &lt;p&gt;The endpoint to which service requests can be submitted.&lt;/p&gt;
function M.ServiceEndpoint(Endpoint, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServiceEndpoint")
	local t = { 
		["Endpoint"] = Endpoint,
	}
	M.AssertServiceEndpoint(t)
	return t
end

local BaseException_keys = { "Message" = true, "Code" = true, nil }

function M.AssertBaseException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BaseException to be of type 'table'")
	if struct["Message"] then M.AssertErrorMessage(struct["Message"]) end
	if struct["Code"] then M.AssertErrorCode(struct["Code"]) end
	for k,_ in pairs(struct) do
		assert(BaseException_keys[k], "BaseException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BaseException
-- &lt;p&gt;An error occurred while processing the request.&lt;/p&gt;
-- @param Message [ErrorMessage] &lt;p&gt;An error occurred while processing the request.&lt;/p&gt;
-- @param Code [ErrorCode] &lt;p&gt;An error occurred while processing the request.&lt;/p&gt;
function M.BaseException(Message, Code, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BaseException")
	local t = { 
		["Message"] = Message,
		["Code"] = Code,
	}
	M.AssertBaseException(t)
	return t
end

local DeleteSuggesterRequest_keys = { "SuggesterName" = true, "DomainName" = true, nil }

function M.AssertDeleteSuggesterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSuggesterRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["SuggesterName"], "Expected key SuggesterName to exist in table")
	if struct["SuggesterName"] then M.AssertStandardName(struct["SuggesterName"]) end
	if struct["DomainName"] then M.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteSuggesterRequest_keys[k], "DeleteSuggesterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSuggesterRequest
-- &lt;p&gt;Container for the parameters to the &lt;code&gt;&lt;a&gt;DeleteSuggester&lt;/a&gt;&lt;/code&gt; operation. Specifies the name of the domain you want to update and name of the suggester you want to delete.&lt;/p&gt;
-- @param SuggesterName [StandardName] &lt;p&gt;Specifies the name of the suggester you want to delete.&lt;/p&gt;
-- @param DomainName [DomainName] &lt;p&gt;Container for the parameters to the &lt;code&gt;&lt;a&gt;DeleteSuggester&lt;/a&gt;&lt;/code&gt; operation. Specifies the name of the domain you want to update and name of the suggester you want to delete.&lt;/p&gt;
-- Required parameter: DomainName
-- Required parameter: SuggesterName
function M.DeleteSuggesterRequest(SuggesterName, DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteSuggesterRequest")
	local t = { 
		["SuggesterName"] = SuggesterName,
		["DomainName"] = DomainName,
	}
	M.AssertDeleteSuggesterRequest(t)
	return t
end

local DescribeExpressionsRequest_keys = { "ExpressionNames" = true, "Deployed" = true, "DomainName" = true, nil }

function M.AssertDescribeExpressionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeExpressionsRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["ExpressionNames"] then M.AssertStandardNameList(struct["ExpressionNames"]) end
	if struct["Deployed"] then M.AssertBoolean(struct["Deployed"]) end
	if struct["DomainName"] then M.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(DescribeExpressionsRequest_keys[k], "DescribeExpressionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeExpressionsRequest
-- &lt;p&gt;Container for the parameters to the &lt;code&gt;&lt;a&gt;DescribeDomains&lt;/a&gt;&lt;/code&gt; operation. Specifies the name of the domain you want to describe. To restrict the response to particular expressions, specify the names of the expressions you want to describe. To show the active configuration and exclude any pending changes, set the &lt;code&gt;Deployed&lt;/code&gt; option to &lt;code&gt;true&lt;/code&gt;.&lt;/p&gt;
-- @param ExpressionNames [StandardNameList] &lt;p&gt;Limits the &lt;code&gt;&lt;a&gt;DescribeExpressions&lt;/a&gt;&lt;/code&gt; response to the specified expressions. If not specified, all expressions are shown.&lt;/p&gt;
-- @param Deployed [Boolean] &lt;p&gt;Whether to display the deployed configuration (&lt;code&gt;true&lt;/code&gt;) or include any pending changes (&lt;code&gt;false&lt;/code&gt;). Defaults to &lt;code&gt;false&lt;/code&gt;.&lt;/p&gt;
-- @param DomainName [DomainName] &lt;p&gt;The name of the domain you want to describe.&lt;/p&gt;
-- Required parameter: DomainName
function M.DescribeExpressionsRequest(ExpressionNames, Deployed, DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeExpressionsRequest")
	local t = { 
		["ExpressionNames"] = ExpressionNames,
		["Deployed"] = Deployed,
		["DomainName"] = DomainName,
	}
	M.AssertDescribeExpressionsRequest(t)
	return t
end

local LatLonOptions_keys = { "SourceField" = true, "DefaultValue" = true, "FacetEnabled" = true, "SearchEnabled" = true, "SortEnabled" = true, "ReturnEnabled" = true, nil }

function M.AssertLatLonOptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LatLonOptions to be of type 'table'")
	if struct["SourceField"] then M.AssertFieldName(struct["SourceField"]) end
	if struct["DefaultValue"] then M.AssertFieldValue(struct["DefaultValue"]) end
	if struct["FacetEnabled"] then M.AssertBoolean(struct["FacetEnabled"]) end
	if struct["SearchEnabled"] then M.AssertBoolean(struct["SearchEnabled"]) end
	if struct["SortEnabled"] then M.AssertBoolean(struct["SortEnabled"]) end
	if struct["ReturnEnabled"] then M.AssertBoolean(struct["ReturnEnabled"]) end
	for k,_ in pairs(struct) do
		assert(LatLonOptions_keys[k], "LatLonOptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LatLonOptions
-- &lt;p&gt;Options for a latlon field. A latlon field contains a location stored as a latitude and longitude value pair. Present if &lt;code&gt;IndexFieldType&lt;/code&gt; specifies the field is of type &lt;code&gt;latlon&lt;/code&gt;. All options are enabled by default.&lt;/p&gt;
-- @param SourceField [FieldName] &lt;p&gt;Options for a latlon field. A latlon field contains a location stored as a latitude and longitude value pair. Present if &lt;code&gt;IndexFieldType&lt;/code&gt; specifies the field is of type &lt;code&gt;latlon&lt;/code&gt;. All options are enabled by default.&lt;/p&gt;
-- @param DefaultValue [FieldValue] A value to use for the field if the field isn't specified for a document.
-- @param FacetEnabled [Boolean] &lt;p&gt;Whether facet information can be returned for the field.&lt;/p&gt;
-- @param SearchEnabled [Boolean] &lt;p&gt;Whether the contents of the field are searchable.&lt;/p&gt;
-- @param SortEnabled [Boolean] &lt;p&gt;Whether the field can be used to sort the search results.&lt;/p&gt;
-- @param ReturnEnabled [Boolean] &lt;p&gt;Whether the contents of the field can be returned in the search results.&lt;/p&gt;
function M.LatLonOptions(SourceField, DefaultValue, FacetEnabled, SearchEnabled, SortEnabled, ReturnEnabled, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LatLonOptions")
	local t = { 
		["SourceField"] = SourceField,
		["DefaultValue"] = DefaultValue,
		["FacetEnabled"] = FacetEnabled,
		["SearchEnabled"] = SearchEnabled,
		["SortEnabled"] = SortEnabled,
		["ReturnEnabled"] = ReturnEnabled,
	}
	M.AssertLatLonOptions(t)
	return t
end

local DateOptions_keys = { "SourceField" = true, "DefaultValue" = true, "FacetEnabled" = true, "SearchEnabled" = true, "SortEnabled" = true, "ReturnEnabled" = true, nil }

function M.AssertDateOptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DateOptions to be of type 'table'")
	if struct["SourceField"] then M.AssertFieldName(struct["SourceField"]) end
	if struct["DefaultValue"] then M.AssertFieldValue(struct["DefaultValue"]) end
	if struct["FacetEnabled"] then M.AssertBoolean(struct["FacetEnabled"]) end
	if struct["SearchEnabled"] then M.AssertBoolean(struct["SearchEnabled"]) end
	if struct["SortEnabled"] then M.AssertBoolean(struct["SortEnabled"]) end
	if struct["ReturnEnabled"] then M.AssertBoolean(struct["ReturnEnabled"]) end
	for k,_ in pairs(struct) do
		assert(DateOptions_keys[k], "DateOptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DateOptions
-- &lt;p&gt;Options for a date field. Dates and times are specified in UTC (Coordinated Universal Time) according to IETF RFC3339: yyyy-mm-ddT00:00:00Z. Present if &lt;code&gt;IndexFieldType&lt;/code&gt; specifies the field is of type &lt;code&gt;date&lt;/code&gt;. All options are enabled by default.&lt;/p&gt;
-- @param SourceField [FieldName] &lt;p&gt;Options for a date field. Dates and times are specified in UTC (Coordinated Universal Time) according to IETF RFC3339: yyyy-mm-ddT00:00:00Z. Present if &lt;code&gt;IndexFieldType&lt;/code&gt; specifies the field is of type &lt;code&gt;date&lt;/code&gt;. All options are enabled by default.&lt;/p&gt;
-- @param DefaultValue [FieldValue] A value to use for the field if the field isn't specified for a document.
-- @param FacetEnabled [Boolean] &lt;p&gt;Whether facet information can be returned for the field.&lt;/p&gt;
-- @param SearchEnabled [Boolean] &lt;p&gt;Whether the contents of the field are searchable.&lt;/p&gt;
-- @param SortEnabled [Boolean] &lt;p&gt;Whether the field can be used to sort the search results.&lt;/p&gt;
-- @param ReturnEnabled [Boolean] &lt;p&gt;Whether the contents of the field can be returned in the search results.&lt;/p&gt;
function M.DateOptions(SourceField, DefaultValue, FacetEnabled, SearchEnabled, SortEnabled, ReturnEnabled, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DateOptions")
	local t = { 
		["SourceField"] = SourceField,
		["DefaultValue"] = DefaultValue,
		["FacetEnabled"] = FacetEnabled,
		["SearchEnabled"] = SearchEnabled,
		["SortEnabled"] = SortEnabled,
		["ReturnEnabled"] = ReturnEnabled,
	}
	M.AssertDateOptions(t)
	return t
end

local DefineIndexFieldRequest_keys = { "IndexField" = true, "DomainName" = true, nil }

function M.AssertDefineIndexFieldRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DefineIndexFieldRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["IndexField"], "Expected key IndexField to exist in table")
	if struct["IndexField"] then M.AssertIndexField(struct["IndexField"]) end
	if struct["DomainName"] then M.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(DefineIndexFieldRequest_keys[k], "DefineIndexFieldRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DefineIndexFieldRequest
-- &lt;p&gt;Container for the parameters to the &lt;code&gt;&lt;a&gt;DefineIndexField&lt;/a&gt;&lt;/code&gt; operation. Specifies the name of the domain you want to update and the index field configuration.&lt;/p&gt;
-- @param IndexField [IndexField] &lt;p&gt;The index field and field options you want to configure. &lt;/p&gt;
-- @param DomainName [DomainName] &lt;p&gt;Container for the parameters to the &lt;code&gt;&lt;a&gt;DefineIndexField&lt;/a&gt;&lt;/code&gt; operation. Specifies the name of the domain you want to update and the index field configuration.&lt;/p&gt;
-- Required parameter: DomainName
-- Required parameter: IndexField
function M.DefineIndexFieldRequest(IndexField, DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DefineIndexFieldRequest")
	local t = { 
		["IndexField"] = IndexField,
		["DomainName"] = DomainName,
	}
	M.AssertDefineIndexFieldRequest(t)
	return t
end

local DescribeScalingParametersResponse_keys = { "ScalingParameters" = true, nil }

function M.AssertDescribeScalingParametersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeScalingParametersResponse to be of type 'table'")
	assert(struct["ScalingParameters"], "Expected key ScalingParameters to exist in table")
	if struct["ScalingParameters"] then M.AssertScalingParametersStatus(struct["ScalingParameters"]) end
	for k,_ in pairs(struct) do
		assert(DescribeScalingParametersResponse_keys[k], "DescribeScalingParametersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeScalingParametersResponse
-- &lt;p&gt;The result of a &lt;code&gt;DescribeScalingParameters&lt;/code&gt; request. Contains the scaling parameters configured for the domain specified in the request.&lt;/p&gt;
-- @param ScalingParameters [ScalingParametersStatus] &lt;p&gt;The result of a &lt;code&gt;DescribeScalingParameters&lt;/code&gt; request. Contains the scaling parameters configured for the domain specified in the request.&lt;/p&gt;
-- Required parameter: ScalingParameters
function M.DescribeScalingParametersResponse(ScalingParameters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeScalingParametersResponse")
	local t = { 
		["ScalingParameters"] = ScalingParameters,
	}
	M.AssertDescribeScalingParametersResponse(t)
	return t
end

local CreateDomainRequest_keys = { "DomainName" = true, nil }

function M.AssertCreateDomainRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDomainRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["DomainName"] then M.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(CreateDomainRequest_keys[k], "CreateDomainRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDomainRequest
-- &lt;p&gt;Container for the parameters to the &lt;code&gt;&lt;a&gt;CreateDomain&lt;/a&gt;&lt;/code&gt; operation. Specifies a name for the new search domain.&lt;/p&gt;
-- @param DomainName [DomainName] &lt;p&gt;A name for the domain you are creating. Allowed characters are a-z (lower-case letters), 0-9, and hyphen (-). Domain names must start with a letter or number and be at least 3 and no more than 28 characters long.&lt;/p&gt;
-- Required parameter: DomainName
function M.CreateDomainRequest(DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDomainRequest")
	local t = { 
		["DomainName"] = DomainName,
	}
	M.AssertCreateDomainRequest(t)
	return t
end

local Limits_keys = { "MaximumReplicationCount" = true, "MaximumPartitionCount" = true, nil }

function M.AssertLimits(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Limits to be of type 'table'")
	assert(struct["MaximumReplicationCount"], "Expected key MaximumReplicationCount to exist in table")
	assert(struct["MaximumPartitionCount"], "Expected key MaximumPartitionCount to exist in table")
	if struct["MaximumReplicationCount"] then M.AssertMaximumReplicationCount(struct["MaximumReplicationCount"]) end
	if struct["MaximumPartitionCount"] then M.AssertMaximumPartitionCount(struct["MaximumPartitionCount"]) end
	for k,_ in pairs(struct) do
		assert(Limits_keys[k], "Limits contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Limits
--  
-- @param MaximumReplicationCount [MaximumReplicationCount]  
-- @param MaximumPartitionCount [MaximumPartitionCount]  
-- Required parameter: MaximumReplicationCount
-- Required parameter: MaximumPartitionCount
function M.Limits(MaximumReplicationCount, MaximumPartitionCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Limits")
	local t = { 
		["MaximumReplicationCount"] = MaximumReplicationCount,
		["MaximumPartitionCount"] = MaximumPartitionCount,
	}
	M.AssertLimits(t)
	return t
end

local InternalException_keys = { nil }

function M.AssertInternalException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InternalException_keys[k], "InternalException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalException
-- &lt;p&gt;An internal error occurred while processing the request. If this problem persists, report an issue from the &lt;a href=&quot;http://status.aws.amazon.com/&quot; target=&quot;_blank&quot;&gt;Service Health Dashboard&lt;/a&gt;.&lt;/p&gt;
function M.InternalException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalException")
	local t = { 
	}
	M.AssertInternalException(t)
	return t
end

local DomainStatus_keys = { "SearchInstanceType" = true, "DomainId" = true, "Limits" = true, "Created" = true, "Deleted" = true, "SearchInstanceCount" = true, "DomainName" = true, "SearchService" = true, "RequiresIndexDocuments" = true, "Processing" = true, "DocService" = true, "ARN" = true, "SearchPartitionCount" = true, nil }

function M.AssertDomainStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DomainStatus to be of type 'table'")
	assert(struct["DomainId"], "Expected key DomainId to exist in table")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["RequiresIndexDocuments"], "Expected key RequiresIndexDocuments to exist in table")
	if struct["SearchInstanceType"] then M.AssertSearchInstanceType(struct["SearchInstanceType"]) end
	if struct["DomainId"] then M.AssertDomainId(struct["DomainId"]) end
	if struct["Limits"] then M.AssertLimits(struct["Limits"]) end
	if struct["Created"] then M.AssertBoolean(struct["Created"]) end
	if struct["Deleted"] then M.AssertBoolean(struct["Deleted"]) end
	if struct["SearchInstanceCount"] then M.AssertInstanceCount(struct["SearchInstanceCount"]) end
	if struct["DomainName"] then M.AssertDomainName(struct["DomainName"]) end
	if struct["SearchService"] then M.AssertServiceEndpoint(struct["SearchService"]) end
	if struct["RequiresIndexDocuments"] then M.AssertBoolean(struct["RequiresIndexDocuments"]) end
	if struct["Processing"] then M.AssertBoolean(struct["Processing"]) end
	if struct["DocService"] then M.AssertServiceEndpoint(struct["DocService"]) end
	if struct["ARN"] then M.AssertARN(struct["ARN"]) end
	if struct["SearchPartitionCount"] then M.AssertPartitionCount(struct["SearchPartitionCount"]) end
	for k,_ in pairs(struct) do
		assert(DomainStatus_keys[k], "DomainStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DomainStatus
-- &lt;p&gt;The current status of the search domain.&lt;/p&gt;
-- @param SearchInstanceType [SearchInstanceType] &lt;p&gt;The instance type that is being used to process search requests.&lt;/p&gt;
-- @param DomainId [DomainId] &lt;p&gt;The current status of the search domain.&lt;/p&gt;
-- @param Limits [Limits] &lt;p&gt;The current status of the search domain.&lt;/p&gt;
-- @param Created [Boolean] &lt;p&gt;True if the search domain is created. It can take several minutes to initialize a domain when &lt;a&gt;CreateDomain&lt;/a&gt; is called. Newly created search domains are returned from &lt;a&gt;DescribeDomains&lt;/a&gt; with a false value for Created until domain creation is complete.&lt;/p&gt;
-- @param Deleted [Boolean] &lt;p&gt;True if the search domain has been deleted. The system must clean up resources dedicated to the search domain when &lt;a&gt;DeleteDomain&lt;/a&gt; is called. Newly deleted search domains are returned from &lt;a&gt;DescribeDomains&lt;/a&gt; with a true value for IsDeleted for several minutes until resource cleanup is complete.&lt;/p&gt;
-- @param SearchInstanceCount [InstanceCount] &lt;p&gt;The number of search instances that are available to process search requests.&lt;/p&gt;
-- @param DomainName [DomainName] &lt;p&gt;The current status of the search domain.&lt;/p&gt;
-- @param SearchService [ServiceEndpoint] &lt;p&gt;The service endpoint for requesting search results from a search domain.&lt;/p&gt;
-- @param RequiresIndexDocuments [Boolean] &lt;p&gt;True if &lt;a&gt;IndexDocuments&lt;/a&gt; needs to be called to activate the current domain configuration.&lt;/p&gt;
-- @param Processing [Boolean] &lt;p&gt;True if processing is being done to activate the current domain configuration.&lt;/p&gt;
-- @param DocService [ServiceEndpoint] &lt;p&gt;The service endpoint for updating documents in a search domain.&lt;/p&gt;
-- @param ARN [ARN] &lt;p&gt;The current status of the search domain.&lt;/p&gt;
-- @param SearchPartitionCount [PartitionCount] &lt;p&gt;The number of partitions across which the search index is spread.&lt;/p&gt;
-- Required parameter: DomainId
-- Required parameter: DomainName
-- Required parameter: RequiresIndexDocuments
function M.DomainStatus(SearchInstanceType, DomainId, Limits, Created, Deleted, SearchInstanceCount, DomainName, SearchService, RequiresIndexDocuments, Processing, DocService, ARN, SearchPartitionCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DomainStatus")
	local t = { 
		["SearchInstanceType"] = SearchInstanceType,
		["DomainId"] = DomainId,
		["Limits"] = Limits,
		["Created"] = Created,
		["Deleted"] = Deleted,
		["SearchInstanceCount"] = SearchInstanceCount,
		["DomainName"] = DomainName,
		["SearchService"] = SearchService,
		["RequiresIndexDocuments"] = RequiresIndexDocuments,
		["Processing"] = Processing,
		["DocService"] = DocService,
		["ARN"] = ARN,
		["SearchPartitionCount"] = SearchPartitionCount,
	}
	M.AssertDomainStatus(t)
	return t
end

local UpdateServiceAccessPoliciesResponse_keys = { "AccessPolicies" = true, nil }

function M.AssertUpdateServiceAccessPoliciesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateServiceAccessPoliciesResponse to be of type 'table'")
	assert(struct["AccessPolicies"], "Expected key AccessPolicies to exist in table")
	if struct["AccessPolicies"] then M.AssertAccessPoliciesStatus(struct["AccessPolicies"]) end
	for k,_ in pairs(struct) do
		assert(UpdateServiceAccessPoliciesResponse_keys[k], "UpdateServiceAccessPoliciesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateServiceAccessPoliciesResponse
-- &lt;p&gt;The result of an &lt;code&gt;UpdateServiceAccessPolicies&lt;/code&gt; request. Contains the new access policies.&lt;/p&gt;
-- @param AccessPolicies [AccessPoliciesStatus] &lt;p&gt;The access rules configured for the domain.&lt;/p&gt;
-- Required parameter: AccessPolicies
function M.UpdateServiceAccessPoliciesResponse(AccessPolicies, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateServiceAccessPoliciesResponse")
	local t = { 
		["AccessPolicies"] = AccessPolicies,
	}
	M.AssertUpdateServiceAccessPoliciesResponse(t)
	return t
end

local Expression_keys = { "ExpressionName" = true, "ExpressionValue" = true, nil }

function M.AssertExpression(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Expression to be of type 'table'")
	assert(struct["ExpressionName"], "Expected key ExpressionName to exist in table")
	assert(struct["ExpressionValue"], "Expected key ExpressionValue to exist in table")
	if struct["ExpressionName"] then M.AssertStandardName(struct["ExpressionName"]) end
	if struct["ExpressionValue"] then M.AssertExpressionValue(struct["ExpressionValue"]) end
	for k,_ in pairs(struct) do
		assert(Expression_keys[k], "Expression contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Expression
-- &lt;p&gt;A named expression that can be evaluated at search time. Can be used to sort the search results, define other expressions, or return computed information in the search results. &lt;/p&gt;
-- @param ExpressionName [StandardName] &lt;p&gt;A named expression that can be evaluated at search time. Can be used to sort the search results, define other expressions, or return computed information in the search results. &lt;/p&gt;
-- @param ExpressionValue [ExpressionValue] &lt;p&gt;A named expression that can be evaluated at search time. Can be used to sort the search results, define other expressions, or return computed information in the search results. &lt;/p&gt;
-- Required parameter: ExpressionName
-- Required parameter: ExpressionValue
function M.Expression(ExpressionName, ExpressionValue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Expression")
	local t = { 
		["ExpressionName"] = ExpressionName,
		["ExpressionValue"] = ExpressionValue,
	}
	M.AssertExpression(t)
	return t
end

local DefineSuggesterResponse_keys = { "Suggester" = true, nil }

function M.AssertDefineSuggesterResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DefineSuggesterResponse to be of type 'table'")
	assert(struct["Suggester"], "Expected key Suggester to exist in table")
	if struct["Suggester"] then M.AssertSuggesterStatus(struct["Suggester"]) end
	for k,_ in pairs(struct) do
		assert(DefineSuggesterResponse_keys[k], "DefineSuggesterResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DefineSuggesterResponse
-- &lt;p&gt;The result of a &lt;code&gt;DefineSuggester&lt;/code&gt; request. Contains the status of the newly-configured suggester.&lt;/p&gt;
-- @param Suggester [SuggesterStatus] &lt;p&gt;The result of a &lt;code&gt;DefineSuggester&lt;/code&gt; request. Contains the status of the newly-configured suggester.&lt;/p&gt;
-- Required parameter: Suggester
function M.DefineSuggesterResponse(Suggester, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DefineSuggesterResponse")
	local t = { 
		["Suggester"] = Suggester,
	}
	M.AssertDefineSuggesterResponse(t)
	return t
end

local AnalysisScheme_keys = { "AnalysisSchemeLanguage" = true, "AnalysisSchemeName" = true, "AnalysisOptions" = true, nil }

function M.AssertAnalysisScheme(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AnalysisScheme to be of type 'table'")
	assert(struct["AnalysisSchemeName"], "Expected key AnalysisSchemeName to exist in table")
	assert(struct["AnalysisSchemeLanguage"], "Expected key AnalysisSchemeLanguage to exist in table")
	if struct["AnalysisSchemeLanguage"] then M.AssertAnalysisSchemeLanguage(struct["AnalysisSchemeLanguage"]) end
	if struct["AnalysisSchemeName"] then M.AssertStandardName(struct["AnalysisSchemeName"]) end
	if struct["AnalysisOptions"] then M.AssertAnalysisOptions(struct["AnalysisOptions"]) end
	for k,_ in pairs(struct) do
		assert(AnalysisScheme_keys[k], "AnalysisScheme contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AnalysisScheme
-- &lt;p&gt;Configuration information for an analysis scheme. Each analysis scheme has a unique name and specifies the language of the text to be processed. The following options can be configured for an analysis scheme: &lt;code&gt;Synonyms&lt;/code&gt;, &lt;code&gt;Stopwords&lt;/code&gt;, &lt;code&gt;StemmingDictionary&lt;/code&gt;, &lt;code&gt;JapaneseTokenizationDictionary&lt;/code&gt; and &lt;code&gt;AlgorithmicStemming&lt;/code&gt;.&lt;/p&gt;
-- @param AnalysisSchemeLanguage [AnalysisSchemeLanguage] &lt;p&gt;Configuration information for an analysis scheme. Each analysis scheme has a unique name and specifies the language of the text to be processed. The following options can be configured for an analysis scheme: &lt;code&gt;Synonyms&lt;/code&gt;, &lt;code&gt;Stopwords&lt;/code&gt;, &lt;code&gt;StemmingDictionary&lt;/code&gt;, &lt;code&gt;JapaneseTokenizationDictionary&lt;/code&gt; and &lt;code&gt;AlgorithmicStemming&lt;/code&gt;.&lt;/p&gt;
-- @param AnalysisSchemeName [StandardName] &lt;p&gt;Configuration information for an analysis scheme. Each analysis scheme has a unique name and specifies the language of the text to be processed. The following options can be configured for an analysis scheme: &lt;code&gt;Synonyms&lt;/code&gt;, &lt;code&gt;Stopwords&lt;/code&gt;, &lt;code&gt;StemmingDictionary&lt;/code&gt;, &lt;code&gt;JapaneseTokenizationDictionary&lt;/code&gt; and &lt;code&gt;AlgorithmicStemming&lt;/code&gt;.&lt;/p&gt;
-- @param AnalysisOptions [AnalysisOptions] &lt;p&gt;Configuration information for an analysis scheme. Each analysis scheme has a unique name and specifies the language of the text to be processed. The following options can be configured for an analysis scheme: &lt;code&gt;Synonyms&lt;/code&gt;, &lt;code&gt;Stopwords&lt;/code&gt;, &lt;code&gt;StemmingDictionary&lt;/code&gt;, &lt;code&gt;JapaneseTokenizationDictionary&lt;/code&gt; and &lt;code&gt;AlgorithmicStemming&lt;/code&gt;.&lt;/p&gt;
-- Required parameter: AnalysisSchemeName
-- Required parameter: AnalysisSchemeLanguage
function M.AnalysisScheme(AnalysisSchemeLanguage, AnalysisSchemeName, AnalysisOptions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AnalysisScheme")
	local t = { 
		["AnalysisSchemeLanguage"] = AnalysisSchemeLanguage,
		["AnalysisSchemeName"] = AnalysisSchemeName,
		["AnalysisOptions"] = AnalysisOptions,
	}
	M.AssertAnalysisScheme(t)
	return t
end

local AnalysisOptions_keys = { "AlgorithmicStemming" = true, "Synonyms" = true, "StemmingDictionary" = true, "Stopwords" = true, "JapaneseTokenizationDictionary" = true, nil }

function M.AssertAnalysisOptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AnalysisOptions to be of type 'table'")
	if struct["AlgorithmicStemming"] then M.AssertAlgorithmicStemming(struct["AlgorithmicStemming"]) end
	if struct["Synonyms"] then M.AssertString(struct["Synonyms"]) end
	if struct["StemmingDictionary"] then M.AssertString(struct["StemmingDictionary"]) end
	if struct["Stopwords"] then M.AssertString(struct["Stopwords"]) end
	if struct["JapaneseTokenizationDictionary"] then M.AssertString(struct["JapaneseTokenizationDictionary"]) end
	for k,_ in pairs(struct) do
		assert(AnalysisOptions_keys[k], "AnalysisOptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AnalysisOptions
-- &lt;p&gt;Synonyms, stopwords, and stemming options for an analysis scheme. Includes tokenization dictionary for Japanese.&lt;/p&gt;
-- @param AlgorithmicStemming [AlgorithmicStemming] &lt;p&gt;The level of algorithmic stemming to perform: &lt;code&gt;none&lt;/code&gt;, &lt;code&gt;minimal&lt;/code&gt;, &lt;code&gt;light&lt;/code&gt;, or &lt;code&gt;full&lt;/code&gt;. The available levels vary depending on the language. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/cloudsearch/latest/developerguide/text-processing.html#text-processing-settings&quot; target=&quot;_blank&quot;&gt;Language Specific Text Processing Settings&lt;/a&gt; in the &lt;i&gt;Amazon CloudSearch Developer Guide&lt;/i&gt; &lt;/p&gt;
-- @param Synonyms [String] &lt;p&gt;A JSON object that defines synonym groups and aliases. A synonym group is an array of arrays, where each sub-array is a group of terms where each term in the group is considered a synonym of every other term in the group. The aliases value is an object that contains a collection of string:value pairs where the string specifies a term and the array of values specifies each of the aliases for that term. An alias is considered a synonym of the specified term, but the term is not considered a synonym of the alias. For more information about specifying synonyms, see &lt;a href=&quot;http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-analysis-schemes.html#synonyms&quot;&gt;Synonyms&lt;/a&gt; in the &lt;i&gt;Amazon CloudSearch Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param StemmingDictionary [String] &lt;p&gt;A JSON object that contains a collection of string:value pairs that each map a term to its stem. For example, &lt;code&gt;{&quot;term1&quot;: &quot;stem1&quot;, &quot;term2&quot;: &quot;stem2&quot;, &quot;term3&quot;: &quot;stem3&quot;}&lt;/code&gt;. The stemming dictionary is applied in addition to any algorithmic stemming. This enables you to override the results of the algorithmic stemming to correct specific cases of overstemming or understemming. The maximum size of a stemming dictionary is 500 KB.&lt;/p&gt;
-- @param Stopwords [String] &lt;p&gt;A JSON array of terms to ignore during indexing and searching. For example, &lt;code&gt;[&quot;a&quot;, &quot;an&quot;, &quot;the&quot;, &quot;of&quot;]&lt;/code&gt;. The stopwords dictionary must explicitly list each word you want to ignore. Wildcards and regular expressions are not supported. &lt;/p&gt;
-- @param JapaneseTokenizationDictionary [String] &lt;p&gt;A JSON array that contains a collection of terms, tokens, readings and part of speech for Japanese Tokenizaiton. The Japanese tokenization dictionary enables you to override the default tokenization for selected terms. This is only valid for Japanese language fields.&lt;/p&gt;
function M.AnalysisOptions(AlgorithmicStemming, Synonyms, StemmingDictionary, Stopwords, JapaneseTokenizationDictionary, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AnalysisOptions")
	local t = { 
		["AlgorithmicStemming"] = AlgorithmicStemming,
		["Synonyms"] = Synonyms,
		["StemmingDictionary"] = StemmingDictionary,
		["Stopwords"] = Stopwords,
		["JapaneseTokenizationDictionary"] = JapaneseTokenizationDictionary,
	}
	M.AssertAnalysisOptions(t)
	return t
end

local DeleteDomainResponse_keys = { "DomainStatus" = true, nil }

function M.AssertDeleteDomainResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDomainResponse to be of type 'table'")
	if struct["DomainStatus"] then M.AssertDomainStatus(struct["DomainStatus"]) end
	for k,_ in pairs(struct) do
		assert(DeleteDomainResponse_keys[k], "DeleteDomainResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDomainResponse
-- &lt;p&gt;The result of a &lt;code&gt;DeleteDomain&lt;/code&gt; request. Contains the status of a newly deleted domain, or no status if the domain has already been completely deleted.&lt;/p&gt;
-- @param DomainStatus [DomainStatus] &lt;p&gt;The result of a &lt;code&gt;DeleteDomain&lt;/code&gt; request. Contains the status of a newly deleted domain, or no status if the domain has already been completely deleted.&lt;/p&gt;
function M.DeleteDomainResponse(DomainStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDomainResponse")
	local t = { 
		["DomainStatus"] = DomainStatus,
	}
	M.AssertDeleteDomainResponse(t)
	return t
end

local ResourceNotFoundException_keys = { nil }

function M.AssertResourceNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ResourceNotFoundException_keys[k], "ResourceNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundException
-- &lt;p&gt;The request was rejected because it attempted to reference a resource that does not exist.&lt;/p&gt;
function M.ResourceNotFoundException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundException")
	local t = { 
	}
	M.AssertResourceNotFoundException(t)
	return t
end

local DescribeServiceAccessPoliciesResponse_keys = { "AccessPolicies" = true, nil }

function M.AssertDescribeServiceAccessPoliciesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeServiceAccessPoliciesResponse to be of type 'table'")
	assert(struct["AccessPolicies"], "Expected key AccessPolicies to exist in table")
	if struct["AccessPolicies"] then M.AssertAccessPoliciesStatus(struct["AccessPolicies"]) end
	for k,_ in pairs(struct) do
		assert(DescribeServiceAccessPoliciesResponse_keys[k], "DescribeServiceAccessPoliciesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeServiceAccessPoliciesResponse
-- &lt;p&gt;The result of a &lt;code&gt;DescribeServiceAccessPolicies&lt;/code&gt; request.&lt;/p&gt;
-- @param AccessPolicies [AccessPoliciesStatus] &lt;p&gt;The access rules configured for the domain specified in the request.&lt;/p&gt;
-- Required parameter: AccessPolicies
function M.DescribeServiceAccessPoliciesResponse(AccessPolicies, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeServiceAccessPoliciesResponse")
	local t = { 
		["AccessPolicies"] = AccessPolicies,
	}
	M.AssertDescribeServiceAccessPoliciesResponse(t)
	return t
end

local DisabledOperationException_keys = { nil }

function M.AssertDisabledOperationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisabledOperationException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DisabledOperationException_keys[k], "DisabledOperationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisabledOperationException
-- &lt;p&gt;The request was rejected because it attempted an operation which is not enabled.&lt;/p&gt;
function M.DisabledOperationException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisabledOperationException")
	local t = { 
	}
	M.AssertDisabledOperationException(t)
	return t
end

local TextArrayOptions_keys = { "SourceFields" = true, "DefaultValue" = true, "HighlightEnabled" = true, "ReturnEnabled" = true, "AnalysisScheme" = true, nil }

function M.AssertTextArrayOptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TextArrayOptions to be of type 'table'")
	if struct["SourceFields"] then M.AssertFieldNameCommaList(struct["SourceFields"]) end
	if struct["DefaultValue"] then M.AssertFieldValue(struct["DefaultValue"]) end
	if struct["HighlightEnabled"] then M.AssertBoolean(struct["HighlightEnabled"]) end
	if struct["ReturnEnabled"] then M.AssertBoolean(struct["ReturnEnabled"]) end
	if struct["AnalysisScheme"] then M.AssertWord(struct["AnalysisScheme"]) end
	for k,_ in pairs(struct) do
		assert(TextArrayOptions_keys[k], "TextArrayOptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TextArrayOptions
-- &lt;p&gt;Options for a field that contains an array of text strings. Present if &lt;code&gt;IndexFieldType&lt;/code&gt; specifies the field is of type &lt;code&gt;text-array&lt;/code&gt;. A &lt;code&gt;text-array&lt;/code&gt; field is always searchable. All options are enabled by default.&lt;/p&gt;
-- @param SourceFields [FieldNameCommaList] &lt;p&gt;A list of source fields to map to the field. &lt;/p&gt;
-- @param DefaultValue [FieldValue] A value to use for the field if the field isn't specified for a document.
-- @param HighlightEnabled [Boolean] &lt;p&gt;Whether highlights can be returned for the field.&lt;/p&gt;
-- @param ReturnEnabled [Boolean] &lt;p&gt;Whether the contents of the field can be returned in the search results.&lt;/p&gt;
-- @param AnalysisScheme [Word] &lt;p&gt;The name of an analysis scheme for a &lt;code&gt;text-array&lt;/code&gt; field.&lt;/p&gt;
function M.TextArrayOptions(SourceFields, DefaultValue, HighlightEnabled, ReturnEnabled, AnalysisScheme, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TextArrayOptions")
	local t = { 
		["SourceFields"] = SourceFields,
		["DefaultValue"] = DefaultValue,
		["HighlightEnabled"] = HighlightEnabled,
		["ReturnEnabled"] = ReturnEnabled,
		["AnalysisScheme"] = AnalysisScheme,
	}
	M.AssertTextArrayOptions(t)
	return t
end

local DescribeAvailabilityOptionsResponse_keys = { "AvailabilityOptions" = true, nil }

function M.AssertDescribeAvailabilityOptionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAvailabilityOptionsResponse to be of type 'table'")
	if struct["AvailabilityOptions"] then M.AssertAvailabilityOptionsStatus(struct["AvailabilityOptions"]) end
	for k,_ in pairs(struct) do
		assert(DescribeAvailabilityOptionsResponse_keys[k], "DescribeAvailabilityOptionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAvailabilityOptionsResponse
-- &lt;p&gt;The result of a &lt;code&gt;DescribeAvailabilityOptions&lt;/code&gt; request. Indicates whether or not the Multi-AZ option is enabled for the domain specified in the request. &lt;/p&gt;
-- @param AvailabilityOptions [AvailabilityOptionsStatus] &lt;p&gt;The availability options configured for the domain. Indicates whether Multi-AZ is enabled for the domain. &lt;/p&gt;
function M.DescribeAvailabilityOptionsResponse(AvailabilityOptions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAvailabilityOptionsResponse")
	local t = { 
		["AvailabilityOptions"] = AvailabilityOptions,
	}
	M.AssertDescribeAvailabilityOptionsResponse(t)
	return t
end

local IndexFieldStatus_keys = { "Status" = true, "Options" = true, nil }

function M.AssertIndexFieldStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IndexFieldStatus to be of type 'table'")
	assert(struct["Options"], "Expected key Options to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["Status"] then M.AssertOptionStatus(struct["Status"]) end
	if struct["Options"] then M.AssertIndexField(struct["Options"]) end
	for k,_ in pairs(struct) do
		assert(IndexFieldStatus_keys[k], "IndexFieldStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IndexFieldStatus
-- &lt;p&gt;The value of an &lt;code&gt;IndexField&lt;/code&gt; and its current status.&lt;/p&gt;
-- @param Status [OptionStatus] &lt;p&gt;The value of an &lt;code&gt;IndexField&lt;/code&gt; and its current status.&lt;/p&gt;
-- @param Options [IndexField] &lt;p&gt;The value of an &lt;code&gt;IndexField&lt;/code&gt; and its current status.&lt;/p&gt;
-- Required parameter: Options
-- Required parameter: Status
function M.IndexFieldStatus(Status, Options, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IndexFieldStatus")
	local t = { 
		["Status"] = Status,
		["Options"] = Options,
	}
	M.AssertIndexFieldStatus(t)
	return t
end

local DescribeAnalysisSchemesRequest_keys = { "AnalysisSchemeNames" = true, "Deployed" = true, "DomainName" = true, nil }

function M.AssertDescribeAnalysisSchemesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAnalysisSchemesRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["AnalysisSchemeNames"] then M.AssertStandardNameList(struct["AnalysisSchemeNames"]) end
	if struct["Deployed"] then M.AssertBoolean(struct["Deployed"]) end
	if struct["DomainName"] then M.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(DescribeAnalysisSchemesRequest_keys[k], "DescribeAnalysisSchemesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAnalysisSchemesRequest
-- &lt;p&gt;Container for the parameters to the &lt;code&gt;&lt;a&gt;DescribeAnalysisSchemes&lt;/a&gt;&lt;/code&gt; operation. Specifies the name of the domain you want to describe. To limit the response to particular analysis schemes, specify the names of the analysis schemes you want to describe. To show the active configuration and exclude any pending changes, set the &lt;code&gt;Deployed&lt;/code&gt; option to &lt;code&gt;true&lt;/code&gt;. &lt;/p&gt;
-- @param AnalysisSchemeNames [StandardNameList] &lt;p&gt;The analysis schemes you want to describe.&lt;/p&gt;
-- @param Deployed [Boolean] &lt;p&gt;Whether to display the deployed configuration (&lt;code&gt;true&lt;/code&gt;) or include any pending changes (&lt;code&gt;false&lt;/code&gt;). Defaults to &lt;code&gt;false&lt;/code&gt;.&lt;/p&gt;
-- @param DomainName [DomainName] &lt;p&gt;The name of the domain you want to describe.&lt;/p&gt;
-- Required parameter: DomainName
function M.DescribeAnalysisSchemesRequest(AnalysisSchemeNames, Deployed, DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAnalysisSchemesRequest")
	local t = { 
		["AnalysisSchemeNames"] = AnalysisSchemeNames,
		["Deployed"] = Deployed,
		["DomainName"] = DomainName,
	}
	M.AssertDescribeAnalysisSchemesRequest(t)
	return t
end

local DeleteExpressionRequest_keys = { "ExpressionName" = true, "DomainName" = true, nil }

function M.AssertDeleteExpressionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteExpressionRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["ExpressionName"], "Expected key ExpressionName to exist in table")
	if struct["ExpressionName"] then M.AssertStandardName(struct["ExpressionName"]) end
	if struct["DomainName"] then M.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteExpressionRequest_keys[k], "DeleteExpressionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteExpressionRequest
-- &lt;p&gt;Container for the parameters to the &lt;code&gt;&lt;a&gt;DeleteExpression&lt;/a&gt;&lt;/code&gt; operation. Specifies the name of the domain you want to update and the name of the expression you want to delete.&lt;/p&gt;
-- @param ExpressionName [StandardName] &lt;p&gt;The name of the &lt;code&gt;&lt;a&gt;Expression&lt;/a&gt;&lt;/code&gt; to delete.&lt;/p&gt;
-- @param DomainName [DomainName] &lt;p&gt;Container for the parameters to the &lt;code&gt;&lt;a&gt;DeleteExpression&lt;/a&gt;&lt;/code&gt; operation. Specifies the name of the domain you want to update and the name of the expression you want to delete.&lt;/p&gt;
-- Required parameter: DomainName
-- Required parameter: ExpressionName
function M.DeleteExpressionRequest(ExpressionName, DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteExpressionRequest")
	local t = { 
		["ExpressionName"] = ExpressionName,
		["DomainName"] = DomainName,
	}
	M.AssertDeleteExpressionRequest(t)
	return t
end

local InvalidTypeException_keys = { nil }

function M.AssertInvalidTypeException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidTypeException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidTypeException_keys[k], "InvalidTypeException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidTypeException
-- &lt;p&gt;The request was rejected because it specified an invalid type definition.&lt;/p&gt;
function M.InvalidTypeException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidTypeException")
	local t = { 
	}
	M.AssertInvalidTypeException(t)
	return t
end

local OptionStatus_keys = { "PendingDeletion" = true, "State" = true, "CreationDate" = true, "UpdateVersion" = true, "UpdateDate" = true, nil }

function M.AssertOptionStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OptionStatus to be of type 'table'")
	assert(struct["CreationDate"], "Expected key CreationDate to exist in table")
	assert(struct["UpdateDate"], "Expected key UpdateDate to exist in table")
	assert(struct["State"], "Expected key State to exist in table")
	if struct["PendingDeletion"] then M.AssertBoolean(struct["PendingDeletion"]) end
	if struct["State"] then M.AssertOptionState(struct["State"]) end
	if struct["CreationDate"] then M.AssertUpdateTimestamp(struct["CreationDate"]) end
	if struct["UpdateVersion"] then M.AssertUIntValue(struct["UpdateVersion"]) end
	if struct["UpdateDate"] then M.AssertUpdateTimestamp(struct["UpdateDate"]) end
	for k,_ in pairs(struct) do
		assert(OptionStatus_keys[k], "OptionStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OptionStatus
-- &lt;p&gt;The status of domain configuration option.&lt;/p&gt;
-- @param PendingDeletion [Boolean] &lt;p&gt;Indicates that the option will be deleted once processing is complete.&lt;/p&gt;
-- @param State [OptionState] &lt;p&gt;The state of processing a change to an option. Possible values:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;code&gt;RequiresIndexDocuments&lt;/code&gt;: the option's latest value will not be deployed until &lt;a&gt;IndexDocuments&lt;/a&gt; has been called and indexing is complete.&lt;/li&gt; &lt;li&gt; &lt;code&gt;Processing&lt;/code&gt;: the option's latest value is in the process of being activated. &lt;/li&gt; &lt;li&gt; &lt;code&gt;Active&lt;/code&gt;: the option's latest value is completely deployed.&lt;/li&gt; &lt;li&gt; &lt;code&gt;FailedToValidate&lt;/code&gt;: the option value is not compatible with the domain's data and cannot be used to index the data. You must either modify the option value or update or remove the incompatible documents.&lt;/li&gt; &lt;/ul&gt;
-- @param CreationDate [UpdateTimestamp] &lt;p&gt;A timestamp for when this option was created.&lt;/p&gt;
-- @param UpdateVersion [UIntValue] &lt;p&gt;A unique integer that indicates when this option was last updated.&lt;/p&gt;
-- @param UpdateDate [UpdateTimestamp] &lt;p&gt;A timestamp for when this option was last updated.&lt;/p&gt;
-- Required parameter: CreationDate
-- Required parameter: UpdateDate
-- Required parameter: State
function M.OptionStatus(PendingDeletion, State, CreationDate, UpdateVersion, UpdateDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OptionStatus")
	local t = { 
		["PendingDeletion"] = PendingDeletion,
		["State"] = State,
		["CreationDate"] = CreationDate,
		["UpdateVersion"] = UpdateVersion,
		["UpdateDate"] = UpdateDate,
	}
	M.AssertOptionStatus(t)
	return t
end

local IndexField_keys = { "IntArrayOptions" = true, "LiteralArrayOptions" = true, "LiteralOptions" = true, "LatLonOptions" = true, "DateArrayOptions" = true, "DoubleArrayOptions" = true, "TextArrayOptions" = true, "IndexFieldName" = true, "DoubleOptions" = true, "DateOptions" = true, "IndexFieldType" = true, "IntOptions" = true, "TextOptions" = true, nil }

function M.AssertIndexField(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IndexField to be of type 'table'")
	assert(struct["IndexFieldName"], "Expected key IndexFieldName to exist in table")
	assert(struct["IndexFieldType"], "Expected key IndexFieldType to exist in table")
	if struct["IntArrayOptions"] then M.AssertIntArrayOptions(struct["IntArrayOptions"]) end
	if struct["LiteralArrayOptions"] then M.AssertLiteralArrayOptions(struct["LiteralArrayOptions"]) end
	if struct["LiteralOptions"] then M.AssertLiteralOptions(struct["LiteralOptions"]) end
	if struct["LatLonOptions"] then M.AssertLatLonOptions(struct["LatLonOptions"]) end
	if struct["DateArrayOptions"] then M.AssertDateArrayOptions(struct["DateArrayOptions"]) end
	if struct["DoubleArrayOptions"] then M.AssertDoubleArrayOptions(struct["DoubleArrayOptions"]) end
	if struct["TextArrayOptions"] then M.AssertTextArrayOptions(struct["TextArrayOptions"]) end
	if struct["IndexFieldName"] then M.AssertDynamicFieldName(struct["IndexFieldName"]) end
	if struct["DoubleOptions"] then M.AssertDoubleOptions(struct["DoubleOptions"]) end
	if struct["DateOptions"] then M.AssertDateOptions(struct["DateOptions"]) end
	if struct["IndexFieldType"] then M.AssertIndexFieldType(struct["IndexFieldType"]) end
	if struct["IntOptions"] then M.AssertIntOptions(struct["IntOptions"]) end
	if struct["TextOptions"] then M.AssertTextOptions(struct["TextOptions"]) end
	for k,_ in pairs(struct) do
		assert(IndexField_keys[k], "IndexField contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IndexField
-- &lt;p&gt;Configuration information for a field in the index, including its name, type, and options. The supported options depend on the &lt;code&gt;&lt;a&gt;IndexFieldType&lt;/a&gt;&lt;/code&gt;.&lt;/p&gt;
-- @param IntArrayOptions [IntArrayOptions] &lt;p&gt;Configuration information for a field in the index, including its name, type, and options. The supported options depend on the &lt;code&gt;&lt;a&gt;IndexFieldType&lt;/a&gt;&lt;/code&gt;.&lt;/p&gt;
-- @param LiteralArrayOptions [LiteralArrayOptions] &lt;p&gt;Configuration information for a field in the index, including its name, type, and options. The supported options depend on the &lt;code&gt;&lt;a&gt;IndexFieldType&lt;/a&gt;&lt;/code&gt;.&lt;/p&gt;
-- @param LiteralOptions [LiteralOptions] &lt;p&gt;Configuration information for a field in the index, including its name, type, and options. The supported options depend on the &lt;code&gt;&lt;a&gt;IndexFieldType&lt;/a&gt;&lt;/code&gt;.&lt;/p&gt;
-- @param LatLonOptions [LatLonOptions] &lt;p&gt;Configuration information for a field in the index, including its name, type, and options. The supported options depend on the &lt;code&gt;&lt;a&gt;IndexFieldType&lt;/a&gt;&lt;/code&gt;.&lt;/p&gt;
-- @param DateArrayOptions [DateArrayOptions] &lt;p&gt;Configuration information for a field in the index, including its name, type, and options. The supported options depend on the &lt;code&gt;&lt;a&gt;IndexFieldType&lt;/a&gt;&lt;/code&gt;.&lt;/p&gt;
-- @param DoubleArrayOptions [DoubleArrayOptions] &lt;p&gt;Configuration information for a field in the index, including its name, type, and options. The supported options depend on the &lt;code&gt;&lt;a&gt;IndexFieldType&lt;/a&gt;&lt;/code&gt;.&lt;/p&gt;
-- @param TextArrayOptions [TextArrayOptions] &lt;p&gt;Configuration information for a field in the index, including its name, type, and options. The supported options depend on the &lt;code&gt;&lt;a&gt;IndexFieldType&lt;/a&gt;&lt;/code&gt;.&lt;/p&gt;
-- @param IndexFieldName [DynamicFieldName] &lt;p&gt;A string that represents the name of an index field. CloudSearch supports regular index fields as well as dynamic fields. A dynamic field's name defines a pattern that begins or ends with a wildcard. Any document fields that don't map to a regular index field but do match a dynamic field's pattern are configured with the dynamic field's indexing options. &lt;/p&gt; &lt;p&gt;Regular field names begin with a letter and can contain the following characters: a-z (lowercase), 0-9, and _ (underscore). Dynamic field names must begin or end with a wildcard (*). The wildcard can also be the only character in a dynamic field name. Multiple wildcards, and wildcards embedded within a string are not supported. &lt;/p&gt; &lt;p&gt;The name &lt;code&gt;score&lt;/code&gt; is reserved and cannot be used as a field name. To reference a document's ID, you can use the name &lt;code&gt;_id&lt;/code&gt;. &lt;/p&gt;
-- @param DoubleOptions [DoubleOptions] &lt;p&gt;Configuration information for a field in the index, including its name, type, and options. The supported options depend on the &lt;code&gt;&lt;a&gt;IndexFieldType&lt;/a&gt;&lt;/code&gt;.&lt;/p&gt;
-- @param DateOptions [DateOptions] &lt;p&gt;Configuration information for a field in the index, including its name, type, and options. The supported options depend on the &lt;code&gt;&lt;a&gt;IndexFieldType&lt;/a&gt;&lt;/code&gt;.&lt;/p&gt;
-- @param IndexFieldType [IndexFieldType] &lt;p&gt;Configuration information for a field in the index, including its name, type, and options. The supported options depend on the &lt;code&gt;&lt;a&gt;IndexFieldType&lt;/a&gt;&lt;/code&gt;.&lt;/p&gt;
-- @param IntOptions [IntOptions] &lt;p&gt;Configuration information for a field in the index, including its name, type, and options. The supported options depend on the &lt;code&gt;&lt;a&gt;IndexFieldType&lt;/a&gt;&lt;/code&gt;.&lt;/p&gt;
-- @param TextOptions [TextOptions] &lt;p&gt;Configuration information for a field in the index, including its name, type, and options. The supported options depend on the &lt;code&gt;&lt;a&gt;IndexFieldType&lt;/a&gt;&lt;/code&gt;.&lt;/p&gt;
-- Required parameter: IndexFieldName
-- Required parameter: IndexFieldType
function M.IndexField(IntArrayOptions, LiteralArrayOptions, LiteralOptions, LatLonOptions, DateArrayOptions, DoubleArrayOptions, TextArrayOptions, IndexFieldName, DoubleOptions, DateOptions, IndexFieldType, IntOptions, TextOptions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IndexField")
	local t = { 
		["IntArrayOptions"] = IntArrayOptions,
		["LiteralArrayOptions"] = LiteralArrayOptions,
		["LiteralOptions"] = LiteralOptions,
		["LatLonOptions"] = LatLonOptions,
		["DateArrayOptions"] = DateArrayOptions,
		["DoubleArrayOptions"] = DoubleArrayOptions,
		["TextArrayOptions"] = TextArrayOptions,
		["IndexFieldName"] = IndexFieldName,
		["DoubleOptions"] = DoubleOptions,
		["DateOptions"] = DateOptions,
		["IndexFieldType"] = IndexFieldType,
		["IntOptions"] = IntOptions,
		["TextOptions"] = TextOptions,
	}
	M.AssertIndexField(t)
	return t
end

local DescribeSuggestersRequest_keys = { "SuggesterNames" = true, "Deployed" = true, "DomainName" = true, nil }

function M.AssertDescribeSuggestersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSuggestersRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["SuggesterNames"] then M.AssertStandardNameList(struct["SuggesterNames"]) end
	if struct["Deployed"] then M.AssertBoolean(struct["Deployed"]) end
	if struct["DomainName"] then M.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(DescribeSuggestersRequest_keys[k], "DescribeSuggestersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSuggestersRequest
-- &lt;p&gt;Container for the parameters to the &lt;code&gt;&lt;a&gt;DescribeSuggester&lt;/a&gt;&lt;/code&gt; operation. Specifies the name of the domain you want to describe. To restrict the response to particular suggesters, specify the names of the suggesters you want to describe. To show the active configuration and exclude any pending changes, set the &lt;code&gt;Deployed&lt;/code&gt; option to &lt;code&gt;true&lt;/code&gt;.&lt;/p&gt;
-- @param SuggesterNames [StandardNameList] &lt;p&gt;The suggesters you want to describe.&lt;/p&gt;
-- @param Deployed [Boolean] &lt;p&gt;Whether to display the deployed configuration (&lt;code&gt;true&lt;/code&gt;) or include any pending changes (&lt;code&gt;false&lt;/code&gt;). Defaults to &lt;code&gt;false&lt;/code&gt;.&lt;/p&gt;
-- @param DomainName [DomainName] &lt;p&gt;The name of the domain you want to describe.&lt;/p&gt;
-- Required parameter: DomainName
function M.DescribeSuggestersRequest(SuggesterNames, Deployed, DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeSuggestersRequest")
	local t = { 
		["SuggesterNames"] = SuggesterNames,
		["Deployed"] = Deployed,
		["DomainName"] = DomainName,
	}
	M.AssertDescribeSuggestersRequest(t)
	return t
end

local DescribeIndexFieldsRequest_keys = { "Deployed" = true, "FieldNames" = true, "DomainName" = true, nil }

function M.AssertDescribeIndexFieldsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeIndexFieldsRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["Deployed"] then M.AssertBoolean(struct["Deployed"]) end
	if struct["FieldNames"] then M.AssertDynamicFieldNameList(struct["FieldNames"]) end
	if struct["DomainName"] then M.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(DescribeIndexFieldsRequest_keys[k], "DescribeIndexFieldsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeIndexFieldsRequest
-- &lt;p&gt;Container for the parameters to the &lt;code&gt;&lt;a&gt;DescribeIndexFields&lt;/a&gt;&lt;/code&gt; operation. Specifies the name of the domain you want to describe. To restrict the response to particular index fields, specify the names of the index fields you want to describe. To show the active configuration and exclude any pending changes, set the &lt;code&gt;Deployed&lt;/code&gt; option to &lt;code&gt;true&lt;/code&gt;.&lt;/p&gt;
-- @param Deployed [Boolean] &lt;p&gt;Whether to display the deployed configuration (&lt;code&gt;true&lt;/code&gt;) or include any pending changes (&lt;code&gt;false&lt;/code&gt;). Defaults to &lt;code&gt;false&lt;/code&gt;.&lt;/p&gt;
-- @param FieldNames [DynamicFieldNameList] &lt;p&gt;A list of the index fields you want to describe. If not specified, information is returned for all configured index fields.&lt;/p&gt;
-- @param DomainName [DomainName] &lt;p&gt;The name of the domain you want to describe.&lt;/p&gt;
-- Required parameter: DomainName
function M.DescribeIndexFieldsRequest(Deployed, FieldNames, DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeIndexFieldsRequest")
	local t = { 
		["Deployed"] = Deployed,
		["FieldNames"] = FieldNames,
		["DomainName"] = DomainName,
	}
	M.AssertDescribeIndexFieldsRequest(t)
	return t
end

local ScalingParametersStatus_keys = { "Status" = true, "Options" = true, nil }

function M.AssertScalingParametersStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScalingParametersStatus to be of type 'table'")
	assert(struct["Options"], "Expected key Options to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["Status"] then M.AssertOptionStatus(struct["Status"]) end
	if struct["Options"] then M.AssertScalingParameters(struct["Options"]) end
	for k,_ in pairs(struct) do
		assert(ScalingParametersStatus_keys[k], "ScalingParametersStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScalingParametersStatus
-- &lt;p&gt;The status and configuration of a search domain's scaling parameters. &lt;/p&gt;
-- @param Status [OptionStatus] &lt;p&gt;The status and configuration of a search domain's scaling parameters. &lt;/p&gt;
-- @param Options [ScalingParameters] &lt;p&gt;The status and configuration of a search domain's scaling parameters. &lt;/p&gt;
-- Required parameter: Options
-- Required parameter: Status
function M.ScalingParametersStatus(Status, Options, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ScalingParametersStatus")
	local t = { 
		["Status"] = Status,
		["Options"] = Options,
	}
	M.AssertScalingParametersStatus(t)
	return t
end

local BuildSuggestersRequest_keys = { "DomainName" = true, nil }

function M.AssertBuildSuggestersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BuildSuggestersRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["DomainName"] then M.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(BuildSuggestersRequest_keys[k], "BuildSuggestersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BuildSuggestersRequest
-- &lt;p&gt;Container for the parameters to the &lt;code&gt;&lt;a&gt;BuildSuggester&lt;/a&gt;&lt;/code&gt; operation. Specifies the name of the domain you want to update.&lt;/p&gt;
-- @param DomainName [DomainName] &lt;p&gt;Container for the parameters to the &lt;code&gt;&lt;a&gt;BuildSuggester&lt;/a&gt;&lt;/code&gt; operation. Specifies the name of the domain you want to update.&lt;/p&gt;
-- Required parameter: DomainName
function M.BuildSuggestersRequest(DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BuildSuggestersRequest")
	local t = { 
		["DomainName"] = DomainName,
	}
	M.AssertBuildSuggestersRequest(t)
	return t
end

local DefineAnalysisSchemeRequest_keys = { "AnalysisScheme" = true, "DomainName" = true, nil }

function M.AssertDefineAnalysisSchemeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DefineAnalysisSchemeRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["AnalysisScheme"], "Expected key AnalysisScheme to exist in table")
	if struct["AnalysisScheme"] then M.AssertAnalysisScheme(struct["AnalysisScheme"]) end
	if struct["DomainName"] then M.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(DefineAnalysisSchemeRequest_keys[k], "DefineAnalysisSchemeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DefineAnalysisSchemeRequest
-- &lt;p&gt;Container for the parameters to the &lt;code&gt;&lt;a&gt;DefineAnalysisScheme&lt;/a&gt;&lt;/code&gt; operation. Specifies the name of the domain you want to update and the analysis scheme configuration.&lt;/p&gt;
-- @param AnalysisScheme [AnalysisScheme] &lt;p&gt;Container for the parameters to the &lt;code&gt;&lt;a&gt;DefineAnalysisScheme&lt;/a&gt;&lt;/code&gt; operation. Specifies the name of the domain you want to update and the analysis scheme configuration.&lt;/p&gt;
-- @param DomainName [DomainName] &lt;p&gt;Container for the parameters to the &lt;code&gt;&lt;a&gt;DefineAnalysisScheme&lt;/a&gt;&lt;/code&gt; operation. Specifies the name of the domain you want to update and the analysis scheme configuration.&lt;/p&gt;
-- Required parameter: DomainName
-- Required parameter: AnalysisScheme
function M.DefineAnalysisSchemeRequest(AnalysisScheme, DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DefineAnalysisSchemeRequest")
	local t = { 
		["AnalysisScheme"] = AnalysisScheme,
		["DomainName"] = DomainName,
	}
	M.AssertDefineAnalysisSchemeRequest(t)
	return t
end

local IntArrayOptions_keys = { "SourceFields" = true, "FacetEnabled" = true, "DefaultValue" = true, "ReturnEnabled" = true, "SearchEnabled" = true, nil }

function M.AssertIntArrayOptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IntArrayOptions to be of type 'table'")
	if struct["SourceFields"] then M.AssertFieldNameCommaList(struct["SourceFields"]) end
	if struct["FacetEnabled"] then M.AssertBoolean(struct["FacetEnabled"]) end
	if struct["DefaultValue"] then M.AssertLong(struct["DefaultValue"]) end
	if struct["ReturnEnabled"] then M.AssertBoolean(struct["ReturnEnabled"]) end
	if struct["SearchEnabled"] then M.AssertBoolean(struct["SearchEnabled"]) end
	for k,_ in pairs(struct) do
		assert(IntArrayOptions_keys[k], "IntArrayOptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IntArrayOptions
-- &lt;p&gt;Options for a field that contains an array of 64-bit signed integers. Present if &lt;code&gt;IndexFieldType&lt;/code&gt; specifies the field is of type &lt;code&gt;int-array&lt;/code&gt;. All options are enabled by default.&lt;/p&gt;
-- @param SourceFields [FieldNameCommaList] &lt;p&gt;A list of source fields to map to the field. &lt;/p&gt;
-- @param FacetEnabled [Boolean] &lt;p&gt;Whether facet information can be returned for the field.&lt;/p&gt;
-- @param DefaultValue [Long] A value to use for the field if the field isn't specified for a document.
-- @param ReturnEnabled [Boolean] &lt;p&gt;Whether the contents of the field can be returned in the search results.&lt;/p&gt;
-- @param SearchEnabled [Boolean] &lt;p&gt;Whether the contents of the field are searchable.&lt;/p&gt;
function M.IntArrayOptions(SourceFields, FacetEnabled, DefaultValue, ReturnEnabled, SearchEnabled, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IntArrayOptions")
	local t = { 
		["SourceFields"] = SourceFields,
		["FacetEnabled"] = FacetEnabled,
		["DefaultValue"] = DefaultValue,
		["ReturnEnabled"] = ReturnEnabled,
		["SearchEnabled"] = SearchEnabled,
	}
	M.AssertIntArrayOptions(t)
	return t
end

local TextOptions_keys = { "AnalysisScheme" = true, "SourceField" = true, "DefaultValue" = true, "HighlightEnabled" = true, "SortEnabled" = true, "ReturnEnabled" = true, nil }

function M.AssertTextOptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TextOptions to be of type 'table'")
	if struct["AnalysisScheme"] then M.AssertWord(struct["AnalysisScheme"]) end
	if struct["SourceField"] then M.AssertFieldName(struct["SourceField"]) end
	if struct["DefaultValue"] then M.AssertFieldValue(struct["DefaultValue"]) end
	if struct["HighlightEnabled"] then M.AssertBoolean(struct["HighlightEnabled"]) end
	if struct["SortEnabled"] then M.AssertBoolean(struct["SortEnabled"]) end
	if struct["ReturnEnabled"] then M.AssertBoolean(struct["ReturnEnabled"]) end
	for k,_ in pairs(struct) do
		assert(TextOptions_keys[k], "TextOptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TextOptions
-- &lt;p&gt;Options for text field. Present if &lt;code&gt;IndexFieldType&lt;/code&gt; specifies the field is of type &lt;code&gt;text&lt;/code&gt;. A &lt;code&gt;text&lt;/code&gt; field is always searchable. All options are enabled by default.&lt;/p&gt;
-- @param AnalysisScheme [Word] &lt;p&gt;The name of an analysis scheme for a &lt;code&gt;text&lt;/code&gt; field.&lt;/p&gt;
-- @param SourceField [FieldName] &lt;p&gt;Options for text field. Present if &lt;code&gt;IndexFieldType&lt;/code&gt; specifies the field is of type &lt;code&gt;text&lt;/code&gt;. A &lt;code&gt;text&lt;/code&gt; field is always searchable. All options are enabled by default.&lt;/p&gt;
-- @param DefaultValue [FieldValue] A value to use for the field if the field isn't specified for a document.
-- @param HighlightEnabled [Boolean] &lt;p&gt;Whether highlights can be returned for the field.&lt;/p&gt;
-- @param SortEnabled [Boolean] &lt;p&gt;Whether the field can be used to sort the search results.&lt;/p&gt;
-- @param ReturnEnabled [Boolean] &lt;p&gt;Whether the contents of the field can be returned in the search results.&lt;/p&gt;
function M.TextOptions(AnalysisScheme, SourceField, DefaultValue, HighlightEnabled, SortEnabled, ReturnEnabled, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TextOptions")
	local t = { 
		["AnalysisScheme"] = AnalysisScheme,
		["SourceField"] = SourceField,
		["DefaultValue"] = DefaultValue,
		["HighlightEnabled"] = HighlightEnabled,
		["SortEnabled"] = SortEnabled,
		["ReturnEnabled"] = ReturnEnabled,
	}
	M.AssertTextOptions(t)
	return t
end

local IndexDocumentsRequest_keys = { "DomainName" = true, nil }

function M.AssertIndexDocumentsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IndexDocumentsRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["DomainName"] then M.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(IndexDocumentsRequest_keys[k], "IndexDocumentsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IndexDocumentsRequest
-- &lt;p&gt;Container for the parameters to the &lt;code&gt;&lt;a&gt;IndexDocuments&lt;/a&gt;&lt;/code&gt; operation. Specifies the name of the domain you want to re-index.&lt;/p&gt;
-- @param DomainName [DomainName] &lt;p&gt;Container for the parameters to the &lt;code&gt;&lt;a&gt;IndexDocuments&lt;/a&gt;&lt;/code&gt; operation. Specifies the name of the domain you want to re-index.&lt;/p&gt;
-- Required parameter: DomainName
function M.IndexDocumentsRequest(DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IndexDocumentsRequest")
	local t = { 
		["DomainName"] = DomainName,
	}
	M.AssertIndexDocumentsRequest(t)
	return t
end

local DescribeAvailabilityOptionsRequest_keys = { "Deployed" = true, "DomainName" = true, nil }

function M.AssertDescribeAvailabilityOptionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAvailabilityOptionsRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["Deployed"] then M.AssertBoolean(struct["Deployed"]) end
	if struct["DomainName"] then M.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(DescribeAvailabilityOptionsRequest_keys[k], "DescribeAvailabilityOptionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAvailabilityOptionsRequest
-- &lt;p&gt;Container for the parameters to the &lt;code&gt;&lt;a&gt;DescribeAvailabilityOptions&lt;/a&gt;&lt;/code&gt; operation. Specifies the name of the domain you want to describe. To show the active configuration and exclude any pending changes, set the Deployed option to &lt;code&gt;true&lt;/code&gt;.&lt;/p&gt;
-- @param Deployed [Boolean] &lt;p&gt;Whether to display the deployed configuration (&lt;code&gt;true&lt;/code&gt;) or include any pending changes (&lt;code&gt;false&lt;/code&gt;). Defaults to &lt;code&gt;false&lt;/code&gt;.&lt;/p&gt;
-- @param DomainName [DomainName] &lt;p&gt;The name of the domain you want to describe.&lt;/p&gt;
-- Required parameter: DomainName
function M.DescribeAvailabilityOptionsRequest(Deployed, DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAvailabilityOptionsRequest")
	local t = { 
		["Deployed"] = Deployed,
		["DomainName"] = DomainName,
	}
	M.AssertDescribeAvailabilityOptionsRequest(t)
	return t
end

local DefineIndexFieldResponse_keys = { "IndexField" = true, nil }

function M.AssertDefineIndexFieldResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DefineIndexFieldResponse to be of type 'table'")
	assert(struct["IndexField"], "Expected key IndexField to exist in table")
	if struct["IndexField"] then M.AssertIndexFieldStatus(struct["IndexField"]) end
	for k,_ in pairs(struct) do
		assert(DefineIndexFieldResponse_keys[k], "DefineIndexFieldResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DefineIndexFieldResponse
-- &lt;p&gt;The result of a &lt;code&gt;&lt;a&gt;DefineIndexField&lt;/a&gt;&lt;/code&gt; request. Contains the status of the newly-configured index field.&lt;/p&gt;
-- @param IndexField [IndexFieldStatus] &lt;p&gt;The result of a &lt;code&gt;&lt;a&gt;DefineIndexField&lt;/a&gt;&lt;/code&gt; request. Contains the status of the newly-configured index field.&lt;/p&gt;
-- Required parameter: IndexField
function M.DefineIndexFieldResponse(IndexField, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DefineIndexFieldResponse")
	local t = { 
		["IndexField"] = IndexField,
	}
	M.AssertDefineIndexFieldResponse(t)
	return t
end

local DescribeIndexFieldsResponse_keys = { "IndexFields" = true, nil }

function M.AssertDescribeIndexFieldsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeIndexFieldsResponse to be of type 'table'")
	assert(struct["IndexFields"], "Expected key IndexFields to exist in table")
	if struct["IndexFields"] then M.AssertIndexFieldStatusList(struct["IndexFields"]) end
	for k,_ in pairs(struct) do
		assert(DescribeIndexFieldsResponse_keys[k], "DescribeIndexFieldsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeIndexFieldsResponse
-- &lt;p&gt;The result of a &lt;code&gt;DescribeIndexFields&lt;/code&gt; request. Contains the index fields configured for the domain specified in the request.&lt;/p&gt;
-- @param IndexFields [IndexFieldStatusList] &lt;p&gt;The index fields configured for the domain.&lt;/p&gt;
-- Required parameter: IndexFields
function M.DescribeIndexFieldsResponse(IndexFields, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeIndexFieldsResponse")
	local t = { 
		["IndexFields"] = IndexFields,
	}
	M.AssertDescribeIndexFieldsResponse(t)
	return t
end

local DoubleArrayOptions_keys = { "SourceFields" = true, "FacetEnabled" = true, "DefaultValue" = true, "ReturnEnabled" = true, "SearchEnabled" = true, nil }

function M.AssertDoubleArrayOptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DoubleArrayOptions to be of type 'table'")
	if struct["SourceFields"] then M.AssertFieldNameCommaList(struct["SourceFields"]) end
	if struct["FacetEnabled"] then M.AssertBoolean(struct["FacetEnabled"]) end
	if struct["DefaultValue"] then M.AssertDouble(struct["DefaultValue"]) end
	if struct["ReturnEnabled"] then M.AssertBoolean(struct["ReturnEnabled"]) end
	if struct["SearchEnabled"] then M.AssertBoolean(struct["SearchEnabled"]) end
	for k,_ in pairs(struct) do
		assert(DoubleArrayOptions_keys[k], "DoubleArrayOptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DoubleArrayOptions
-- &lt;p&gt;Options for a field that contains an array of double-precision 64-bit floating point values. Present if &lt;code&gt;IndexFieldType&lt;/code&gt; specifies the field is of type &lt;code&gt;double-array&lt;/code&gt;. All options are enabled by default.&lt;/p&gt;
-- @param SourceFields [FieldNameCommaList] &lt;p&gt;A list of source fields to map to the field. &lt;/p&gt;
-- @param FacetEnabled [Boolean] &lt;p&gt;Whether facet information can be returned for the field.&lt;/p&gt;
-- @param DefaultValue [Double] A value to use for the field if the field isn't specified for a document.
-- @param ReturnEnabled [Boolean] &lt;p&gt;Whether the contents of the field can be returned in the search results.&lt;/p&gt;
-- @param SearchEnabled [Boolean] &lt;p&gt;Whether the contents of the field are searchable.&lt;/p&gt;
function M.DoubleArrayOptions(SourceFields, FacetEnabled, DefaultValue, ReturnEnabled, SearchEnabled, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DoubleArrayOptions")
	local t = { 
		["SourceFields"] = SourceFields,
		["FacetEnabled"] = FacetEnabled,
		["DefaultValue"] = DefaultValue,
		["ReturnEnabled"] = ReturnEnabled,
		["SearchEnabled"] = SearchEnabled,
	}
	M.AssertDoubleArrayOptions(t)
	return t
end

local DescribeDomainsRequest_keys = { "DomainNames" = true, nil }

function M.AssertDescribeDomainsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDomainsRequest to be of type 'table'")
	if struct["DomainNames"] then M.AssertDomainNameList(struct["DomainNames"]) end
	for k,_ in pairs(struct) do
		assert(DescribeDomainsRequest_keys[k], "DescribeDomainsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDomainsRequest
-- &lt;p&gt;Container for the parameters to the &lt;code&gt;&lt;a&gt;DescribeDomains&lt;/a&gt;&lt;/code&gt; operation. By default shows the status of all domains. To restrict the response to particular domains, specify the names of the domains you want to describe.&lt;/p&gt;
-- @param DomainNames [DomainNameList] &lt;p&gt;The names of the domains you want to include in the response.&lt;/p&gt;
function M.DescribeDomainsRequest(DomainNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDomainsRequest")
	local t = { 
		["DomainNames"] = DomainNames,
	}
	M.AssertDescribeDomainsRequest(t)
	return t
end

local UpdateAvailabilityOptionsRequest_keys = { "MultiAZ" = true, "DomainName" = true, nil }

function M.AssertUpdateAvailabilityOptionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateAvailabilityOptionsRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["MultiAZ"], "Expected key MultiAZ to exist in table")
	if struct["MultiAZ"] then M.AssertBoolean(struct["MultiAZ"]) end
	if struct["DomainName"] then M.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(UpdateAvailabilityOptionsRequest_keys[k], "UpdateAvailabilityOptionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateAvailabilityOptionsRequest
-- &lt;p&gt;Container for the parameters to the &lt;code&gt;&lt;a&gt;UpdateAvailabilityOptions&lt;/a&gt;&lt;/code&gt; operation. Specifies the name of the domain you want to update and the Multi-AZ availability option.&lt;/p&gt;
-- @param MultiAZ [Boolean] &lt;p&gt;You expand an existing search domain to a second Availability Zone by setting the Multi-AZ option to true. Similarly, you can turn off the Multi-AZ option to downgrade the domain to a single Availability Zone by setting the Multi-AZ option to &lt;code&gt;false&lt;/code&gt;. &lt;/p&gt;
-- @param DomainName [DomainName] &lt;p&gt;Container for the parameters to the &lt;code&gt;&lt;a&gt;UpdateAvailabilityOptions&lt;/a&gt;&lt;/code&gt; operation. Specifies the name of the domain you want to update and the Multi-AZ availability option.&lt;/p&gt;
-- Required parameter: DomainName
-- Required parameter: MultiAZ
function M.UpdateAvailabilityOptionsRequest(MultiAZ, DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateAvailabilityOptionsRequest")
	local t = { 
		["MultiAZ"] = MultiAZ,
		["DomainName"] = DomainName,
	}
	M.AssertUpdateAvailabilityOptionsRequest(t)
	return t
end

local BuildSuggestersResponse_keys = { "FieldNames" = true, nil }

function M.AssertBuildSuggestersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BuildSuggestersResponse to be of type 'table'")
	if struct["FieldNames"] then M.AssertFieldNameList(struct["FieldNames"]) end
	for k,_ in pairs(struct) do
		assert(BuildSuggestersResponse_keys[k], "BuildSuggestersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BuildSuggestersResponse
-- &lt;p&gt;The result of a &lt;code&gt;BuildSuggester&lt;/code&gt; request. Contains a list of the fields used for suggestions.&lt;/p&gt;
-- @param FieldNames [FieldNameList] &lt;p&gt;The result of a &lt;code&gt;BuildSuggester&lt;/code&gt; request. Contains a list of the fields used for suggestions.&lt;/p&gt;
function M.BuildSuggestersResponse(FieldNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BuildSuggestersResponse")
	local t = { 
		["FieldNames"] = FieldNames,
	}
	M.AssertBuildSuggestersResponse(t)
	return t
end

local IntOptions_keys = { "SourceField" = true, "DefaultValue" = true, "FacetEnabled" = true, "SearchEnabled" = true, "SortEnabled" = true, "ReturnEnabled" = true, nil }

function M.AssertIntOptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IntOptions to be of type 'table'")
	if struct["SourceField"] then M.AssertFieldName(struct["SourceField"]) end
	if struct["DefaultValue"] then M.AssertLong(struct["DefaultValue"]) end
	if struct["FacetEnabled"] then M.AssertBoolean(struct["FacetEnabled"]) end
	if struct["SearchEnabled"] then M.AssertBoolean(struct["SearchEnabled"]) end
	if struct["SortEnabled"] then M.AssertBoolean(struct["SortEnabled"]) end
	if struct["ReturnEnabled"] then M.AssertBoolean(struct["ReturnEnabled"]) end
	for k,_ in pairs(struct) do
		assert(IntOptions_keys[k], "IntOptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IntOptions
-- &lt;p&gt;Options for a 64-bit signed integer field. Present if &lt;code&gt;IndexFieldType&lt;/code&gt; specifies the field is of type &lt;code&gt;int&lt;/code&gt;. All options are enabled by default.&lt;/p&gt;
-- @param SourceField [FieldName] &lt;p&gt;The name of the source field to map to the field. &lt;/p&gt;
-- @param DefaultValue [Long] A value to use for the field if the field isn't specified for a document. This can be important if you are using the field in an expression and that field is not present in every document.
-- @param FacetEnabled [Boolean] &lt;p&gt;Whether facet information can be returned for the field.&lt;/p&gt;
-- @param SearchEnabled [Boolean] &lt;p&gt;Whether the contents of the field are searchable.&lt;/p&gt;
-- @param SortEnabled [Boolean] &lt;p&gt;Whether the field can be used to sort the search results.&lt;/p&gt;
-- @param ReturnEnabled [Boolean] &lt;p&gt;Whether the contents of the field can be returned in the search results.&lt;/p&gt;
function M.IntOptions(SourceField, DefaultValue, FacetEnabled, SearchEnabled, SortEnabled, ReturnEnabled, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IntOptions")
	local t = { 
		["SourceField"] = SourceField,
		["DefaultValue"] = DefaultValue,
		["FacetEnabled"] = FacetEnabled,
		["SearchEnabled"] = SearchEnabled,
		["SortEnabled"] = SortEnabled,
		["ReturnEnabled"] = ReturnEnabled,
	}
	M.AssertIntOptions(t)
	return t
end

local DescribeSuggestersResponse_keys = { "Suggesters" = true, nil }

function M.AssertDescribeSuggestersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSuggestersResponse to be of type 'table'")
	assert(struct["Suggesters"], "Expected key Suggesters to exist in table")
	if struct["Suggesters"] then M.AssertSuggesterStatusList(struct["Suggesters"]) end
	for k,_ in pairs(struct) do
		assert(DescribeSuggestersResponse_keys[k], "DescribeSuggestersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSuggestersResponse
-- &lt;p&gt;The result of a &lt;code&gt;DescribeSuggesters&lt;/code&gt; request.&lt;/p&gt;
-- @param Suggesters [SuggesterStatusList] &lt;p&gt;The suggesters configured for the domain specified in the request.&lt;/p&gt;
-- Required parameter: Suggesters
function M.DescribeSuggestersResponse(Suggesters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeSuggestersResponse")
	local t = { 
		["Suggesters"] = Suggesters,
	}
	M.AssertDescribeSuggestersResponse(t)
	return t
end

function M.AssertOptionState(str)
	assert(str)
	assert(type(str) == "string", "Expected OptionState to be of type 'string'")
end

-- &lt;p&gt;The state of processing a change to an option. One of:&lt;/p&gt; &lt;ul&gt; &lt;li&gt;RequiresIndexDocuments: The option's latest value will not be deployed until &lt;a&gt;IndexDocuments&lt;/a&gt; has been called and indexing is complete.&lt;/li&gt; &lt;li&gt;Processing: The option's latest value is in the process of being activated.&lt;/li&gt; &lt;li&gt;Active: The option's latest value is fully deployed. &lt;/li&gt; &lt;li&gt;FailedToValidate: The option value is not compatible with the domain's data and cannot be used to index the data. You must either modify the option value or update or remove the incompatible documents.&lt;/li&gt; &lt;/ul&gt;
function M.OptionState(str)
	M.AssertOptionState(str)
	return str
end

function M.AssertPolicyDocument(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyDocument to be of type 'string'")
end

-- &lt;p&gt;Access rules for a domain's document or search service endpoints. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-access.html&quot; target=&quot;_blank&quot;&gt;Configuring Access for a Search Domain&lt;/a&gt; in the &lt;i&gt;Amazon CloudSearch Developer Guide&lt;/i&gt;. The maximum size of a policy document is 100 KB.&lt;/p&gt;
function M.PolicyDocument(str)
	M.AssertPolicyDocument(str)
	return str
end

function M.AssertFieldName(str)
	assert(str)
	assert(type(str) == "string", "Expected FieldName to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[a-z][a-z0-9_]*"), "Expected string to match pattern '[a-z][a-z0-9_]*'")
end

-- &lt;p&gt;A string that represents the name of an index field. CloudSearch supports regular index fields as well as dynamic fields. A dynamic field's name defines a pattern that begins or ends with a wildcard. Any document fields that don't map to a regular index field but do match a dynamic field's pattern are configured with the dynamic field's indexing options. &lt;/p&gt; &lt;p&gt;Regular field names begin with a letter and can contain the following characters: a-z (lowercase), 0-9, and _ (underscore). Dynamic field names must begin or end with a wildcard (*). The wildcard can also be the only character in a dynamic field name. Multiple wildcards, and wildcards embedded within a string are not supported. &lt;/p&gt; &lt;p&gt;The name &lt;code&gt;score&lt;/code&gt; is reserved and cannot be used as a field name. To reference a document's ID, you can use the name &lt;code&gt;_id&lt;/code&gt;. &lt;/p&gt;
function M.FieldName(str)
	M.AssertFieldName(str)
	return str
end

function M.AssertAlgorithmicStemming(str)
	assert(str)
	assert(type(str) == "string", "Expected AlgorithmicStemming to be of type 'string'")
end

--  
function M.AlgorithmicStemming(str)
	M.AssertAlgorithmicStemming(str)
	return str
end

function M.AssertSuggesterFuzzyMatching(str)
	assert(str)
	assert(type(str) == "string", "Expected SuggesterFuzzyMatching to be of type 'string'")
end

--  
function M.SuggesterFuzzyMatching(str)
	M.AssertSuggesterFuzzyMatching(str)
	return str
end

function M.AssertDomainName(str)
	assert(str)
	assert(type(str) == "string", "Expected DomainName to be of type 'string'")
	assert(#str <= 28, "Expected string to be max 28 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
	assert(str:match("[a-z][a-z0-9%-]+"), "Expected string to match pattern '[a-z][a-z0-9%-]+'")
end

-- &lt;p&gt;A string that represents the name of a domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).&lt;/p&gt;
function M.DomainName(str)
	M.AssertDomainName(str)
	return str
end

function M.AssertAPIVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected APIVersion to be of type 'string'")
end

-- &lt;p&gt;The Amazon CloudSearch API version for a domain: 2011-02-01 or 2013-01-01.&lt;/p&gt;
function M.APIVersion(str)
	M.AssertAPIVersion(str)
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

function M.AssertFieldNameCommaList(str)
	assert(str)
	assert(type(str) == "string", "Expected FieldNameCommaList to be of type 'string'")
	assert(str:match("%s*[a-z*][a-z0-9_]*%*?%s*(,%s*[a-z*][a-z0-9_]*%*?%s*)*"), "Expected string to match pattern '%s*[a-z*][a-z0-9_]*%*?%s*(,%s*[a-z*][a-z0-9_]*%*?%s*)*'")
end

--  
function M.FieldNameCommaList(str)
	M.AssertFieldNameCommaList(str)
	return str
end

function M.AssertServiceUrl(str)
	assert(str)
	assert(type(str) == "string", "Expected ServiceUrl to be of type 'string'")
end

-- &lt;p&gt;The endpoint to which service requests can be submitted. For example, &lt;code&gt;search-imdb-movies-oopcnjfn6ugofer3zx5iadxxca.eu-west-1.cloudsearch.amazonaws.com&lt;/code&gt; or &lt;code&gt;doc-imdb-movies-oopcnjfn6ugofer3zx5iadxxca.eu-west-1.cloudsearch.amazonaws.com&lt;/code&gt;.&lt;/p&gt;
function M.ServiceUrl(str)
	M.AssertServiceUrl(str)
	return str
end

function M.AssertErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorMessage to be of type 'string'")
end

-- &lt;p&gt;A human-readable string error or warning message.&lt;/p&gt;
function M.ErrorMessage(str)
	M.AssertErrorMessage(str)
	return str
end

function M.AssertDomainId(str)
	assert(str)
	assert(type(str) == "string", "Expected DomainId to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

-- &lt;p&gt;An internally generated unique identifier for a domain.&lt;/p&gt;
function M.DomainId(str)
	M.AssertDomainId(str)
	return str
end

function M.AssertWord(str)
	assert(str)
	assert(type(str) == "string", "Expected Word to be of type 'string'")
	assert(str:match("[%S]+"), "Expected string to match pattern '[%S]+'")
end

--  
function M.Word(str)
	M.AssertWord(str)
	return str
end

function M.AssertExpressionValue(str)
	assert(str)
	assert(type(str) == "string", "Expected ExpressionValue to be of type 'string'")
	assert(#str <= 10240, "Expected string to be max 10240 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

-- &lt;p&gt;The expression to evaluate for sorting while processing a search request. The &lt;code&gt;Expression&lt;/code&gt; syntax is based on JavaScript expressions. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html&quot; target=&quot;_blank&quot;&gt;Configuring Expressions&lt;/a&gt; in the &lt;i&gt;Amazon CloudSearch Developer Guide&lt;/i&gt;.&lt;/p&gt;
function M.ExpressionValue(str)
	M.AssertExpressionValue(str)
	return str
end

function M.AssertSearchInstanceType(str)
	assert(str)
	assert(type(str) == "string", "Expected SearchInstanceType to be of type 'string'")
end

-- &lt;p&gt;The instance type (such as &lt;code&gt;search.m1.small&lt;/code&gt;) that is being used to process search requests.&lt;/p&gt;
function M.SearchInstanceType(str)
	M.AssertSearchInstanceType(str)
	return str
end

function M.AssertErrorCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorCode to be of type 'string'")
end

-- &lt;p&gt;A machine-parsable string error or warning code.&lt;/p&gt;
function M.ErrorCode(str)
	M.AssertErrorCode(str)
	return str
end

function M.AssertIndexFieldType(str)
	assert(str)
	assert(type(str) == "string", "Expected IndexFieldType to be of type 'string'")
end

-- &lt;p&gt;The type of field. The valid options for a field depend on the field type. For more information about the supported field types, see &lt;a href=&quot;http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-index-fields.html&quot; target=&quot;_blank&quot;&gt;Configuring Index Fields&lt;/a&gt; in the &lt;i&gt;Amazon CloudSearch Developer Guide&lt;/i&gt;.&lt;/p&gt;
function M.IndexFieldType(str)
	M.AssertIndexFieldType(str)
	return str
end

function M.AssertStandardName(str)
	assert(str)
	assert(type(str) == "string", "Expected StandardName to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[a-z][a-z0-9_]*"), "Expected string to match pattern '[a-z][a-z0-9_]*'")
end

-- &lt;p&gt;Names must begin with a letter and can contain the following characters: a-z (lowercase), 0-9, and _ (underscore).&lt;/p&gt;
function M.StandardName(str)
	M.AssertStandardName(str)
	return str
end

function M.AssertAnalysisSchemeLanguage(str)
	assert(str)
	assert(type(str) == "string", "Expected AnalysisSchemeLanguage to be of type 'string'")
end

-- &lt;p&gt;An &lt;a href=&quot;http://tools.ietf.org/html/rfc4646&quot; target=&quot;_blank&quot;&gt;IETF RFC 4646&lt;/a&gt; language code or &lt;code&gt;mul&lt;/code&gt; for multiple languages.&lt;/p&gt;
function M.AnalysisSchemeLanguage(str)
	M.AssertAnalysisSchemeLanguage(str)
	return str
end

function M.AssertFieldValue(str)
	assert(str)
	assert(type(str) == "string", "Expected FieldValue to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

-- &lt;p&gt;The value of a field attribute.&lt;/p&gt;
function M.FieldValue(str)
	M.AssertFieldValue(str)
	return str
end

function M.AssertDynamicFieldName(str)
	assert(str)
	assert(type(str) == "string", "Expected DynamicFieldName to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("([a-z][a-z0-9_]*%*?|%*[a-z0-9_]*)"), "Expected string to match pattern '([a-z][a-z0-9_]*%*?|%*[a-z0-9_]*)'")
end

--  
function M.DynamicFieldName(str)
	M.AssertDynamicFieldName(str)
	return str
end

function M.AssertPartitionInstanceType(str)
	assert(str)
	assert(type(str) == "string", "Expected PartitionInstanceType to be of type 'string'")
end

-- &lt;p&gt;The instance type (such as &lt;code&gt;search.m1.small&lt;/code&gt;) on which an index partition is hosted.&lt;/p&gt;
function M.PartitionInstanceType(str)
	M.AssertPartitionInstanceType(str)
	return str
end

function M.AssertARN(str)
	assert(str)
	assert(type(str) == "string", "Expected ARN to be of type 'string'")
end

-- &lt;p&gt;The Amazon Resource Name (ARN) of the search domain. See &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/index.html?Using_Identifiers.html&quot; target=&quot;_blank&quot;&gt;Identifiers for IAM Entities&lt;/a&gt; in &lt;i&gt;Using AWS Identity and Access Management&lt;/i&gt; for more information.&lt;/p&gt;
function M.ARN(str)
	M.AssertARN(str)
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

function M.AssertUIntValue(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected UIntValue to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.UIntValue(integer)
	M.AssertUIntValue(integer)
	return integer
end

function M.AssertPartitionCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PartitionCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.PartitionCount(integer)
	M.AssertPartitionCount(integer)
	return integer
end

function M.AssertMaximumReplicationCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaximumReplicationCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaximumReplicationCount(integer)
	M.AssertMaximumReplicationCount(integer)
	return integer
end

function M.AssertMaximumPartitionCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaximumPartitionCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaximumPartitionCount(integer)
	M.AssertMaximumPartitionCount(integer)
	return integer
end

function M.AssertInstanceCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected InstanceCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.InstanceCount(integer)
	M.AssertInstanceCount(integer)
	return integer
end

function M.AssertMultiAZ(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected MultiAZ to be of type 'boolean'")
end

function M.MultiAZ(boolean)
	M.AssertMultiAZ(boolean)
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

function M.AssertDomainNameMap(map)
	assert(map)
	assert(type(map) == "table", "Expected DomainNameMap to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertDomainName(k)
		M.AssertAPIVersion(v)
	end
end

function M.DomainNameMap(map)
	M.AssertDomainNameMap(map)
	return map
end

function M.AssertUpdateTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected UpdateTimestamp to be of type 'string'")
end

function M.UpdateTimestamp(timestamp)
	M.AssertUpdateTimestamp(timestamp)
	return timestamp
end

function M.AssertAnalysisSchemeStatusList(list)
	assert(list)
	assert(type(list) == "table", "Expected AnalysisSchemeStatusList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAnalysisSchemeStatus(v)
	end
end

-- &lt;p&gt;A list of the analysis schemes configured for a domain.&lt;/p&gt;
-- List of AnalysisSchemeStatus objects
function M.AnalysisSchemeStatusList(list)
	M.AssertAnalysisSchemeStatusList(list)
	return list
end

function M.AssertIndexFieldStatusList(list)
	assert(list)
	assert(type(list) == "table", "Expected IndexFieldStatusList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertIndexFieldStatus(v)
	end
end

-- &lt;p&gt;Contains the status of multiple index fields.&lt;/p&gt;
-- List of IndexFieldStatus objects
function M.IndexFieldStatusList(list)
	M.AssertIndexFieldStatusList(list)
	return list
end

function M.AssertDomainNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected DomainNameList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDomainName(v)
	end
end

-- &lt;p&gt;A list of domain names.&lt;/p&gt;
-- List of DomainName objects
function M.DomainNameList(list)
	M.AssertDomainNameList(list)
	return list
end

function M.AssertDomainStatusList(list)
	assert(list)
	assert(type(list) == "table", "Expected DomainStatusList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDomainStatus(v)
	end
end

-- &lt;p&gt;A list that contains the status of each requested domain.&lt;/p&gt;
-- List of DomainStatus objects
function M.DomainStatusList(list)
	M.AssertDomainStatusList(list)
	return list
end

function M.AssertFieldNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected FieldNameList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertFieldName(v)
	end
end

-- &lt;p&gt;A list of field names.&lt;/p&gt;
-- List of FieldName objects
function M.FieldNameList(list)
	M.AssertFieldNameList(list)
	return list
end

function M.AssertStandardNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected StandardNameList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertStandardName(v)
	end
end

--  
-- List of StandardName objects
function M.StandardNameList(list)
	M.AssertStandardNameList(list)
	return list
end

function M.AssertDynamicFieldNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected DynamicFieldNameList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDynamicFieldName(v)
	end
end

--  
-- List of DynamicFieldName objects
function M.DynamicFieldNameList(list)
	M.AssertDynamicFieldNameList(list)
	return list
end

function M.AssertExpressionStatusList(list)
	assert(list)
	assert(type(list) == "table", "Expected ExpressionStatusList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertExpressionStatus(v)
	end
end

-- &lt;p&gt;Contains the status of multiple expressions.&lt;/p&gt;
-- List of ExpressionStatus objects
function M.ExpressionStatusList(list)
	M.AssertExpressionStatusList(list)
	return list
end

function M.AssertSuggesterStatusList(list)
	assert(list)
	assert(type(list) == "table", "Expected SuggesterStatusList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertSuggesterStatus(v)
	end
end

-- &lt;p&gt;Contains the status of multiple suggesters.&lt;/p&gt;
-- List of SuggesterStatus objects
function M.SuggesterStatusList(list)
	M.AssertSuggesterStatusList(list)
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
			return "cloudsearch.amazonaws.com"
		end
	end
	local ss = { "cloudsearch" }
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
--- DescribeServiceAccessPolicies
-- @param DescribeServiceAccessPoliciesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeServiceAccessPoliciesAsync(DescribeServiceAccessPoliciesRequest, cb)
	assert(DescribeServiceAccessPoliciesRequest, "You must provide a DescribeServiceAccessPoliciesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeServiceAccessPolicies",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeServiceAccessPoliciesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateScalingParameters
-- @param UpdateScalingParametersRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateScalingParametersAsync(UpdateScalingParametersRequest, cb)
	assert(UpdateScalingParametersRequest, "You must provide a UpdateScalingParametersRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateScalingParameters",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateScalingParametersRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeDomains
-- @param DescribeDomainsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDomainsAsync(DescribeDomainsRequest, cb)
	assert(DescribeDomainsRequest, "You must provide a DescribeDomainsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeDomains",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeDomainsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeScalingParameters
-- @param DescribeScalingParametersRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeScalingParametersAsync(DescribeScalingParametersRequest, cb)
	assert(DescribeScalingParametersRequest, "You must provide a DescribeScalingParametersRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeScalingParameters",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeScalingParametersRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeExpressions
-- @param DescribeExpressionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeExpressionsAsync(DescribeExpressionsRequest, cb)
	assert(DescribeExpressionsRequest, "You must provide a DescribeExpressionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeExpressions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeExpressionsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeIndexFields
-- @param DescribeIndexFieldsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeIndexFieldsAsync(DescribeIndexFieldsRequest, cb)
	assert(DescribeIndexFieldsRequest, "You must provide a DescribeIndexFieldsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeIndexFields",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeIndexFieldsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListDomainNames
-- @param 
-- @param cb Callback function accepting two args: response, error_message
function M.ListDomainNamesAsync(, cb)
	assert(, "You must provide a ")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListDomainNames",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", , headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeAvailabilityOptions
-- @param DescribeAvailabilityOptionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeAvailabilityOptionsAsync(DescribeAvailabilityOptionsRequest, cb)
	assert(DescribeAvailabilityOptionsRequest, "You must provide a DescribeAvailabilityOptionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeAvailabilityOptions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeAvailabilityOptionsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DefineIndexField
-- @param DefineIndexFieldRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DefineIndexFieldAsync(DefineIndexFieldRequest, cb)
	assert(DefineIndexFieldRequest, "You must provide a DefineIndexFieldRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DefineIndexField",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DefineIndexFieldRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteAnalysisScheme
-- @param DeleteAnalysisSchemeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteAnalysisSchemeAsync(DeleteAnalysisSchemeRequest, cb)
	assert(DeleteAnalysisSchemeRequest, "You must provide a DeleteAnalysisSchemeRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteAnalysisScheme",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteAnalysisSchemeRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateAvailabilityOptions
-- @param UpdateAvailabilityOptionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateAvailabilityOptionsAsync(UpdateAvailabilityOptionsRequest, cb)
	assert(UpdateAvailabilityOptionsRequest, "You must provide a UpdateAvailabilityOptionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateAvailabilityOptions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateAvailabilityOptionsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteExpression
-- @param DeleteExpressionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteExpressionAsync(DeleteExpressionRequest, cb)
	assert(DeleteExpressionRequest, "You must provide a DeleteExpressionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteExpression",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteExpressionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeAnalysisSchemes
-- @param DescribeAnalysisSchemesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeAnalysisSchemesAsync(DescribeAnalysisSchemesRequest, cb)
	assert(DescribeAnalysisSchemesRequest, "You must provide a DescribeAnalysisSchemesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeAnalysisSchemes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeAnalysisSchemesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DefineSuggester
-- @param DefineSuggesterRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DefineSuggesterAsync(DefineSuggesterRequest, cb)
	assert(DefineSuggesterRequest, "You must provide a DefineSuggesterRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DefineSuggester",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DefineSuggesterRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateDomain
-- @param CreateDomainRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDomainAsync(CreateDomainRequest, cb)
	assert(CreateDomainRequest, "You must provide a CreateDomainRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateDomain",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateDomainRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- IndexDocuments
-- @param IndexDocumentsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.IndexDocumentsAsync(IndexDocumentsRequest, cb)
	assert(IndexDocumentsRequest, "You must provide a IndexDocumentsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".IndexDocuments",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", IndexDocumentsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeSuggesters
-- @param DescribeSuggestersRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeSuggestersAsync(DescribeSuggestersRequest, cb)
	assert(DescribeSuggestersRequest, "You must provide a DescribeSuggestersRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeSuggesters",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeSuggestersRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateServiceAccessPolicies
-- @param UpdateServiceAccessPoliciesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateServiceAccessPoliciesAsync(UpdateServiceAccessPoliciesRequest, cb)
	assert(UpdateServiceAccessPoliciesRequest, "You must provide a UpdateServiceAccessPoliciesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateServiceAccessPolicies",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateServiceAccessPoliciesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteIndexField
-- @param DeleteIndexFieldRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteIndexFieldAsync(DeleteIndexFieldRequest, cb)
	assert(DeleteIndexFieldRequest, "You must provide a DeleteIndexFieldRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteIndexField",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteIndexFieldRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DefineAnalysisScheme
-- @param DefineAnalysisSchemeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DefineAnalysisSchemeAsync(DefineAnalysisSchemeRequest, cb)
	assert(DefineAnalysisSchemeRequest, "You must provide a DefineAnalysisSchemeRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DefineAnalysisScheme",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DefineAnalysisSchemeRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DefineExpression
-- @param DefineExpressionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DefineExpressionAsync(DefineExpressionRequest, cb)
	assert(DefineExpressionRequest, "You must provide a DefineExpressionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DefineExpression",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DefineExpressionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- BuildSuggesters
-- @param BuildSuggestersRequest
-- @param cb Callback function accepting two args: response, error_message
function M.BuildSuggestersAsync(BuildSuggestersRequest, cb)
	assert(BuildSuggestersRequest, "You must provide a BuildSuggestersRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".BuildSuggesters",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", BuildSuggestersRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteDomain
-- @param DeleteDomainRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDomainAsync(DeleteDomainRequest, cb)
	assert(DeleteDomainRequest, "You must provide a DeleteDomainRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteDomain",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteDomainRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteSuggester
-- @param DeleteSuggesterRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteSuggesterAsync(DeleteSuggesterRequest, cb)
	assert(DeleteSuggesterRequest, "You must provide a DeleteSuggesterRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteSuggester",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteSuggesterRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
