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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [OptionStatus] 
-- * Options [Expression] <p>The expression that is evaluated for sorting while processing a search request.</p>
-- Required key: Options
-- Required key: Status
-- @return ExpressionStatus structure as a key-value pair table
function M.ExpressionStatus(args)
	assert(args, "You must provide an argument table when creating ExpressionStatus")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["Options"] = args["Options"],
	}
	asserts.AssertExpressionStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AnalysisSchemes [AnalysisSchemeStatusList] <p>The analysis scheme descriptions.</p>
-- Required key: AnalysisSchemes
-- @return DescribeAnalysisSchemesResponse structure as a key-value pair table
function M.DescribeAnalysisSchemesResponse(args)
	assert(args, "You must provide an argument table when creating DescribeAnalysisSchemesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AnalysisSchemes"] = args["AnalysisSchemes"],
	}
	asserts.AssertDescribeAnalysisSchemesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AnalysisSchemeName [StandardName] <p>The name of the analysis scheme you want to delete.</p>
-- * DomainName [DomainName] 
-- Required key: DomainName
-- Required key: AnalysisSchemeName
-- @return DeleteAnalysisSchemeRequest structure as a key-value pair table
function M.DeleteAnalysisSchemeRequest(args)
	assert(args, "You must provide an argument table when creating DeleteAnalysisSchemeRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AnalysisSchemeName"] = args["AnalysisSchemeName"],
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertDeleteAnalysisSchemeRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FieldNames [FieldNameList] <p>The names of the fields that are currently being indexed.</p>
-- @return IndexDocumentsResponse structure as a key-value pair table
function M.IndexDocumentsResponse(args)
	assert(args, "You must provide an argument table when creating IndexDocumentsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FieldNames"] = args["FieldNames"],
	}
	asserts.AssertIndexDocumentsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AccessPolicies [PolicyDocument] <p>The access rules you want to configure. These rules replace any existing rules. </p>
-- * DomainName [DomainName] 
-- Required key: DomainName
-- Required key: AccessPolicies
-- @return UpdateServiceAccessPoliciesRequest structure as a key-value pair table
function M.UpdateServiceAccessPoliciesRequest(args)
	assert(args, "You must provide an argument table when creating UpdateServiceAccessPoliciesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AccessPolicies"] = args["AccessPolicies"],
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertUpdateServiceAccessPoliciesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IndexField [IndexFieldStatus] <p>The status of the index field being deleted.</p>
-- Required key: IndexField
-- @return DeleteIndexFieldResponse structure as a key-value pair table
function M.DeleteIndexFieldResponse(args)
	assert(args, "You must provide an argument table when creating DeleteIndexFieldResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IndexField"] = args["IndexField"],
	}
	asserts.AssertDeleteIndexFieldResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SourceField [FieldName] <p>The name of the source field to map to the field. </p>
-- * DefaultValue [Double] <p>A value to use for the field if the field isn't specified for a document. This can be important if you are using the field in an expression and that field is not present in every document.</p>
-- * FacetEnabled [Boolean] <p>Whether facet information can be returned for the field.</p>
-- * SearchEnabled [Boolean] <p>Whether the contents of the field are searchable.</p>
-- * SortEnabled [Boolean] <p>Whether the field can be used to sort the search results.</p>
-- * ReturnEnabled [Boolean] <p>Whether the contents of the field can be returned in the search results.</p>
-- @return DoubleOptions structure as a key-value pair table
function M.DoubleOptions(args)
	assert(args, "You must provide an argument table when creating DoubleOptions")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SourceField"] = args["SourceField"],
		["DefaultValue"] = args["DefaultValue"],
		["FacetEnabled"] = args["FacetEnabled"],
		["SearchEnabled"] = args["SearchEnabled"],
		["SortEnabled"] = args["SortEnabled"],
		["ReturnEnabled"] = args["ReturnEnabled"],
	}
	asserts.AssertDoubleOptions(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DomainNames [DomainNameMap] <p>The names of the search domains owned by an account.</p>
-- @return ListDomainNamesResponse structure as a key-value pair table
function M.ListDomainNamesResponse(args)
	assert(args, "You must provide an argument table when creating ListDomainNamesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DomainNames"] = args["DomainNames"],
	}
	asserts.AssertListDomainNamesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [OptionStatus] 
-- * Options [AnalysisScheme] 
-- Required key: Options
-- Required key: Status
-- @return AnalysisSchemeStatus structure as a key-value pair table
function M.AnalysisSchemeStatus(args)
	assert(args, "You must provide an argument table when creating AnalysisSchemeStatus")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["Options"] = args["Options"],
	}
	asserts.AssertAnalysisSchemeStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SourceFields [FieldNameCommaList] <p>A list of source fields to map to the field. </p>
-- * FacetEnabled [Boolean] <p>Whether facet information can be returned for the field.</p>
-- * DefaultValue [FieldValue] A value to use for the field if the field isn't specified for a document.
-- * ReturnEnabled [Boolean] <p>Whether the contents of the field can be returned in the search results.</p>
-- * SearchEnabled [Boolean] <p>Whether the contents of the field are searchable.</p>
-- @return DateArrayOptions structure as a key-value pair table
function M.DateArrayOptions(args)
	assert(args, "You must provide an argument table when creating DateArrayOptions")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SourceFields"] = args["SourceFields"],
		["FacetEnabled"] = args["FacetEnabled"],
		["DefaultValue"] = args["DefaultValue"],
		["ReturnEnabled"] = args["ReturnEnabled"],
		["SearchEnabled"] = args["SearchEnabled"],
	}
	asserts.AssertDateArrayOptions(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DomainStatusList [DomainStatusList] 
-- Required key: DomainStatusList
-- @return DescribeDomainsResponse structure as a key-value pair table
function M.DescribeDomainsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeDomainsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DomainStatusList"] = args["DomainStatusList"],
	}
	asserts.AssertDescribeDomainsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [OptionStatus] 
-- * Options [MultiAZ] <p>The availability options configured for the domain.</p>
-- Required key: Options
-- Required key: Status
-- @return AvailabilityOptionsStatus structure as a key-value pair table
function M.AvailabilityOptionsStatus(args)
	assert(args, "You must provide an argument table when creating AvailabilityOptionsStatus")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["Options"] = args["Options"],
	}
	asserts.AssertAvailabilityOptionsStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Deployed [Boolean] <p>Whether to display the deployed configuration (<code>true</code>) or include any pending changes (<code>false</code>). Defaults to <code>false</code>.</p>
