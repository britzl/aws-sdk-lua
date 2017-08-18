--- GENERATED CODE - DO NOT MODIFY
-- Amazon Elasticsearch Service (es-2015-01-01)

local M = {}

M.metadata = {
	api_version = "2015-01-01",
	json_version = "",
	protocol = "rest-json",
	checksum_format = "",
	endpoint_prefix = "es",
	service_abbreviation = "",
	service_full_name = "Amazon Elasticsearch Service",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "es-2015-01-01",
}

local keys = {}
local asserts = {}

keys.DescribeElasticsearchDomainsResponse = { ["DomainStatusList"] = true, nil }

function asserts.AssertDescribeElasticsearchDomainsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeElasticsearchDomainsResponse to be of type 'table'")
	assert(struct["DomainStatusList"], "Expected key DomainStatusList to exist in table")
	if struct["DomainStatusList"] then asserts.AssertElasticsearchDomainStatusList(struct["DomainStatusList"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeElasticsearchDomainsResponse[k], "DescribeElasticsearchDomainsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeElasticsearchDomainsResponse
-- <p>The result of a <code>DescribeElasticsearchDomains</code> request. Contains the status of the specified domains or all domains owned by the account.</p>
-- @param _DomainStatusList [ElasticsearchDomainStatusList] <p>The status of the domains requested in the <code>DescribeElasticsearchDomains</code> request.</p>
-- Required parameter: DomainStatusList
function M.DescribeElasticsearchDomainsResponse(_DomainStatusList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeElasticsearchDomainsResponse")
	local t = { 
		["DomainStatusList"] = _DomainStatusList,
	}
	asserts.AssertDescribeElasticsearchDomainsResponse(t)
	return t
end

keys.AdvancedOptionsStatus = { ["Status"] = true, ["Options"] = true, nil }

function asserts.AssertAdvancedOptionsStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdvancedOptionsStatus to be of type 'table'")
	assert(struct["Options"], "Expected key Options to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["Status"] then asserts.AssertOptionStatus(struct["Status"]) end
	if struct["Options"] then asserts.AssertAdvancedOptions(struct["Options"]) end
	for k,_ in pairs(struct) do
		assert(keys.AdvancedOptionsStatus[k], "AdvancedOptionsStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdvancedOptionsStatus
-- <p> Status of the advanced options for the specified Elasticsearch domain. Currently, the following advanced options are available:</p> <ul> <li>Option to allow references to indices in an HTTP request body. Must be <code>false</code> when configuring access to individual sub-resources. By default, the value is <code>true</code>. See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options" target="_blank">Configuration Advanced Options</a> for more information.</li> <li>Option to specify the percentage of heap space that is allocated to field data. By default, this setting is unbounded.</li> </ul> <p>For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options">Configuring Advanced Options</a>.</p>
-- @param _Status [OptionStatus] <p> Specifies the status of <code>OptionStatus</code> for advanced options for the specified Elasticsearch domain.</p>
-- @param _Options [AdvancedOptions] <p> Specifies the status of advanced options for the specified Elasticsearch domain.</p>
-- Required parameter: Options
-- Required parameter: Status
function M.AdvancedOptionsStatus(_Status, _Options, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AdvancedOptionsStatus")
	local t = { 
		["Status"] = _Status,
		["Options"] = _Options,
	}
	asserts.AssertAdvancedOptionsStatus(t)
	return t
end

keys.ListTagsRequest = { ["ARN"] = true, nil }

function asserts.AssertListTagsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsRequest to be of type 'table'")
	assert(struct["ARN"], "Expected key ARN to exist in table")
	if struct["ARN"] then asserts.AssertARN(struct["ARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsRequest[k], "ListTagsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsRequest
-- <p>Container for the parameters to the <code><a>ListTags</a></code> operation. Specify the <code>ARN</code> for the Elasticsearch domain to which the tags are attached that you want to view are attached.</p>
-- @param _ARN [ARN] <p> Specify the <code>ARN</code> for the Elasticsearch domain to which the tags are attached that you want to view.</p>
-- Required parameter: ARN
function M.ListTagsRequest(_ARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsRequest")
	local t = { 
		["ARN"] = _ARN,
	}
	asserts.AssertListTagsRequest(t)
	return t
end

keys.RemoveTagsRequest = { ["TagKeys"] = true, ["ARN"] = true, nil }

function asserts.AssertRemoveTagsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveTagsRequest to be of type 'table'")
	assert(struct["ARN"], "Expected key ARN to exist in table")
	assert(struct["TagKeys"], "Expected key TagKeys to exist in table")
	if struct["TagKeys"] then asserts.AssertStringList(struct["TagKeys"]) end
	if struct["ARN"] then asserts.AssertARN(struct["ARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.RemoveTagsRequest[k], "RemoveTagsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveTagsRequest
-- <p>Container for the parameters to the <code><a>RemoveTags</a></code> operation. Specify the <code>ARN</code> for the Elasticsearch domain from which you want to remove the specified <code>TagKey</code>.</p>
-- @param _TagKeys [StringList] <p>Specifies the <code>TagKey</code> list which you want to remove from the Elasticsearch domain.</p>
-- @param _ARN [ARN] <p>Specifies the <code>ARN</code> for the Elasticsearch domain from which you want to delete the specified tags.</p>
-- Required parameter: ARN
-- Required parameter: TagKeys
function M.RemoveTagsRequest(_TagKeys, _ARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveTagsRequest")
	local t = { 
		["TagKeys"] = _TagKeys,
		["ARN"] = _ARN,
	}
	asserts.AssertRemoveTagsRequest(t)
	return t
end

keys.DeleteElasticsearchDomainResponse = { ["DomainStatus"] = true, nil }

function asserts.AssertDeleteElasticsearchDomainResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteElasticsearchDomainResponse to be of type 'table'")
	if struct["DomainStatus"] then asserts.AssertElasticsearchDomainStatus(struct["DomainStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteElasticsearchDomainResponse[k], "DeleteElasticsearchDomainResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteElasticsearchDomainResponse
-- <p>The result of a <code>DeleteElasticsearchDomain</code> request. Contains the status of the pending deletion, or no status if the domain and all of its resources have been deleted.</p>
-- @param _DomainStatus [ElasticsearchDomainStatus] <p>The status of the Elasticsearch domain being deleted.</p>
function M.DeleteElasticsearchDomainResponse(_DomainStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteElasticsearchDomainResponse")
	local t = { 
		["DomainStatus"] = _DomainStatus,
	}
	asserts.AssertDeleteElasticsearchDomainResponse(t)
	return t
end

keys.DescribeElasticsearchDomainsRequest = { ["DomainNames"] = true, nil }

function asserts.AssertDescribeElasticsearchDomainsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeElasticsearchDomainsRequest to be of type 'table'")
	assert(struct["DomainNames"], "Expected key DomainNames to exist in table")
	if struct["DomainNames"] then asserts.AssertDomainNameList(struct["DomainNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeElasticsearchDomainsRequest[k], "DescribeElasticsearchDomainsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeElasticsearchDomainsRequest
-- <p>Container for the parameters to the <code><a>DescribeElasticsearchDomains</a></code> operation. By default, the API returns the status of all Elasticsearch domains.</p>
-- @param _DomainNames [DomainNameList] <p>The Elasticsearch domains for which you want information.</p>
-- Required parameter: DomainNames
function M.DescribeElasticsearchDomainsRequest(_DomainNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeElasticsearchDomainsRequest")
	local t = { 
		["DomainNames"] = _DomainNames,
	}
	asserts.AssertDescribeElasticsearchDomainsRequest(t)
	return t
end

keys.ListDomainNamesResponse = { ["DomainNames"] = true, nil }

function asserts.AssertListDomainNamesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDomainNamesResponse to be of type 'table'")
	if struct["DomainNames"] then asserts.AssertDomainInfoList(struct["DomainNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDomainNamesResponse[k], "ListDomainNamesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDomainNamesResponse
-- <p>The result of a <code>ListDomainNames</code> operation. Contains the names of all Elasticsearch domains owned by this account.</p>
-- @param _DomainNames [DomainInfoList] <p>List of Elasticsearch domain names.</p>
function M.ListDomainNamesResponse(_DomainNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDomainNamesResponse")
	local t = { 
		["DomainNames"] = _DomainNames,
	}
	asserts.AssertListDomainNamesResponse(t)
	return t
end

keys.ElasticsearchDomainConfig = { ["ElasticsearchClusterConfig"] = true, ["ElasticsearchVersion"] = true, ["EBSOptions"] = true, ["SnapshotOptions"] = true, ["AdvancedOptions"] = true, ["AccessPolicies"] = true, nil }

function asserts.AssertElasticsearchDomainConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ElasticsearchDomainConfig to be of type 'table'")
	if struct["ElasticsearchClusterConfig"] then asserts.AssertElasticsearchClusterConfigStatus(struct["ElasticsearchClusterConfig"]) end
	if struct["ElasticsearchVersion"] then asserts.AssertElasticsearchVersionStatus(struct["ElasticsearchVersion"]) end
	if struct["EBSOptions"] then asserts.AssertEBSOptionsStatus(struct["EBSOptions"]) end
	if struct["SnapshotOptions"] then asserts.AssertSnapshotOptionsStatus(struct["SnapshotOptions"]) end
	if struct["AdvancedOptions"] then asserts.AssertAdvancedOptionsStatus(struct["AdvancedOptions"]) end
	if struct["AccessPolicies"] then asserts.AssertAccessPoliciesStatus(struct["AccessPolicies"]) end
	for k,_ in pairs(struct) do
		assert(keys.ElasticsearchDomainConfig[k], "ElasticsearchDomainConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ElasticsearchDomainConfig
-- <p>The configuration of an Elasticsearch domain.</p>
-- @param _ElasticsearchClusterConfig [ElasticsearchClusterConfigStatus] <p>Specifies the <code>ElasticsearchClusterConfig</code> for the Elasticsearch domain.</p>
-- @param _ElasticsearchVersion [ElasticsearchVersionStatus] <p>String of format X.Y to specify version for the Elasticsearch domain.</p>
-- @param _EBSOptions [EBSOptionsStatus] <p>Specifies the <code>EBSOptions</code> for the Elasticsearch domain.</p>
-- @param _SnapshotOptions [SnapshotOptionsStatus] <p>Specifies the <code>SnapshotOptions</code> for the Elasticsearch domain.</p>
-- @param _AdvancedOptions [AdvancedOptionsStatus] <p>Specifies the <code>AdvancedOptions</code> for the domain. See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options" target="_blank">Configuring Advanced Options</a> for more information.</p>
-- @param _AccessPolicies [AccessPoliciesStatus] <p>IAM access policy as a JSON-formatted string.</p>
function M.ElasticsearchDomainConfig(_ElasticsearchClusterConfig, _ElasticsearchVersion, _EBSOptions, _SnapshotOptions, _AdvancedOptions, _AccessPolicies, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ElasticsearchDomainConfig")
	local t = { 
		["ElasticsearchClusterConfig"] = _ElasticsearchClusterConfig,
		["ElasticsearchVersion"] = _ElasticsearchVersion,
		["EBSOptions"] = _EBSOptions,
		["SnapshotOptions"] = _SnapshotOptions,
		["AdvancedOptions"] = _AdvancedOptions,
		["AccessPolicies"] = _AccessPolicies,
	}
	asserts.AssertElasticsearchDomainConfig(t)
	return t
end

keys.ElasticsearchDomainStatus = { ["ElasticsearchClusterConfig"] = true, ["Endpoint"] = true, ["Created"] = true, ["Deleted"] = true, ["DomainName"] = true, ["EBSOptions"] = true, ["SnapshotOptions"] = true, ["DomainId"] = true, ["AccessPolicies"] = true, ["Processing"] = true, ["AdvancedOptions"] = true, ["ElasticsearchVersion"] = true, ["ARN"] = true, nil }

function asserts.AssertElasticsearchDomainStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ElasticsearchDomainStatus to be of type 'table'")
	assert(struct["DomainId"], "Expected key DomainId to exist in table")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["ARN"], "Expected key ARN to exist in table")
	assert(struct["ElasticsearchClusterConfig"], "Expected key ElasticsearchClusterConfig to exist in table")
	if struct["ElasticsearchClusterConfig"] then asserts.AssertElasticsearchClusterConfig(struct["ElasticsearchClusterConfig"]) end
	if struct["Endpoint"] then asserts.AssertServiceUrl(struct["Endpoint"]) end
	if struct["Created"] then asserts.AssertBoolean(struct["Created"]) end
	if struct["Deleted"] then asserts.AssertBoolean(struct["Deleted"]) end
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	if struct["EBSOptions"] then asserts.AssertEBSOptions(struct["EBSOptions"]) end
	if struct["SnapshotOptions"] then asserts.AssertSnapshotOptions(struct["SnapshotOptions"]) end
	if struct["DomainId"] then asserts.AssertDomainId(struct["DomainId"]) end
	if struct["AccessPolicies"] then asserts.AssertPolicyDocument(struct["AccessPolicies"]) end
	if struct["Processing"] then asserts.AssertBoolean(struct["Processing"]) end
	if struct["AdvancedOptions"] then asserts.AssertAdvancedOptions(struct["AdvancedOptions"]) end
	if struct["ElasticsearchVersion"] then asserts.AssertElasticsearchVersionString(struct["ElasticsearchVersion"]) end
	if struct["ARN"] then asserts.AssertARN(struct["ARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.ElasticsearchDomainStatus[k], "ElasticsearchDomainStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ElasticsearchDomainStatus
-- <p>The current status of an Elasticsearch domain.</p>
-- @param _ElasticsearchClusterConfig [ElasticsearchClusterConfig] <p>The type and number of instances in the domain cluster.</p>
-- @param _Endpoint [ServiceUrl] <p>The Elasticsearch domain endpoint that you use to submit index and search requests.</p>
-- @param _Created [Boolean] <p>The domain creation status. <code>True</code> if the creation of an Elasticsearch domain is complete. <code>False</code> if domain creation is still in progress.</p>
-- @param _Deleted [Boolean] <p>The domain deletion status. <code>True</code> if a delete request has been received for the domain but resource cleanup is still in progress. <code>False</code> if the domain has not been deleted. Once domain deletion is complete, the status of the domain is no longer returned.</p>
-- @param _DomainName [DomainName] <p>The name of an Elasticsearch domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
-- @param _EBSOptions [EBSOptions] <p>The <code>EBSOptions</code> for the specified domain. See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-ebs" target="_blank">Configuring EBS-based Storage</a> for more information.</p>
-- @param _SnapshotOptions [SnapshotOptions] <p>Specifies the status of the <code>SnapshotOptions</code></p>
-- @param _DomainId [DomainId] <p>The unique identifier for the specified Elasticsearch domain.</p>
-- @param _AccessPolicies [PolicyDocument] <p> IAM access policy as a JSON-formatted string.</p>
-- @param _Processing [Boolean] <p>The status of the Elasticsearch domain configuration. <code>True</code> if Amazon Elasticsearch Service is processing configuration changes. <code>False</code> if the configuration is active.</p>
-- @param _AdvancedOptions [AdvancedOptions] <p>Specifies the status of the <code>AdvancedOptions</code></p>
-- @param _ElasticsearchVersion [ElasticsearchVersionString] 
-- @param _ARN [ARN] <p>The Amazon resource name (ARN) of an Elasticsearch domain. See <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/index.html?Using_Identifiers.html" target="_blank">Identifiers for IAM Entities</a> in <i>Using AWS Identity and Access Management</i> for more information.</p>
-- Required parameter: DomainId
-- Required parameter: DomainName
-- Required parameter: ARN
-- Required parameter: ElasticsearchClusterConfig
function M.ElasticsearchDomainStatus(_ElasticsearchClusterConfig, _Endpoint, _Created, _Deleted, _DomainName, _EBSOptions, _SnapshotOptions, _DomainId, _AccessPolicies, _Processing, _AdvancedOptions, _ElasticsearchVersion, _ARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ElasticsearchDomainStatus")
	local t = { 
		["ElasticsearchClusterConfig"] = _ElasticsearchClusterConfig,
		["Endpoint"] = _Endpoint,
		["Created"] = _Created,
		["Deleted"] = _Deleted,
		["DomainName"] = _DomainName,
		["EBSOptions"] = _EBSOptions,
		["SnapshotOptions"] = _SnapshotOptions,
		["DomainId"] = _DomainId,
		["AccessPolicies"] = _AccessPolicies,
		["Processing"] = _Processing,
		["AdvancedOptions"] = _AdvancedOptions,
		["ElasticsearchVersion"] = _ElasticsearchVersion,
		["ARN"] = _ARN,
	}
	asserts.AssertElasticsearchDomainStatus(t)
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
-- @param _Status [OptionStatus] <p>The status of the access policy for the Elasticsearch domain. See <code>OptionStatus</code> for the status information that's included. </p>
-- @param _Options [PolicyDocument] <p>The access policy configured for the Elasticsearch domain. Access policies may be resource-based, IP-based, or IAM-based. See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-access-policies" target="_blank"> Configuring Access Policies</a>for more information.</p>
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

keys.AdditionalLimit = { ["LimitValues"] = true, ["LimitName"] = true, nil }

function asserts.AssertAdditionalLimit(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdditionalLimit to be of type 'table'")
	if struct["LimitValues"] then asserts.AssertLimitValueList(struct["LimitValues"]) end
	if struct["LimitName"] then asserts.AssertLimitName(struct["LimitName"]) end
	for k,_ in pairs(struct) do
		assert(keys.AdditionalLimit[k], "AdditionalLimit contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdditionalLimit
-- <p> List of limits that are specific to a given InstanceType and for each of it's <code> <a>InstanceRole</a> </code> . </p>
-- @param _LimitValues [LimitValueList] <p> Value for given <code> <a>AdditionalLimit$LimitName</a> </code> . </p>
-- @param _LimitName [LimitName] <p> Name of Additional Limit is specific to a given InstanceType and for each of it's <code> <a>InstanceRole</a> </code> etc. <br/> Attributes and their details: <br/> <ul> <li>MaximumNumberOfDataNodesSupported</li> This attribute will be present in Master node only to specify how much data nodes upto which given <code> <a>ESPartitionInstanceType</a> </code> can support as master node. <li>MaximumNumberOfDataNodesWithoutMasterNode</li> This attribute will be present in Data node only to specify how much data nodes of given <code> <a>ESPartitionInstanceType</a> </code> upto which you don't need any master nodes to govern them. </ul> </p>
function M.AdditionalLimit(_LimitValues, _LimitName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AdditionalLimit")
	local t = { 
		["LimitValues"] = _LimitValues,
		["LimitName"] = _LimitName,
	}
	asserts.AssertAdditionalLimit(t)
	return t
end

keys.SnapshotOptions = { ["AutomatedSnapshotStartHour"] = true, nil }

function asserts.AssertSnapshotOptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SnapshotOptions to be of type 'table'")
	if struct["AutomatedSnapshotStartHour"] then asserts.AssertIntegerClass(struct["AutomatedSnapshotStartHour"]) end
	for k,_ in pairs(struct) do
		assert(keys.SnapshotOptions[k], "SnapshotOptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SnapshotOptions
-- <p>Specifies the time, in UTC format, when the service takes a daily automated snapshot of the specified Elasticsearch domain. Default value is <code>0</code> hours.</p>
-- @param _AutomatedSnapshotStartHour [IntegerClass] <p>Specifies the time, in UTC format, when the service takes a daily automated snapshot of the specified Elasticsearch domain. Default value is <code>0</code> hours.</p>
function M.SnapshotOptions(_AutomatedSnapshotStartHour, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SnapshotOptions")
	local t = { 
		["AutomatedSnapshotStartHour"] = _AutomatedSnapshotStartHour,
	}
	asserts.AssertSnapshotOptions(t)
	return t
end

keys.Tag = { ["Value"] = true, ["Key"] = true, nil }

function asserts.AssertTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tag to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Value"] then asserts.AssertTagValue(struct["Value"]) end
	if struct["Key"] then asserts.AssertTagKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.Tag[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- <p>Specifies a key value pair for a resource tag.</p>
-- @param _Value [TagValue] <p>Specifies the <code>TagValue</code>, the value assigned to the corresponding tag key. Tag values can be null and do not have to be unique in a tag set. For example, you can have a key value pair in a tag set of <code>project : Trinity</code> and <code>cost-center : Trinity</code></p>
-- @param _Key [TagKey] <p>Specifies the <code>TagKey</code>, the name of the tag. Tag keys must be unique for the Elasticsearch domain to which they are attached.</p>
-- Required parameter: Key
-- Required parameter: Value
function M.Tag(_Value, _Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tag")
	local t = { 
		["Value"] = _Value,
		["Key"] = _Key,
	}
	asserts.AssertTag(t)
	return t
end

keys.EBSOptionsStatus = { ["Status"] = true, ["Options"] = true, nil }

function asserts.AssertEBSOptionsStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EBSOptionsStatus to be of type 'table'")
	assert(struct["Options"], "Expected key Options to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["Status"] then asserts.AssertOptionStatus(struct["Status"]) end
	if struct["Options"] then asserts.AssertEBSOptions(struct["Options"]) end
	for k,_ in pairs(struct) do
		assert(keys.EBSOptionsStatus[k], "EBSOptionsStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EBSOptionsStatus
-- <p> Status of the EBS options for the specified Elasticsearch domain.</p>
-- @param _Status [OptionStatus] <p> Specifies the status of the EBS options for the specified Elasticsearch domain.</p>
-- @param _Options [EBSOptions] <p> Specifies the EBS options for the specified Elasticsearch domain.</p>
-- Required parameter: Options
-- Required parameter: Status
function M.EBSOptionsStatus(_Status, _Options, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EBSOptionsStatus")
	local t = { 
		["Status"] = _Status,
		["Options"] = _Options,
	}
	asserts.AssertEBSOptionsStatus(t)
	return t
end

keys.ListElasticsearchVersionsRequest = { ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListElasticsearchVersionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListElasticsearchVersionsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListElasticsearchVersionsRequest[k], "ListElasticsearchVersionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListElasticsearchVersionsRequest
-- <p> Container for the parameters to the <code> <a>ListElasticsearchVersions</a> </code> operation. <p> Use <code> <a>MaxResults</a> </code> to control the maximum number of results to retrieve in a single call. </p> <p> Use <code> <a>NextToken</a> </code> in response to retrieve more results. If the received response does not contain a NextToken, then there are no more results to retrieve. </p> </p>
-- @param _NextToken [NextToken] 
-- @param _MaxResults [MaxResults] <p> Set this value to limit the number of results returned. Value provided must be greater than 10 else it wont be honored. </p>
function M.ListElasticsearchVersionsRequest(_NextToken, _MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListElasticsearchVersionsRequest")
	local t = { 
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
	}
	asserts.AssertListElasticsearchVersionsRequest(t)
	return t
end

keys.UpdateElasticsearchDomainConfigRequest = { ["ElasticsearchClusterConfig"] = true, ["DomainName"] = true, ["EBSOptions"] = true, ["SnapshotOptions"] = true, ["AdvancedOptions"] = true, ["AccessPolicies"] = true, nil }

function asserts.AssertUpdateElasticsearchDomainConfigRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateElasticsearchDomainConfigRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["ElasticsearchClusterConfig"] then asserts.AssertElasticsearchClusterConfig(struct["ElasticsearchClusterConfig"]) end
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	if struct["EBSOptions"] then asserts.AssertEBSOptions(struct["EBSOptions"]) end
	if struct["SnapshotOptions"] then asserts.AssertSnapshotOptions(struct["SnapshotOptions"]) end
	if struct["AdvancedOptions"] then asserts.AssertAdvancedOptions(struct["AdvancedOptions"]) end
	if struct["AccessPolicies"] then asserts.AssertPolicyDocument(struct["AccessPolicies"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateElasticsearchDomainConfigRequest[k], "UpdateElasticsearchDomainConfigRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateElasticsearchDomainConfigRequest
-- <p>Container for the parameters to the <code><a>UpdateElasticsearchDomain</a></code> operation. Specifies the type and number of instances in the domain cluster.</p>
-- @param _ElasticsearchClusterConfig [ElasticsearchClusterConfig] <p>The type and number of instances to instantiate for the domain cluster.</p>
-- @param _DomainName [DomainName] <p>The name of the Elasticsearch domain that you are updating. </p>
-- @param _EBSOptions [EBSOptions] <p>Specify the type and size of the EBS volume that you want to use. </p>
-- @param _SnapshotOptions [SnapshotOptions] <p>Option to set the time, in UTC format, for the daily automated snapshot. Default value is <code>0</code> hours. </p>
-- @param _AdvancedOptions [AdvancedOptions] <p>Modifies the advanced option to allow references to indices in an HTTP request body. Must be <code>false</code> when configuring access to individual sub-resources. By default, the value is <code>true</code>. See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options" target="_blank">Configuration Advanced Options</a> for more information.</p>
-- @param _AccessPolicies [PolicyDocument] <p>IAM access policy as a JSON-formatted string.</p>
-- Required parameter: DomainName
function M.UpdateElasticsearchDomainConfigRequest(_ElasticsearchClusterConfig, _DomainName, _EBSOptions, _SnapshotOptions, _AdvancedOptions, _AccessPolicies, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateElasticsearchDomainConfigRequest")
	local t = { 
		["ElasticsearchClusterConfig"] = _ElasticsearchClusterConfig,
		["DomainName"] = _DomainName,
		["EBSOptions"] = _EBSOptions,
		["SnapshotOptions"] = _SnapshotOptions,
		["AdvancedOptions"] = _AdvancedOptions,
		["AccessPolicies"] = _AccessPolicies,
	}
	asserts.AssertUpdateElasticsearchDomainConfigRequest(t)
	return t
end

keys.DescribeElasticsearchDomainResponse = { ["DomainStatus"] = true, nil }

function asserts.AssertDescribeElasticsearchDomainResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeElasticsearchDomainResponse to be of type 'table'")
	assert(struct["DomainStatus"], "Expected key DomainStatus to exist in table")
	if struct["DomainStatus"] then asserts.AssertElasticsearchDomainStatus(struct["DomainStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeElasticsearchDomainResponse[k], "DescribeElasticsearchDomainResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeElasticsearchDomainResponse
-- <p>The result of a <code>DescribeElasticsearchDomain</code> request. Contains the status of the domain specified in the request.</p>
-- @param _DomainStatus [ElasticsearchDomainStatus] <p>The current status of the Elasticsearch domain.</p>
-- Required parameter: DomainStatus
function M.DescribeElasticsearchDomainResponse(_DomainStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeElasticsearchDomainResponse")
	local t = { 
		["DomainStatus"] = _DomainStatus,
	}
	asserts.AssertDescribeElasticsearchDomainResponse(t)
	return t
end

keys.DescribeElasticsearchDomainConfigResponse = { ["DomainConfig"] = true, nil }

function asserts.AssertDescribeElasticsearchDomainConfigResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeElasticsearchDomainConfigResponse to be of type 'table'")
	assert(struct["DomainConfig"], "Expected key DomainConfig to exist in table")
	if struct["DomainConfig"] then asserts.AssertElasticsearchDomainConfig(struct["DomainConfig"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeElasticsearchDomainConfigResponse[k], "DescribeElasticsearchDomainConfigResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeElasticsearchDomainConfigResponse
-- <p>The result of a <code>DescribeElasticsearchDomainConfig</code> request. Contains the configuration information of the requested domain.</p>
-- @param _DomainConfig [ElasticsearchDomainConfig] <p>The configuration information of the domain requested in the <code>DescribeElasticsearchDomainConfig</code> request.</p>
-- Required parameter: DomainConfig
function M.DescribeElasticsearchDomainConfigResponse(_DomainConfig, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeElasticsearchDomainConfigResponse")
	local t = { 
		["DomainConfig"] = _DomainConfig,
	}
	asserts.AssertDescribeElasticsearchDomainConfigResponse(t)
	return t
end

keys.EBSOptions = { ["Iops"] = true, ["VolumeSize"] = true, ["VolumeType"] = true, ["EBSEnabled"] = true, nil }

function asserts.AssertEBSOptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EBSOptions to be of type 'table'")
	if struct["Iops"] then asserts.AssertIntegerClass(struct["Iops"]) end
	if struct["VolumeSize"] then asserts.AssertIntegerClass(struct["VolumeSize"]) end
	if struct["VolumeType"] then asserts.AssertVolumeType(struct["VolumeType"]) end
	if struct["EBSEnabled"] then asserts.AssertBoolean(struct["EBSEnabled"]) end
	for k,_ in pairs(struct) do
		assert(keys.EBSOptions[k], "EBSOptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EBSOptions
-- <p>Options to enable, disable, and specify the properties of EBS storage volumes. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-ebs" target="_blank"> Configuring EBS-based Storage</a>.</p>
-- @param _Iops [IntegerClass] <p>Specifies the IOPD for a Provisioned IOPS EBS volume (SSD).</p>
-- @param _VolumeSize [IntegerClass] <p> Integer to specify the size of an EBS volume.</p>
-- @param _VolumeType [VolumeType] <p> Specifies the volume type for EBS-based storage.</p>
-- @param _EBSEnabled [Boolean] <p>Specifies whether EBS-based storage is enabled.</p>
function M.EBSOptions(_Iops, _VolumeSize, _VolumeType, _EBSEnabled, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EBSOptions")
	local t = { 
		["Iops"] = _Iops,
		["VolumeSize"] = _VolumeSize,
		["VolumeType"] = _VolumeType,
		["EBSEnabled"] = _EBSEnabled,
	}
	asserts.AssertEBSOptions(t)
	return t
end

keys.ElasticsearchVersionStatus = { ["Status"] = true, ["Options"] = true, nil }

function asserts.AssertElasticsearchVersionStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ElasticsearchVersionStatus to be of type 'table'")
	assert(struct["Options"], "Expected key Options to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["Status"] then asserts.AssertOptionStatus(struct["Status"]) end
	if struct["Options"] then asserts.AssertElasticsearchVersionString(struct["Options"]) end
	for k,_ in pairs(struct) do
		assert(keys.ElasticsearchVersionStatus[k], "ElasticsearchVersionStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ElasticsearchVersionStatus
-- <p> Status of the Elasticsearch version options for the specified Elasticsearch domain.</p>
-- @param _Status [OptionStatus] <p> Specifies the status of the Elasticsearch version options for the specified Elasticsearch domain.</p>
-- @param _Options [ElasticsearchVersionString] <p> Specifies the Elasticsearch version for the specified Elasticsearch domain.</p>
-- Required parameter: Options
-- Required parameter: Status
function M.ElasticsearchVersionStatus(_Status, _Options, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ElasticsearchVersionStatus")
	local t = { 
		["Status"] = _Status,
		["Options"] = _Options,
	}
	asserts.AssertElasticsearchVersionStatus(t)
	return t
end

keys.ResourceAlreadyExistsException = { nil }

function asserts.AssertResourceAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceAlreadyExistsException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ResourceAlreadyExistsException[k], "ResourceAlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceAlreadyExistsException
-- <p>An exception for creating a resource that already exists. Gives http status code of 400.</p>
function M.ResourceAlreadyExistsException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceAlreadyExistsException")
	local t = { 
	}
	asserts.AssertResourceAlreadyExistsException(t)
	return t
end

keys.StorageTypeLimit = { ["LimitValues"] = true, ["LimitName"] = true, nil }

function asserts.AssertStorageTypeLimit(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StorageTypeLimit to be of type 'table'")
	if struct["LimitValues"] then asserts.AssertLimitValueList(struct["LimitValues"]) end
	if struct["LimitName"] then asserts.AssertLimitName(struct["LimitName"]) end
	for k,_ in pairs(struct) do
		assert(keys.StorageTypeLimit[k], "StorageTypeLimit contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StorageTypeLimit
-- <p>Limits that are applicable for given storage type. </p>
-- @param _LimitValues [LimitValueList] <p> Values for the <code> <a>StorageTypeLimit$LimitName</a> </code> . </p>
-- @param _LimitName [LimitName] <p> Name of storage limits that are applicable for given storage type. If <code> <a>StorageType</a> </code> is ebs, following storage options are applicable <ol> <li>MinimumVolumeSize</li> Minimum amount of volume size that is applicable for given storage type.It can be empty if it is not applicable. <li>MaximumVolumeSize</li> Maximum amount of volume size that is applicable for given storage type.It can be empty if it is not applicable. <li>MaximumIops</li> Maximum amount of Iops that is applicable for given storage type.It can be empty if it is not applicable. <li>MinimumIops</li> Minimum amount of Iops that is applicable for given storage type.It can be empty if it is not applicable. </ol> </p>
function M.StorageTypeLimit(_LimitValues, _LimitName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StorageTypeLimit")
	local t = { 
		["LimitValues"] = _LimitValues,
		["LimitName"] = _LimitName,
	}
	asserts.AssertStorageTypeLimit(t)
	return t
end

keys.ListElasticsearchVersionsResponse = { ["ElasticsearchVersions"] = true, ["NextToken"] = true, nil }

function asserts.AssertListElasticsearchVersionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListElasticsearchVersionsResponse to be of type 'table'")
	if struct["ElasticsearchVersions"] then asserts.AssertElasticsearchVersionList(struct["ElasticsearchVersions"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListElasticsearchVersionsResponse[k], "ListElasticsearchVersionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListElasticsearchVersionsResponse
-- <p> Container for the parameters for response received from <code> <a>ListElasticsearchVersions</a> </code> operation. </p>
-- @param _ElasticsearchVersions [ElasticsearchVersionList] 
-- @param _NextToken [NextToken] 
function M.ListElasticsearchVersionsResponse(_ElasticsearchVersions, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListElasticsearchVersionsResponse")
	local t = { 
		["ElasticsearchVersions"] = _ElasticsearchVersions,
		["NextToken"] = _NextToken,
	}
	asserts.AssertListElasticsearchVersionsResponse(t)
	return t
end

keys.ElasticsearchClusterConfigStatus = { ["Status"] = true, ["Options"] = true, nil }

function asserts.AssertElasticsearchClusterConfigStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ElasticsearchClusterConfigStatus to be of type 'table'")
	assert(struct["Options"], "Expected key Options to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["Status"] then asserts.AssertOptionStatus(struct["Status"]) end
	if struct["Options"] then asserts.AssertElasticsearchClusterConfig(struct["Options"]) end
	for k,_ in pairs(struct) do
		assert(keys.ElasticsearchClusterConfigStatus[k], "ElasticsearchClusterConfigStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ElasticsearchClusterConfigStatus
-- <p> Specifies the configuration status for the specified Elasticsearch domain.</p>
-- @param _Status [OptionStatus] <p> Specifies the status of the configuration for the specified Elasticsearch domain.</p>
-- @param _Options [ElasticsearchClusterConfig] <p> Specifies the cluster configuration for the specified Elasticsearch domain.</p>
-- Required parameter: Options
-- Required parameter: Status
function M.ElasticsearchClusterConfigStatus(_Status, _Options, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ElasticsearchClusterConfigStatus")
	local t = { 
		["Status"] = _Status,
		["Options"] = _Options,
	}
	asserts.AssertElasticsearchClusterConfigStatus(t)
	return t
end

keys.StorageType = { ["StorageTypeName"] = true, ["StorageTypeLimits"] = true, ["StorageSubTypeName"] = true, nil }

function asserts.AssertStorageType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StorageType to be of type 'table'")
	if struct["StorageTypeName"] then asserts.AssertStorageTypeName(struct["StorageTypeName"]) end
	if struct["StorageTypeLimits"] then asserts.AssertStorageTypeLimitList(struct["StorageTypeLimits"]) end
	if struct["StorageSubTypeName"] then asserts.AssertStorageSubTypeName(struct["StorageSubTypeName"]) end
	for k,_ in pairs(struct) do
		assert(keys.StorageType[k], "StorageType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StorageType
-- <p>StorageTypes represents the list of storage related types and their attributes that are available for given InstanceType. </p>
-- @param _StorageTypeName [StorageTypeName] 
-- @param _StorageTypeLimits [StorageTypeLimitList] <p>List of limits that are applicable for given storage type. </p>
-- @param _StorageSubTypeName [StorageSubTypeName] 
function M.StorageType(_StorageTypeName, _StorageTypeLimits, _StorageSubTypeName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StorageType")
	local t = { 
		["StorageTypeName"] = _StorageTypeName,
		["StorageTypeLimits"] = _StorageTypeLimits,
		["StorageSubTypeName"] = _StorageSubTypeName,
	}
	asserts.AssertStorageType(t)
	return t
end

keys.BaseException = { ["message"] = true, nil }

function asserts.AssertBaseException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BaseException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.BaseException[k], "BaseException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BaseException
-- <p>An error occurred while processing the request.</p>
-- @param _message [ErrorMessage] <p>A description of the error.</p>
function M.BaseException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BaseException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertBaseException(t)
	return t
end

keys.InstanceLimits = { ["InstanceCountLimits"] = true, nil }

function asserts.AssertInstanceLimits(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceLimits to be of type 'table'")
	if struct["InstanceCountLimits"] then asserts.AssertInstanceCountLimits(struct["InstanceCountLimits"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstanceLimits[k], "InstanceLimits contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceLimits
-- <p>InstanceLimits represents the list of instance related attributes that are available for given InstanceType. </p>
-- @param _InstanceCountLimits [InstanceCountLimits] 
function M.InstanceLimits(_InstanceCountLimits, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceLimits")
	local t = { 
		["InstanceCountLimits"] = _InstanceCountLimits,
	}
	asserts.AssertInstanceLimits(t)
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
-- <p>An exception for trying to create more than allowed resources or sub-resources. Gives http status code of 409.</p>
function M.LimitExceededException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
	}
	asserts.AssertLimitExceededException(t)
	return t
end

keys.DescribeElasticsearchInstanceTypeLimitsRequest = { ["ElasticsearchVersion"] = true, ["InstanceType"] = true, ["DomainName"] = true, nil }

function asserts.AssertDescribeElasticsearchInstanceTypeLimitsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeElasticsearchInstanceTypeLimitsRequest to be of type 'table'")
	assert(struct["InstanceType"], "Expected key InstanceType to exist in table")
	assert(struct["ElasticsearchVersion"], "Expected key ElasticsearchVersion to exist in table")
	if struct["ElasticsearchVersion"] then asserts.AssertElasticsearchVersionString(struct["ElasticsearchVersion"]) end
	if struct["InstanceType"] then asserts.AssertESPartitionInstanceType(struct["InstanceType"]) end
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeElasticsearchInstanceTypeLimitsRequest[k], "DescribeElasticsearchInstanceTypeLimitsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeElasticsearchInstanceTypeLimitsRequest
-- <p> Container for the parameters to <code> <a>DescribeElasticsearchInstanceTypeLimits</a> </code> operation. </p>
-- @param _ElasticsearchVersion [ElasticsearchVersionString] <p> Version of Elasticsearch for which <code> <a>Limits</a> </code> are needed. </p>
-- @param _InstanceType [ESPartitionInstanceType] <p> The instance type for an Elasticsearch cluster for which Elasticsearch <code> <a>Limits</a> </code> are needed. </p>
-- @param _DomainName [DomainName] <p> DomainName represents the name of the Domain that we are trying to modify. This should be present only if we are querying for Elasticsearch <code> <a>Limits</a> </code> for existing domain. </p>
-- Required parameter: InstanceType
-- Required parameter: ElasticsearchVersion
function M.DescribeElasticsearchInstanceTypeLimitsRequest(_ElasticsearchVersion, _InstanceType, _DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeElasticsearchInstanceTypeLimitsRequest")
	local t = { 
		["ElasticsearchVersion"] = _ElasticsearchVersion,
		["InstanceType"] = _InstanceType,
		["DomainName"] = _DomainName,
	}
	asserts.AssertDescribeElasticsearchInstanceTypeLimitsRequest(t)
	return t
end

keys.ValidationException = { nil }

function asserts.AssertValidationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ValidationException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ValidationException[k], "ValidationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ValidationException
-- <p>An exception for missing / invalid input fields. Gives http status code of 400.</p>
function M.ValidationException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ValidationException")
	local t = { 
	}
	asserts.AssertValidationException(t)
	return t
end

keys.ListElasticsearchInstanceTypesResponse = { ["ElasticsearchInstanceTypes"] = true, ["NextToken"] = true, nil }

function asserts.AssertListElasticsearchInstanceTypesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListElasticsearchInstanceTypesResponse to be of type 'table'")
	if struct["ElasticsearchInstanceTypes"] then asserts.AssertElasticsearchInstanceTypeList(struct["ElasticsearchInstanceTypes"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListElasticsearchInstanceTypesResponse[k], "ListElasticsearchInstanceTypesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListElasticsearchInstanceTypesResponse
-- <p> Container for the parameters returned by <code> <a>ListElasticsearchInstanceTypes</a> </code> operation. </p>
-- @param _ElasticsearchInstanceTypes [ElasticsearchInstanceTypeList] <p> List of instance types supported by Amazon Elasticsearch service for given <code> <a>ElasticsearchVersion</a> </code> </p>
-- @param _NextToken [NextToken] <p>In case if there are more results available NextToken would be present, make further request to the same API with received NextToken to paginate remaining results. </p>
function M.ListElasticsearchInstanceTypesResponse(_ElasticsearchInstanceTypes, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListElasticsearchInstanceTypesResponse")
	local t = { 
		["ElasticsearchInstanceTypes"] = _ElasticsearchInstanceTypes,
		["NextToken"] = _NextToken,
	}
	asserts.AssertListElasticsearchInstanceTypesResponse(t)
	return t
end

keys.DescribeElasticsearchDomainRequest = { ["DomainName"] = true, nil }

function asserts.AssertDescribeElasticsearchDomainRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeElasticsearchDomainRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeElasticsearchDomainRequest[k], "DescribeElasticsearchDomainRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeElasticsearchDomainRequest
-- <p>Container for the parameters to the <code><a>DescribeElasticsearchDomain</a></code> operation.</p>
-- @param _DomainName [DomainName] <p>The name of the Elasticsearch domain for which you want information.</p>
-- Required parameter: DomainName
function M.DescribeElasticsearchDomainRequest(_DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeElasticsearchDomainRequest")
	local t = { 
		["DomainName"] = _DomainName,
	}
	asserts.AssertDescribeElasticsearchDomainRequest(t)
	return t
end

keys.Limits = { ["InstanceLimits"] = true, ["StorageTypes"] = true, ["AdditionalLimits"] = true, nil }

function asserts.AssertLimits(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Limits to be of type 'table'")
	if struct["InstanceLimits"] then asserts.AssertInstanceLimits(struct["InstanceLimits"]) end
	if struct["StorageTypes"] then asserts.AssertStorageTypeList(struct["StorageTypes"]) end
	if struct["AdditionalLimits"] then asserts.AssertAdditionalLimitList(struct["AdditionalLimits"]) end
	for k,_ in pairs(struct) do
		assert(keys.Limits[k], "Limits contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Limits
-- <p> Limits for given InstanceType and for each of it's role. <br/> Limits contains following <code> <a>StorageTypes,</a> </code> <code> <a>InstanceLimits</a> </code> and <code> <a>AdditionalLimits</a> </code> </p>
-- @param _InstanceLimits [InstanceLimits] 
-- @param _StorageTypes [StorageTypeList] <p>StorageType represents the list of storage related types and attributes that are available for given InstanceType. </p>
-- @param _AdditionalLimits [AdditionalLimitList] <p> List of additional limits that are specific to a given InstanceType and for each of it's <code> <a>InstanceRole</a> </code> . </p>
function M.Limits(_InstanceLimits, _StorageTypes, _AdditionalLimits, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Limits")
	local t = { 
		["InstanceLimits"] = _InstanceLimits,
		["StorageTypes"] = _StorageTypes,
		["AdditionalLimits"] = _AdditionalLimits,
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
-- <p>The request processing has failed because of an unknown error, exception or failure (the failure is internal to the service) . Gives http status code of 500.</p>
function M.InternalException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalException")
	local t = { 
	}
	asserts.AssertInternalException(t)
	return t
end

keys.ElasticsearchClusterConfig = { ["DedicatedMasterEnabled"] = true, ["InstanceCount"] = true, ["ZoneAwarenessEnabled"] = true, ["DedicatedMasterType"] = true, ["InstanceType"] = true, ["DedicatedMasterCount"] = true, nil }

function asserts.AssertElasticsearchClusterConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ElasticsearchClusterConfig to be of type 'table'")
	if struct["DedicatedMasterEnabled"] then asserts.AssertBoolean(struct["DedicatedMasterEnabled"]) end
	if struct["InstanceCount"] then asserts.AssertIntegerClass(struct["InstanceCount"]) end
	if struct["ZoneAwarenessEnabled"] then asserts.AssertBoolean(struct["ZoneAwarenessEnabled"]) end
	if struct["DedicatedMasterType"] then asserts.AssertESPartitionInstanceType(struct["DedicatedMasterType"]) end
	if struct["InstanceType"] then asserts.AssertESPartitionInstanceType(struct["InstanceType"]) end
	if struct["DedicatedMasterCount"] then asserts.AssertIntegerClass(struct["DedicatedMasterCount"]) end
	for k,_ in pairs(struct) do
		assert(keys.ElasticsearchClusterConfig[k], "ElasticsearchClusterConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ElasticsearchClusterConfig
-- <p>Specifies the configuration for the domain cluster, such as the type and number of instances.</p>
-- @param _DedicatedMasterEnabled [Boolean] <p>A boolean value to indicate whether a dedicated master node is enabled. See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-managedomains.html#es-managedomains-dedicatedmasternodes" target="_blank">About Dedicated Master Nodes</a> for more information.</p>
-- @param _InstanceCount [IntegerClass] <p>The number of instances in the specified domain cluster.</p>
-- @param _ZoneAwarenessEnabled [Boolean] <p>A boolean value to indicate whether zone awareness is enabled. See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-managedomains.html#es-managedomains-zoneawareness" target="_blank">About Zone Awareness</a> for more information.</p>
-- @param _DedicatedMasterType [ESPartitionInstanceType] <p>The instance type for a dedicated master node.</p>
-- @param _InstanceType [ESPartitionInstanceType] <p>The instance type for an Elasticsearch cluster.</p>
-- @param _DedicatedMasterCount [IntegerClass] <p>Total number of dedicated master nodes, active and on standby, for the cluster.</p>
function M.ElasticsearchClusterConfig(_DedicatedMasterEnabled, _InstanceCount, _ZoneAwarenessEnabled, _DedicatedMasterType, _InstanceType, _DedicatedMasterCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ElasticsearchClusterConfig")
	local t = { 
		["DedicatedMasterEnabled"] = _DedicatedMasterEnabled,
		["InstanceCount"] = _InstanceCount,
		["ZoneAwarenessEnabled"] = _ZoneAwarenessEnabled,
		["DedicatedMasterType"] = _DedicatedMasterType,
		["InstanceType"] = _InstanceType,
		["DedicatedMasterCount"] = _DedicatedMasterCount,
	}
	asserts.AssertElasticsearchClusterConfig(t)
	return t
end

keys.ListElasticsearchInstanceTypesRequest = { ["ElasticsearchVersion"] = true, ["NextToken"] = true, ["MaxResults"] = true, ["DomainName"] = true, nil }

function asserts.AssertListElasticsearchInstanceTypesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListElasticsearchInstanceTypesRequest to be of type 'table'")
	assert(struct["ElasticsearchVersion"], "Expected key ElasticsearchVersion to exist in table")
	if struct["ElasticsearchVersion"] then asserts.AssertElasticsearchVersionString(struct["ElasticsearchVersion"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListElasticsearchInstanceTypesRequest[k], "ListElasticsearchInstanceTypesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListElasticsearchInstanceTypesRequest
-- <p> Container for the parameters to the <code> <a>ListElasticsearchInstanceTypes</a> </code> operation. </p>
-- @param _ElasticsearchVersion [ElasticsearchVersionString] <p>Version of Elasticsearch for which list of supported elasticsearch instance types are needed. </p>
-- @param _NextToken [NextToken] <p>NextToken should be sent in case if earlier API call produced result containing NextToken. It is used for pagination. </p>
-- @param _MaxResults [MaxResults] <p> Set this value to limit the number of results returned. Value provided must be greater than 30 else it wont be honored. </p>
-- @param _DomainName [DomainName] <p>DomainName represents the name of the Domain that we are trying to modify. This should be present only if we are querying for list of available Elasticsearch instance types when modifying existing domain. </p>
-- Required parameter: ElasticsearchVersion
function M.ListElasticsearchInstanceTypesRequest(_ElasticsearchVersion, _NextToken, _MaxResults, _DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListElasticsearchInstanceTypesRequest")
	local t = { 
		["ElasticsearchVersion"] = _ElasticsearchVersion,
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
		["DomainName"] = _DomainName,
	}
	asserts.AssertListElasticsearchInstanceTypesRequest(t)
	return t
end

keys.SnapshotOptionsStatus = { ["Status"] = true, ["Options"] = true, nil }

function asserts.AssertSnapshotOptionsStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SnapshotOptionsStatus to be of type 'table'")
	assert(struct["Options"], "Expected key Options to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["Status"] then asserts.AssertOptionStatus(struct["Status"]) end
	if struct["Options"] then asserts.AssertSnapshotOptions(struct["Options"]) end
	for k,_ in pairs(struct) do
		assert(keys.SnapshotOptionsStatus[k], "SnapshotOptionsStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SnapshotOptionsStatus
-- <p>Status of a daily automated snapshot.</p>
-- @param _Status [OptionStatus] <p>Specifies the status of a daily automated snapshot.</p>
-- @param _Options [SnapshotOptions] <p>Specifies the daily snapshot options specified for the Elasticsearch domain.</p>
-- Required parameter: Options
-- Required parameter: Status
function M.SnapshotOptionsStatus(_Status, _Options, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SnapshotOptionsStatus")
	local t = { 
		["Status"] = _Status,
		["Options"] = _Options,
	}
	asserts.AssertSnapshotOptionsStatus(t)
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
-- <p>An exception for accessing or deleting a resource that does not exist. Gives http status code of 400.</p>
function M.ResourceNotFoundException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundException")
	local t = { 
	}
	asserts.AssertResourceNotFoundException(t)
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
-- <p>An error occured because the client wanted to access a not supported operation. Gives http status code of 409.</p>
function M.DisabledOperationException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisabledOperationException")
	local t = { 
	}
	asserts.AssertDisabledOperationException(t)
	return t
end

keys.DescribeElasticsearchInstanceTypeLimitsResponse = { ["LimitsByRole"] = true, nil }

function asserts.AssertDescribeElasticsearchInstanceTypeLimitsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeElasticsearchInstanceTypeLimitsResponse to be of type 'table'")
	if struct["LimitsByRole"] then asserts.AssertLimitsByRole(struct["LimitsByRole"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeElasticsearchInstanceTypeLimitsResponse[k], "DescribeElasticsearchInstanceTypeLimitsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeElasticsearchInstanceTypeLimitsResponse
-- <p> Container for the parameters received from <code> <a>DescribeElasticsearchInstanceTypeLimits</a> </code> operation. </p>
-- @param _LimitsByRole [LimitsByRole] 
function M.DescribeElasticsearchInstanceTypeLimitsResponse(_LimitsByRole, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeElasticsearchInstanceTypeLimitsResponse")
	local t = { 
		["LimitsByRole"] = _LimitsByRole,
	}
	asserts.AssertDescribeElasticsearchInstanceTypeLimitsResponse(t)
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
-- <p>An exception for trying to create or access sub-resource that is either invalid or not supported. Gives http status code of 409.</p>
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
-- <p>Provides the current status of the entity.</p>
-- @param _PendingDeletion [Boolean] <p>Indicates whether the Elasticsearch domain is being deleted.</p>
-- @param _State [OptionState] <p>Provides the <code>OptionState</code> for the Elasticsearch domain.</p>
-- @param _CreationDate [UpdateTimestamp] <p>Timestamp which tells the creation date for the entity.</p>
-- @param _UpdateVersion [UIntValue] <p>Specifies the latest version for the entity.</p>
-- @param _UpdateDate [UpdateTimestamp] <p>Timestamp which tells the last updated time for the entity.</p>
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

keys.CreateElasticsearchDomainRequest = { ["ElasticsearchClusterConfig"] = true, ["ElasticsearchVersion"] = true, ["DomainName"] = true, ["EBSOptions"] = true, ["SnapshotOptions"] = true, ["AdvancedOptions"] = true, ["AccessPolicies"] = true, nil }

function asserts.AssertCreateElasticsearchDomainRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateElasticsearchDomainRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["ElasticsearchClusterConfig"] then asserts.AssertElasticsearchClusterConfig(struct["ElasticsearchClusterConfig"]) end
	if struct["ElasticsearchVersion"] then asserts.AssertElasticsearchVersionString(struct["ElasticsearchVersion"]) end
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	if struct["EBSOptions"] then asserts.AssertEBSOptions(struct["EBSOptions"]) end
	if struct["SnapshotOptions"] then asserts.AssertSnapshotOptions(struct["SnapshotOptions"]) end
	if struct["AdvancedOptions"] then asserts.AssertAdvancedOptions(struct["AdvancedOptions"]) end
	if struct["AccessPolicies"] then asserts.AssertPolicyDocument(struct["AccessPolicies"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateElasticsearchDomainRequest[k], "CreateElasticsearchDomainRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateElasticsearchDomainRequest
--  
-- @param _ElasticsearchClusterConfig [ElasticsearchClusterConfig] <p>Configuration options for an Elasticsearch domain. Specifies the instance type and number of instances in the domain cluster. </p>
-- @param _ElasticsearchVersion [ElasticsearchVersionString] <p>String of format X.Y to specify version for the Elasticsearch domain eg. "1.5" or "2.3". For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomains" target="_blank">Creating Elasticsearch Domains</a> in the <i>Amazon Elasticsearch Service Developer Guide</i>.</p>
-- @param _DomainName [DomainName] <p>The name of the Elasticsearch domain that you are creating. Domain names are unique across the domains owned by an account within an AWS region. Domain names must start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
-- @param _EBSOptions [EBSOptions] <p>Options to enable, disable and specify the type and size of EBS storage volumes. </p>
-- @param _SnapshotOptions [SnapshotOptions] <p>Option to set time, in UTC format, of the daily automated snapshot. Default value is 0 hours. </p>
-- @param _AdvancedOptions [AdvancedOptions] <p> Option to allow references to indices in an HTTP request body. Must be <code>false</code> when configuring access to individual sub-resources. By default, the value is <code>true</code>. See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options" target="_blank">Configuration Advanced Options</a> for more information.</p>
-- @param _AccessPolicies [PolicyDocument] <p> IAM access policy as a JSON-formatted string.</p>
-- Required parameter: DomainName
function M.CreateElasticsearchDomainRequest(_ElasticsearchClusterConfig, _ElasticsearchVersion, _DomainName, _EBSOptions, _SnapshotOptions, _AdvancedOptions, _AccessPolicies, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateElasticsearchDomainRequest")
	local t = { 
		["ElasticsearchClusterConfig"] = _ElasticsearchClusterConfig,
		["ElasticsearchVersion"] = _ElasticsearchVersion,
		["DomainName"] = _DomainName,
		["EBSOptions"] = _EBSOptions,
		["SnapshotOptions"] = _SnapshotOptions,
		["AdvancedOptions"] = _AdvancedOptions,
		["AccessPolicies"] = _AccessPolicies,
	}
	asserts.AssertCreateElasticsearchDomainRequest(t)
	return t
end

keys.DomainInfo = { ["DomainName"] = true, nil }

function asserts.AssertDomainInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DomainInfo to be of type 'table'")
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DomainInfo[k], "DomainInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DomainInfo
--  
-- @param _DomainName [DomainName] <p> Specifies the <code>DomainName</code>.</p>
function M.DomainInfo(_DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DomainInfo")
	local t = { 
		["DomainName"] = _DomainName,
	}
	asserts.AssertDomainInfo(t)
	return t
end

keys.DeleteElasticsearchDomainRequest = { ["DomainName"] = true, nil }

function asserts.AssertDeleteElasticsearchDomainRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteElasticsearchDomainRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteElasticsearchDomainRequest[k], "DeleteElasticsearchDomainRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteElasticsearchDomainRequest
-- <p>Container for the parameters to the <code><a>DeleteElasticsearchDomain</a></code> operation. Specifies the name of the Elasticsearch domain that you want to delete.</p>
-- @param _DomainName [DomainName] <p>The name of the Elasticsearch domain that you want to permanently delete.</p>
-- Required parameter: DomainName
function M.DeleteElasticsearchDomainRequest(_DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteElasticsearchDomainRequest")
	local t = { 
		["DomainName"] = _DomainName,
	}
	asserts.AssertDeleteElasticsearchDomainRequest(t)
	return t
end

keys.AddTagsRequest = { ["ARN"] = true, ["TagList"] = true, nil }

function asserts.AssertAddTagsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddTagsRequest to be of type 'table'")
	assert(struct["ARN"], "Expected key ARN to exist in table")
	assert(struct["TagList"], "Expected key TagList to exist in table")
	if struct["ARN"] then asserts.AssertARN(struct["ARN"]) end
	if struct["TagList"] then asserts.AssertTagList(struct["TagList"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddTagsRequest[k], "AddTagsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddTagsRequest
-- <p>Container for the parameters to the <code><a>AddTags</a></code> operation. Specify the tags that you want to attach to the Elasticsearch domain.</p>
-- @param _ARN [ARN] <p> Specify the <code>ARN</code> for which you want to add the tags.</p>
-- @param _TagList [TagList] <p> List of <code>Tag</code> that need to be added for the Elasticsearch domain. </p>
-- Required parameter: ARN
-- Required parameter: TagList
function M.AddTagsRequest(_ARN, _TagList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddTagsRequest")
	local t = { 
		["ARN"] = _ARN,
		["TagList"] = _TagList,
	}
	asserts.AssertAddTagsRequest(t)
	return t
end

keys.CreateElasticsearchDomainResponse = { ["DomainStatus"] = true, nil }

function asserts.AssertCreateElasticsearchDomainResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateElasticsearchDomainResponse to be of type 'table'")
	if struct["DomainStatus"] then asserts.AssertElasticsearchDomainStatus(struct["DomainStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateElasticsearchDomainResponse[k], "CreateElasticsearchDomainResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateElasticsearchDomainResponse
-- <p>The result of a <code>CreateElasticsearchDomain</code> operation. Contains the status of the newly created Elasticsearch domain.</p>
-- @param _DomainStatus [ElasticsearchDomainStatus] <p>The status of the newly created Elasticsearch domain. </p>
function M.CreateElasticsearchDomainResponse(_DomainStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateElasticsearchDomainResponse")
	local t = { 
		["DomainStatus"] = _DomainStatus,
	}
	asserts.AssertCreateElasticsearchDomainResponse(t)
	return t
end

keys.ListTagsResponse = { ["TagList"] = true, nil }

function asserts.AssertListTagsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsResponse to be of type 'table'")
	if struct["TagList"] then asserts.AssertTagList(struct["TagList"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsResponse[k], "ListTagsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsResponse
-- <p>The result of a <code>ListTags</code> operation. Contains tags for all requested Elasticsearch domains.</p>
-- @param _TagList [TagList] <p> List of <code>Tag</code> for the requested Elasticsearch domain.</p>
function M.ListTagsResponse(_TagList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsResponse")
	local t = { 
		["TagList"] = _TagList,
	}
	asserts.AssertListTagsResponse(t)
	return t
end

keys.DescribeElasticsearchDomainConfigRequest = { ["DomainName"] = true, nil }

function asserts.AssertDescribeElasticsearchDomainConfigRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeElasticsearchDomainConfigRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeElasticsearchDomainConfigRequest[k], "DescribeElasticsearchDomainConfigRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeElasticsearchDomainConfigRequest
-- <p> Container for the parameters to the <code>DescribeElasticsearchDomainConfig</code> operation. Specifies the domain name for which you want configuration information.</p>
-- @param _DomainName [DomainName] <p>The Elasticsearch domain that you want to get information about.</p>
-- Required parameter: DomainName
function M.DescribeElasticsearchDomainConfigRequest(_DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeElasticsearchDomainConfigRequest")
	local t = { 
		["DomainName"] = _DomainName,
	}
	asserts.AssertDescribeElasticsearchDomainConfigRequest(t)
	return t
end

keys.InstanceCountLimits = { ["MaximumInstanceCount"] = true, ["MinimumInstanceCount"] = true, nil }

function asserts.AssertInstanceCountLimits(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceCountLimits to be of type 'table'")
	if struct["MaximumInstanceCount"] then asserts.AssertMaximumInstanceCount(struct["MaximumInstanceCount"]) end
	if struct["MinimumInstanceCount"] then asserts.AssertMinimumInstanceCount(struct["MinimumInstanceCount"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstanceCountLimits[k], "InstanceCountLimits contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceCountLimits
-- <p> InstanceCountLimits represents the limits on number of instances that be created in Amazon Elasticsearch for given InstanceType. </p>
-- @param _MaximumInstanceCount [MaximumInstanceCount] 
-- @param _MinimumInstanceCount [MinimumInstanceCount] 
function M.InstanceCountLimits(_MaximumInstanceCount, _MinimumInstanceCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceCountLimits")
	local t = { 
		["MaximumInstanceCount"] = _MaximumInstanceCount,
		["MinimumInstanceCount"] = _MinimumInstanceCount,
	}
	asserts.AssertInstanceCountLimits(t)
	return t
end

keys.UpdateElasticsearchDomainConfigResponse = { ["DomainConfig"] = true, nil }

function asserts.AssertUpdateElasticsearchDomainConfigResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateElasticsearchDomainConfigResponse to be of type 'table'")
	assert(struct["DomainConfig"], "Expected key DomainConfig to exist in table")
	if struct["DomainConfig"] then asserts.AssertElasticsearchDomainConfig(struct["DomainConfig"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateElasticsearchDomainConfigResponse[k], "UpdateElasticsearchDomainConfigResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateElasticsearchDomainConfigResponse
-- <p>The result of an <code>UpdateElasticsearchDomain</code> request. Contains the status of the Elasticsearch domain being updated.</p>
-- @param _DomainConfig [ElasticsearchDomainConfig] <p>The status of the updated Elasticsearch domain. </p>
-- Required parameter: DomainConfig
function M.UpdateElasticsearchDomainConfigResponse(_DomainConfig, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateElasticsearchDomainConfigResponse")
	local t = { 
		["DomainConfig"] = _DomainConfig,
	}
	asserts.AssertUpdateElasticsearchDomainConfigResponse(t)
	return t
end

function asserts.AssertOptionState(str)
	assert(str)
	assert(type(str) == "string", "Expected OptionState to be of type 'string'")
end

-- <p>The state of a requested change. One of the following:</p> <ul> <li>Processing: The request change is still in-process.</li> <li>Active: The request change is processed and deployed to the Elasticsearch domain.</li> </ul>
function M.OptionState(str)
	asserts.AssertOptionState(str)
	return str
end

function asserts.AssertVolumeType(str)
	assert(str)
	assert(type(str) == "string", "Expected VolumeType to be of type 'string'")
end

-- <p> The type of EBS volume, standard, gp2, or io1. See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-ebs" target="_blank">Configuring EBS-based Storage</a>for more information.</p>
function M.VolumeType(str)
	asserts.AssertVolumeType(str)
	return str
end

function asserts.AssertESPartitionInstanceType(str)
	assert(str)
	assert(type(str) == "string", "Expected ESPartitionInstanceType to be of type 'string'")
end

--  
function M.ESPartitionInstanceType(str)
	asserts.AssertESPartitionInstanceType(str)
	return str
end

function asserts.AssertPolicyDocument(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyDocument to be of type 'string'")
end

-- <p>Access policy rules for an Elasticsearch domain service endpoints. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-access-policies" target="_blank">Configuring Access Policies</a> in the <i>Amazon Elasticsearch Service Developer Guide</i>. The maximum size of a policy document is 100 KB.</p>
function M.PolicyDocument(str)
	asserts.AssertPolicyDocument(str)
	return str
end

function asserts.AssertLimitName(str)
	assert(str)
	assert(type(str) == "string", "Expected LimitName to be of type 'string'")
end

--  
function M.LimitName(str)
	asserts.AssertLimitName(str)
	return str
end

function asserts.AssertDomainId(str)
	assert(str)
	assert(type(str) == "string", "Expected DomainId to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

-- <p>Unique identifier for an Elasticsearch domain.</p>
function M.DomainId(str)
	asserts.AssertDomainId(str)
	return str
end

function asserts.AssertDomainName(str)
	assert(str)
	assert(type(str) == "string", "Expected DomainName to be of type 'string'")
	assert(#str <= 28, "Expected string to be max 28 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
end

-- <p>The name of an Elasticsearch domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
function M.DomainName(str)
	asserts.AssertDomainName(str)
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

function asserts.AssertElasticsearchVersionString(str)
	assert(str)
	assert(type(str) == "string", "Expected ElasticsearchVersionString to be of type 'string'")
end

--  
function M.ElasticsearchVersionString(str)
	asserts.AssertElasticsearchVersionString(str)
	return str
end

function asserts.AssertTagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TagValue to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

-- <p>A string of length from 0 to 256 characters that specifies the value for a Tag. Tag values can be null and do not have to be unique in a tag set.</p>
function M.TagValue(str)
	asserts.AssertTagValue(str)
	return str
end

function asserts.AssertLimitValue(str)
	assert(str)
	assert(type(str) == "string", "Expected LimitValue to be of type 'string'")
end

--  
function M.LimitValue(str)
	asserts.AssertLimitValue(str)
	return str
end

function asserts.AssertInstanceRole(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceRole to be of type 'string'")
end

--  
function M.InstanceRole(str)
	asserts.AssertInstanceRole(str)
	return str
end

function asserts.AssertErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorMessage to be of type 'string'")
end

--  
function M.ErrorMessage(str)
	asserts.AssertErrorMessage(str)
	return str
end

function asserts.AssertServiceUrl(str)
	assert(str)
	assert(type(str) == "string", "Expected ServiceUrl to be of type 'string'")
end

-- <p>The endpoint to which service requests are submitted. For example, <code>search-imdb-movies-oopcnjfn6ugofer3zx5iadxxca.eu-west-1.es.amazonaws.com</code> or <code>doc-imdb-movies-oopcnjfn6ugofer3zx5iadxxca.eu-west-1.es.amazonaws.com</code>.</p>
function M.ServiceUrl(str)
	asserts.AssertServiceUrl(str)
	return str
end

function asserts.AssertStorageSubTypeName(str)
	assert(str)
	assert(type(str) == "string", "Expected StorageSubTypeName to be of type 'string'")
end

-- <p> SubType of the given storage type. List of available sub-storage options: For "instance" storageType we wont have any storageSubType, in case of "ebs" storageType we will have following valid storageSubTypes <ol> <li>standard</li> <li>gp2</li> <li>io1</li> </ol> Refer <code><a>VolumeType</a></code> for more information regarding above EBS storage options. </p>
function M.StorageSubTypeName(str)
	asserts.AssertStorageSubTypeName(str)
	return str
end

function asserts.AssertStorageTypeName(str)
	assert(str)
	assert(type(str) == "string", "Expected StorageTypeName to be of type 'string'")
end

-- <p> Type of the storage. List of available storage options: <ol> <li>instance</li> Inbuilt storage available for the given Instance <li>ebs</li> Elastic block storage that would be attached to the given Instance </ol> </p>
function M.StorageTypeName(str)
	asserts.AssertStorageTypeName(str)
	return str
end

function asserts.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
end

-- <p> Paginated APIs accepts NextToken input to returns next page results and provides a NextToken output in the response which can be used by the client to retrieve more results. </p>
function M.NextToken(str)
	asserts.AssertNextToken(str)
	return str
end

function asserts.AssertTagKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TagKey to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

-- <p>A string of length from 1 to 128 characters that specifies the key for a Tag. Tag keys must be unique for the Elasticsearch domain to which they are attached.</p>
function M.TagKey(str)
	asserts.AssertTagKey(str)
	return str
end

function asserts.AssertARN(str)
	assert(str)
	assert(type(str) == "string", "Expected ARN to be of type 'string'")
end

-- <p>The Amazon Resource Name (ARN) of the Elasticsearch domain. See <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/index.html?Using_Identifiers.html" target="_blank">Identifiers for IAM Entities</a> in <i>Using AWS Identity and Access Management</i> for more information.</p>
function M.ARN(str)
	asserts.AssertARN(str)
	return str
end

function asserts.AssertIntegerClass(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected IntegerClass to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.IntegerClass(integer)
	asserts.AssertIntegerClass(integer)
	return integer
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

function asserts.AssertMaximumInstanceCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaximumInstanceCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.MaximumInstanceCount(integer)
	asserts.AssertMaximumInstanceCount(integer)
	return integer
end

function asserts.AssertMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
end

function M.MaxResults(integer)
	asserts.AssertMaxResults(integer)
	return integer
end

function asserts.AssertMinimumInstanceCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MinimumInstanceCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.MinimumInstanceCount(integer)
	asserts.AssertMinimumInstanceCount(integer)
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

function asserts.AssertAdvancedOptions(map)
	assert(map)
	assert(type(map) == "table", "Expected AdvancedOptions to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertString(k)
		asserts.AssertString(v)
	end
end

function M.AdvancedOptions(map)
	asserts.AssertAdvancedOptions(map)
	return map
end

function asserts.AssertLimitsByRole(map)
	assert(map)
	assert(type(map) == "table", "Expected LimitsByRole to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertInstanceRole(k)
		asserts.AssertLimits(v)
	end
end

function M.LimitsByRole(map)
	asserts.AssertLimitsByRole(map)
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

function asserts.AssertElasticsearchVersionList(list)
	assert(list)
	assert(type(list) == "table", "Expected ElasticsearchVersionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertElasticsearchVersionString(v)
	end
end

-- <p>List of supported elastic search versions. </p>
-- List of ElasticsearchVersionString objects
function M.ElasticsearchVersionList(list)
	asserts.AssertElasticsearchVersionList(list)
	return list
end

function asserts.AssertDomainInfoList(list)
	assert(list)
	assert(type(list) == "table", "Expected DomainInfoList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDomainInfo(v)
	end
end

-- <p> Contains the list of Elasticsearch domain information.</p>
-- List of DomainInfo objects
function M.DomainInfoList(list)
	asserts.AssertDomainInfoList(list)
	return list
end

function asserts.AssertLimitValueList(list)
	assert(list)
	assert(type(list) == "table", "Expected LimitValueList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLimitValue(v)
	end
end

--  
-- List of LimitValue objects
function M.LimitValueList(list)
	asserts.AssertLimitValueList(list)
	return list
end

function asserts.AssertElasticsearchDomainStatusList(list)
	assert(list)
	assert(type(list) == "table", "Expected ElasticsearchDomainStatusList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertElasticsearchDomainStatus(v)
	end
end

-- <p>A list that contains the status of each requested Elasticsearch domain.</p>
-- List of ElasticsearchDomainStatus objects
function M.ElasticsearchDomainStatusList(list)
	asserts.AssertElasticsearchDomainStatusList(list)
	return list
end

function asserts.AssertStorageTypeLimitList(list)
	assert(list)
	assert(type(list) == "table", "Expected StorageTypeLimitList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertStorageTypeLimit(v)
	end
end

--  
-- List of StorageTypeLimit objects
function M.StorageTypeLimitList(list)
	asserts.AssertStorageTypeLimitList(list)
	return list
end

function asserts.AssertDomainNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected DomainNameList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDomainName(v)
	end
end

-- <p>A list of Elasticsearch domain names.</p>
-- List of DomainName objects
function M.DomainNameList(list)
	asserts.AssertDomainNameList(list)
	return list
end

function asserts.AssertStringList(list)
	assert(list)
	assert(type(list) == "table", "Expected StringList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.StringList(list)
	asserts.AssertStringList(list)
	return list
end

function asserts.AssertElasticsearchInstanceTypeList(list)
	assert(list)
	assert(type(list) == "table", "Expected ElasticsearchInstanceTypeList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertESPartitionInstanceType(v)
	end
end

-- <p> List of instance types supported by Amazon Elasticsearch service. </p>
-- List of ESPartitionInstanceType objects
function M.ElasticsearchInstanceTypeList(list)
	asserts.AssertElasticsearchInstanceTypeList(list)
	return list
end

function asserts.AssertStorageTypeList(list)
	assert(list)
	assert(type(list) == "table", "Expected StorageTypeList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertStorageType(v)
	end
end

--  
-- List of StorageType objects
function M.StorageTypeList(list)
	asserts.AssertStorageTypeList(list)
	return list
end

function asserts.AssertAdditionalLimitList(list)
	assert(list)
	assert(type(list) == "table", "Expected AdditionalLimitList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAdditionalLimit(v)
	end
end

--  
-- List of AdditionalLimit objects
function M.AdditionalLimitList(list)
	asserts.AssertAdditionalLimitList(list)
	return list
end

function asserts.AssertTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTag(v)
	end
end

-- <p>A list of <code>Tag</code> </p>
-- List of Tag objects
function M.TagList(list)
	asserts.AssertTagList(list)
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
			return "es.amazonaws.com"
		end
	end
	local ss = { "es" }
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
--- Call RemoveTags asynchronously, invoking a callback when done
-- @param RemoveTagsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RemoveTagsAsync(RemoveTagsRequest, cb)
	assert(RemoveTagsRequest, "You must provide a RemoveTagsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RemoveTags",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/2015-01-01/tags-removal", RemoveTagsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RemoveTags synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RemoveTagsRequest
-- @return response
-- @return error_message
function M.RemoveTagsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RemoveTagsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteElasticsearchDomain asynchronously, invoking a callback when done
-- @param DeleteElasticsearchDomainRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteElasticsearchDomainAsync(DeleteElasticsearchDomainRequest, cb)
	assert(DeleteElasticsearchDomainRequest, "You must provide a DeleteElasticsearchDomainRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteElasticsearchDomain",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(settings.uri, "/2015-01-01/es/domain/{DomainName}", DeleteElasticsearchDomainRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteElasticsearchDomain synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteElasticsearchDomainRequest
-- @return response
-- @return error_message
function M.DeleteElasticsearchDomainSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteElasticsearchDomainAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AddTags asynchronously, invoking a callback when done
-- @param AddTagsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AddTagsAsync(AddTagsRequest, cb)
	assert(AddTagsRequest, "You must provide a AddTagsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".AddTags",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/2015-01-01/tags", AddTagsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AddTags synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AddTagsRequest
-- @return response
-- @return error_message
function M.AddTagsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddTagsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeElasticsearchInstanceTypeLimits asynchronously, invoking a callback when done
-- @param DescribeElasticsearchInstanceTypeLimitsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeElasticsearchInstanceTypeLimitsAsync(DescribeElasticsearchInstanceTypeLimitsRequest, cb)
	assert(DescribeElasticsearchInstanceTypeLimitsRequest, "You must provide a DescribeElasticsearchInstanceTypeLimitsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeElasticsearchInstanceTypeLimits",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/2015-01-01/es/instanceTypeLimits/{ElasticsearchVersion}/{InstanceType}", DescribeElasticsearchInstanceTypeLimitsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeElasticsearchInstanceTypeLimits synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeElasticsearchInstanceTypeLimitsRequest
-- @return response
-- @return error_message
function M.DescribeElasticsearchInstanceTypeLimitsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeElasticsearchInstanceTypeLimitsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateElasticsearchDomainConfig asynchronously, invoking a callback when done
-- @param UpdateElasticsearchDomainConfigRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateElasticsearchDomainConfigAsync(UpdateElasticsearchDomainConfigRequest, cb)
	assert(UpdateElasticsearchDomainConfigRequest, "You must provide a UpdateElasticsearchDomainConfigRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateElasticsearchDomainConfig",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/2015-01-01/es/domain/{DomainName}/config", UpdateElasticsearchDomainConfigRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateElasticsearchDomainConfig synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateElasticsearchDomainConfigRequest
-- @return response
-- @return error_message
function M.UpdateElasticsearchDomainConfigSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateElasticsearchDomainConfigAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeElasticsearchDomainConfig asynchronously, invoking a callback when done
-- @param DescribeElasticsearchDomainConfigRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeElasticsearchDomainConfigAsync(DescribeElasticsearchDomainConfigRequest, cb)
	assert(DescribeElasticsearchDomainConfigRequest, "You must provide a DescribeElasticsearchDomainConfigRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeElasticsearchDomainConfig",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/2015-01-01/es/domain/{DomainName}/config", DescribeElasticsearchDomainConfigRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeElasticsearchDomainConfig synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeElasticsearchDomainConfigRequest
-- @return response
-- @return error_message
function M.DescribeElasticsearchDomainConfigSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeElasticsearchDomainConfigAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateElasticsearchDomain asynchronously, invoking a callback when done
-- @param CreateElasticsearchDomainRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateElasticsearchDomainAsync(CreateElasticsearchDomainRequest, cb)
	assert(CreateElasticsearchDomainRequest, "You must provide a CreateElasticsearchDomainRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateElasticsearchDomain",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/2015-01-01/es/domain", CreateElasticsearchDomainRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateElasticsearchDomain synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateElasticsearchDomainRequest
-- @return response
-- @return error_message
function M.CreateElasticsearchDomainSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateElasticsearchDomainAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeElasticsearchDomains asynchronously, invoking a callback when done
-- @param DescribeElasticsearchDomainsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeElasticsearchDomainsAsync(DescribeElasticsearchDomainsRequest, cb)
	assert(DescribeElasticsearchDomainsRequest, "You must provide a DescribeElasticsearchDomainsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeElasticsearchDomains",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/2015-01-01/es/domain-info", DescribeElasticsearchDomainsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeElasticsearchDomains synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeElasticsearchDomainsRequest
-- @return response
-- @return error_message
function M.DescribeElasticsearchDomainsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeElasticsearchDomainsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListElasticsearchInstanceTypes asynchronously, invoking a callback when done
-- @param ListElasticsearchInstanceTypesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListElasticsearchInstanceTypesAsync(ListElasticsearchInstanceTypesRequest, cb)
	assert(ListElasticsearchInstanceTypesRequest, "You must provide a ListElasticsearchInstanceTypesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListElasticsearchInstanceTypes",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/2015-01-01/es/instanceTypes/{ElasticsearchVersion}", ListElasticsearchInstanceTypesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListElasticsearchInstanceTypes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListElasticsearchInstanceTypesRequest
-- @return response
-- @return error_message
function M.ListElasticsearchInstanceTypesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListElasticsearchInstanceTypesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListElasticsearchVersions asynchronously, invoking a callback when done
-- @param ListElasticsearchVersionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListElasticsearchVersionsAsync(ListElasticsearchVersionsRequest, cb)
	assert(ListElasticsearchVersionsRequest, "You must provide a ListElasticsearchVersionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListElasticsearchVersions",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/2015-01-01/es/versions", ListElasticsearchVersionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListElasticsearchVersions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListElasticsearchVersionsRequest
-- @return response
-- @return error_message
function M.ListElasticsearchVersionsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListElasticsearchVersionsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListDomainNames asynchronously, invoking a callback when done
-- @param cb Callback function accepting two args: response, error_message
function M.ListDomainNamesAsync(cb)
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListDomainNames",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/2015-01-01/domain", {}, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListDomainNames synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @return response
-- @return error_message
function M.ListDomainNamesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListDomainNamesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTags asynchronously, invoking a callback when done
-- @param ListTagsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListTagsAsync(ListTagsRequest, cb)
	assert(ListTagsRequest, "You must provide a ListTagsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListTags",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/2015-01-01/tags/", ListTagsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTags synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTagsRequest
-- @return response
-- @return error_message
function M.ListTagsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTagsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeElasticsearchDomain asynchronously, invoking a callback when done
-- @param DescribeElasticsearchDomainRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeElasticsearchDomainAsync(DescribeElasticsearchDomainRequest, cb)
	assert(DescribeElasticsearchDomainRequest, "You must provide a DescribeElasticsearchDomainRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeElasticsearchDomain",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/2015-01-01/es/domain/{DomainName}", DescribeElasticsearchDomainRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeElasticsearchDomain synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeElasticsearchDomainRequest
-- @return response
-- @return error_message
function M.DescribeElasticsearchDomainSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeElasticsearchDomainAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
