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

local keys = {}
local asserts = {}

keys.ExpressionStatus = { ["Status"] = true, ["Options"] = true, nil }

function asserts.AssertExpressionStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExpressionStatus to be of type 'table'")
	assert(struct["Options"], "Expected key Options to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["Status"] then asserts.AssertOptionStatus(struct["Status"]) end
	if struct["Options"] then asserts.AssertExpression(struct["Options"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExpressionStatus[k], "ExpressionStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExpressionStatus
-- <p>The value of an <code>Expression</code> and its current status.</p>
-- @param _Status [OptionStatus] 
-- @param _Options [Expression] <p>The expression that is evaluated for sorting while processing a search request.</p>
-- Required parameter: Options
-- Required parameter: Status
function M.ExpressionStatus(_Status, _Options, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExpressionStatus")
	local t = { 
		["Status"] = _Status,
		["Options"] = _Options,
	}
	asserts.AssertExpressionStatus(t)
	return t
end

keys.DescribeAnalysisSchemesResponse = { ["AnalysisSchemes"] = true, nil }

function asserts.AssertDescribeAnalysisSchemesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAnalysisSchemesResponse to be of type 'table'")
	assert(struct["AnalysisSchemes"], "Expected key AnalysisSchemes to exist in table")
	if struct["AnalysisSchemes"] then asserts.AssertAnalysisSchemeStatusList(struct["AnalysisSchemes"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAnalysisSchemesResponse[k], "DescribeAnalysisSchemesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAnalysisSchemesResponse
-- <p>The result of a <code>DescribeAnalysisSchemes</code> request. Contains the analysis schemes configured for the domain specified in the request.</p>
-- @param _AnalysisSchemes [AnalysisSchemeStatusList] <p>The analysis scheme descriptions.</p>
-- Required parameter: AnalysisSchemes
function M.DescribeAnalysisSchemesResponse(_AnalysisSchemes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAnalysisSchemesResponse")
	local t = { 
		["AnalysisSchemes"] = _AnalysisSchemes,
	}
	asserts.AssertDescribeAnalysisSchemesResponse(t)
	return t
end

keys.DeleteAnalysisSchemeRequest = { ["AnalysisSchemeName"] = true, ["DomainName"] = true, nil }

function asserts.AssertDeleteAnalysisSchemeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteAnalysisSchemeRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["AnalysisSchemeName"], "Expected key AnalysisSchemeName to exist in table")
	if struct["AnalysisSchemeName"] then asserts.AssertStandardName(struct["AnalysisSchemeName"]) end
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteAnalysisSchemeRequest[k], "DeleteAnalysisSchemeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteAnalysisSchemeRequest
-- <p>Container for the parameters to the <code><a>DeleteAnalysisScheme</a></code> operation. Specifies the name of the domain you want to update and the analysis scheme you want to delete. </p>
-- @param _AnalysisSchemeName [StandardName] <p>The name of the analysis scheme you want to delete.</p>
-- @param _DomainName [DomainName] 
-- Required parameter: DomainName
-- Required parameter: AnalysisSchemeName
function M.DeleteAnalysisSchemeRequest(_AnalysisSchemeName, _DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteAnalysisSchemeRequest")
	local t = { 
		["AnalysisSchemeName"] = _AnalysisSchemeName,
		["DomainName"] = _DomainName,
	}
	asserts.AssertDeleteAnalysisSchemeRequest(t)
	return t
end

keys.IndexDocumentsResponse = { ["FieldNames"] = true, nil }

function asserts.AssertIndexDocumentsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IndexDocumentsResponse to be of type 'table'")
	if struct["FieldNames"] then asserts.AssertFieldNameList(struct["FieldNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.IndexDocumentsResponse[k], "IndexDocumentsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IndexDocumentsResponse
-- <p>The result of an <code>IndexDocuments</code> request. Contains the status of the indexing operation, including the fields being indexed.</p>
-- @param _FieldNames [FieldNameList] <p>The names of the fields that are currently being indexed.</p>
function M.IndexDocumentsResponse(_FieldNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IndexDocumentsResponse")
	local t = { 
		["FieldNames"] = _FieldNames,
	}
	asserts.AssertIndexDocumentsResponse(t)
	return t
end

keys.UpdateServiceAccessPoliciesRequest = { ["AccessPolicies"] = true, ["DomainName"] = true, nil }

function asserts.AssertUpdateServiceAccessPoliciesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateServiceAccessPoliciesRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["AccessPolicies"], "Expected key AccessPolicies to exist in table")
	if struct["AccessPolicies"] then asserts.AssertPolicyDocument(struct["AccessPolicies"]) end
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateServiceAccessPoliciesRequest[k], "UpdateServiceAccessPoliciesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateServiceAccessPoliciesRequest
-- <p>Container for the parameters to the <code><a>UpdateServiceAccessPolicies</a></code> operation. Specifies the name of the domain you want to update and the access rules you want to configure.</p>
-- @param _AccessPolicies [PolicyDocument] <p>The access rules you want to configure. These rules replace any existing rules. </p>
-- @param _DomainName [DomainName] 
-- Required parameter: DomainName
-- Required parameter: AccessPolicies
function M.UpdateServiceAccessPoliciesRequest(_AccessPolicies, _DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateServiceAccessPoliciesRequest")
	local t = { 
		["AccessPolicies"] = _AccessPolicies,
		["DomainName"] = _DomainName,
	}
	asserts.AssertUpdateServiceAccessPoliciesRequest(t)
	return t
end

keys.DeleteIndexFieldResponse = { ["IndexField"] = true, nil }

function asserts.AssertDeleteIndexFieldResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteIndexFieldResponse to be of type 'table'")
	assert(struct["IndexField"], "Expected key IndexField to exist in table")
	if struct["IndexField"] then asserts.AssertIndexFieldStatus(struct["IndexField"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteIndexFieldResponse[k], "DeleteIndexFieldResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteIndexFieldResponse
-- <p>The result of a <code><a>DeleteIndexField</a></code> request.</p>
-- @param _IndexField [IndexFieldStatus] <p>The status of the index field being deleted.</p>
-- Required parameter: IndexField
function M.DeleteIndexFieldResponse(_IndexField, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteIndexFieldResponse")
	local t = { 
		["IndexField"] = _IndexField,
	}
	asserts.AssertDeleteIndexFieldResponse(t)
	return t
end

keys.DoubleOptions = { ["SourceField"] = true, ["DefaultValue"] = true, ["FacetEnabled"] = true, ["SearchEnabled"] = true, ["SortEnabled"] = true, ["ReturnEnabled"] = true, nil }

function asserts.AssertDoubleOptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DoubleOptions to be of type 'table'")
	if struct["SourceField"] then asserts.AssertFieldName(struct["SourceField"]) end
	if struct["DefaultValue"] then asserts.AssertDouble(struct["DefaultValue"]) end
	if struct["FacetEnabled"] then asserts.AssertBoolean(struct["FacetEnabled"]) end
	if struct["SearchEnabled"] then asserts.AssertBoolean(struct["SearchEnabled"]) end
	if struct["SortEnabled"] then asserts.AssertBoolean(struct["SortEnabled"]) end
	if struct["ReturnEnabled"] then asserts.AssertBoolean(struct["ReturnEnabled"]) end
	for k,_ in pairs(struct) do
		assert(keys.DoubleOptions[k], "DoubleOptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DoubleOptions
-- <p>Options for a double-precision 64-bit floating point field. Present if <code>IndexFieldType</code> specifies the field is of type <code>double</code>. All options are enabled by default.</p>
-- @param _SourceField [FieldName] <p>The name of the source field to map to the field. </p>
-- @param _DefaultValue [Double] <p>A value to use for the field if the field isn't specified for a document. This can be important if you are using the field in an expression and that field is not present in every document.</p>
-- @param _FacetEnabled [Boolean] <p>Whether facet information can be returned for the field.</p>
-- @param _SearchEnabled [Boolean] <p>Whether the contents of the field are searchable.</p>
-- @param _SortEnabled [Boolean] <p>Whether the field can be used to sort the search results.</p>
-- @param _ReturnEnabled [Boolean] <p>Whether the contents of the field can be returned in the search results.</p>
function M.DoubleOptions(_SourceField, _DefaultValue, _FacetEnabled, _SearchEnabled, _SortEnabled, _ReturnEnabled, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DoubleOptions")
	local t = { 
		["SourceField"] = _SourceField,
		["DefaultValue"] = _DefaultValue,
		["FacetEnabled"] = _FacetEnabled,
		["SearchEnabled"] = _SearchEnabled,
		["SortEnabled"] = _SortEnabled,
		["ReturnEnabled"] = _ReturnEnabled,
	}
	asserts.AssertDoubleOptions(t)
	return t
end

keys.ListDomainNamesResponse = { ["DomainNames"] = true, nil }

function asserts.AssertListDomainNamesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDomainNamesResponse to be of type 'table'")
	if struct["DomainNames"] then asserts.AssertDomainNameMap(struct["DomainNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDomainNamesResponse[k], "ListDomainNamesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDomainNamesResponse
-- <p>The result of a <code>ListDomainNames</code> request. Contains a list of the domains owned by an account.</p>
-- @param _DomainNames [DomainNameMap] <p>The names of the search domains owned by an account.</p>
function M.ListDomainNamesResponse(_DomainNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDomainNamesResponse")
	local t = { 
		["DomainNames"] = _DomainNames,
	}
	asserts.AssertListDomainNamesResponse(t)
	return t
end

keys.AnalysisSchemeStatus = { ["Status"] = true, ["Options"] = true, nil }

function asserts.AssertAnalysisSchemeStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AnalysisSchemeStatus to be of type 'table'")
	assert(struct["Options"], "Expected key Options to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["Status"] then asserts.AssertOptionStatus(struct["Status"]) end
	if struct["Options"] then asserts.AssertAnalysisScheme(struct["Options"]) end
	for k,_ in pairs(struct) do
		assert(keys.AnalysisSchemeStatus[k], "AnalysisSchemeStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AnalysisSchemeStatus
-- <p>The status and configuration of an <code>AnalysisScheme</code>.</p>
-- @param _Status [OptionStatus] 
-- @param _Options [AnalysisScheme] 
-- Required parameter: Options
-- Required parameter: Status
function M.AnalysisSchemeStatus(_Status, _Options, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AnalysisSchemeStatus")
	local t = { 
		["Status"] = _Status,
		["Options"] = _Options,
	}
	asserts.AssertAnalysisSchemeStatus(t)
	return t
end

keys.DateArrayOptions = { ["SourceFields"] = true, ["FacetEnabled"] = true, ["DefaultValue"] = true, ["ReturnEnabled"] = true, ["SearchEnabled"] = true, nil }

function asserts.AssertDateArrayOptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DateArrayOptions to be of type 'table'")
	if struct["SourceFields"] then asserts.AssertFieldNameCommaList(struct["SourceFields"]) end
	if struct["FacetEnabled"] then asserts.AssertBoolean(struct["FacetEnabled"]) end
	if struct["DefaultValue"] then asserts.AssertFieldValue(struct["DefaultValue"]) end
	if struct["ReturnEnabled"] then asserts.AssertBoolean(struct["ReturnEnabled"]) end
	if struct["SearchEnabled"] then asserts.AssertBoolean(struct["SearchEnabled"]) end
	for k,_ in pairs(struct) do
		assert(keys.DateArrayOptions[k], "DateArrayOptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DateArrayOptions
-- <p>Options for a field that contains an array of dates. Present if <code>IndexFieldType</code> specifies the field is of type <code>date-array</code>. All options are enabled by default.</p>
-- @param _SourceFields [FieldNameCommaList] <p>A list of source fields to map to the field. </p>
-- @param _FacetEnabled [Boolean] <p>Whether facet information can be returned for the field.</p>
-- @param _DefaultValue [FieldValue] A value to use for the field if the field isn't specified for a document.
-- @param _ReturnEnabled [Boolean] <p>Whether the contents of the field can be returned in the search results.</p>
-- @param _SearchEnabled [Boolean] <p>Whether the contents of the field are searchable.</p>
function M.DateArrayOptions(_SourceFields, _FacetEnabled, _DefaultValue, _ReturnEnabled, _SearchEnabled, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DateArrayOptions")
	local t = { 
		["SourceFields"] = _SourceFields,
		["FacetEnabled"] = _FacetEnabled,
		["DefaultValue"] = _DefaultValue,
		["ReturnEnabled"] = _ReturnEnabled,
		["SearchEnabled"] = _SearchEnabled,
	}
	asserts.AssertDateArrayOptions(t)
	return t
end

keys.DescribeDomainsResponse = { ["DomainStatusList"] = true, nil }

function asserts.AssertDescribeDomainsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDomainsResponse to be of type 'table'")
	assert(struct["DomainStatusList"], "Expected key DomainStatusList to exist in table")
	if struct["DomainStatusList"] then asserts.AssertDomainStatusList(struct["DomainStatusList"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDomainsResponse[k], "DescribeDomainsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDomainsResponse
-- <p>The result of a <code>DescribeDomains</code> request. Contains the status of the domains specified in the request or all domains owned by the account.</p>
-- @param _DomainStatusList [DomainStatusList] 
-- Required parameter: DomainStatusList
function M.DescribeDomainsResponse(_DomainStatusList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDomainsResponse")
	local t = { 
		["DomainStatusList"] = _DomainStatusList,
	}
	asserts.AssertDescribeDomainsResponse(t)
	return t
end

keys.AvailabilityOptionsStatus = { ["Status"] = true, ["Options"] = true, nil }

function asserts.AssertAvailabilityOptionsStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AvailabilityOptionsStatus to be of type 'table'")
	assert(struct["Options"], "Expected key Options to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["Status"] then asserts.AssertOptionStatus(struct["Status"]) end
	if struct["Options"] then asserts.AssertMultiAZ(struct["Options"]) end
	for k,_ in pairs(struct) do
		assert(keys.AvailabilityOptionsStatus[k], "AvailabilityOptionsStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AvailabilityOptionsStatus
-- <p>The status and configuration of the domain's availability options.</p>
-- @param _Status [OptionStatus] 
-- @param _Options [MultiAZ] <p>The availability options configured for the domain.</p>
-- Required parameter: Options
-- Required parameter: Status
function M.AvailabilityOptionsStatus(_Status, _Options, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AvailabilityOptionsStatus")
	local t = { 
		["Status"] = _Status,
		["Options"] = _Options,
	}
	asserts.AssertAvailabilityOptionsStatus(t)
	return t
end

keys.DescribeServiceAccessPoliciesRequest = { ["Deployed"] = true, ["DomainName"] = true, nil }

function asserts.AssertDescribeServiceAccessPoliciesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeServiceAccessPoliciesRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["Deployed"] then asserts.AssertBoolean(struct["Deployed"]) end
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeServiceAccessPoliciesRequest[k], "DescribeServiceAccessPoliciesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeServiceAccessPoliciesRequest
-- <p>Container for the parameters to the <code><a>DescribeServiceAccessPolicies</a></code> operation. Specifies the name of the domain you want to describe. To show the active configuration and exclude any pending changes, set the <code>Deployed</code> option to <code>true</code>.</p>
-- @param _Deployed [Boolean] <p>Whether to display the deployed configuration (<code>true</code>) or include any pending changes (<code>false</code>). Defaults to <code>false</code>.</p>
-- @param _DomainName [DomainName] <p>The name of the domain you want to describe.</p>
-- Required parameter: DomainName
function M.DescribeServiceAccessPoliciesRequest(_Deployed, _DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeServiceAccessPoliciesRequest")
	local t = { 
		["Deployed"] = _Deployed,
		["DomainName"] = _DomainName,
	}
	asserts.AssertDescribeServiceAccessPoliciesRequest(t)
	return t
end

keys.DefineExpressionRequest = { ["Expression"] = true, ["DomainName"] = true, nil }

function asserts.AssertDefineExpressionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DefineExpressionRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["Expression"], "Expected key Expression to exist in table")
	if struct["Expression"] then asserts.AssertExpression(struct["Expression"]) end
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DefineExpressionRequest[k], "DefineExpressionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DefineExpressionRequest
-- <p>Container for the parameters to the <code><a>DefineExpression</a></code> operation. Specifies the name of the domain you want to update and the expression you want to configure.</p>
-- @param _Expression [Expression] 
-- @param _DomainName [DomainName] 
-- Required parameter: DomainName
-- Required parameter: Expression
function M.DefineExpressionRequest(_Expression, _DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DefineExpressionRequest")
	local t = { 
		["Expression"] = _Expression,
		["DomainName"] = _DomainName,
	}
	asserts.AssertDefineExpressionRequest(t)
	return t
end

keys.DeleteIndexFieldRequest = { ["IndexFieldName"] = true, ["DomainName"] = true, nil }

function asserts.AssertDeleteIndexFieldRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteIndexFieldRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["IndexFieldName"], "Expected key IndexFieldName to exist in table")
	if struct["IndexFieldName"] then asserts.AssertDynamicFieldName(struct["IndexFieldName"]) end
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteIndexFieldRequest[k], "DeleteIndexFieldRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteIndexFieldRequest
-- <p>Container for the parameters to the <code><a>DeleteIndexField</a></code> operation. Specifies the name of the domain you want to update and the name of the index field you want to delete.</p>
-- @param _IndexFieldName [DynamicFieldName] <p>The name of the index field your want to remove from the domain's indexing options.</p>
-- @param _DomainName [DomainName] 
-- Required parameter: DomainName
-- Required parameter: IndexFieldName
function M.DeleteIndexFieldRequest(_IndexFieldName, _DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteIndexFieldRequest")
	local t = { 
		["IndexFieldName"] = _IndexFieldName,
		["DomainName"] = _DomainName,
	}
	asserts.AssertDeleteIndexFieldRequest(t)
	return t
end

keys.LiteralArrayOptions = { ["SourceFields"] = true, ["FacetEnabled"] = true, ["DefaultValue"] = true, ["ReturnEnabled"] = true, ["SearchEnabled"] = true, nil }

function asserts.AssertLiteralArrayOptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LiteralArrayOptions to be of type 'table'")
	if struct["SourceFields"] then asserts.AssertFieldNameCommaList(struct["SourceFields"]) end
	if struct["FacetEnabled"] then asserts.AssertBoolean(struct["FacetEnabled"]) end
	if struct["DefaultValue"] then asserts.AssertFieldValue(struct["DefaultValue"]) end
	if struct["ReturnEnabled"] then asserts.AssertBoolean(struct["ReturnEnabled"]) end
	if struct["SearchEnabled"] then asserts.AssertBoolean(struct["SearchEnabled"]) end
	for k,_ in pairs(struct) do
		assert(keys.LiteralArrayOptions[k], "LiteralArrayOptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LiteralArrayOptions
-- <p>Options for a field that contains an array of literal strings. Present if <code>IndexFieldType</code> specifies the field is of type <code>literal-array</code>. All options are enabled by default.</p>
-- @param _SourceFields [FieldNameCommaList] <p>A list of source fields to map to the field. </p>
-- @param _FacetEnabled [Boolean] <p>Whether facet information can be returned for the field.</p>
-- @param _DefaultValue [FieldValue] A value to use for the field if the field isn't specified for a document.
-- @param _ReturnEnabled [Boolean] <p>Whether the contents of the field can be returned in the search results.</p>
-- @param _SearchEnabled [Boolean] <p>Whether the contents of the field are searchable.</p>
function M.LiteralArrayOptions(_SourceFields, _FacetEnabled, _DefaultValue, _ReturnEnabled, _SearchEnabled, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LiteralArrayOptions")
	local t = { 
		["SourceFields"] = _SourceFields,
		["FacetEnabled"] = _FacetEnabled,
		["DefaultValue"] = _DefaultValue,
		["ReturnEnabled"] = _ReturnEnabled,
		["SearchEnabled"] = _SearchEnabled,
	}
	asserts.AssertLiteralArrayOptions(t)
	return t
end

keys.AccessPoliciesStatus = { ["Status"] = true, ["Options"] = true, nil }

function asserts.AssertAccessPoliciesStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccessPoliciesStatus to be of type 'table'")
	assert(struct["Options"], "Expected key Options to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["Status"] then asserts.AssertOptionStatus(struct["Status"]) end
	if struct["Options"] then asserts.AssertPolicyDocument(struct["Options"]) end
	for k,_ in pairs(struct) do
		assert(keys.AccessPoliciesStatus[k], "AccessPoliciesStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccessPoliciesStatus
-- <p>The configured access rules for the domain's document and search endpoints, and the current status of those rules.</p>
-- @param _Status [OptionStatus] 
-- @param _Options [PolicyDocument] 
-- Required parameter: Options
-- Required parameter: Status
function M.AccessPoliciesStatus(_Status, _Options, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AccessPoliciesStatus")
	local t = { 
		["Status"] = _Status,
		["Options"] = _Options,
	}
	asserts.AssertAccessPoliciesStatus(t)
	return t
end

keys.UpdateAvailabilityOptionsResponse = { ["AvailabilityOptions"] = true, nil }

function asserts.AssertUpdateAvailabilityOptionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateAvailabilityOptionsResponse to be of type 'table'")
	if struct["AvailabilityOptions"] then asserts.AssertAvailabilityOptionsStatus(struct["AvailabilityOptions"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateAvailabilityOptionsResponse[k], "UpdateAvailabilityOptionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateAvailabilityOptionsResponse
-- <p>The result of a <code>UpdateAvailabilityOptions</code> request. Contains the status of the domain's availability options. </p>
-- @param _AvailabilityOptions [AvailabilityOptionsStatus] <p>The newly-configured availability options. Indicates whether Multi-AZ is enabled for the domain. </p>
function M.UpdateAvailabilityOptionsResponse(_AvailabilityOptions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateAvailabilityOptionsResponse")
	local t = { 
		["AvailabilityOptions"] = _AvailabilityOptions,
	}
	asserts.AssertUpdateAvailabilityOptionsResponse(t)
	return t
end

keys.DefineExpressionResponse = { ["Expression"] = true, nil }

function asserts.AssertDefineExpressionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DefineExpressionResponse to be of type 'table'")
	assert(struct["Expression"], "Expected key Expression to exist in table")
	if struct["Expression"] then asserts.AssertExpressionStatus(struct["Expression"]) end
	for k,_ in pairs(struct) do
		assert(keys.DefineExpressionResponse[k], "DefineExpressionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DefineExpressionResponse
-- <p>The result of a <code>DefineExpression</code> request. Contains the status of the newly-configured expression.</p>
-- @param _Expression [ExpressionStatus] 
-- Required parameter: Expression
function M.DefineExpressionResponse(_Expression, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DefineExpressionResponse")
	local t = { 
		["Expression"] = _Expression,
	}
	asserts.AssertDefineExpressionResponse(t)
	return t
end

keys.DocumentSuggesterOptions = { ["SortExpression"] = true, ["FuzzyMatching"] = true, ["SourceField"] = true, nil }

function asserts.AssertDocumentSuggesterOptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DocumentSuggesterOptions to be of type 'table'")
	assert(struct["SourceField"], "Expected key SourceField to exist in table")
	if struct["SortExpression"] then asserts.AssertString(struct["SortExpression"]) end
	if struct["FuzzyMatching"] then asserts.AssertSuggesterFuzzyMatching(struct["FuzzyMatching"]) end
	if struct["SourceField"] then asserts.AssertFieldName(struct["SourceField"]) end
	for k,_ in pairs(struct) do
		assert(keys.DocumentSuggesterOptions[k], "DocumentSuggesterOptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DocumentSuggesterOptions
-- <p>Options for a search suggester.</p>
-- @param _SortExpression [String] <p>An expression that computes a score for each suggestion to control how they are sorted. The scores are rounded to the nearest integer, with a floor of 0 and a ceiling of 2^31-1. A document's relevance score is not computed for suggestions, so sort expressions cannot reference the <code>_score</code> value. To sort suggestions using a numeric field or existing expression, simply specify the name of the field or expression. If no expression is configured for the suggester, the suggestions are sorted with the closest matches listed first.</p>
-- @param _FuzzyMatching [SuggesterFuzzyMatching] <p>The level of fuzziness allowed when suggesting matches for a string: <code>none</code>, <code>low</code>, or <code>high</code>. With none, the specified string is treated as an exact prefix. With low, suggestions must differ from the specified string by no more than one character. With high, suggestions can differ by up to two characters. The default is none. </p>
-- @param _SourceField [FieldName] <p>The name of the index field you want to use for suggestions. </p>
-- Required parameter: SourceField
function M.DocumentSuggesterOptions(_SortExpression, _FuzzyMatching, _SourceField, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DocumentSuggesterOptions")
	local t = { 
		["SortExpression"] = _SortExpression,
		["FuzzyMatching"] = _FuzzyMatching,
		["SourceField"] = _SourceField,
	}
	asserts.AssertDocumentSuggesterOptions(t)
	return t
end

keys.DefineAnalysisSchemeResponse = { ["AnalysisScheme"] = true, nil }

function asserts.AssertDefineAnalysisSchemeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DefineAnalysisSchemeResponse to be of type 'table'")
	assert(struct["AnalysisScheme"], "Expected key AnalysisScheme to exist in table")
	if struct["AnalysisScheme"] then asserts.AssertAnalysisSchemeStatus(struct["AnalysisScheme"]) end
	for k,_ in pairs(struct) do
		assert(keys.DefineAnalysisSchemeResponse[k], "DefineAnalysisSchemeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DefineAnalysisSchemeResponse
-- <p>The result of a <code><a>DefineAnalysisScheme</a></code> request. Contains the status of the newly-configured analysis scheme.</p>
-- @param _AnalysisScheme [AnalysisSchemeStatus] 
-- Required parameter: AnalysisScheme
function M.DefineAnalysisSchemeResponse(_AnalysisScheme, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DefineAnalysisSchemeResponse")
	local t = { 
		["AnalysisScheme"] = _AnalysisScheme,
	}
	asserts.AssertDefineAnalysisSchemeResponse(t)
	return t
end

keys.DeleteDomainRequest = { ["DomainName"] = true, nil }

function asserts.AssertDeleteDomainRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDomainRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDomainRequest[k], "DeleteDomainRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDomainRequest
-- <p>Container for the parameters to the <code><a>DeleteDomain</a></code> operation. Specifies the name of the domain you want to delete.</p>
-- @param _DomainName [DomainName] <p>The name of the domain you want to permanently delete.</p>
-- Required parameter: DomainName
function M.DeleteDomainRequest(_DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDomainRequest")
	local t = { 
		["DomainName"] = _DomainName,
	}
	asserts.AssertDeleteDomainRequest(t)
	return t
end

keys.UpdateScalingParametersResponse = { ["ScalingParameters"] = true, nil }

function asserts.AssertUpdateScalingParametersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateScalingParametersResponse to be of type 'table'")
	assert(struct["ScalingParameters"], "Expected key ScalingParameters to exist in table")
	if struct["ScalingParameters"] then asserts.AssertScalingParametersStatus(struct["ScalingParameters"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateScalingParametersResponse[k], "UpdateScalingParametersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateScalingParametersResponse
-- <p>The result of a <code>UpdateScalingParameters</code> request. Contains the status of the newly-configured scaling parameters.</p>
-- @param _ScalingParameters [ScalingParametersStatus] 
-- Required parameter: ScalingParameters
function M.UpdateScalingParametersResponse(_ScalingParameters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateScalingParametersResponse")
	local t = { 
		["ScalingParameters"] = _ScalingParameters,
	}
	asserts.AssertUpdateScalingParametersResponse(t)
	return t
end

keys.SuggesterStatus = { ["Status"] = true, ["Options"] = true, nil }

function asserts.AssertSuggesterStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SuggesterStatus to be of type 'table'")
	assert(struct["Options"], "Expected key Options to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["Status"] then asserts.AssertOptionStatus(struct["Status"]) end
	if struct["Options"] then asserts.AssertSuggester(struct["Options"]) end
	for k,_ in pairs(struct) do
		assert(keys.SuggesterStatus[k], "SuggesterStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SuggesterStatus
-- <p>The value of a <code>Suggester</code> and its current status.</p>
-- @param _Status [OptionStatus] 
-- @param _Options [Suggester] 
-- Required parameter: Options
-- Required parameter: Status
function M.SuggesterStatus(_Status, _Options, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SuggesterStatus")
	local t = { 
		["Status"] = _Status,
		["Options"] = _Options,
	}
	asserts.AssertSuggesterStatus(t)
	return t
end

keys.DescribeScalingParametersRequest = { ["DomainName"] = true, nil }

function asserts.AssertDescribeScalingParametersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeScalingParametersRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeScalingParametersRequest[k], "DescribeScalingParametersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeScalingParametersRequest
-- <p>Container for the parameters to the <code><a>DescribeScalingParameters</a></code> operation. Specifies the name of the domain you want to describe. </p>
-- @param _DomainName [DomainName] 
-- Required parameter: DomainName
function M.DescribeScalingParametersRequest(_DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeScalingParametersRequest")
	local t = { 
		["DomainName"] = _DomainName,
	}
	asserts.AssertDescribeScalingParametersRequest(t)
	return t
end

keys.DeleteSuggesterResponse = { ["Suggester"] = true, nil }

function asserts.AssertDeleteSuggesterResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSuggesterResponse to be of type 'table'")
	assert(struct["Suggester"], "Expected key Suggester to exist in table")
	if struct["Suggester"] then asserts.AssertSuggesterStatus(struct["Suggester"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteSuggesterResponse[k], "DeleteSuggesterResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSuggesterResponse
-- <p>The result of a <code>DeleteSuggester</code> request. Contains the status of the deleted suggester.</p>
-- @param _Suggester [SuggesterStatus] <p>The status of the suggester being deleted.</p>
-- Required parameter: Suggester
function M.DeleteSuggesterResponse(_Suggester, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteSuggesterResponse")
	local t = { 
		["Suggester"] = _Suggester,
	}
	asserts.AssertDeleteSuggesterResponse(t)
	return t
end

keys.DeleteExpressionResponse = { ["Expression"] = true, nil }

function asserts.AssertDeleteExpressionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteExpressionResponse to be of type 'table'")
	assert(struct["Expression"], "Expected key Expression to exist in table")
	if struct["Expression"] then asserts.AssertExpressionStatus(struct["Expression"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteExpressionResponse[k], "DeleteExpressionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteExpressionResponse
-- <p>The result of a <code><a>DeleteExpression</a></code> request. Specifies the expression being deleted.</p>
-- @param _Expression [ExpressionStatus] <p>The status of the expression being deleted.</p>
-- Required parameter: Expression
function M.DeleteExpressionResponse(_Expression, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteExpressionResponse")
	local t = { 
		["Expression"] = _Expression,
	}
	asserts.AssertDeleteExpressionResponse(t)
	return t
end

keys.ScalingParameters = { ["DesiredPartitionCount"] = true, ["DesiredInstanceType"] = true, ["DesiredReplicationCount"] = true, nil }

function asserts.AssertScalingParameters(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScalingParameters to be of type 'table'")
	if struct["DesiredPartitionCount"] then asserts.AssertUIntValue(struct["DesiredPartitionCount"]) end
	if struct["DesiredInstanceType"] then asserts.AssertPartitionInstanceType(struct["DesiredInstanceType"]) end
	if struct["DesiredReplicationCount"] then asserts.AssertUIntValue(struct["DesiredReplicationCount"]) end
	for k,_ in pairs(struct) do
		assert(keys.ScalingParameters[k], "ScalingParameters contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScalingParameters
-- <p>The desired instance type and desired number of replicas of each index partition.</p>
-- @param _DesiredPartitionCount [UIntValue] <p>The number of partitions you want to preconfigure for your domain. Only valid when you select <code>m2.2xlarge</code> as the desired instance type.</p>
-- @param _DesiredInstanceType [PartitionInstanceType] <p>The instance type that you want to preconfigure for your domain. For example, <code>search.m1.small</code>.</p>
-- @param _DesiredReplicationCount [UIntValue] <p>The number of replicas you want to preconfigure for each index partition.</p>
function M.ScalingParameters(_DesiredPartitionCount, _DesiredInstanceType, _DesiredReplicationCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ScalingParameters")
	local t = { 
		["DesiredPartitionCount"] = _DesiredPartitionCount,
		["DesiredInstanceType"] = _DesiredInstanceType,
		["DesiredReplicationCount"] = _DesiredReplicationCount,
	}
	asserts.AssertScalingParameters(t)
	return t
end

keys.DeleteAnalysisSchemeResponse = { ["AnalysisScheme"] = true, nil }

function asserts.AssertDeleteAnalysisSchemeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteAnalysisSchemeResponse to be of type 'table'")
	assert(struct["AnalysisScheme"], "Expected key AnalysisScheme to exist in table")
	if struct["AnalysisScheme"] then asserts.AssertAnalysisSchemeStatus(struct["AnalysisScheme"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteAnalysisSchemeResponse[k], "DeleteAnalysisSchemeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteAnalysisSchemeResponse
-- <p>The result of a <code>DeleteAnalysisScheme</code> request. Contains the status of the deleted analysis scheme.</p>
-- @param _AnalysisScheme [AnalysisSchemeStatus] <p>The status of the analysis scheme being deleted.</p>
-- Required parameter: AnalysisScheme
function M.DeleteAnalysisSchemeResponse(_AnalysisScheme, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteAnalysisSchemeResponse")
	local t = { 
		["AnalysisScheme"] = _AnalysisScheme,
	}
	asserts.AssertDeleteAnalysisSchemeResponse(t)
	return t
end

keys.DefineSuggesterRequest = { ["Suggester"] = true, ["DomainName"] = true, nil }

function asserts.AssertDefineSuggesterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DefineSuggesterRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["Suggester"], "Expected key Suggester to exist in table")
	if struct["Suggester"] then asserts.AssertSuggester(struct["Suggester"]) end
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DefineSuggesterRequest[k], "DefineSuggesterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DefineSuggesterRequest
-- <p>Container for the parameters to the <code><a>DefineSuggester</a></code> operation. Specifies the name of the domain you want to update and the suggester configuration.</p>
-- @param _Suggester [Suggester] 
-- @param _DomainName [DomainName] 
-- Required parameter: DomainName
-- Required parameter: Suggester
function M.DefineSuggesterRequest(_Suggester, _DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DefineSuggesterRequest")
	local t = { 
		["Suggester"] = _Suggester,
		["DomainName"] = _DomainName,
	}
	asserts.AssertDefineSuggesterRequest(t)
	return t
end

keys.LimitExceededException = { nil }

function asserts.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.LimitExceededException[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- <p>The request was rejected because a resource limit has already been met.</p>
function M.LimitExceededException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
	}
	asserts.AssertLimitExceededException(t)
	return t
end

keys.Suggester = { ["DocumentSuggesterOptions"] = true, ["SuggesterName"] = true, nil }

function asserts.AssertSuggester(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Suggester to be of type 'table'")
	assert(struct["SuggesterName"], "Expected key SuggesterName to exist in table")
	assert(struct["DocumentSuggesterOptions"], "Expected key DocumentSuggesterOptions to exist in table")
	if struct["DocumentSuggesterOptions"] then asserts.AssertDocumentSuggesterOptions(struct["DocumentSuggesterOptions"]) end
	if struct["SuggesterName"] then asserts.AssertStandardName(struct["SuggesterName"]) end
	for k,_ in pairs(struct) do
		assert(keys.Suggester[k], "Suggester contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Suggester
-- <p>Configuration information for a search suggester. Each suggester has a unique name and specifies the text field you want to use for suggestions. The following options can be configured for a suggester: <code>FuzzyMatching</code>, <code>SortExpression</code>. </p>
-- @param _DocumentSuggesterOptions [DocumentSuggesterOptions] 
-- @param _SuggesterName [StandardName] 
-- Required parameter: SuggesterName
-- Required parameter: DocumentSuggesterOptions
function M.Suggester(_DocumentSuggesterOptions, _SuggesterName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Suggester")
	local t = { 
		["DocumentSuggesterOptions"] = _DocumentSuggesterOptions,
		["SuggesterName"] = _SuggesterName,
	}
	asserts.AssertSuggester(t)
	return t
end

keys.DescribeExpressionsResponse = { ["Expressions"] = true, nil }

function asserts.AssertDescribeExpressionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeExpressionsResponse to be of type 'table'")
	assert(struct["Expressions"], "Expected key Expressions to exist in table")
	if struct["Expressions"] then asserts.AssertExpressionStatusList(struct["Expressions"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeExpressionsResponse[k], "DescribeExpressionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeExpressionsResponse
-- <p>The result of a <code>DescribeExpressions</code> request. Contains the expressions configured for the domain specified in the request.</p>
-- @param _Expressions [ExpressionStatusList] <p>The expressions configured for the domain.</p>
-- Required parameter: Expressions
function M.DescribeExpressionsResponse(_Expressions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeExpressionsResponse")
	local t = { 
		["Expressions"] = _Expressions,
	}
	asserts.AssertDescribeExpressionsResponse(t)
	return t
end

keys.UpdateScalingParametersRequest = { ["ScalingParameters"] = true, ["DomainName"] = true, nil }

function asserts.AssertUpdateScalingParametersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateScalingParametersRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["ScalingParameters"], "Expected key ScalingParameters to exist in table")
	if struct["ScalingParameters"] then asserts.AssertScalingParameters(struct["ScalingParameters"]) end
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateScalingParametersRequest[k], "UpdateScalingParametersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateScalingParametersRequest
-- <p>Container for the parameters to the <code><a>UpdateScalingParameters</a></code> operation. Specifies the name of the domain you want to update and the scaling parameters you want to configure.</p>
-- @param _ScalingParameters [ScalingParameters] 
-- @param _DomainName [DomainName] 
-- Required parameter: DomainName
-- Required parameter: ScalingParameters
function M.UpdateScalingParametersRequest(_ScalingParameters, _DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateScalingParametersRequest")
	local t = { 
		["ScalingParameters"] = _ScalingParameters,
		["DomainName"] = _DomainName,
	}
	asserts.AssertUpdateScalingParametersRequest(t)
	return t
end

keys.LiteralOptions = { ["SourceField"] = true, ["DefaultValue"] = true, ["FacetEnabled"] = true, ["SearchEnabled"] = true, ["SortEnabled"] = true, ["ReturnEnabled"] = true, nil }

function asserts.AssertLiteralOptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LiteralOptions to be of type 'table'")
	if struct["SourceField"] then asserts.AssertFieldName(struct["SourceField"]) end
	if struct["DefaultValue"] then asserts.AssertFieldValue(struct["DefaultValue"]) end
	if struct["FacetEnabled"] then asserts.AssertBoolean(struct["FacetEnabled"]) end
	if struct["SearchEnabled"] then asserts.AssertBoolean(struct["SearchEnabled"]) end
	if struct["SortEnabled"] then asserts.AssertBoolean(struct["SortEnabled"]) end
	if struct["ReturnEnabled"] then asserts.AssertBoolean(struct["ReturnEnabled"]) end
	for k,_ in pairs(struct) do
		assert(keys.LiteralOptions[k], "LiteralOptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LiteralOptions
-- <p>Options for literal field. Present if <code>IndexFieldType</code> specifies the field is of type <code>literal</code>. All options are enabled by default.</p>
-- @param _SourceField [FieldName] 
-- @param _DefaultValue [FieldValue] A value to use for the field if the field isn't specified for a document.
-- @param _FacetEnabled [Boolean] <p>Whether facet information can be returned for the field.</p>
-- @param _SearchEnabled [Boolean] <p>Whether the contents of the field are searchable.</p>
-- @param _SortEnabled [Boolean] <p>Whether the field can be used to sort the search results.</p>
-- @param _ReturnEnabled [Boolean] <p>Whether the contents of the field can be returned in the search results.</p>
function M.LiteralOptions(_SourceField, _DefaultValue, _FacetEnabled, _SearchEnabled, _SortEnabled, _ReturnEnabled, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LiteralOptions")
	local t = { 
		["SourceField"] = _SourceField,
		["DefaultValue"] = _DefaultValue,
		["FacetEnabled"] = _FacetEnabled,
		["SearchEnabled"] = _SearchEnabled,
		["SortEnabled"] = _SortEnabled,
		["ReturnEnabled"] = _ReturnEnabled,
	}
	asserts.AssertLiteralOptions(t)
	return t
end

keys.CreateDomainResponse = { ["DomainStatus"] = true, nil }

function asserts.AssertCreateDomainResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDomainResponse to be of type 'table'")
	if struct["DomainStatus"] then asserts.AssertDomainStatus(struct["DomainStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDomainResponse[k], "CreateDomainResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDomainResponse
-- <p>The result of a <code>CreateDomainRequest</code>. Contains the status of a newly created domain.</p>
-- @param _DomainStatus [DomainStatus] 
function M.CreateDomainResponse(_DomainStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDomainResponse")
	local t = { 
		["DomainStatus"] = _DomainStatus,
	}
	asserts.AssertCreateDomainResponse(t)
	return t
end

keys.ServiceEndpoint = { ["Endpoint"] = true, nil }

function asserts.AssertServiceEndpoint(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceEndpoint to be of type 'table'")
	if struct["Endpoint"] then asserts.AssertServiceUrl(struct["Endpoint"]) end
	for k,_ in pairs(struct) do
		assert(keys.ServiceEndpoint[k], "ServiceEndpoint contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceEndpoint
-- <p>The endpoint to which service requests can be submitted.</p>
-- @param _Endpoint [ServiceUrl] 
function M.ServiceEndpoint(_Endpoint, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServiceEndpoint")
	local t = { 
		["Endpoint"] = _Endpoint,
	}
	asserts.AssertServiceEndpoint(t)
	return t
end

keys.BaseException = { ["Message"] = true, ["Code"] = true, nil }

function asserts.AssertBaseException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BaseException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	if struct["Code"] then asserts.AssertErrorCode(struct["Code"]) end
	for k,_ in pairs(struct) do
		assert(keys.BaseException[k], "BaseException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BaseException
-- <p>An error occurred while processing the request.</p>
-- @param _Message [ErrorMessage] 
-- @param _Code [ErrorCode] 
function M.BaseException(_Message, _Code, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BaseException")
	local t = { 
		["Message"] = _Message,
		["Code"] = _Code,
	}
	asserts.AssertBaseException(t)
	return t
end

keys.DeleteSuggesterRequest = { ["SuggesterName"] = true, ["DomainName"] = true, nil }

function asserts.AssertDeleteSuggesterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSuggesterRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["SuggesterName"], "Expected key SuggesterName to exist in table")
	if struct["SuggesterName"] then asserts.AssertStandardName(struct["SuggesterName"]) end
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteSuggesterRequest[k], "DeleteSuggesterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSuggesterRequest
-- <p>Container for the parameters to the <code><a>DeleteSuggester</a></code> operation. Specifies the name of the domain you want to update and name of the suggester you want to delete.</p>
-- @param _SuggesterName [StandardName] <p>Specifies the name of the suggester you want to delete.</p>
-- @param _DomainName [DomainName] 
-- Required parameter: DomainName
-- Required parameter: SuggesterName
function M.DeleteSuggesterRequest(_SuggesterName, _DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteSuggesterRequest")
	local t = { 
		["SuggesterName"] = _SuggesterName,
		["DomainName"] = _DomainName,
	}
	asserts.AssertDeleteSuggesterRequest(t)
	return t
end

keys.DescribeExpressionsRequest = { ["ExpressionNames"] = true, ["Deployed"] = true, ["DomainName"] = true, nil }

function asserts.AssertDescribeExpressionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeExpressionsRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["ExpressionNames"] then asserts.AssertStandardNameList(struct["ExpressionNames"]) end
	if struct["Deployed"] then asserts.AssertBoolean(struct["Deployed"]) end
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeExpressionsRequest[k], "DescribeExpressionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeExpressionsRequest
-- <p>Container for the parameters to the <code><a>DescribeDomains</a></code> operation. Specifies the name of the domain you want to describe. To restrict the response to particular expressions, specify the names of the expressions you want to describe. To show the active configuration and exclude any pending changes, set the <code>Deployed</code> option to <code>true</code>.</p>
-- @param _ExpressionNames [StandardNameList] <p>Limits the <code><a>DescribeExpressions</a></code> response to the specified expressions. If not specified, all expressions are shown.</p>
-- @param _Deployed [Boolean] <p>Whether to display the deployed configuration (<code>true</code>) or include any pending changes (<code>false</code>). Defaults to <code>false</code>.</p>
-- @param _DomainName [DomainName] <p>The name of the domain you want to describe.</p>
-- Required parameter: DomainName
function M.DescribeExpressionsRequest(_ExpressionNames, _Deployed, _DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeExpressionsRequest")
	local t = { 
		["ExpressionNames"] = _ExpressionNames,
		["Deployed"] = _Deployed,
		["DomainName"] = _DomainName,
	}
	asserts.AssertDescribeExpressionsRequest(t)
	return t
end

keys.LatLonOptions = { ["SourceField"] = true, ["DefaultValue"] = true, ["FacetEnabled"] = true, ["SearchEnabled"] = true, ["SortEnabled"] = true, ["ReturnEnabled"] = true, nil }

function asserts.AssertLatLonOptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LatLonOptions to be of type 'table'")
	if struct["SourceField"] then asserts.AssertFieldName(struct["SourceField"]) end
	if struct["DefaultValue"] then asserts.AssertFieldValue(struct["DefaultValue"]) end
	if struct["FacetEnabled"] then asserts.AssertBoolean(struct["FacetEnabled"]) end
	if struct["SearchEnabled"] then asserts.AssertBoolean(struct["SearchEnabled"]) end
	if struct["SortEnabled"] then asserts.AssertBoolean(struct["SortEnabled"]) end
	if struct["ReturnEnabled"] then asserts.AssertBoolean(struct["ReturnEnabled"]) end
	for k,_ in pairs(struct) do
		assert(keys.LatLonOptions[k], "LatLonOptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LatLonOptions
-- <p>Options for a latlon field. A latlon field contains a location stored as a latitude and longitude value pair. Present if <code>IndexFieldType</code> specifies the field is of type <code>latlon</code>. All options are enabled by default.</p>
-- @param _SourceField [FieldName] 
-- @param _DefaultValue [FieldValue] A value to use for the field if the field isn't specified for a document.
-- @param _FacetEnabled [Boolean] <p>Whether facet information can be returned for the field.</p>
-- @param _SearchEnabled [Boolean] <p>Whether the contents of the field are searchable.</p>
-- @param _SortEnabled [Boolean] <p>Whether the field can be used to sort the search results.</p>
-- @param _ReturnEnabled [Boolean] <p>Whether the contents of the field can be returned in the search results.</p>
function M.LatLonOptions(_SourceField, _DefaultValue, _FacetEnabled, _SearchEnabled, _SortEnabled, _ReturnEnabled, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LatLonOptions")
	local t = { 
		["SourceField"] = _SourceField,
		["DefaultValue"] = _DefaultValue,
		["FacetEnabled"] = _FacetEnabled,
		["SearchEnabled"] = _SearchEnabled,
		["SortEnabled"] = _SortEnabled,
		["ReturnEnabled"] = _ReturnEnabled,
	}
	asserts.AssertLatLonOptions(t)
	return t
end

keys.DateOptions = { ["SourceField"] = true, ["DefaultValue"] = true, ["FacetEnabled"] = true, ["SearchEnabled"] = true, ["SortEnabled"] = true, ["ReturnEnabled"] = true, nil }

function asserts.AssertDateOptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DateOptions to be of type 'table'")
	if struct["SourceField"] then asserts.AssertFieldName(struct["SourceField"]) end
	if struct["DefaultValue"] then asserts.AssertFieldValue(struct["DefaultValue"]) end
	if struct["FacetEnabled"] then asserts.AssertBoolean(struct["FacetEnabled"]) end
	if struct["SearchEnabled"] then asserts.AssertBoolean(struct["SearchEnabled"]) end
	if struct["SortEnabled"] then asserts.AssertBoolean(struct["SortEnabled"]) end
	if struct["ReturnEnabled"] then asserts.AssertBoolean(struct["ReturnEnabled"]) end
	for k,_ in pairs(struct) do
		assert(keys.DateOptions[k], "DateOptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DateOptions
-- <p>Options for a date field. Dates and times are specified in UTC (Coordinated Universal Time) according to IETF RFC3339: yyyy-mm-ddT00:00:00Z. Present if <code>IndexFieldType</code> specifies the field is of type <code>date</code>. All options are enabled by default.</p>
-- @param _SourceField [FieldName] 
-- @param _DefaultValue [FieldValue] A value to use for the field if the field isn't specified for a document.
-- @param _FacetEnabled [Boolean] <p>Whether facet information can be returned for the field.</p>
-- @param _SearchEnabled [Boolean] <p>Whether the contents of the field are searchable.</p>
-- @param _SortEnabled [Boolean] <p>Whether the field can be used to sort the search results.</p>
-- @param _ReturnEnabled [Boolean] <p>Whether the contents of the field can be returned in the search results.</p>
function M.DateOptions(_SourceField, _DefaultValue, _FacetEnabled, _SearchEnabled, _SortEnabled, _ReturnEnabled, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DateOptions")
	local t = { 
		["SourceField"] = _SourceField,
		["DefaultValue"] = _DefaultValue,
		["FacetEnabled"] = _FacetEnabled,
		["SearchEnabled"] = _SearchEnabled,
		["SortEnabled"] = _SortEnabled,
		["ReturnEnabled"] = _ReturnEnabled,
	}
	asserts.AssertDateOptions(t)
	return t
end

keys.DefineIndexFieldRequest = { ["IndexField"] = true, ["DomainName"] = true, nil }

function asserts.AssertDefineIndexFieldRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DefineIndexFieldRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["IndexField"], "Expected key IndexField to exist in table")
	if struct["IndexField"] then asserts.AssertIndexField(struct["IndexField"]) end
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DefineIndexFieldRequest[k], "DefineIndexFieldRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DefineIndexFieldRequest
-- <p>Container for the parameters to the <code><a>DefineIndexField</a></code> operation. Specifies the name of the domain you want to update and the index field configuration.</p>
-- @param _IndexField [IndexField] <p>The index field and field options you want to configure. </p>
-- @param _DomainName [DomainName] 
-- Required parameter: DomainName
-- Required parameter: IndexField
function M.DefineIndexFieldRequest(_IndexField, _DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DefineIndexFieldRequest")
	local t = { 
		["IndexField"] = _IndexField,
		["DomainName"] = _DomainName,
	}
	asserts.AssertDefineIndexFieldRequest(t)
	return t
end

keys.DescribeScalingParametersResponse = { ["ScalingParameters"] = true, nil }

function asserts.AssertDescribeScalingParametersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeScalingParametersResponse to be of type 'table'")
	assert(struct["ScalingParameters"], "Expected key ScalingParameters to exist in table")
	if struct["ScalingParameters"] then asserts.AssertScalingParametersStatus(struct["ScalingParameters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeScalingParametersResponse[k], "DescribeScalingParametersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeScalingParametersResponse
-- <p>The result of a <code>DescribeScalingParameters</code> request. Contains the scaling parameters configured for the domain specified in the request.</p>
-- @param _ScalingParameters [ScalingParametersStatus] 
-- Required parameter: ScalingParameters
function M.DescribeScalingParametersResponse(_ScalingParameters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeScalingParametersResponse")
	local t = { 
		["ScalingParameters"] = _ScalingParameters,
	}
	asserts.AssertDescribeScalingParametersResponse(t)
	return t
end

keys.CreateDomainRequest = { ["DomainName"] = true, nil }

function asserts.AssertCreateDomainRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDomainRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDomainRequest[k], "CreateDomainRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDomainRequest
-- <p>Container for the parameters to the <code><a>CreateDomain</a></code> operation. Specifies a name for the new search domain.</p>
-- @param _DomainName [DomainName] <p>A name for the domain you are creating. Allowed characters are a-z (lower-case letters), 0-9, and hyphen (-). Domain names must start with a letter or number and be at least 3 and no more than 28 characters long.</p>
-- Required parameter: DomainName
function M.CreateDomainRequest(_DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDomainRequest")
	local t = { 
		["DomainName"] = _DomainName,
	}
	asserts.AssertCreateDomainRequest(t)
	return t
end

keys.Limits = { ["MaximumReplicationCount"] = true, ["MaximumPartitionCount"] = true, nil }

function asserts.AssertLimits(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Limits to be of type 'table'")
	assert(struct["MaximumReplicationCount"], "Expected key MaximumReplicationCount to exist in table")
	assert(struct["MaximumPartitionCount"], "Expected key MaximumPartitionCount to exist in table")
	if struct["MaximumReplicationCount"] then asserts.AssertMaximumReplicationCount(struct["MaximumReplicationCount"]) end
	if struct["MaximumPartitionCount"] then asserts.AssertMaximumPartitionCount(struct["MaximumPartitionCount"]) end
	for k,_ in pairs(struct) do
		assert(keys.Limits[k], "Limits contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Limits
--  
-- @param _MaximumReplicationCount [MaximumReplicationCount] 
-- @param _MaximumPartitionCount [MaximumPartitionCount] 
-- Required parameter: MaximumReplicationCount
-- Required parameter: MaximumPartitionCount
function M.Limits(_MaximumReplicationCount, _MaximumPartitionCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Limits")
	local t = { 
		["MaximumReplicationCount"] = _MaximumReplicationCount,
		["MaximumPartitionCount"] = _MaximumPartitionCount,
	}
	asserts.AssertLimits(t)
	return t
end

keys.InternalException = { nil }

function asserts.AssertInternalException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InternalException[k], "InternalException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalException
-- <p>An internal error occurred while processing the request. If this problem persists, report an issue from the <a href="http://status.aws.amazon.com/" target="_blank">Service Health Dashboard</a>.</p>
function M.InternalException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalException")
	local t = { 
	}
	asserts.AssertInternalException(t)
	return t
end

keys.DomainStatus = { ["SearchInstanceType"] = true, ["DomainId"] = true, ["Limits"] = true, ["Created"] = true, ["Deleted"] = true, ["SearchInstanceCount"] = true, ["DomainName"] = true, ["SearchService"] = true, ["RequiresIndexDocuments"] = true, ["Processing"] = true, ["DocService"] = true, ["ARN"] = true, ["SearchPartitionCount"] = true, nil }

function asserts.AssertDomainStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DomainStatus to be of type 'table'")
	assert(struct["DomainId"], "Expected key DomainId to exist in table")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["RequiresIndexDocuments"], "Expected key RequiresIndexDocuments to exist in table")
	if struct["SearchInstanceType"] then asserts.AssertSearchInstanceType(struct["SearchInstanceType"]) end
	if struct["DomainId"] then asserts.AssertDomainId(struct["DomainId"]) end
	if struct["Limits"] then asserts.AssertLimits(struct["Limits"]) end
	if struct["Created"] then asserts.AssertBoolean(struct["Created"]) end
	if struct["Deleted"] then asserts.AssertBoolean(struct["Deleted"]) end
	if struct["SearchInstanceCount"] then asserts.AssertInstanceCount(struct["SearchInstanceCount"]) end
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	if struct["SearchService"] then asserts.AssertServiceEndpoint(struct["SearchService"]) end
	if struct["RequiresIndexDocuments"] then asserts.AssertBoolean(struct["RequiresIndexDocuments"]) end
	if struct["Processing"] then asserts.AssertBoolean(struct["Processing"]) end
	if struct["DocService"] then asserts.AssertServiceEndpoint(struct["DocService"]) end
	if struct["ARN"] then asserts.AssertARN(struct["ARN"]) end
	if struct["SearchPartitionCount"] then asserts.AssertPartitionCount(struct["SearchPartitionCount"]) end
	for k,_ in pairs(struct) do
		assert(keys.DomainStatus[k], "DomainStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DomainStatus
-- <p>The current status of the search domain.</p>
-- @param _SearchInstanceType [SearchInstanceType] <p>The instance type that is being used to process search requests.</p>
-- @param _DomainId [DomainId] 
-- @param _Limits [Limits] 
-- @param _Created [Boolean] <p>True if the search domain is created. It can take several minutes to initialize a domain when <a>CreateDomain</a> is called. Newly created search domains are returned from <a>DescribeDomains</a> with a false value for Created until domain creation is complete.</p>
-- @param _Deleted [Boolean] <p>True if the search domain has been deleted. The system must clean up resources dedicated to the search domain when <a>DeleteDomain</a> is called. Newly deleted search domains are returned from <a>DescribeDomains</a> with a true value for IsDeleted for several minutes until resource cleanup is complete.</p>
-- @param _SearchInstanceCount [InstanceCount] <p>The number of search instances that are available to process search requests.</p>
-- @param _DomainName [DomainName] 
-- @param _SearchService [ServiceEndpoint] <p>The service endpoint for requesting search results from a search domain.</p>
-- @param _RequiresIndexDocuments [Boolean] <p>True if <a>IndexDocuments</a> needs to be called to activate the current domain configuration.</p>
-- @param _Processing [Boolean] <p>True if processing is being done to activate the current domain configuration.</p>
-- @param _DocService [ServiceEndpoint] <p>The service endpoint for updating documents in a search domain.</p>
-- @param _ARN [ARN] 
-- @param _SearchPartitionCount [PartitionCount] <p>The number of partitions across which the search index is spread.</p>
-- Required parameter: DomainId
-- Required parameter: DomainName
-- Required parameter: RequiresIndexDocuments
function M.DomainStatus(_SearchInstanceType, _DomainId, _Limits, _Created, _Deleted, _SearchInstanceCount, _DomainName, _SearchService, _RequiresIndexDocuments, _Processing, _DocService, _ARN, _SearchPartitionCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DomainStatus")
	local t = { 
		["SearchInstanceType"] = _SearchInstanceType,
		["DomainId"] = _DomainId,
		["Limits"] = _Limits,
		["Created"] = _Created,
		["Deleted"] = _Deleted,
		["SearchInstanceCount"] = _SearchInstanceCount,
		["DomainName"] = _DomainName,
		["SearchService"] = _SearchService,
		["RequiresIndexDocuments"] = _RequiresIndexDocuments,
		["Processing"] = _Processing,
		["DocService"] = _DocService,
		["ARN"] = _ARN,
		["SearchPartitionCount"] = _SearchPartitionCount,
	}
	asserts.AssertDomainStatus(t)
	return t
end

keys.UpdateServiceAccessPoliciesResponse = { ["AccessPolicies"] = true, nil }

function asserts.AssertUpdateServiceAccessPoliciesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateServiceAccessPoliciesResponse to be of type 'table'")
	assert(struct["AccessPolicies"], "Expected key AccessPolicies to exist in table")
	if struct["AccessPolicies"] then asserts.AssertAccessPoliciesStatus(struct["AccessPolicies"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateServiceAccessPoliciesResponse[k], "UpdateServiceAccessPoliciesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateServiceAccessPoliciesResponse
-- <p>The result of an <code>UpdateServiceAccessPolicies</code> request. Contains the new access policies.</p>
-- @param _AccessPolicies [AccessPoliciesStatus] <p>The access rules configured for the domain.</p>
-- Required parameter: AccessPolicies
function M.UpdateServiceAccessPoliciesResponse(_AccessPolicies, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateServiceAccessPoliciesResponse")
	local t = { 
		["AccessPolicies"] = _AccessPolicies,
	}
	asserts.AssertUpdateServiceAccessPoliciesResponse(t)
	return t
end

keys.Expression = { ["ExpressionName"] = true, ["ExpressionValue"] = true, nil }

function asserts.AssertExpression(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Expression to be of type 'table'")
	assert(struct["ExpressionName"], "Expected key ExpressionName to exist in table")
	assert(struct["ExpressionValue"], "Expected key ExpressionValue to exist in table")
	if struct["ExpressionName"] then asserts.AssertStandardName(struct["ExpressionName"]) end
	if struct["ExpressionValue"] then asserts.AssertExpressionValue(struct["ExpressionValue"]) end
	for k,_ in pairs(struct) do
		assert(keys.Expression[k], "Expression contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Expression
-- <p>A named expression that can be evaluated at search time. Can be used to sort the search results, define other expressions, or return computed information in the search results. </p>
-- @param _ExpressionName [StandardName] 
-- @param _ExpressionValue [ExpressionValue] 
-- Required parameter: ExpressionName
-- Required parameter: ExpressionValue
function M.Expression(_ExpressionName, _ExpressionValue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Expression")
	local t = { 
		["ExpressionName"] = _ExpressionName,
		["ExpressionValue"] = _ExpressionValue,
	}
	asserts.AssertExpression(t)
	return t
end

keys.DefineSuggesterResponse = { ["Suggester"] = true, nil }

function asserts.AssertDefineSuggesterResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DefineSuggesterResponse to be of type 'table'")
	assert(struct["Suggester"], "Expected key Suggester to exist in table")
	if struct["Suggester"] then asserts.AssertSuggesterStatus(struct["Suggester"]) end
	for k,_ in pairs(struct) do
		assert(keys.DefineSuggesterResponse[k], "DefineSuggesterResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DefineSuggesterResponse
-- <p>The result of a <code>DefineSuggester</code> request. Contains the status of the newly-configured suggester.</p>
-- @param _Suggester [SuggesterStatus] 
-- Required parameter: Suggester
function M.DefineSuggesterResponse(_Suggester, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DefineSuggesterResponse")
	local t = { 
		["Suggester"] = _Suggester,
	}
	asserts.AssertDefineSuggesterResponse(t)
	return t
end

keys.AnalysisScheme = { ["AnalysisSchemeLanguage"] = true, ["AnalysisSchemeName"] = true, ["AnalysisOptions"] = true, nil }

function asserts.AssertAnalysisScheme(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AnalysisScheme to be of type 'table'")
	assert(struct["AnalysisSchemeName"], "Expected key AnalysisSchemeName to exist in table")
	assert(struct["AnalysisSchemeLanguage"], "Expected key AnalysisSchemeLanguage to exist in table")
	if struct["AnalysisSchemeLanguage"] then asserts.AssertAnalysisSchemeLanguage(struct["AnalysisSchemeLanguage"]) end
	if struct["AnalysisSchemeName"] then asserts.AssertStandardName(struct["AnalysisSchemeName"]) end
	if struct["AnalysisOptions"] then asserts.AssertAnalysisOptions(struct["AnalysisOptions"]) end
	for k,_ in pairs(struct) do
		assert(keys.AnalysisScheme[k], "AnalysisScheme contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AnalysisScheme
-- <p>Configuration information for an analysis scheme. Each analysis scheme has a unique name and specifies the language of the text to be processed. The following options can be configured for an analysis scheme: <code>Synonyms</code>, <code>Stopwords</code>, <code>StemmingDictionary</code>, <code>JapaneseTokenizationDictionary</code> and <code>AlgorithmicStemming</code>.</p>
-- @param _AnalysisSchemeLanguage [AnalysisSchemeLanguage] 
-- @param _AnalysisSchemeName [StandardName] 
-- @param _AnalysisOptions [AnalysisOptions] 
-- Required parameter: AnalysisSchemeName
-- Required parameter: AnalysisSchemeLanguage
function M.AnalysisScheme(_AnalysisSchemeLanguage, _AnalysisSchemeName, _AnalysisOptions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AnalysisScheme")
	local t = { 
		["AnalysisSchemeLanguage"] = _AnalysisSchemeLanguage,
		["AnalysisSchemeName"] = _AnalysisSchemeName,
		["AnalysisOptions"] = _AnalysisOptions,
	}
	asserts.AssertAnalysisScheme(t)
	return t
end

keys.AnalysisOptions = { ["AlgorithmicStemming"] = true, ["Synonyms"] = true, ["StemmingDictionary"] = true, ["Stopwords"] = true, ["JapaneseTokenizationDictionary"] = true, nil }

function asserts.AssertAnalysisOptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AnalysisOptions to be of type 'table'")
	if struct["AlgorithmicStemming"] then asserts.AssertAlgorithmicStemming(struct["AlgorithmicStemming"]) end
	if struct["Synonyms"] then asserts.AssertString(struct["Synonyms"]) end
	if struct["StemmingDictionary"] then asserts.AssertString(struct["StemmingDictionary"]) end
	if struct["Stopwords"] then asserts.AssertString(struct["Stopwords"]) end
	if struct["JapaneseTokenizationDictionary"] then asserts.AssertString(struct["JapaneseTokenizationDictionary"]) end
	for k,_ in pairs(struct) do
		assert(keys.AnalysisOptions[k], "AnalysisOptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AnalysisOptions
-- <p>Synonyms, stopwords, and stemming options for an analysis scheme. Includes tokenization dictionary for Japanese.</p>
-- @param _AlgorithmicStemming [AlgorithmicStemming] <p>The level of algorithmic stemming to perform: <code>none</code>, <code>minimal</code>, <code>light</code>, or <code>full</code>. The available levels vary depending on the language. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/text-processing.html#text-processing-settings" target="_blank">Language Specific Text Processing Settings</a> in the <i>Amazon CloudSearch Developer Guide</i> </p>
-- @param _Synonyms [String] <p>A JSON object that defines synonym groups and aliases. A synonym group is an array of arrays, where each sub-array is a group of terms where each term in the group is considered a synonym of every other term in the group. The aliases value is an object that contains a collection of string:value pairs where the string specifies a term and the array of values specifies each of the aliases for that term. An alias is considered a synonym of the specified term, but the term is not considered a synonym of the alias. For more information about specifying synonyms, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-analysis-schemes.html#synonyms">Synonyms</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
-- @param _StemmingDictionary [String] <p>A JSON object that contains a collection of string:value pairs that each map a term to its stem. For example, <code>{"term1": "stem1", "term2": "stem2", "term3": "stem3"}</code>. The stemming dictionary is applied in addition to any algorithmic stemming. This enables you to override the results of the algorithmic stemming to correct specific cases of overstemming or understemming. The maximum size of a stemming dictionary is 500 KB.</p>
-- @param _Stopwords [String] <p>A JSON array of terms to ignore during indexing and searching. For example, <code>["a", "an", "the", "of"]</code>. The stopwords dictionary must explicitly list each word you want to ignore. Wildcards and regular expressions are not supported. </p>
-- @param _JapaneseTokenizationDictionary [String] <p>A JSON array that contains a collection of terms, tokens, readings and part of speech for Japanese Tokenizaiton. The Japanese tokenization dictionary enables you to override the default tokenization for selected terms. This is only valid for Japanese language fields.</p>
function M.AnalysisOptions(_AlgorithmicStemming, _Synonyms, _StemmingDictionary, _Stopwords, _JapaneseTokenizationDictionary, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AnalysisOptions")
	local t = { 
		["AlgorithmicStemming"] = _AlgorithmicStemming,
		["Synonyms"] = _Synonyms,
		["StemmingDictionary"] = _StemmingDictionary,
		["Stopwords"] = _Stopwords,
		["JapaneseTokenizationDictionary"] = _JapaneseTokenizationDictionary,
	}
	asserts.AssertAnalysisOptions(t)
	return t
end

keys.DeleteDomainResponse = { ["DomainStatus"] = true, nil }

function asserts.AssertDeleteDomainResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDomainResponse to be of type 'table'")
	if struct["DomainStatus"] then asserts.AssertDomainStatus(struct["DomainStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDomainResponse[k], "DeleteDomainResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDomainResponse
-- <p>The result of a <code>DeleteDomain</code> request. Contains the status of a newly deleted domain, or no status if the domain has already been completely deleted.</p>
-- @param _DomainStatus [DomainStatus] 
function M.DeleteDomainResponse(_DomainStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDomainResponse")
	local t = { 
		["DomainStatus"] = _DomainStatus,
	}
	asserts.AssertDeleteDomainResponse(t)
	return t
end

keys.ResourceNotFoundException = { nil }

function asserts.AssertResourceNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ResourceNotFoundException[k], "ResourceNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundException
-- <p>The request was rejected because it attempted to reference a resource that does not exist.</p>
function M.ResourceNotFoundException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundException")
	local t = { 
	}
	asserts.AssertResourceNotFoundException(t)
	return t
end

keys.DescribeServiceAccessPoliciesResponse = { ["AccessPolicies"] = true, nil }

function asserts.AssertDescribeServiceAccessPoliciesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeServiceAccessPoliciesResponse to be of type 'table'")
	assert(struct["AccessPolicies"], "Expected key AccessPolicies to exist in table")
	if struct["AccessPolicies"] then asserts.AssertAccessPoliciesStatus(struct["AccessPolicies"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeServiceAccessPoliciesResponse[k], "DescribeServiceAccessPoliciesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeServiceAccessPoliciesResponse
-- <p>The result of a <code>DescribeServiceAccessPolicies</code> request.</p>
-- @param _AccessPolicies [AccessPoliciesStatus] <p>The access rules configured for the domain specified in the request.</p>
-- Required parameter: AccessPolicies
function M.DescribeServiceAccessPoliciesResponse(_AccessPolicies, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeServiceAccessPoliciesResponse")
	local t = { 
		["AccessPolicies"] = _AccessPolicies,
	}
	asserts.AssertDescribeServiceAccessPoliciesResponse(t)
	return t
end

keys.DisabledOperationException = { nil }

function asserts.AssertDisabledOperationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisabledOperationException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DisabledOperationException[k], "DisabledOperationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisabledOperationException
-- <p>The request was rejected because it attempted an operation which is not enabled.</p>
function M.DisabledOperationException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisabledOperationException")
	local t = { 
	}
	asserts.AssertDisabledOperationException(t)
	return t
end

keys.TextArrayOptions = { ["SourceFields"] = true, ["DefaultValue"] = true, ["HighlightEnabled"] = true, ["ReturnEnabled"] = true, ["AnalysisScheme"] = true, nil }

function asserts.AssertTextArrayOptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TextArrayOptions to be of type 'table'")
	if struct["SourceFields"] then asserts.AssertFieldNameCommaList(struct["SourceFields"]) end
	if struct["DefaultValue"] then asserts.AssertFieldValue(struct["DefaultValue"]) end
	if struct["HighlightEnabled"] then asserts.AssertBoolean(struct["HighlightEnabled"]) end
	if struct["ReturnEnabled"] then asserts.AssertBoolean(struct["ReturnEnabled"]) end
	if struct["AnalysisScheme"] then asserts.AssertWord(struct["AnalysisScheme"]) end
	for k,_ in pairs(struct) do
		assert(keys.TextArrayOptions[k], "TextArrayOptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TextArrayOptions
-- <p>Options for a field that contains an array of text strings. Present if <code>IndexFieldType</code> specifies the field is of type <code>text-array</code>. A <code>text-array</code> field is always searchable. All options are enabled by default.</p>
-- @param _SourceFields [FieldNameCommaList] <p>A list of source fields to map to the field. </p>
-- @param _DefaultValue [FieldValue] A value to use for the field if the field isn't specified for a document.
-- @param _HighlightEnabled [Boolean] <p>Whether highlights can be returned for the field.</p>
-- @param _ReturnEnabled [Boolean] <p>Whether the contents of the field can be returned in the search results.</p>
-- @param _AnalysisScheme [Word] <p>The name of an analysis scheme for a <code>text-array</code> field.</p>
function M.TextArrayOptions(_SourceFields, _DefaultValue, _HighlightEnabled, _ReturnEnabled, _AnalysisScheme, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TextArrayOptions")
	local t = { 
		["SourceFields"] = _SourceFields,
		["DefaultValue"] = _DefaultValue,
		["HighlightEnabled"] = _HighlightEnabled,
		["ReturnEnabled"] = _ReturnEnabled,
		["AnalysisScheme"] = _AnalysisScheme,
	}
	asserts.AssertTextArrayOptions(t)
	return t
end

keys.DescribeAvailabilityOptionsResponse = { ["AvailabilityOptions"] = true, nil }

function asserts.AssertDescribeAvailabilityOptionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAvailabilityOptionsResponse to be of type 'table'")
	if struct["AvailabilityOptions"] then asserts.AssertAvailabilityOptionsStatus(struct["AvailabilityOptions"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAvailabilityOptionsResponse[k], "DescribeAvailabilityOptionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAvailabilityOptionsResponse
-- <p>The result of a <code>DescribeAvailabilityOptions</code> request. Indicates whether or not the Multi-AZ option is enabled for the domain specified in the request. </p>
-- @param _AvailabilityOptions [AvailabilityOptionsStatus] <p>The availability options configured for the domain. Indicates whether Multi-AZ is enabled for the domain. </p>
function M.DescribeAvailabilityOptionsResponse(_AvailabilityOptions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAvailabilityOptionsResponse")
	local t = { 
		["AvailabilityOptions"] = _AvailabilityOptions,
	}
	asserts.AssertDescribeAvailabilityOptionsResponse(t)
	return t
end

keys.IndexFieldStatus = { ["Status"] = true, ["Options"] = true, nil }

function asserts.AssertIndexFieldStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IndexFieldStatus to be of type 'table'")
	assert(struct["Options"], "Expected key Options to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["Status"] then asserts.AssertOptionStatus(struct["Status"]) end
	if struct["Options"] then asserts.AssertIndexField(struct["Options"]) end
	for k,_ in pairs(struct) do
		assert(keys.IndexFieldStatus[k], "IndexFieldStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IndexFieldStatus
-- <p>The value of an <code>IndexField</code> and its current status.</p>
-- @param _Status [OptionStatus] 
-- @param _Options [IndexField] 
-- Required parameter: Options
-- Required parameter: Status
function M.IndexFieldStatus(_Status, _Options, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IndexFieldStatus")
	local t = { 
		["Status"] = _Status,
		["Options"] = _Options,
	}
	asserts.AssertIndexFieldStatus(t)
	return t
end

keys.DescribeAnalysisSchemesRequest = { ["AnalysisSchemeNames"] = true, ["Deployed"] = true, ["DomainName"] = true, nil }

function asserts.AssertDescribeAnalysisSchemesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAnalysisSchemesRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["AnalysisSchemeNames"] then asserts.AssertStandardNameList(struct["AnalysisSchemeNames"]) end
	if struct["Deployed"] then asserts.AssertBoolean(struct["Deployed"]) end
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAnalysisSchemesRequest[k], "DescribeAnalysisSchemesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAnalysisSchemesRequest
-- <p>Container for the parameters to the <code><a>DescribeAnalysisSchemes</a></code> operation. Specifies the name of the domain you want to describe. To limit the response to particular analysis schemes, specify the names of the analysis schemes you want to describe. To show the active configuration and exclude any pending changes, set the <code>Deployed</code> option to <code>true</code>. </p>
-- @param _AnalysisSchemeNames [StandardNameList] <p>The analysis schemes you want to describe.</p>
-- @param _Deployed [Boolean] <p>Whether to display the deployed configuration (<code>true</code>) or include any pending changes (<code>false</code>). Defaults to <code>false</code>.</p>
-- @param _DomainName [DomainName] <p>The name of the domain you want to describe.</p>
-- Required parameter: DomainName
function M.DescribeAnalysisSchemesRequest(_AnalysisSchemeNames, _Deployed, _DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAnalysisSchemesRequest")
	local t = { 
		["AnalysisSchemeNames"] = _AnalysisSchemeNames,
		["Deployed"] = _Deployed,
		["DomainName"] = _DomainName,
	}
	asserts.AssertDescribeAnalysisSchemesRequest(t)
	return t
end

keys.DeleteExpressionRequest = { ["ExpressionName"] = true, ["DomainName"] = true, nil }

function asserts.AssertDeleteExpressionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteExpressionRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["ExpressionName"], "Expected key ExpressionName to exist in table")
	if struct["ExpressionName"] then asserts.AssertStandardName(struct["ExpressionName"]) end
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteExpressionRequest[k], "DeleteExpressionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteExpressionRequest
-- <p>Container for the parameters to the <code><a>DeleteExpression</a></code> operation. Specifies the name of the domain you want to update and the name of the expression you want to delete.</p>
-- @param _ExpressionName [StandardName] <p>The name of the <code><a>Expression</a></code> to delete.</p>
-- @param _DomainName [DomainName] 
-- Required parameter: DomainName
-- Required parameter: ExpressionName
function M.DeleteExpressionRequest(_ExpressionName, _DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteExpressionRequest")
	local t = { 
		["ExpressionName"] = _ExpressionName,
		["DomainName"] = _DomainName,
	}
	asserts.AssertDeleteExpressionRequest(t)
	return t
end

keys.InvalidTypeException = { nil }

function asserts.AssertInvalidTypeException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidTypeException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidTypeException[k], "InvalidTypeException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidTypeException
-- <p>The request was rejected because it specified an invalid type definition.</p>
function M.InvalidTypeException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidTypeException")
	local t = { 
	}
	asserts.AssertInvalidTypeException(t)
	return t
end

keys.OptionStatus = { ["PendingDeletion"] = true, ["State"] = true, ["CreationDate"] = true, ["UpdateVersion"] = true, ["UpdateDate"] = true, nil }

function asserts.AssertOptionStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OptionStatus to be of type 'table'")
	assert(struct["CreationDate"], "Expected key CreationDate to exist in table")
	assert(struct["UpdateDate"], "Expected key UpdateDate to exist in table")
	assert(struct["State"], "Expected key State to exist in table")
	if struct["PendingDeletion"] then asserts.AssertBoolean(struct["PendingDeletion"]) end
	if struct["State"] then asserts.AssertOptionState(struct["State"]) end
	if struct["CreationDate"] then asserts.AssertUpdateTimestamp(struct["CreationDate"]) end
	if struct["UpdateVersion"] then asserts.AssertUIntValue(struct["UpdateVersion"]) end
	if struct["UpdateDate"] then asserts.AssertUpdateTimestamp(struct["UpdateDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.OptionStatus[k], "OptionStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OptionStatus
-- <p>The status of domain configuration option.</p>
-- @param _PendingDeletion [Boolean] <p>Indicates that the option will be deleted once processing is complete.</p>
-- @param _State [OptionState] <p>The state of processing a change to an option. Possible values:</p> <ul> <li> <code>RequiresIndexDocuments</code>: the option's latest value will not be deployed until <a>IndexDocuments</a> has been called and indexing is complete.</li> <li> <code>Processing</code>: the option's latest value is in the process of being activated. </li> <li> <code>Active</code>: the option's latest value is completely deployed.</li> <li> <code>FailedToValidate</code>: the option value is not compatible with the domain's data and cannot be used to index the data. You must either modify the option value or update or remove the incompatible documents.</li> </ul>
-- @param _CreationDate [UpdateTimestamp] <p>A timestamp for when this option was created.</p>
-- @param _UpdateVersion [UIntValue] <p>A unique integer that indicates when this option was last updated.</p>
-- @param _UpdateDate [UpdateTimestamp] <p>A timestamp for when this option was last updated.</p>
-- Required parameter: CreationDate
-- Required parameter: UpdateDate
-- Required parameter: State
function M.OptionStatus(_PendingDeletion, _State, _CreationDate, _UpdateVersion, _UpdateDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OptionStatus")
	local t = { 
		["PendingDeletion"] = _PendingDeletion,
		["State"] = _State,
		["CreationDate"] = _CreationDate,
		["UpdateVersion"] = _UpdateVersion,
		["UpdateDate"] = _UpdateDate,
	}
	asserts.AssertOptionStatus(t)
	return t
end

keys.IndexField = { ["IntArrayOptions"] = true, ["LiteralArrayOptions"] = true, ["LiteralOptions"] = true, ["LatLonOptions"] = true, ["DateArrayOptions"] = true, ["DoubleArrayOptions"] = true, ["TextArrayOptions"] = true, ["IndexFieldName"] = true, ["DoubleOptions"] = true, ["DateOptions"] = true, ["IndexFieldType"] = true, ["IntOptions"] = true, ["TextOptions"] = true, nil }

function asserts.AssertIndexField(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IndexField to be of type 'table'")
	assert(struct["IndexFieldName"], "Expected key IndexFieldName to exist in table")
	assert(struct["IndexFieldType"], "Expected key IndexFieldType to exist in table")
	if struct["IntArrayOptions"] then asserts.AssertIntArrayOptions(struct["IntArrayOptions"]) end
	if struct["LiteralArrayOptions"] then asserts.AssertLiteralArrayOptions(struct["LiteralArrayOptions"]) end
	if struct["LiteralOptions"] then asserts.AssertLiteralOptions(struct["LiteralOptions"]) end
	if struct["LatLonOptions"] then asserts.AssertLatLonOptions(struct["LatLonOptions"]) end
	if struct["DateArrayOptions"] then asserts.AssertDateArrayOptions(struct["DateArrayOptions"]) end
	if struct["DoubleArrayOptions"] then asserts.AssertDoubleArrayOptions(struct["DoubleArrayOptions"]) end
	if struct["TextArrayOptions"] then asserts.AssertTextArrayOptions(struct["TextArrayOptions"]) end
	if struct["IndexFieldName"] then asserts.AssertDynamicFieldName(struct["IndexFieldName"]) end
	if struct["DoubleOptions"] then asserts.AssertDoubleOptions(struct["DoubleOptions"]) end
	if struct["DateOptions"] then asserts.AssertDateOptions(struct["DateOptions"]) end
	if struct["IndexFieldType"] then asserts.AssertIndexFieldType(struct["IndexFieldType"]) end
	if struct["IntOptions"] then asserts.AssertIntOptions(struct["IntOptions"]) end
	if struct["TextOptions"] then asserts.AssertTextOptions(struct["TextOptions"]) end
	for k,_ in pairs(struct) do
		assert(keys.IndexField[k], "IndexField contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IndexField
-- <p>Configuration information for a field in the index, including its name, type, and options. The supported options depend on the <code><a>IndexFieldType</a></code>.</p>
-- @param _IntArrayOptions [IntArrayOptions] 
-- @param _LiteralArrayOptions [LiteralArrayOptions] 
-- @param _LiteralOptions [LiteralOptions] 
-- @param _LatLonOptions [LatLonOptions] 
-- @param _DateArrayOptions [DateArrayOptions] 
-- @param _DoubleArrayOptions [DoubleArrayOptions] 
-- @param _TextArrayOptions [TextArrayOptions] 
-- @param _IndexFieldName [DynamicFieldName] <p>A string that represents the name of an index field. CloudSearch supports regular index fields as well as dynamic fields. A dynamic field's name defines a pattern that begins or ends with a wildcard. Any document fields that don't map to a regular index field but do match a dynamic field's pattern are configured with the dynamic field's indexing options. </p> <p>Regular field names begin with a letter and can contain the following characters: a-z (lowercase), 0-9, and _ (underscore). Dynamic field names must begin or end with a wildcard (*). The wildcard can also be the only character in a dynamic field name. Multiple wildcards, and wildcards embedded within a string are not supported. </p> <p>The name <code>score</code> is reserved and cannot be used as a field name. To reference a document's ID, you can use the name <code>_id</code>. </p>
-- @param _DoubleOptions [DoubleOptions] 
-- @param _DateOptions [DateOptions] 
-- @param _IndexFieldType [IndexFieldType] 
-- @param _IntOptions [IntOptions] 
-- @param _TextOptions [TextOptions] 
-- Required parameter: IndexFieldName
-- Required parameter: IndexFieldType
function M.IndexField(_IntArrayOptions, _LiteralArrayOptions, _LiteralOptions, _LatLonOptions, _DateArrayOptions, _DoubleArrayOptions, _TextArrayOptions, _IndexFieldName, _DoubleOptions, _DateOptions, _IndexFieldType, _IntOptions, _TextOptions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IndexField")
	local t = { 
		["IntArrayOptions"] = _IntArrayOptions,
		["LiteralArrayOptions"] = _LiteralArrayOptions,
		["LiteralOptions"] = _LiteralOptions,
		["LatLonOptions"] = _LatLonOptions,
		["DateArrayOptions"] = _DateArrayOptions,
		["DoubleArrayOptions"] = _DoubleArrayOptions,
		["TextArrayOptions"] = _TextArrayOptions,
		["IndexFieldName"] = _IndexFieldName,
		["DoubleOptions"] = _DoubleOptions,
		["DateOptions"] = _DateOptions,
		["IndexFieldType"] = _IndexFieldType,
		["IntOptions"] = _IntOptions,
		["TextOptions"] = _TextOptions,
	}
	asserts.AssertIndexField(t)
	return t
end

keys.DescribeSuggestersRequest = { ["SuggesterNames"] = true, ["Deployed"] = true, ["DomainName"] = true, nil }

function asserts.AssertDescribeSuggestersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSuggestersRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["SuggesterNames"] then asserts.AssertStandardNameList(struct["SuggesterNames"]) end
	if struct["Deployed"] then asserts.AssertBoolean(struct["Deployed"]) end
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeSuggestersRequest[k], "DescribeSuggestersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSuggestersRequest
-- <p>Container for the parameters to the <code><a>DescribeSuggester</a></code> operation. Specifies the name of the domain you want to describe. To restrict the response to particular suggesters, specify the names of the suggesters you want to describe. To show the active configuration and exclude any pending changes, set the <code>Deployed</code> option to <code>true</code>.</p>
-- @param _SuggesterNames [StandardNameList] <p>The suggesters you want to describe.</p>
-- @param _Deployed [Boolean] <p>Whether to display the deployed configuration (<code>true</code>) or include any pending changes (<code>false</code>). Defaults to <code>false</code>.</p>
-- @param _DomainName [DomainName] <p>The name of the domain you want to describe.</p>
-- Required parameter: DomainName
function M.DescribeSuggestersRequest(_SuggesterNames, _Deployed, _DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeSuggestersRequest")
	local t = { 
		["SuggesterNames"] = _SuggesterNames,
		["Deployed"] = _Deployed,
		["DomainName"] = _DomainName,
	}
	asserts.AssertDescribeSuggestersRequest(t)
	return t
end

keys.DescribeIndexFieldsRequest = { ["Deployed"] = true, ["FieldNames"] = true, ["DomainName"] = true, nil }

function asserts.AssertDescribeIndexFieldsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeIndexFieldsRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["Deployed"] then asserts.AssertBoolean(struct["Deployed"]) end
	if struct["FieldNames"] then asserts.AssertDynamicFieldNameList(struct["FieldNames"]) end
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeIndexFieldsRequest[k], "DescribeIndexFieldsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeIndexFieldsRequest
-- <p>Container for the parameters to the <code><a>DescribeIndexFields</a></code> operation. Specifies the name of the domain you want to describe. To restrict the response to particular index fields, specify the names of the index fields you want to describe. To show the active configuration and exclude any pending changes, set the <code>Deployed</code> option to <code>true</code>.</p>
-- @param _Deployed [Boolean] <p>Whether to display the deployed configuration (<code>true</code>) or include any pending changes (<code>false</code>). Defaults to <code>false</code>.</p>
-- @param _FieldNames [DynamicFieldNameList] <p>A list of the index fields you want to describe. If not specified, information is returned for all configured index fields.</p>
-- @param _DomainName [DomainName] <p>The name of the domain you want to describe.</p>
-- Required parameter: DomainName
function M.DescribeIndexFieldsRequest(_Deployed, _FieldNames, _DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeIndexFieldsRequest")
	local t = { 
		["Deployed"] = _Deployed,
		["FieldNames"] = _FieldNames,
		["DomainName"] = _DomainName,
	}
	asserts.AssertDescribeIndexFieldsRequest(t)
	return t
end

keys.ScalingParametersStatus = { ["Status"] = true, ["Options"] = true, nil }

function asserts.AssertScalingParametersStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScalingParametersStatus to be of type 'table'")
	assert(struct["Options"], "Expected key Options to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["Status"] then asserts.AssertOptionStatus(struct["Status"]) end
	if struct["Options"] then asserts.AssertScalingParameters(struct["Options"]) end
	for k,_ in pairs(struct) do
		assert(keys.ScalingParametersStatus[k], "ScalingParametersStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScalingParametersStatus
-- <p>The status and configuration of a search domain's scaling parameters. </p>
-- @param _Status [OptionStatus] 
-- @param _Options [ScalingParameters] 
-- Required parameter: Options
-- Required parameter: Status
function M.ScalingParametersStatus(_Status, _Options, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ScalingParametersStatus")
	local t = { 
		["Status"] = _Status,
		["Options"] = _Options,
	}
	asserts.AssertScalingParametersStatus(t)
	return t
end

keys.BuildSuggestersRequest = { ["DomainName"] = true, nil }

function asserts.AssertBuildSuggestersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BuildSuggestersRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.BuildSuggestersRequest[k], "BuildSuggestersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BuildSuggestersRequest
-- <p>Container for the parameters to the <code><a>BuildSuggester</a></code> operation. Specifies the name of the domain you want to update.</p>
-- @param _DomainName [DomainName] 
-- Required parameter: DomainName
function M.BuildSuggestersRequest(_DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BuildSuggestersRequest")
	local t = { 
		["DomainName"] = _DomainName,
	}
	asserts.AssertBuildSuggestersRequest(t)
	return t
end

keys.DefineAnalysisSchemeRequest = { ["AnalysisScheme"] = true, ["DomainName"] = true, nil }

function asserts.AssertDefineAnalysisSchemeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DefineAnalysisSchemeRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["AnalysisScheme"], "Expected key AnalysisScheme to exist in table")
	if struct["AnalysisScheme"] then asserts.AssertAnalysisScheme(struct["AnalysisScheme"]) end
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DefineAnalysisSchemeRequest[k], "DefineAnalysisSchemeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DefineAnalysisSchemeRequest
-- <p>Container for the parameters to the <code><a>DefineAnalysisScheme</a></code> operation. Specifies the name of the domain you want to update and the analysis scheme configuration.</p>
-- @param _AnalysisScheme [AnalysisScheme] 
-- @param _DomainName [DomainName] 
-- Required parameter: DomainName
-- Required parameter: AnalysisScheme
function M.DefineAnalysisSchemeRequest(_AnalysisScheme, _DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DefineAnalysisSchemeRequest")
	local t = { 
		["AnalysisScheme"] = _AnalysisScheme,
		["DomainName"] = _DomainName,
	}
	asserts.AssertDefineAnalysisSchemeRequest(t)
	return t
end

keys.IntArrayOptions = { ["SourceFields"] = true, ["FacetEnabled"] = true, ["DefaultValue"] = true, ["ReturnEnabled"] = true, ["SearchEnabled"] = true, nil }

function asserts.AssertIntArrayOptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IntArrayOptions to be of type 'table'")
	if struct["SourceFields"] then asserts.AssertFieldNameCommaList(struct["SourceFields"]) end
	if struct["FacetEnabled"] then asserts.AssertBoolean(struct["FacetEnabled"]) end
	if struct["DefaultValue"] then asserts.AssertLong(struct["DefaultValue"]) end
	if struct["ReturnEnabled"] then asserts.AssertBoolean(struct["ReturnEnabled"]) end
	if struct["SearchEnabled"] then asserts.AssertBoolean(struct["SearchEnabled"]) end
	for k,_ in pairs(struct) do
		assert(keys.IntArrayOptions[k], "IntArrayOptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IntArrayOptions
-- <p>Options for a field that contains an array of 64-bit signed integers. Present if <code>IndexFieldType</code> specifies the field is of type <code>int-array</code>. All options are enabled by default.</p>
-- @param _SourceFields [FieldNameCommaList] <p>A list of source fields to map to the field. </p>
-- @param _FacetEnabled [Boolean] <p>Whether facet information can be returned for the field.</p>
-- @param _DefaultValue [Long] A value to use for the field if the field isn't specified for a document.
-- @param _ReturnEnabled [Boolean] <p>Whether the contents of the field can be returned in the search results.</p>
-- @param _SearchEnabled [Boolean] <p>Whether the contents of the field are searchable.</p>
function M.IntArrayOptions(_SourceFields, _FacetEnabled, _DefaultValue, _ReturnEnabled, _SearchEnabled, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IntArrayOptions")
	local t = { 
		["SourceFields"] = _SourceFields,
		["FacetEnabled"] = _FacetEnabled,
		["DefaultValue"] = _DefaultValue,
		["ReturnEnabled"] = _ReturnEnabled,
		["SearchEnabled"] = _SearchEnabled,
	}
	asserts.AssertIntArrayOptions(t)
	return t
end

keys.TextOptions = { ["AnalysisScheme"] = true, ["SourceField"] = true, ["DefaultValue"] = true, ["HighlightEnabled"] = true, ["SortEnabled"] = true, ["ReturnEnabled"] = true, nil }

function asserts.AssertTextOptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TextOptions to be of type 'table'")
	if struct["AnalysisScheme"] then asserts.AssertWord(struct["AnalysisScheme"]) end
	if struct["SourceField"] then asserts.AssertFieldName(struct["SourceField"]) end
	if struct["DefaultValue"] then asserts.AssertFieldValue(struct["DefaultValue"]) end
	if struct["HighlightEnabled"] then asserts.AssertBoolean(struct["HighlightEnabled"]) end
	if struct["SortEnabled"] then asserts.AssertBoolean(struct["SortEnabled"]) end
	if struct["ReturnEnabled"] then asserts.AssertBoolean(struct["ReturnEnabled"]) end
	for k,_ in pairs(struct) do
		assert(keys.TextOptions[k], "TextOptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TextOptions
-- <p>Options for text field. Present if <code>IndexFieldType</code> specifies the field is of type <code>text</code>. A <code>text</code> field is always searchable. All options are enabled by default.</p>
-- @param _AnalysisScheme [Word] <p>The name of an analysis scheme for a <code>text</code> field.</p>
-- @param _SourceField [FieldName] 
-- @param _DefaultValue [FieldValue] A value to use for the field if the field isn't specified for a document.
-- @param _HighlightEnabled [Boolean] <p>Whether highlights can be returned for the field.</p>
-- @param _SortEnabled [Boolean] <p>Whether the field can be used to sort the search results.</p>
-- @param _ReturnEnabled [Boolean] <p>Whether the contents of the field can be returned in the search results.</p>
function M.TextOptions(_AnalysisScheme, _SourceField, _DefaultValue, _HighlightEnabled, _SortEnabled, _ReturnEnabled, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TextOptions")
	local t = { 
		["AnalysisScheme"] = _AnalysisScheme,
		["SourceField"] = _SourceField,
		["DefaultValue"] = _DefaultValue,
		["HighlightEnabled"] = _HighlightEnabled,
		["SortEnabled"] = _SortEnabled,
		["ReturnEnabled"] = _ReturnEnabled,
	}
	asserts.AssertTextOptions(t)
	return t
end

keys.IndexDocumentsRequest = { ["DomainName"] = true, nil }

function asserts.AssertIndexDocumentsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IndexDocumentsRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.IndexDocumentsRequest[k], "IndexDocumentsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IndexDocumentsRequest
-- <p>Container for the parameters to the <code><a>IndexDocuments</a></code> operation. Specifies the name of the domain you want to re-index.</p>
-- @param _DomainName [DomainName] 
-- Required parameter: DomainName
function M.IndexDocumentsRequest(_DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IndexDocumentsRequest")
	local t = { 
		["DomainName"] = _DomainName,
	}
	asserts.AssertIndexDocumentsRequest(t)
	return t
end

keys.DescribeAvailabilityOptionsRequest = { ["Deployed"] = true, ["DomainName"] = true, nil }

function asserts.AssertDescribeAvailabilityOptionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAvailabilityOptionsRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["Deployed"] then asserts.AssertBoolean(struct["Deployed"]) end
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAvailabilityOptionsRequest[k], "DescribeAvailabilityOptionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAvailabilityOptionsRequest
-- <p>Container for the parameters to the <code><a>DescribeAvailabilityOptions</a></code> operation. Specifies the name of the domain you want to describe. To show the active configuration and exclude any pending changes, set the Deployed option to <code>true</code>.</p>
-- @param _Deployed [Boolean] <p>Whether to display the deployed configuration (<code>true</code>) or include any pending changes (<code>false</code>). Defaults to <code>false</code>.</p>
-- @param _DomainName [DomainName] <p>The name of the domain you want to describe.</p>
-- Required parameter: DomainName
function M.DescribeAvailabilityOptionsRequest(_Deployed, _DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAvailabilityOptionsRequest")
	local t = { 
		["Deployed"] = _Deployed,
		["DomainName"] = _DomainName,
	}
	asserts.AssertDescribeAvailabilityOptionsRequest(t)
	return t
end

keys.DefineIndexFieldResponse = { ["IndexField"] = true, nil }

function asserts.AssertDefineIndexFieldResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DefineIndexFieldResponse to be of type 'table'")
	assert(struct["IndexField"], "Expected key IndexField to exist in table")
	if struct["IndexField"] then asserts.AssertIndexFieldStatus(struct["IndexField"]) end
	for k,_ in pairs(struct) do
		assert(keys.DefineIndexFieldResponse[k], "DefineIndexFieldResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DefineIndexFieldResponse
-- <p>The result of a <code><a>DefineIndexField</a></code> request. Contains the status of the newly-configured index field.</p>
-- @param _IndexField [IndexFieldStatus] 
-- Required parameter: IndexField
function M.DefineIndexFieldResponse(_IndexField, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DefineIndexFieldResponse")
	local t = { 
		["IndexField"] = _IndexField,
	}
	asserts.AssertDefineIndexFieldResponse(t)
	return t
end

keys.DescribeIndexFieldsResponse = { ["IndexFields"] = true, nil }

function asserts.AssertDescribeIndexFieldsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeIndexFieldsResponse to be of type 'table'")
	assert(struct["IndexFields"], "Expected key IndexFields to exist in table")
	if struct["IndexFields"] then asserts.AssertIndexFieldStatusList(struct["IndexFields"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeIndexFieldsResponse[k], "DescribeIndexFieldsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeIndexFieldsResponse
-- <p>The result of a <code>DescribeIndexFields</code> request. Contains the index fields configured for the domain specified in the request.</p>
-- @param _IndexFields [IndexFieldStatusList] <p>The index fields configured for the domain.</p>
-- Required parameter: IndexFields
function M.DescribeIndexFieldsResponse(_IndexFields, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeIndexFieldsResponse")
	local t = { 
		["IndexFields"] = _IndexFields,
	}
	asserts.AssertDescribeIndexFieldsResponse(t)
	return t
end

keys.DoubleArrayOptions = { ["SourceFields"] = true, ["FacetEnabled"] = true, ["DefaultValue"] = true, ["ReturnEnabled"] = true, ["SearchEnabled"] = true, nil }

function asserts.AssertDoubleArrayOptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DoubleArrayOptions to be of type 'table'")
	if struct["SourceFields"] then asserts.AssertFieldNameCommaList(struct["SourceFields"]) end
	if struct["FacetEnabled"] then asserts.AssertBoolean(struct["FacetEnabled"]) end
	if struct["DefaultValue"] then asserts.AssertDouble(struct["DefaultValue"]) end
	if struct["ReturnEnabled"] then asserts.AssertBoolean(struct["ReturnEnabled"]) end
	if struct["SearchEnabled"] then asserts.AssertBoolean(struct["SearchEnabled"]) end
	for k,_ in pairs(struct) do
		assert(keys.DoubleArrayOptions[k], "DoubleArrayOptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DoubleArrayOptions
-- <p>Options for a field that contains an array of double-precision 64-bit floating point values. Present if <code>IndexFieldType</code> specifies the field is of type <code>double-array</code>. All options are enabled by default.</p>
-- @param _SourceFields [FieldNameCommaList] <p>A list of source fields to map to the field. </p>
-- @param _FacetEnabled [Boolean] <p>Whether facet information can be returned for the field.</p>
-- @param _DefaultValue [Double] A value to use for the field if the field isn't specified for a document.
-- @param _ReturnEnabled [Boolean] <p>Whether the contents of the field can be returned in the search results.</p>
-- @param _SearchEnabled [Boolean] <p>Whether the contents of the field are searchable.</p>
function M.DoubleArrayOptions(_SourceFields, _FacetEnabled, _DefaultValue, _ReturnEnabled, _SearchEnabled, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DoubleArrayOptions")
	local t = { 
		["SourceFields"] = _SourceFields,
		["FacetEnabled"] = _FacetEnabled,
		["DefaultValue"] = _DefaultValue,
		["ReturnEnabled"] = _ReturnEnabled,
		["SearchEnabled"] = _SearchEnabled,
	}
	asserts.AssertDoubleArrayOptions(t)
	return t
end

keys.DescribeDomainsRequest = { ["DomainNames"] = true, nil }

function asserts.AssertDescribeDomainsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDomainsRequest to be of type 'table'")
	if struct["DomainNames"] then asserts.AssertDomainNameList(struct["DomainNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDomainsRequest[k], "DescribeDomainsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDomainsRequest
-- <p>Container for the parameters to the <code><a>DescribeDomains</a></code> operation. By default shows the status of all domains. To restrict the response to particular domains, specify the names of the domains you want to describe.</p>
-- @param _DomainNames [DomainNameList] <p>The names of the domains you want to include in the response.</p>
function M.DescribeDomainsRequest(_DomainNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDomainsRequest")
	local t = { 
		["DomainNames"] = _DomainNames,
	}
	asserts.AssertDescribeDomainsRequest(t)
	return t
end

keys.UpdateAvailabilityOptionsRequest = { ["MultiAZ"] = true, ["DomainName"] = true, nil }

function asserts.AssertUpdateAvailabilityOptionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateAvailabilityOptionsRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["MultiAZ"], "Expected key MultiAZ to exist in table")
	if struct["MultiAZ"] then asserts.AssertBoolean(struct["MultiAZ"]) end
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateAvailabilityOptionsRequest[k], "UpdateAvailabilityOptionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateAvailabilityOptionsRequest
-- <p>Container for the parameters to the <code><a>UpdateAvailabilityOptions</a></code> operation. Specifies the name of the domain you want to update and the Multi-AZ availability option.</p>
-- @param _MultiAZ [Boolean] <p>You expand an existing search domain to a second Availability Zone by setting the Multi-AZ option to true. Similarly, you can turn off the Multi-AZ option to downgrade the domain to a single Availability Zone by setting the Multi-AZ option to <code>false</code>. </p>
-- @param _DomainName [DomainName] 
-- Required parameter: DomainName
-- Required parameter: MultiAZ
function M.UpdateAvailabilityOptionsRequest(_MultiAZ, _DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateAvailabilityOptionsRequest")
	local t = { 
		["MultiAZ"] = _MultiAZ,
		["DomainName"] = _DomainName,
	}
	asserts.AssertUpdateAvailabilityOptionsRequest(t)
	return t
end

keys.BuildSuggestersResponse = { ["FieldNames"] = true, nil }

function asserts.AssertBuildSuggestersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BuildSuggestersResponse to be of type 'table'")
	if struct["FieldNames"] then asserts.AssertFieldNameList(struct["FieldNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.BuildSuggestersResponse[k], "BuildSuggestersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BuildSuggestersResponse
-- <p>The result of a <code>BuildSuggester</code> request. Contains a list of the fields used for suggestions.</p>
-- @param _FieldNames [FieldNameList] 
function M.BuildSuggestersResponse(_FieldNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BuildSuggestersResponse")
	local t = { 
		["FieldNames"] = _FieldNames,
	}
	asserts.AssertBuildSuggestersResponse(t)
	return t
end

keys.IntOptions = { ["SourceField"] = true, ["DefaultValue"] = true, ["FacetEnabled"] = true, ["SearchEnabled"] = true, ["SortEnabled"] = true, ["ReturnEnabled"] = true, nil }

function asserts.AssertIntOptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IntOptions to be of type 'table'")
	if struct["SourceField"] then asserts.AssertFieldName(struct["SourceField"]) end
	if struct["DefaultValue"] then asserts.AssertLong(struct["DefaultValue"]) end
	if struct["FacetEnabled"] then asserts.AssertBoolean(struct["FacetEnabled"]) end
	if struct["SearchEnabled"] then asserts.AssertBoolean(struct["SearchEnabled"]) end
	if struct["SortEnabled"] then asserts.AssertBoolean(struct["SortEnabled"]) end
	if struct["ReturnEnabled"] then asserts.AssertBoolean(struct["ReturnEnabled"]) end
	for k,_ in pairs(struct) do
		assert(keys.IntOptions[k], "IntOptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IntOptions
-- <p>Options for a 64-bit signed integer field. Present if <code>IndexFieldType</code> specifies the field is of type <code>int</code>. All options are enabled by default.</p>
-- @param _SourceField [FieldName] <p>The name of the source field to map to the field. </p>
-- @param _DefaultValue [Long] A value to use for the field if the field isn't specified for a document. This can be important if you are using the field in an expression and that field is not present in every document.
-- @param _FacetEnabled [Boolean] <p>Whether facet information can be returned for the field.</p>
-- @param _SearchEnabled [Boolean] <p>Whether the contents of the field are searchable.</p>
-- @param _SortEnabled [Boolean] <p>Whether the field can be used to sort the search results.</p>
-- @param _ReturnEnabled [Boolean] <p>Whether the contents of the field can be returned in the search results.</p>
function M.IntOptions(_SourceField, _DefaultValue, _FacetEnabled, _SearchEnabled, _SortEnabled, _ReturnEnabled, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IntOptions")
	local t = { 
		["SourceField"] = _SourceField,
		["DefaultValue"] = _DefaultValue,
		["FacetEnabled"] = _FacetEnabled,
		["SearchEnabled"] = _SearchEnabled,
		["SortEnabled"] = _SortEnabled,
		["ReturnEnabled"] = _ReturnEnabled,
	}
	asserts.AssertIntOptions(t)
	return t
end

keys.DescribeSuggestersResponse = { ["Suggesters"] = true, nil }

function asserts.AssertDescribeSuggestersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSuggestersResponse to be of type 'table'")
	assert(struct["Suggesters"], "Expected key Suggesters to exist in table")
	if struct["Suggesters"] then asserts.AssertSuggesterStatusList(struct["Suggesters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeSuggestersResponse[k], "DescribeSuggestersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSuggestersResponse
-- <p>The result of a <code>DescribeSuggesters</code> request.</p>
-- @param _Suggesters [SuggesterStatusList] <p>The suggesters configured for the domain specified in the request.</p>
-- Required parameter: Suggesters
function M.DescribeSuggestersResponse(_Suggesters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeSuggestersResponse")
	local t = { 
		["Suggesters"] = _Suggesters,
	}
	asserts.AssertDescribeSuggestersResponse(t)
	return t
end

function asserts.AssertOptionState(str)
	assert(str)
	assert(type(str) == "string", "Expected OptionState to be of type 'string'")
end

-- <p>The state of processing a change to an option. One of:</p> <ul> <li>RequiresIndexDocuments: The option's latest value will not be deployed until <a>IndexDocuments</a> has been called and indexing is complete.</li> <li>Processing: The option's latest value is in the process of being activated.</li> <li>Active: The option's latest value is fully deployed. </li> <li>FailedToValidate: The option value is not compatible with the domain's data and cannot be used to index the data. You must either modify the option value or update or remove the incompatible documents.</li> </ul>
function M.OptionState(str)
	asserts.AssertOptionState(str)
	return str
end

function asserts.AssertPolicyDocument(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyDocument to be of type 'string'")
end

-- <p>Access rules for a domain's document or search service endpoints. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-access.html" target="_blank">Configuring Access for a Search Domain</a> in the <i>Amazon CloudSearch Developer Guide</i>. The maximum size of a policy document is 100 KB.</p>
function M.PolicyDocument(str)
	asserts.AssertPolicyDocument(str)
	return str
end

function asserts.AssertFieldName(str)
	assert(str)
	assert(type(str) == "string", "Expected FieldName to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

-- <p>A string that represents the name of an index field. CloudSearch supports regular index fields as well as dynamic fields. A dynamic field's name defines a pattern that begins or ends with a wildcard. Any document fields that don't map to a regular index field but do match a dynamic field's pattern are configured with the dynamic field's indexing options. </p> <p>Regular field names begin with a letter and can contain the following characters: a-z (lowercase), 0-9, and _ (underscore). Dynamic field names must begin or end with a wildcard (*). The wildcard can also be the only character in a dynamic field name. Multiple wildcards, and wildcards embedded within a string are not supported. </p> <p>The name <code>score</code> is reserved and cannot be used as a field name. To reference a document's ID, you can use the name <code>_id</code>. </p>
function M.FieldName(str)
	asserts.AssertFieldName(str)
	return str
end

function asserts.AssertAlgorithmicStemming(str)
	assert(str)
	assert(type(str) == "string", "Expected AlgorithmicStemming to be of type 'string'")
end

--  
function M.AlgorithmicStemming(str)
	asserts.AssertAlgorithmicStemming(str)
	return str
end

function asserts.AssertSuggesterFuzzyMatching(str)
	assert(str)
	assert(type(str) == "string", "Expected SuggesterFuzzyMatching to be of type 'string'")
end

--  
function M.SuggesterFuzzyMatching(str)
	asserts.AssertSuggesterFuzzyMatching(str)
	return str
end

function asserts.AssertDomainName(str)
	assert(str)
	assert(type(str) == "string", "Expected DomainName to be of type 'string'")
	assert(#str <= 28, "Expected string to be max 28 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
end

-- <p>A string that represents the name of a domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
function M.DomainName(str)
	asserts.AssertDomainName(str)
	return str
end

function asserts.AssertAPIVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected APIVersion to be of type 'string'")
end

-- <p>The Amazon CloudSearch API version for a domain: 2011-02-01 or 2013-01-01.</p>
function M.APIVersion(str)
	asserts.AssertAPIVersion(str)
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

function asserts.AssertFieldNameCommaList(str)
	assert(str)
	assert(type(str) == "string", "Expected FieldNameCommaList to be of type 'string'")
end

--  
function M.FieldNameCommaList(str)
	asserts.AssertFieldNameCommaList(str)
	return str
end

function asserts.AssertServiceUrl(str)
	assert(str)
	assert(type(str) == "string", "Expected ServiceUrl to be of type 'string'")
end

-- <p>The endpoint to which service requests can be submitted. For example, <code>search-imdb-movies-oopcnjfn6ugofer3zx5iadxxca.eu-west-1.cloudsearch.amazonaws.com</code> or <code>doc-imdb-movies-oopcnjfn6ugofer3zx5iadxxca.eu-west-1.cloudsearch.amazonaws.com</code>.</p>
function M.ServiceUrl(str)
	asserts.AssertServiceUrl(str)
	return str
end

function asserts.AssertErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorMessage to be of type 'string'")
end

-- <p>A human-readable string error or warning message.</p>
function M.ErrorMessage(str)
	asserts.AssertErrorMessage(str)
	return str
end

function asserts.AssertDomainId(str)
	assert(str)
	assert(type(str) == "string", "Expected DomainId to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

-- <p>An internally generated unique identifier for a domain.</p>
function M.DomainId(str)
	asserts.AssertDomainId(str)
	return str
end

function asserts.AssertWord(str)
	assert(str)
	assert(type(str) == "string", "Expected Word to be of type 'string'")
end

--  
function M.Word(str)
	asserts.AssertWord(str)
	return str
end

function asserts.AssertExpressionValue(str)
	assert(str)
	assert(type(str) == "string", "Expected ExpressionValue to be of type 'string'")
	assert(#str <= 10240, "Expected string to be max 10240 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

-- <p>The expression to evaluate for sorting while processing a search request. The <code>Expression</code> syntax is based on JavaScript expressions. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html" target="_blank">Configuring Expressions</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
function M.ExpressionValue(str)
	asserts.AssertExpressionValue(str)
	return str
end

function asserts.AssertSearchInstanceType(str)
	assert(str)
	assert(type(str) == "string", "Expected SearchInstanceType to be of type 'string'")
end

-- <p>The instance type (such as <code>search.m1.small</code>) that is being used to process search requests.</p>
function M.SearchInstanceType(str)
	asserts.AssertSearchInstanceType(str)
	return str
end

function asserts.AssertErrorCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorCode to be of type 'string'")
end

-- <p>A machine-parsable string error or warning code.</p>
function M.ErrorCode(str)
	asserts.AssertErrorCode(str)
	return str
end

function asserts.AssertIndexFieldType(str)
	assert(str)
	assert(type(str) == "string", "Expected IndexFieldType to be of type 'string'")
end

-- <p>The type of field. The valid options for a field depend on the field type. For more information about the supported field types, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-index-fields.html" target="_blank">Configuring Index Fields</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
function M.IndexFieldType(str)
	asserts.AssertIndexFieldType(str)
	return str
end

function asserts.AssertStandardName(str)
	assert(str)
	assert(type(str) == "string", "Expected StandardName to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

-- <p>Names must begin with a letter and can contain the following characters: a-z (lowercase), 0-9, and _ (underscore).</p>
function M.StandardName(str)
	asserts.AssertStandardName(str)
	return str
end

function asserts.AssertAnalysisSchemeLanguage(str)
	assert(str)
	assert(type(str) == "string", "Expected AnalysisSchemeLanguage to be of type 'string'")
end

-- <p>An <a href="http://tools.ietf.org/html/rfc4646" target="_blank">IETF RFC 4646</a> language code or <code>mul</code> for multiple languages.</p>
function M.AnalysisSchemeLanguage(str)
	asserts.AssertAnalysisSchemeLanguage(str)
	return str
end

function asserts.AssertFieldValue(str)
	assert(str)
	assert(type(str) == "string", "Expected FieldValue to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

-- <p>The value of a field attribute.</p>
function M.FieldValue(str)
	asserts.AssertFieldValue(str)
	return str
end

function asserts.AssertDynamicFieldName(str)
	assert(str)
	assert(type(str) == "string", "Expected DynamicFieldName to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DynamicFieldName(str)
	asserts.AssertDynamicFieldName(str)
	return str
end

function asserts.AssertPartitionInstanceType(str)
	assert(str)
	assert(type(str) == "string", "Expected PartitionInstanceType to be of type 'string'")
end

-- <p>The instance type (such as <code>search.m1.small</code>) on which an index partition is hosted.</p>
function M.PartitionInstanceType(str)
	asserts.AssertPartitionInstanceType(str)
	return str
end

function asserts.AssertARN(str)
	assert(str)
	assert(type(str) == "string", "Expected ARN to be of type 'string'")
end

-- <p>The Amazon Resource Name (ARN) of the search domain. See <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/index.html?Using_Identifiers.html" target="_blank">Identifiers for IAM Entities</a> in <i>Using AWS Identity and Access Management</i> for more information.</p>
function M.ARN(str)
	asserts.AssertARN(str)
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

function asserts.AssertUIntValue(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected UIntValue to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.UIntValue(integer)
	asserts.AssertUIntValue(integer)
	return integer
end

function asserts.AssertPartitionCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PartitionCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.PartitionCount(integer)
	asserts.AssertPartitionCount(integer)
	return integer
end

function asserts.AssertMaximumReplicationCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaximumReplicationCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaximumReplicationCount(integer)
	asserts.AssertMaximumReplicationCount(integer)
	return integer
end

function asserts.AssertMaximumPartitionCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaximumPartitionCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaximumPartitionCount(integer)
	asserts.AssertMaximumPartitionCount(integer)
	return integer
end

function asserts.AssertInstanceCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected InstanceCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.InstanceCount(integer)
	asserts.AssertInstanceCount(integer)
	return integer
end

function asserts.AssertMultiAZ(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected MultiAZ to be of type 'boolean'")
end

function M.MultiAZ(boolean)
	asserts.AssertMultiAZ(boolean)
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

function asserts.AssertDomainNameMap(map)
	assert(map)
	assert(type(map) == "table", "Expected DomainNameMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertDomainName(k)
		asserts.AssertAPIVersion(v)
	end
end

function M.DomainNameMap(map)
	asserts.AssertDomainNameMap(map)
	return map
end

function asserts.AssertUpdateTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected UpdateTimestamp to be of type 'string'")
end

function M.UpdateTimestamp(timestamp)
	asserts.AssertUpdateTimestamp(timestamp)
	return timestamp
end

function asserts.AssertAnalysisSchemeStatusList(list)
	assert(list)
	assert(type(list) == "table", "Expected AnalysisSchemeStatusList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAnalysisSchemeStatus(v)
	end
end

-- <p>A list of the analysis schemes configured for a domain.</p>
-- List of AnalysisSchemeStatus objects
function M.AnalysisSchemeStatusList(list)
	asserts.AssertAnalysisSchemeStatusList(list)
	return list
end

function asserts.AssertIndexFieldStatusList(list)
	assert(list)
	assert(type(list) == "table", "Expected IndexFieldStatusList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertIndexFieldStatus(v)
	end
end

-- <p>Contains the status of multiple index fields.</p>
-- List of IndexFieldStatus objects
function M.IndexFieldStatusList(list)
	asserts.AssertIndexFieldStatusList(list)
	return list
end

function asserts.AssertDomainNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected DomainNameList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDomainName(v)
	end
end

-- <p>A list of domain names.</p>
-- List of DomainName objects
function M.DomainNameList(list)
	asserts.AssertDomainNameList(list)
	return list
end

function asserts.AssertDomainStatusList(list)
	assert(list)
	assert(type(list) == "table", "Expected DomainStatusList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDomainStatus(v)
	end
end

-- <p>A list that contains the status of each requested domain.</p>
-- List of DomainStatus objects
function M.DomainStatusList(list)
	asserts.AssertDomainStatusList(list)
	return list
end

function asserts.AssertFieldNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected FieldNameList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertFieldName(v)
	end
end

-- <p>A list of field names.</p>
-- List of FieldName objects
function M.FieldNameList(list)
	asserts.AssertFieldNameList(list)
	return list
end

function asserts.AssertStandardNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected StandardNameList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertStandardName(v)
	end
end

--  
-- List of StandardName objects
function M.StandardNameList(list)
	asserts.AssertStandardNameList(list)
	return list
end

function asserts.AssertDynamicFieldNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected DynamicFieldNameList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDynamicFieldName(v)
	end
end

--  
-- List of DynamicFieldName objects
function M.DynamicFieldNameList(list)
	asserts.AssertDynamicFieldNameList(list)
	return list
end

function asserts.AssertExpressionStatusList(list)
	assert(list)
	assert(type(list) == "table", "Expected ExpressionStatusList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertExpressionStatus(v)
	end
end

-- <p>Contains the status of multiple expressions.</p>
-- List of ExpressionStatus objects
function M.ExpressionStatusList(list)
	asserts.AssertExpressionStatusList(list)
	return list
end

function asserts.AssertSuggesterStatusList(list)
	assert(list)
	assert(type(list) == "table", "Expected SuggesterStatusList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSuggesterStatus(v)
	end
end

-- <p>Contains the status of multiple suggesters.</p>
-- List of SuggesterStatus objects
function M.SuggesterStatusList(list)
	asserts.AssertSuggesterStatusList(list)
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
-- @param cb Callback function accepting two args: response, error_message
function M.ListDomainNamesAsync(cb)
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListDomainNames",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", {}, headers, M.metadata, cb)
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