-- * DomainName [DomainName] <p>The name of the domain you want to describe.</p>
-- Required key: DomainName
-- @return DescribeServiceAccessPoliciesRequest structure as a key-value pair table
function M.DescribeServiceAccessPoliciesRequest(args)
	assert(args, "You must provide an argument table when creating DescribeServiceAccessPoliciesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Deployed"] = args["Deployed"],
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertDescribeServiceAccessPoliciesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Expression [Expression] 
-- * DomainName [DomainName] 
-- Required key: DomainName
-- Required key: Expression
-- @return DefineExpressionRequest structure as a key-value pair table
function M.DefineExpressionRequest(args)
	assert(args, "You must provide an argument table when creating DefineExpressionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Expression"] = args["Expression"],
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertDefineExpressionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IndexFieldName [DynamicFieldName] <p>The name of the index field your want to remove from the domain's indexing options.</p>
-- * DomainName [DomainName] 
-- Required key: DomainName
-- Required key: IndexFieldName
-- @return DeleteIndexFieldRequest structure as a key-value pair table
function M.DeleteIndexFieldRequest(args)
	assert(args, "You must provide an argument table when creating DeleteIndexFieldRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IndexFieldName"] = args["IndexFieldName"],
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertDeleteIndexFieldRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SourceFields [FieldNameCommaList] <p>A list of source fields to map to the field. </p>
-- * FacetEnabled [Boolean] <p>Whether facet information can be returned for the field.</p>
-- * DefaultValue [FieldValue] A value to use for the field if the field isn't specified for a document.
-- * ReturnEnabled [Boolean] <p>Whether the contents of the field can be returned in the search results.</p>
-- * SearchEnabled [Boolean] <p>Whether the contents of the field are searchable.</p>
-- @return LiteralArrayOptions structure as a key-value pair table
function M.LiteralArrayOptions(args)
	assert(args, "You must provide an argument table when creating LiteralArrayOptions")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SourceFields"] = args["SourceFields"],
		["FacetEnabled"] = args["FacetEnabled"],
		["DefaultValue"] = args["DefaultValue"],
		["ReturnEnabled"] = args["ReturnEnabled"],
		["SearchEnabled"] = args["SearchEnabled"],
	}
	asserts.AssertLiteralArrayOptions(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [OptionStatus] 
-- * Options [PolicyDocument] 
-- Required key: Options
-- Required key: Status
-- @return AccessPoliciesStatus structure as a key-value pair table
function M.AccessPoliciesStatus(args)
	assert(args, "You must provide an argument table when creating AccessPoliciesStatus")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["Options"] = args["Options"],
	}
	asserts.AssertAccessPoliciesStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AvailabilityOptions [AvailabilityOptionsStatus] <p>The newly-configured availability options. Indicates whether Multi-AZ is enabled for the domain. </p>
-- @return UpdateAvailabilityOptionsResponse structure as a key-value pair table
function M.UpdateAvailabilityOptionsResponse(args)
	assert(args, "You must provide an argument table when creating UpdateAvailabilityOptionsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AvailabilityOptions"] = args["AvailabilityOptions"],
	}
	asserts.AssertUpdateAvailabilityOptionsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Expression [ExpressionStatus] 
-- Required key: Expression
-- @return DefineExpressionResponse structure as a key-value pair table
function M.DefineExpressionResponse(args)
	assert(args, "You must provide an argument table when creating DefineExpressionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Expression"] = args["Expression"],
	}
	asserts.AssertDefineExpressionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SortExpression [String] <p>An expression that computes a score for each suggestion to control how they are sorted. The scores are rounded to the nearest integer, with a floor of 0 and a ceiling of 2^31-1. A document's relevance score is not computed for suggestions, so sort expressions cannot reference the <code>_score</code> value. To sort suggestions using a numeric field or existing expression, simply specify the name of the field or expression. If no expression is configured for the suggester, the suggestions are sorted with the closest matches listed first.</p>
-- * FuzzyMatching [SuggesterFuzzyMatching] <p>The level of fuzziness allowed when suggesting matches for a string: <code>none</code>, <code>low</code>, or <code>high</code>. With none, the specified string is treated as an exact prefix. With low, suggestions must differ from the specified string by no more than one character. With high, suggestions can differ by up to two characters. The default is none. </p>
-- * SourceField [FieldName] <p>The name of the index field you want to use for suggestions. </p>
-- Required key: SourceField
-- @return DocumentSuggesterOptions structure as a key-value pair table
function M.DocumentSuggesterOptions(args)
	assert(args, "You must provide an argument table when creating DocumentSuggesterOptions")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SortExpression"] = args["SortExpression"],
		["FuzzyMatching"] = args["FuzzyMatching"],
		["SourceField"] = args["SourceField"],
	}
	asserts.AssertDocumentSuggesterOptions(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AnalysisScheme [AnalysisSchemeStatus] 
-- Required key: AnalysisScheme
-- @return DefineAnalysisSchemeResponse structure as a key-value pair table
function M.DefineAnalysisSchemeResponse(args)
	assert(args, "You must provide an argument table when creating DefineAnalysisSchemeResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AnalysisScheme"] = args["AnalysisScheme"],
	}
	asserts.AssertDefineAnalysisSchemeResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DomainName [DomainName] <p>The name of the domain you want to permanently delete.</p>
-- Required key: DomainName
-- @return DeleteDomainRequest structure as a key-value pair table
function M.DeleteDomainRequest(args)
	assert(args, "You must provide an argument table when creating DeleteDomainRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertDeleteDomainRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ScalingParameters [ScalingParametersStatus] 
-- Required key: ScalingParameters
-- @return UpdateScalingParametersResponse structure as a key-value pair table
function M.UpdateScalingParametersResponse(args)
	assert(args, "You must provide an argument table when creating UpdateScalingParametersResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ScalingParameters"] = args["ScalingParameters"],
	}
	asserts.AssertUpdateScalingParametersResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [OptionStatus] 
-- * Options [Suggester] 
-- Required key: Options
-- Required key: Status
-- @return SuggesterStatus structure as a key-value pair table
function M.SuggesterStatus(args)
	assert(args, "You must provide an argument table when creating SuggesterStatus")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["Options"] = args["Options"],
	}
	asserts.AssertSuggesterStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DomainName [DomainName] 
-- Required key: DomainName
-- @return DescribeScalingParametersRequest structure as a key-value pair table
function M.DescribeScalingParametersRequest(args)
	assert(args, "You must provide an argument table when creating DescribeScalingParametersRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertDescribeScalingParametersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Suggester [SuggesterStatus] <p>The status of the suggester being deleted.</p>
-- Required key: Suggester
-- @return DeleteSuggesterResponse structure as a key-value pair table
function M.DeleteSuggesterResponse(args)
	assert(args, "You must provide an argument table when creating DeleteSuggesterResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Suggester"] = args["Suggester"],
	}
	asserts.AssertDeleteSuggesterResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Expression [ExpressionStatus] <p>The status of the expression being deleted.</p>
-- Required key: Expression
-- @return DeleteExpressionResponse structure as a key-value pair table
function M.DeleteExpressionResponse(args)
	assert(args, "You must provide an argument table when creating DeleteExpressionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Expression"] = args["Expression"],
	}
	asserts.AssertDeleteExpressionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DesiredPartitionCount [UIntValue] <p>The number of partitions you want to preconfigure for your domain. Only valid when you select <code>m2.2xlarge</code> as the desired instance type.</p>
-- * DesiredInstanceType [PartitionInstanceType] <p>The instance type that you want to preconfigure for your domain. For example, <code>search.m1.small</code>.</p>
-- * DesiredReplicationCount [UIntValue] <p>The number of replicas you want to preconfigure for each index partition.</p>
-- @return ScalingParameters structure as a key-value pair table
function M.ScalingParameters(args)
	assert(args, "You must provide an argument table when creating ScalingParameters")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DesiredPartitionCount"] = args["DesiredPartitionCount"],
		["DesiredInstanceType"] = args["DesiredInstanceType"],
		["DesiredReplicationCount"] = args["DesiredReplicationCount"],
	}
	asserts.AssertScalingParameters(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AnalysisScheme [AnalysisSchemeStatus] <p>The status of the analysis scheme being deleted.</p>
-- Required key: AnalysisScheme
-- @return DeleteAnalysisSchemeResponse structure as a key-value pair table
function M.DeleteAnalysisSchemeResponse(args)
	assert(args, "You must provide an argument table when creating DeleteAnalysisSchemeResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AnalysisScheme"] = args["AnalysisScheme"],
	}
	asserts.AssertDeleteAnalysisSchemeResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Suggester [Suggester] 
-- * DomainName [DomainName] 
-- Required key: DomainName
-- Required key: Suggester
-- @return DefineSuggesterRequest structure as a key-value pair table
function M.DefineSuggesterRequest(args)
	assert(args, "You must provide an argument table when creating DefineSuggesterRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Suggester"] = args["Suggester"],
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertDefineSuggesterRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
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
	}
	asserts.AssertLimitExceededException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DocumentSuggesterOptions [DocumentSuggesterOptions] 
-- * SuggesterName [StandardName] 
-- Required key: SuggesterName
-- Required key: DocumentSuggesterOptions
-- @return Suggester structure as a key-value pair table
function M.Suggester(args)
	assert(args, "You must provide an argument table when creating Suggester")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DocumentSuggesterOptions"] = args["DocumentSuggesterOptions"],
		["SuggesterName"] = args["SuggesterName"],
	}
	asserts.AssertSuggester(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Expressions [ExpressionStatusList] <p>The expressions configured for the domain.</p>
-- Required key: Expressions
-- @return DescribeExpressionsResponse structure as a key-value pair table
function M.DescribeExpressionsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeExpressionsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Expressions"] = args["Expressions"],
	}
	asserts.AssertDescribeExpressionsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ScalingParameters [ScalingParameters] 
-- * DomainName [DomainName] 
-- Required key: DomainName
-- Required key: ScalingParameters
-- @return UpdateScalingParametersRequest structure as a key-value pair table
function M.UpdateScalingParametersRequest(args)
	assert(args, "You must provide an argument table when creating UpdateScalingParametersRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ScalingParameters"] = args["ScalingParameters"],
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertUpdateScalingParametersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SourceField [FieldName] 
-- * DefaultValue [FieldValue] A value to use for the field if the field isn't specified for a document.
-- * FacetEnabled [Boolean] <p>Whether facet information can be returned for the field.</p>
-- * SearchEnabled [Boolean] <p>Whether the contents of the field are searchable.</p>
-- * SortEnabled [Boolean] <p>Whether the field can be used to sort the search results.</p>
-- * ReturnEnabled [Boolean] <p>Whether the contents of the field can be returned in the search results.</p>
-- @return LiteralOptions structure as a key-value pair table
function M.LiteralOptions(args)
	assert(args, "You must provide an argument table when creating LiteralOptions")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SourceField"] = args["SourceField"],
		["DefaultValue"] = args["DefaultValue"],
		["FacetEnabled"] = args["FacetEnabled"],
		["SearchEnabled"] = args["SearchEnabled"],
		["SortEnabled"] = args["SortEnabled"],
		["ReturnEnabled"] = args["ReturnEnabled"],
	}
	asserts.AssertLiteralOptions(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DomainStatus [DomainStatus] 
-- @return CreateDomainResponse structure as a key-value pair table
function M.CreateDomainResponse(args)
	assert(args, "You must provide an argument table when creating CreateDomainResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DomainStatus"] = args["DomainStatus"],
	}
	asserts.AssertCreateDomainResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Endpoint [ServiceUrl] 
-- @return ServiceEndpoint structure as a key-value pair table
function M.ServiceEndpoint(args)
	assert(args, "You must provide an argument table when creating ServiceEndpoint")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Endpoint"] = args["Endpoint"],
	}
	asserts.AssertServiceEndpoint(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- * Code [ErrorCode] 
-- @return BaseException structure as a key-value pair table
function M.BaseException(args)
	assert(args, "You must provide an argument table when creating BaseException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
		["Code"] = args["Code"],
	}
	asserts.AssertBaseException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SuggesterName [StandardName] <p>Specifies the name of the suggester you want to delete.</p>
-- * DomainName [DomainName] 
-- Required key: DomainName
-- Required key: SuggesterName
-- @return DeleteSuggesterRequest structure as a key-value pair table
function M.DeleteSuggesterRequest(args)
	assert(args, "You must provide an argument table when creating DeleteSuggesterRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SuggesterName"] = args["SuggesterName"],
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertDeleteSuggesterRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ExpressionNames [StandardNameList] <p>Limits the <code><a>DescribeExpressions</a></code> response to the specified expressions. If not specified, all expressions are shown.</p>
-- * Deployed [Boolean] <p>Whether to display the deployed configuration (<code>true</code>) or include any pending changes (<code>false</code>). Defaults to <code>false</code>.</p>
-- * DomainName [DomainName] <p>The name of the domain you want to describe.</p>
-- Required key: DomainName
-- @return DescribeExpressionsRequest structure as a key-value pair table
function M.DescribeExpressionsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeExpressionsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ExpressionNames"] = args["ExpressionNames"],
		["Deployed"] = args["Deployed"],
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertDescribeExpressionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SourceField [FieldName] 
-- * DefaultValue [FieldValue] A value to use for the field if the field isn't specified for a document.
-- * FacetEnabled [Boolean] <p>Whether facet information can be returned for the field.</p>
-- * SearchEnabled [Boolean] <p>Whether the contents of the field are searchable.</p>
-- * SortEnabled [Boolean] <p>Whether the field can be used to sort the search results.</p>
-- * ReturnEnabled [Boolean] <p>Whether the contents of the field can be returned in the search results.</p>
-- @return LatLonOptions structure as a key-value pair table
function M.LatLonOptions(args)
	assert(args, "You must provide an argument table when creating LatLonOptions")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SourceField"] = args["SourceField"],
		["DefaultValue"] = args["DefaultValue"],
		["FacetEnabled"] = args["FacetEnabled"],
		["SearchEnabled"] = args["SearchEnabled"],
		["SortEnabled"] = args["SortEnabled"],
		["ReturnEnabled"] = args["ReturnEnabled"],
	}
	asserts.AssertLatLonOptions(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SourceField [FieldName] 
-- * DefaultValue [FieldValue] A value to use for the field if the field isn't specified for a document.
-- * FacetEnabled [Boolean] <p>Whether facet information can be returned for the field.</p>
-- * SearchEnabled [Boolean] <p>Whether the contents of the field are searchable.</p>
-- * SortEnabled [Boolean] <p>Whether the field can be used to sort the search results.</p>
-- * ReturnEnabled [Boolean] <p>Whether the contents of the field can be returned in the search results.</p>
-- @return DateOptions structure as a key-value pair table
function M.DateOptions(args)
	assert(args, "You must provide an argument table when creating DateOptions")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SourceField"] = args["SourceField"],
		["DefaultValue"] = args["DefaultValue"],
		["FacetEnabled"] = args["FacetEnabled"],
		["SearchEnabled"] = args["SearchEnabled"],
		["SortEnabled"] = args["SortEnabled"],
		["ReturnEnabled"] = args["ReturnEnabled"],
	}
	asserts.AssertDateOptions(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IndexField [IndexField] <p>The index field and field options you want to configure. </p>
-- * DomainName [DomainName] 
-- Required key: DomainName
-- Required key: IndexField
-- @return DefineIndexFieldRequest structure as a key-value pair table
function M.DefineIndexFieldRequest(args)
	assert(args, "You must provide an argument table when creating DefineIndexFieldRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IndexField"] = args["IndexField"],
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertDefineIndexFieldRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ScalingParameters [ScalingParametersStatus] 
-- Required key: ScalingParameters
-- @return DescribeScalingParametersResponse structure as a key-value pair table
function M.DescribeScalingParametersResponse(args)
	assert(args, "You must provide an argument table when creating DescribeScalingParametersResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ScalingParameters"] = args["ScalingParameters"],
	}
	asserts.AssertDescribeScalingParametersResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DomainName [DomainName] <p>A name for the domain you are creating. Allowed characters are a-z (lower-case letters), 0-9, and hyphen (-). Domain names must start with a letter or number and be at least 3 and no more than 28 characters long.</p>
-- Required key: DomainName
-- @return CreateDomainRequest structure as a key-value pair table
function M.CreateDomainRequest(args)
	assert(args, "You must provide an argument table when creating CreateDomainRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertCreateDomainRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MaximumReplicationCount [MaximumReplicationCount] 
-- * MaximumPartitionCount [MaximumPartitionCount] 
-- Required key: MaximumReplicationCount
-- Required key: MaximumPartitionCount
-- @return Limits structure as a key-value pair table
function M.Limits(args)
	assert(args, "You must provide an argument table when creating Limits")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MaximumReplicationCount"] = args["MaximumReplicationCount"],
		["MaximumPartitionCount"] = args["MaximumPartitionCount"],
	}
	asserts.AssertLimits(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InternalException structure as a key-value pair table
function M.InternalException(args)
	assert(args, "You must provide an argument table when creating InternalException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInternalException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SearchInstanceType [SearchInstanceType] <p>The instance type that is being used to process search requests.</p>
-- * DomainId [DomainId] 
-- * Limits [Limits] 
-- * Created [Boolean] <p>True if the search domain is created. It can take several minutes to initialize a domain when <a>CreateDomain</a> is called. Newly created search domains are returned from <a>DescribeDomains</a> with a false value for Created until domain creation is complete.</p>
-- * Deleted [Boolean] <p>True if the search domain has been deleted. The system must clean up resources dedicated to the search domain when <a>DeleteDomain</a> is called. Newly deleted search domains are returned from <a>DescribeDomains</a> with a true value for IsDeleted for several minutes until resource cleanup is complete.</p>
-- * SearchInstanceCount [InstanceCount] <p>The number of search instances that are available to process search requests.</p>
-- * DomainName [DomainName] 
-- * SearchService [ServiceEndpoint] <p>The service endpoint for requesting search results from a search domain.</p>
-- * RequiresIndexDocuments [Boolean] <p>True if <a>IndexDocuments</a> needs to be called to activate the current domain configuration.</p>
-- * Processing [Boolean] <p>True if processing is being done to activate the current domain configuration.</p>
-- * DocService [ServiceEndpoint] <p>The service endpoint for updating documents in a search domain.</p>
-- * ARN [ARN] 
-- * SearchPartitionCount [PartitionCount] <p>The number of partitions across which the search index is spread.</p>
-- Required key: DomainId
-- Required key: DomainName
-- Required key: RequiresIndexDocuments
-- @return DomainStatus structure as a key-value pair table
function M.DomainStatus(args)
	assert(args, "You must provide an argument table when creating DomainStatus")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SearchInstanceType"] = args["SearchInstanceType"],
		["DomainId"] = args["DomainId"],
		["Limits"] = args["Limits"],
		["Created"] = args["Created"],
		["Deleted"] = args["Deleted"],
		["SearchInstanceCount"] = args["SearchInstanceCount"],
		["DomainName"] = args["DomainName"],
		["SearchService"] = args["SearchService"],
		["RequiresIndexDocuments"] = args["RequiresIndexDocuments"],
		["Processing"] = args["Processing"],
		["DocService"] = args["DocService"],
		["ARN"] = args["ARN"],
		["SearchPartitionCount"] = args["SearchPartitionCount"],
	}
	asserts.AssertDomainStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AccessPolicies [AccessPoliciesStatus] <p>The access rules configured for the domain.</p>
-- Required key: AccessPolicies
-- @return UpdateServiceAccessPoliciesResponse structure as a key-value pair table
function M.UpdateServiceAccessPoliciesResponse(args)
	assert(args, "You must provide an argument table when creating UpdateServiceAccessPoliciesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AccessPolicies"] = args["AccessPolicies"],
	}
	asserts.AssertUpdateServiceAccessPoliciesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ExpressionName [StandardName] 
-- * ExpressionValue [ExpressionValue] 
-- Required key: ExpressionName
-- Required key: ExpressionValue
-- @return Expression structure as a key-value pair table
function M.Expression(args)
	assert(args, "You must provide an argument table when creating Expression")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ExpressionName"] = args["ExpressionName"],
		["ExpressionValue"] = args["ExpressionValue"],
	}
	asserts.AssertExpression(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Suggester [SuggesterStatus] 
-- Required key: Suggester
-- @return DefineSuggesterResponse structure as a key-value pair table
function M.DefineSuggesterResponse(args)
	assert(args, "You must provide an argument table when creating DefineSuggesterResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Suggester"] = args["Suggester"],
	}
	asserts.AssertDefineSuggesterResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AnalysisSchemeLanguage [AnalysisSchemeLanguage] 
-- * AnalysisSchemeName [StandardName] 
-- * AnalysisOptions [AnalysisOptions] 
-- Required key: AnalysisSchemeName
-- Required key: AnalysisSchemeLanguage
-- @return AnalysisScheme structure as a key-value pair table
function M.AnalysisScheme(args)
	assert(args, "You must provide an argument table when creating AnalysisScheme")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AnalysisSchemeLanguage"] = args["AnalysisSchemeLanguage"],
		["AnalysisSchemeName"] = args["AnalysisSchemeName"],
		["AnalysisOptions"] = args["AnalysisOptions"],
	}
	asserts.AssertAnalysisScheme(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AlgorithmicStemming [AlgorithmicStemming] <p>The level of algorithmic stemming to perform: <code>none</code>, <code>minimal</code>, <code>light</code>, or <code>full</code>. The available levels vary depending on the language. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/text-processing.html#text-processing-settings" target="_blank">Language Specific Text Processing Settings</a> in the <i>Amazon CloudSearch Developer Guide</i> </p>
-- * Synonyms [String] <p>A JSON object that defines synonym groups and aliases. A synonym group is an array of arrays, where each sub-array is a group of terms where each term in the group is considered a synonym of every other term in the group. The aliases value is an object that contains a collection of string:value pairs where the string specifies a term and the array of values specifies each of the aliases for that term. An alias is considered a synonym of the specified term, but the term is not considered a synonym of the alias. For more information about specifying synonyms, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-analysis-schemes.html#synonyms">Synonyms</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
-- * StemmingDictionary [String] <p>A JSON object that contains a collection of string:value pairs that each map a term to its stem. For example, <code>{"term1": "stem1", "term2": "stem2", "term3": "stem3"}</code>. The stemming dictionary is applied in addition to any algorithmic stemming. This enables you to override the results of the algorithmic stemming to correct specific cases of overstemming or understemming. The maximum size of a stemming dictionary is 500 KB.</p>
-- * Stopwords [String] <p>A JSON array of terms to ignore during indexing and searching. For example, <code>["a", "an", "the", "of"]</code>. The stopwords dictionary must explicitly list each word you want to ignore. Wildcards and regular expressions are not supported. </p>
-- * JapaneseTokenizationDictionary [String] <p>A JSON array that contains a collection of terms, tokens, readings and part of speech for Japanese Tokenizaiton. The Japanese tokenization dictionary enables you to override the default tokenization for selected terms. This is only valid for Japanese language fields.</p>
-- @return AnalysisOptions structure as a key-value pair table
function M.AnalysisOptions(args)
	assert(args, "You must provide an argument table when creating AnalysisOptions")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AlgorithmicStemming"] = args["AlgorithmicStemming"],
		["Synonyms"] = args["Synonyms"],
		["StemmingDictionary"] = args["StemmingDictionary"],
		["Stopwords"] = args["Stopwords"],
		["JapaneseTokenizationDictionary"] = args["JapaneseTokenizationDictionary"],
	}
	asserts.AssertAnalysisOptions(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DomainStatus [DomainStatus] 
-- @return DeleteDomainResponse structure as a key-value pair table
function M.DeleteDomainResponse(args)
	assert(args, "You must provide an argument table when creating DeleteDomainResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DomainStatus"] = args["DomainStatus"],
	}
	asserts.AssertDeleteDomainResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
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
	}
	asserts.AssertResourceNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AccessPolicies [AccessPoliciesStatus] <p>The access rules configured for the domain specified in the request.</p>
-- Required key: AccessPolicies
-- @return DescribeServiceAccessPoliciesResponse structure as a key-value pair table
function M.DescribeServiceAccessPoliciesResponse(args)
	assert(args, "You must provide an argument table when creating DescribeServiceAccessPoliciesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AccessPolicies"] = args["AccessPolicies"],
	}
	asserts.AssertDescribeServiceAccessPoliciesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DisabledOperationException structure as a key-value pair table
function M.DisabledOperationException(args)
	assert(args, "You must provide an argument table when creating DisabledOperationException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDisabledOperationException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SourceFields [FieldNameCommaList] <p>A list of source fields to map to the field. </p>
-- * DefaultValue [FieldValue] A value to use for the field if the field isn't specified for a document.
-- * HighlightEnabled [Boolean] <p>Whether highlights can be returned for the field.</p>
-- * ReturnEnabled [Boolean] <p>Whether the contents of the field can be returned in the search results.</p>
-- * AnalysisScheme [Word] <p>The name of an analysis scheme for a <code>text-array</code> field.</p>
-- @return TextArrayOptions structure as a key-value pair table
function M.TextArrayOptions(args)
	assert(args, "You must provide an argument table when creating TextArrayOptions")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SourceFields"] = args["SourceFields"],
		["DefaultValue"] = args["DefaultValue"],
		["HighlightEnabled"] = args["HighlightEnabled"],
		["ReturnEnabled"] = args["ReturnEnabled"],
		["AnalysisScheme"] = args["AnalysisScheme"],
	}
	asserts.AssertTextArrayOptions(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AvailabilityOptions [AvailabilityOptionsStatus] <p>The availability options configured for the domain. Indicates whether Multi-AZ is enabled for the domain. </p>
-- @return DescribeAvailabilityOptionsResponse structure as a key-value pair table
function M.DescribeAvailabilityOptionsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeAvailabilityOptionsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AvailabilityOptions"] = args["AvailabilityOptions"],
	}
	asserts.AssertDescribeAvailabilityOptionsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [OptionStatus] 
-- * Options [IndexField] 
-- Required key: Options
-- Required key: Status
-- @return IndexFieldStatus structure as a key-value pair table
function M.IndexFieldStatus(args)
	assert(args, "You must provide an argument table when creating IndexFieldStatus")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["Options"] = args["Options"],
	}
	asserts.AssertIndexFieldStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AnalysisSchemeNames [StandardNameList] <p>The analysis schemes you want to describe.</p>
-- * Deployed [Boolean] <p>Whether to display the deployed configuration (<code>true</code>) or include any pending changes (<code>false</code>). Defaults to <code>false</code>.</p>
-- * DomainName [DomainName] <p>The name of the domain you want to describe.</p>
-- Required key: DomainName
-- @return DescribeAnalysisSchemesRequest structure as a key-value pair table
function M.DescribeAnalysisSchemesRequest(args)
	assert(args, "You must provide an argument table when creating DescribeAnalysisSchemesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AnalysisSchemeNames"] = args["AnalysisSchemeNames"],
		["Deployed"] = args["Deployed"],
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertDescribeAnalysisSchemesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ExpressionName [StandardName] <p>The name of the <code><a>Expression</a></code> to delete.</p>
-- * DomainName [DomainName] 
-- Required key: DomainName
-- Required key: ExpressionName
-- @return DeleteExpressionRequest structure as a key-value pair table
function M.DeleteExpressionRequest(args)
	assert(args, "You must provide an argument table when creating DeleteExpressionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ExpressionName"] = args["ExpressionName"],
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertDeleteExpressionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidTypeException structure as a key-value pair table
function M.InvalidTypeException(args)
	assert(args, "You must provide an argument table when creating InvalidTypeException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidTypeException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PendingDeletion [Boolean] <p>Indicates that the option will be deleted once processing is complete.</p>
-- * State [OptionState] <p>The state of processing a change to an option. Possible values:</p> <ul> <li> <code>RequiresIndexDocuments</code>: the option's latest value will not be deployed until <a>IndexDocuments</a> has been called and indexing is complete.</li> <li> <code>Processing</code>: the option's latest value is in the process of being activated. </li> <li> <code>Active</code>: the option's latest value is completely deployed.</li> <li> <code>FailedToValidate</code>: the option value is not compatible with the domain's data and cannot be used to index the data. You must either modify the option value or update or remove the incompatible documents.</li> </ul>
-- * CreationDate [UpdateTimestamp] <p>A timestamp for when this option was created.</p>
-- * UpdateVersion [UIntValue] <p>A unique integer that indicates when this option was last updated.</p>
-- * UpdateDate [UpdateTimestamp] <p>A timestamp for when this option was last updated.</p>
-- Required key: CreationDate
-- Required key: UpdateDate
-- Required key: State
-- @return OptionStatus structure as a key-value pair table
function M.OptionStatus(args)
	assert(args, "You must provide an argument table when creating OptionStatus")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PendingDeletion"] = args["PendingDeletion"],
		["State"] = args["State"],
		["CreationDate"] = args["CreationDate"],
		["UpdateVersion"] = args["UpdateVersion"],
		["UpdateDate"] = args["UpdateDate"],
	}
	asserts.AssertOptionStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IntArrayOptions [IntArrayOptions] 
-- * LiteralArrayOptions [LiteralArrayOptions] 
-- * LiteralOptions [LiteralOptions] 
-- * LatLonOptions [LatLonOptions] 
-- * DateArrayOptions [DateArrayOptions] 
-- * DoubleArrayOptions [DoubleArrayOptions] 
-- * TextArrayOptions [TextArrayOptions] 
-- * IndexFieldName [DynamicFieldName] <p>A string that represents the name of an index field. CloudSearch supports regular index fields as well as dynamic fields. A dynamic field's name defines a pattern that begins or ends with a wildcard. Any document fields that don't map to a regular index field but do match a dynamic field's pattern are configured with the dynamic field's indexing options. </p> <p>Regular field names begin with a letter and can contain the following characters: a-z (lowercase), 0-9, and _ (underscore). Dynamic field names must begin or end with a wildcard (*). The wildcard can also be the only character in a dynamic field name. Multiple wildcards, and wildcards embedded within a string are not supported. </p> <p>The name <code>score</code> is reserved and cannot be used as a field name. To reference a document's ID, you can use the name <code>_id</code>. </p>
-- * DoubleOptions [DoubleOptions] 
-- * DateOptions [DateOptions] 
-- * IndexFieldType [IndexFieldType] 
-- * IntOptions [IntOptions] 
-- * TextOptions [TextOptions] 
-- Required key: IndexFieldName
-- Required key: IndexFieldType
-- @return IndexField structure as a key-value pair table
function M.IndexField(args)
	assert(args, "You must provide an argument table when creating IndexField")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IntArrayOptions"] = args["IntArrayOptions"],
		["LiteralArrayOptions"] = args["LiteralArrayOptions"],
		["LiteralOptions"] = args["LiteralOptions"],
		["LatLonOptions"] = args["LatLonOptions"],
		["DateArrayOptions"] = args["DateArrayOptions"],
		["DoubleArrayOptions"] = args["DoubleArrayOptions"],
		["TextArrayOptions"] = args["TextArrayOptions"],
		["IndexFieldName"] = args["IndexFieldName"],
		["DoubleOptions"] = args["DoubleOptions"],
		["DateOptions"] = args["DateOptions"],
		["IndexFieldType"] = args["IndexFieldType"],
		["IntOptions"] = args["IntOptions"],
		["TextOptions"] = args["TextOptions"],
	}
	asserts.AssertIndexField(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SuggesterNames [StandardNameList] <p>The suggesters you want to describe.</p>
-- * Deployed [Boolean] <p>Whether to display the deployed configuration (<code>true</code>) or include any pending changes (<code>false</code>). Defaults to <code>false</code>.</p>
-- * DomainName [DomainName] <p>The name of the domain you want to describe.</p>
-- Required key: DomainName
-- @return DescribeSuggestersRequest structure as a key-value pair table
function M.DescribeSuggestersRequest(args)
	assert(args, "You must provide an argument table when creating DescribeSuggestersRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SuggesterNames"] = args["SuggesterNames"],
		["Deployed"] = args["Deployed"],
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertDescribeSuggestersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Deployed [Boolean] <p>Whether to display the deployed configuration (<code>true</code>) or include any pending changes (<code>false</code>). Defaults to <code>false</code>.</p>
-- * FieldNames [DynamicFieldNameList] <p>A list of the index fields you want to describe. If not specified, information is returned for all configured index fields.</p>
-- * DomainName [DomainName] <p>The name of the domain you want to describe.</p>
-- Required key: DomainName
-- @return DescribeIndexFieldsRequest structure as a key-value pair table
function M.DescribeIndexFieldsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeIndexFieldsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Deployed"] = args["Deployed"],
		["FieldNames"] = args["FieldNames"],
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertDescribeIndexFieldsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [OptionStatus] 
-- * Options [ScalingParameters] 
-- Required key: Options
-- Required key: Status
-- @return ScalingParametersStatus structure as a key-value pair table
function M.ScalingParametersStatus(args)
	assert(args, "You must provide an argument table when creating ScalingParametersStatus")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["Options"] = args["Options"],
	}
	asserts.AssertScalingParametersStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DomainName [DomainName] 
-- Required key: DomainName
-- @return BuildSuggestersRequest structure as a key-value pair table
function M.BuildSuggestersRequest(args)
	assert(args, "You must provide an argument table when creating BuildSuggestersRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertBuildSuggestersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AnalysisScheme [AnalysisScheme] 
-- * DomainName [DomainName] 
-- Required key: DomainName
-- Required key: AnalysisScheme
-- @return DefineAnalysisSchemeRequest structure as a key-value pair table
function M.DefineAnalysisSchemeRequest(args)
	assert(args, "You must provide an argument table when creating DefineAnalysisSchemeRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AnalysisScheme"] = args["AnalysisScheme"],
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertDefineAnalysisSchemeRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SourceFields [FieldNameCommaList] <p>A list of source fields to map to the field. </p>
-- * FacetEnabled [Boolean] <p>Whether facet information can be returned for the field.</p>
-- * DefaultValue [Long] A value to use for the field if the field isn't specified for a document.
-- * ReturnEnabled [Boolean] <p>Whether the contents of the field can be returned in the search results.</p>
-- * SearchEnabled [Boolean] <p>Whether the contents of the field are searchable.</p>
-- @return IntArrayOptions structure as a key-value pair table
function M.IntArrayOptions(args)
	assert(args, "You must provide an argument table when creating IntArrayOptions")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SourceFields"] = args["SourceFields"],
		["FacetEnabled"] = args["FacetEnabled"],
		["DefaultValue"] = args["DefaultValue"],
		["ReturnEnabled"] = args["ReturnEnabled"],
		["SearchEnabled"] = args["SearchEnabled"],
	}
	asserts.AssertIntArrayOptions(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AnalysisScheme [Word] <p>The name of an analysis scheme for a <code>text</code> field.</p>
-- * SourceField [FieldName] 
-- * DefaultValue [FieldValue] A value to use for the field if the field isn't specified for a document.
-- * HighlightEnabled [Boolean] <p>Whether highlights can be returned for the field.</p>
-- * SortEnabled [Boolean] <p>Whether the field can be used to sort the search results.</p>
-- * ReturnEnabled [Boolean] <p>Whether the contents of the field can be returned in the search results.</p>
-- @return TextOptions structure as a key-value pair table
function M.TextOptions(args)
	assert(args, "You must provide an argument table when creating TextOptions")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AnalysisScheme"] = args["AnalysisScheme"],
		["SourceField"] = args["SourceField"],
		["DefaultValue"] = args["DefaultValue"],
		["HighlightEnabled"] = args["HighlightEnabled"],
		["SortEnabled"] = args["SortEnabled"],
		["ReturnEnabled"] = args["ReturnEnabled"],
	}
	asserts.AssertTextOptions(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DomainName [DomainName] 
-- Required key: DomainName
-- @return IndexDocumentsRequest structure as a key-value pair table
function M.IndexDocumentsRequest(args)
	assert(args, "You must provide an argument table when creating IndexDocumentsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertIndexDocumentsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Deployed [Boolean] <p>Whether to display the deployed configuration (<code>true</code>) or include any pending changes (<code>false</code>). Defaults to <code>false</code>.</p>
-- * DomainName [DomainName] <p>The name of the domain you want to describe.</p>
-- Required key: DomainName
-- @return DescribeAvailabilityOptionsRequest structure as a key-value pair table
function M.DescribeAvailabilityOptionsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeAvailabilityOptionsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Deployed"] = args["Deployed"],
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertDescribeAvailabilityOptionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IndexField [IndexFieldStatus] 
-- Required key: IndexField
-- @return DefineIndexFieldResponse structure as a key-value pair table
function M.DefineIndexFieldResponse(args)
	assert(args, "You must provide an argument table when creating DefineIndexFieldResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IndexField"] = args["IndexField"],
	}
	asserts.AssertDefineIndexFieldResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IndexFields [IndexFieldStatusList] <p>The index fields configured for the domain.</p>
-- Required key: IndexFields
-- @return DescribeIndexFieldsResponse structure as a key-value pair table
function M.DescribeIndexFieldsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeIndexFieldsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IndexFields"] = args["IndexFields"],
	}
	asserts.AssertDescribeIndexFieldsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SourceFields [FieldNameCommaList] <p>A list of source fields to map to the field. </p>
-- * FacetEnabled [Boolean] <p>Whether facet information can be returned for the field.</p>
-- * DefaultValue [Double] A value to use for the field if the field isn't specified for a document.
-- * ReturnEnabled [Boolean] <p>Whether the contents of the field can be returned in the search results.</p>
-- * SearchEnabled [Boolean] <p>Whether the contents of the field are searchable.</p>
-- @return DoubleArrayOptions structure as a key-value pair table
function M.DoubleArrayOptions(args)
	assert(args, "You must provide an argument table when creating DoubleArrayOptions")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SourceFields"] = args["SourceFields"],
		["FacetEnabled"] = args["FacetEnabled"],
		["DefaultValue"] = args["DefaultValue"],
		["ReturnEnabled"] = args["ReturnEnabled"],
		["SearchEnabled"] = args["SearchEnabled"],
	}
	asserts.AssertDoubleArrayOptions(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DomainNames [DomainNameList] <p>The names of the domains you want to include in the response.</p>
-- @return DescribeDomainsRequest structure as a key-value pair table
function M.DescribeDomainsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeDomainsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DomainNames"] = args["DomainNames"],
	}
	asserts.AssertDescribeDomainsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MultiAZ [Boolean] <p>You expand an existing search domain to a second Availability Zone by setting the Multi-AZ option to true. Similarly, you can turn off the Multi-AZ option to downgrade the domain to a single Availability Zone by setting the Multi-AZ option to <code>false</code>. </p>
-- * DomainName [DomainName] 
-- Required key: DomainName
-- Required key: MultiAZ
-- @return UpdateAvailabilityOptionsRequest structure as a key-value pair table
function M.UpdateAvailabilityOptionsRequest(args)
	assert(args, "You must provide an argument table when creating UpdateAvailabilityOptionsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MultiAZ"] = args["MultiAZ"],
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertUpdateAvailabilityOptionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FieldNames [FieldNameList] 
-- @return BuildSuggestersResponse structure as a key-value pair table
function M.BuildSuggestersResponse(args)
	assert(args, "You must provide an argument table when creating BuildSuggestersResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FieldNames"] = args["FieldNames"],
	}
	asserts.AssertBuildSuggestersResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SourceField [FieldName] <p>The name of the source field to map to the field. </p>
-- * DefaultValue [Long] A value to use for the field if the field isn't specified for a document. This can be important if you are using the field in an expression and that field is not present in every document.
-- * FacetEnabled [Boolean] <p>Whether facet information can be returned for the field.</p>
-- * SearchEnabled [Boolean] <p>Whether the contents of the field are searchable.</p>
-- * SortEnabled [Boolean] <p>Whether the field can be used to sort the search results.</p>
-- * ReturnEnabled [Boolean] <p>Whether the contents of the field can be returned in the search results.</p>
-- @return IntOptions structure as a key-value pair table
function M.IntOptions(args)
	assert(args, "You must provide an argument table when creating IntOptions")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SourceField"] = args["SourceField"],
		["DefaultValue"] = args["DefaultValue"],
		["FacetEnabled"] = args["FacetEnabled"],
		["SearchEnabled"] = args["SearchEnabled"],
		["SortEnabled"] = args["SortEnabled"],
		["ReturnEnabled"] = args["ReturnEnabled"],
	}
	asserts.AssertIntOptions(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Suggesters [SuggesterStatusList] <p>The suggesters configured for the domain specified in the request.</p>
-- Required key: Suggesters
-- @return DescribeSuggestersResponse structure as a key-value pair table
function M.DescribeSuggestersResponse(args)
	assert(args, "You must provide an argument table when creating DescribeSuggestersResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Suggesters"] = args["Suggesters"],
	}
	asserts.AssertDescribeSuggestersResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


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
--- Call DescribeServiceAccessPolicies asynchronously, invoking a callback when done
-- @param DescribeServiceAccessPoliciesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeServiceAccessPoliciesAsync(DescribeServiceAccessPoliciesRequest, cb)
	assert(DescribeServiceAccessPoliciesRequest, "You must provide a DescribeServiceAccessPoliciesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeServiceAccessPolicies",
	}
	for header,value in pairs(DescribeServiceAccessPoliciesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeServiceAccessPoliciesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeServiceAccessPolicies synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeServiceAccessPoliciesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeServiceAccessPoliciesSync(DescribeServiceAccessPoliciesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeServiceAccessPoliciesAsync(DescribeServiceAccessPoliciesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateScalingParameters asynchronously, invoking a callback when done
-- @param UpdateScalingParametersRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateScalingParametersAsync(UpdateScalingParametersRequest, cb)
	assert(UpdateScalingParametersRequest, "You must provide a UpdateScalingParametersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateScalingParameters",
	}
	for header,value in pairs(UpdateScalingParametersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateScalingParametersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateScalingParameters synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateScalingParametersRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateScalingParametersSync(UpdateScalingParametersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateScalingParametersAsync(UpdateScalingParametersRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDomains asynchronously, invoking a callback when done
-- @param DescribeDomainsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeDomainsAsync(DescribeDomainsRequest, cb)
	assert(DescribeDomainsRequest, "You must provide a DescribeDomainsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeDomains",
	}
	for header,value in pairs(DescribeDomainsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeDomainsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeDomains synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeDomainsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeDomainsSync(DescribeDomainsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDomainsAsync(DescribeDomainsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeScalingParameters asynchronously, invoking a callback when done
-- @param DescribeScalingParametersRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeScalingParametersAsync(DescribeScalingParametersRequest, cb)
	assert(DescribeScalingParametersRequest, "You must provide a DescribeScalingParametersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeScalingParameters",
	}
	for header,value in pairs(DescribeScalingParametersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeScalingParametersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeScalingParameters synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeScalingParametersRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeScalingParametersSync(DescribeScalingParametersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeScalingParametersAsync(DescribeScalingParametersRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeExpressions asynchronously, invoking a callback when done
-- @param DescribeExpressionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeExpressionsAsync(DescribeExpressionsRequest, cb)
	assert(DescribeExpressionsRequest, "You must provide a DescribeExpressionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeExpressions",
	}
	for header,value in pairs(DescribeExpressionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeExpressionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeExpressions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeExpressionsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeExpressionsSync(DescribeExpressionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeExpressionsAsync(DescribeExpressionsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeIndexFields asynchronously, invoking a callback when done
-- @param DescribeIndexFieldsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeIndexFieldsAsync(DescribeIndexFieldsRequest, cb)
	assert(DescribeIndexFieldsRequest, "You must provide a DescribeIndexFieldsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeIndexFields",
	}
	for header,value in pairs(DescribeIndexFieldsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeIndexFieldsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeIndexFields synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeIndexFieldsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeIndexFieldsSync(DescribeIndexFieldsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeIndexFieldsAsync(DescribeIndexFieldsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListDomainNames asynchronously, invoking a callback when done
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListDomainNamesAsync(cb)
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListDomainNames",
	}


	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", {}, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListDomainNames synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @return response
-- @return error_type
-- @return error_message
function M.ListDomainNamesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListDomainNamesAsync(function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeAvailabilityOptions asynchronously, invoking a callback when done
-- @param DescribeAvailabilityOptionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeAvailabilityOptionsAsync(DescribeAvailabilityOptionsRequest, cb)
	assert(DescribeAvailabilityOptionsRequest, "You must provide a DescribeAvailabilityOptionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeAvailabilityOptions",
	}
	for header,value in pairs(DescribeAvailabilityOptionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeAvailabilityOptionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeAvailabilityOptions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeAvailabilityOptionsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeAvailabilityOptionsSync(DescribeAvailabilityOptionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeAvailabilityOptionsAsync(DescribeAvailabilityOptionsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DefineIndexField asynchronously, invoking a callback when done
-- @param DefineIndexFieldRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DefineIndexFieldAsync(DefineIndexFieldRequest, cb)
	assert(DefineIndexFieldRequest, "You must provide a DefineIndexFieldRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DefineIndexField",
	}
	for header,value in pairs(DefineIndexFieldRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DefineIndexFieldRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DefineIndexField synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DefineIndexFieldRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DefineIndexFieldSync(DefineIndexFieldRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DefineIndexFieldAsync(DefineIndexFieldRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteAnalysisScheme asynchronously, invoking a callback when done
-- @param DeleteAnalysisSchemeRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteAnalysisSchemeAsync(DeleteAnalysisSchemeRequest, cb)
	assert(DeleteAnalysisSchemeRequest, "You must provide a DeleteAnalysisSchemeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteAnalysisScheme",
	}
	for header,value in pairs(DeleteAnalysisSchemeRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteAnalysisSchemeRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteAnalysisScheme synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteAnalysisSchemeRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteAnalysisSchemeSync(DeleteAnalysisSchemeRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteAnalysisSchemeAsync(DeleteAnalysisSchemeRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateAvailabilityOptions asynchronously, invoking a callback when done
-- @param UpdateAvailabilityOptionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateAvailabilityOptionsAsync(UpdateAvailabilityOptionsRequest, cb)
	assert(UpdateAvailabilityOptionsRequest, "You must provide a UpdateAvailabilityOptionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateAvailabilityOptions",
	}
	for header,value in pairs(UpdateAvailabilityOptionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateAvailabilityOptionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateAvailabilityOptions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateAvailabilityOptionsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateAvailabilityOptionsSync(UpdateAvailabilityOptionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateAvailabilityOptionsAsync(UpdateAvailabilityOptionsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteExpression asynchronously, invoking a callback when done
-- @param DeleteExpressionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteExpressionAsync(DeleteExpressionRequest, cb)
	assert(DeleteExpressionRequest, "You must provide a DeleteExpressionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteExpression",
	}
	for header,value in pairs(DeleteExpressionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteExpressionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteExpression synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteExpressionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteExpressionSync(DeleteExpressionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteExpressionAsync(DeleteExpressionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeAnalysisSchemes asynchronously, invoking a callback when done
-- @param DescribeAnalysisSchemesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeAnalysisSchemesAsync(DescribeAnalysisSchemesRequest, cb)
	assert(DescribeAnalysisSchemesRequest, "You must provide a DescribeAnalysisSchemesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeAnalysisSchemes",
	}
	for header,value in pairs(DescribeAnalysisSchemesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeAnalysisSchemesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeAnalysisSchemes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeAnalysisSchemesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeAnalysisSchemesSync(DescribeAnalysisSchemesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeAnalysisSchemesAsync(DescribeAnalysisSchemesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DefineSuggester asynchronously, invoking a callback when done
-- @param DefineSuggesterRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DefineSuggesterAsync(DefineSuggesterRequest, cb)
	assert(DefineSuggesterRequest, "You must provide a DefineSuggesterRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DefineSuggester",
	}
	for header,value in pairs(DefineSuggesterRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DefineSuggesterRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DefineSuggester synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DefineSuggesterRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DefineSuggesterSync(DefineSuggesterRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DefineSuggesterAsync(DefineSuggesterRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDomain asynchronously, invoking a callback when done
-- @param CreateDomainRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateDomainAsync(CreateDomainRequest, cb)
	assert(CreateDomainRequest, "You must provide a CreateDomainRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateDomain",
	}
	for header,value in pairs(CreateDomainRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateDomainRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDomain synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDomainRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateDomainSync(CreateDomainRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDomainAsync(CreateDomainRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call IndexDocuments asynchronously, invoking a callback when done
-- @param IndexDocumentsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.IndexDocumentsAsync(IndexDocumentsRequest, cb)
	assert(IndexDocumentsRequest, "You must provide a IndexDocumentsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".IndexDocuments",
	}
	for header,value in pairs(IndexDocumentsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", IndexDocumentsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call IndexDocuments synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param IndexDocumentsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.IndexDocumentsSync(IndexDocumentsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.IndexDocumentsAsync(IndexDocumentsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeSuggesters asynchronously, invoking a callback when done
-- @param DescribeSuggestersRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeSuggestersAsync(DescribeSuggestersRequest, cb)
	assert(DescribeSuggestersRequest, "You must provide a DescribeSuggestersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeSuggesters",
	}
	for header,value in pairs(DescribeSuggestersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeSuggestersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeSuggesters synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeSuggestersRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeSuggestersSync(DescribeSuggestersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeSuggestersAsync(DescribeSuggestersRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateServiceAccessPolicies asynchronously, invoking a callback when done
-- @param UpdateServiceAccessPoliciesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateServiceAccessPoliciesAsync(UpdateServiceAccessPoliciesRequest, cb)
	assert(UpdateServiceAccessPoliciesRequest, "You must provide a UpdateServiceAccessPoliciesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateServiceAccessPolicies",
	}
	for header,value in pairs(UpdateServiceAccessPoliciesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateServiceAccessPoliciesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateServiceAccessPolicies synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateServiceAccessPoliciesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateServiceAccessPoliciesSync(UpdateServiceAccessPoliciesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateServiceAccessPoliciesAsync(UpdateServiceAccessPoliciesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteIndexField asynchronously, invoking a callback when done
-- @param DeleteIndexFieldRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteIndexFieldAsync(DeleteIndexFieldRequest, cb)
	assert(DeleteIndexFieldRequest, "You must provide a DeleteIndexFieldRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteIndexField",
	}
	for header,value in pairs(DeleteIndexFieldRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteIndexFieldRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteIndexField synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteIndexFieldRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteIndexFieldSync(DeleteIndexFieldRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteIndexFieldAsync(DeleteIndexFieldRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DefineAnalysisScheme asynchronously, invoking a callback when done
-- @param DefineAnalysisSchemeRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DefineAnalysisSchemeAsync(DefineAnalysisSchemeRequest, cb)
	assert(DefineAnalysisSchemeRequest, "You must provide a DefineAnalysisSchemeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DefineAnalysisScheme",
	}
	for header,value in pairs(DefineAnalysisSchemeRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DefineAnalysisSchemeRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DefineAnalysisScheme synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DefineAnalysisSchemeRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DefineAnalysisSchemeSync(DefineAnalysisSchemeRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DefineAnalysisSchemeAsync(DefineAnalysisSchemeRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DefineExpression asynchronously, invoking a callback when done
-- @param DefineExpressionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DefineExpressionAsync(DefineExpressionRequest, cb)
	assert(DefineExpressionRequest, "You must provide a DefineExpressionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DefineExpression",
	}
	for header,value in pairs(DefineExpressionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DefineExpressionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DefineExpression synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DefineExpressionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DefineExpressionSync(DefineExpressionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DefineExpressionAsync(DefineExpressionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call BuildSuggesters asynchronously, invoking a callback when done
-- @param BuildSuggestersRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.BuildSuggestersAsync(BuildSuggestersRequest, cb)
	assert(BuildSuggestersRequest, "You must provide a BuildSuggestersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".BuildSuggesters",
	}
	for header,value in pairs(BuildSuggestersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", BuildSuggestersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call BuildSuggesters synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param BuildSuggestersRequest
-- @return response
-- @return error_type
-- @return error_message
function M.BuildSuggestersSync(BuildSuggestersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.BuildSuggestersAsync(BuildSuggestersRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDomain asynchronously, invoking a callback when done
-- @param DeleteDomainRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteDomainAsync(DeleteDomainRequest, cb)
	assert(DeleteDomainRequest, "You must provide a DeleteDomainRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteDomain",
	}
	for header,value in pairs(DeleteDomainRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteDomainRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteDomain synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteDomainRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteDomainSync(DeleteDomainRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDomainAsync(DeleteDomainRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteSuggester asynchronously, invoking a callback when done
-- @param DeleteSuggesterRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteSuggesterAsync(DeleteSuggesterRequest, cb)
	assert(DeleteSuggesterRequest, "You must provide a DeleteSuggesterRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteSuggester",
	}
	for header,value in pairs(DeleteSuggesterRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteSuggesterRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteSuggester synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteSuggesterRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteSuggesterSync(DeleteSuggesterRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteSuggesterAsync(DeleteSuggesterRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
