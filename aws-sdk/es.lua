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

local DescribeElasticsearchDomainsResponse_keys = { "DomainStatusList" = true, nil }

function M.AssertDescribeElasticsearchDomainsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeElasticsearchDomainsResponse to be of type 'table'")
	assert(struct["DomainStatusList"], "Expected key DomainStatusList to exist in table")
	if struct["DomainStatusList"] then M.AssertElasticsearchDomainStatusList(struct["DomainStatusList"]) end
	for k,_ in pairs(struct) do
		assert(DescribeElasticsearchDomainsResponse_keys[k], "DescribeElasticsearchDomainsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeElasticsearchDomainsResponse
-- <p>The result of a <code>DescribeElasticsearchDomains</code> request. Contains the status of the specified domains or all domains owned by the account.</p>
-- @param DomainStatusList [ElasticsearchDomainStatusList] <p>The status of the domains requested in the <code>DescribeElasticsearchDomains</code> request.</p>
-- Required parameter: DomainStatusList
function M.DescribeElasticsearchDomainsResponse(DomainStatusList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeElasticsearchDomainsResponse")
	local t = { 
		["DomainStatusList"] = DomainStatusList,
	}
	M.AssertDescribeElasticsearchDomainsResponse(t)
	return t
end

local AdvancedOptionsStatus_keys = { "Status" = true, "Options" = true, nil }

function M.AssertAdvancedOptionsStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdvancedOptionsStatus to be of type 'table'")
	assert(struct["Options"], "Expected key Options to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["Status"] then M.AssertOptionStatus(struct["Status"]) end
	if struct["Options"] then M.AssertAdvancedOptions(struct["Options"]) end
	for k,_ in pairs(struct) do
		assert(AdvancedOptionsStatus_keys[k], "AdvancedOptionsStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdvancedOptionsStatus
-- <p> Status of the advanced options for the specified Elasticsearch domain. Currently, the following advanced options are available:</p> <ul> <li>Option to allow references to indices in an HTTP request body. Must be <code>false</code> when configuring access to individual sub-resources. By default, the value is <code>true</code>. See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options" target="_blank">Configuration Advanced Options</a> for more information.</li> <li>Option to specify the percentage of heap space that is allocated to field data. By default, this setting is unbounded.</li> </ul> <p>For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options">Configuring Advanced Options</a>.</p>
-- @param Status [OptionStatus] <p> Specifies the status of <code>OptionStatus</code> for advanced options for the specified Elasticsearch domain.</p>
-- @param Options [AdvancedOptions] <p> Specifies the status of advanced options for the specified Elasticsearch domain.</p>
-- Required parameter: Options
-- Required parameter: Status
function M.AdvancedOptionsStatus(Status, Options, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AdvancedOptionsStatus")
	local t = { 
		["Status"] = Status,
		["Options"] = Options,
	}
	M.AssertAdvancedOptionsStatus(t)
	return t
end

local ListTagsRequest_keys = { "ARN" = true, nil }

function M.AssertListTagsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsRequest to be of type 'table'")
	assert(struct["ARN"], "Expected key ARN to exist in table")
	if struct["ARN"] then M.AssertARN(struct["ARN"]) end
	for k,_ in pairs(struct) do
		assert(ListTagsRequest_keys[k], "ListTagsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsRequest
-- <p>Container for the parameters to the <code><a>ListTags</a></code> operation. Specify the <code>ARN</code> for the Elasticsearch domain to which the tags are attached that you want to view are attached.</p>
-- @param ARN [ARN] <p> Specify the <code>ARN</code> for the Elasticsearch domain to which the tags are attached that you want to view.</p>
-- Required parameter: ARN
function M.ListTagsRequest(ARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsRequest")
	local t = { 
		["ARN"] = ARN,
	}
	M.AssertListTagsRequest(t)
	return t
end

local RemoveTagsRequest_keys = { "TagKeys" = true, "ARN" = true, nil }

function M.AssertRemoveTagsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveTagsRequest to be of type 'table'")
	assert(struct["ARN"], "Expected key ARN to exist in table")
	assert(struct["TagKeys"], "Expected key TagKeys to exist in table")
	if struct["TagKeys"] then M.AssertStringList(struct["TagKeys"]) end
	if struct["ARN"] then M.AssertARN(struct["ARN"]) end
	for k,_ in pairs(struct) do
		assert(RemoveTagsRequest_keys[k], "RemoveTagsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveTagsRequest
-- <p>Container for the parameters to the <code><a>RemoveTags</a></code> operation. Specify the <code>ARN</code> for the Elasticsearch domain from which you want to remove the specified <code>TagKey</code>.</p>
-- @param TagKeys [StringList] <p>Specifies the <code>TagKey</code> list which you want to remove from the Elasticsearch domain.</p>
-- @param ARN [ARN] <p>Specifies the <code>ARN</code> for the Elasticsearch domain from which you want to delete the specified tags.</p>
-- Required parameter: ARN
-- Required parameter: TagKeys
function M.RemoveTagsRequest(TagKeys, ARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveTagsRequest")
	local t = { 
		["TagKeys"] = TagKeys,
		["ARN"] = ARN,
	}
	M.AssertRemoveTagsRequest(t)
	return t
end

local DeleteElasticsearchDomainResponse_keys = { "DomainStatus" = true, nil }

function M.AssertDeleteElasticsearchDomainResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteElasticsearchDomainResponse to be of type 'table'")
	if struct["DomainStatus"] then M.AssertElasticsearchDomainStatus(struct["DomainStatus"]) end
	for k,_ in pairs(struct) do
		assert(DeleteElasticsearchDomainResponse_keys[k], "DeleteElasticsearchDomainResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteElasticsearchDomainResponse
-- <p>The result of a <code>DeleteElasticsearchDomain</code> request. Contains the status of the pending deletion, or no status if the domain and all of its resources have been deleted.</p>
-- @param DomainStatus [ElasticsearchDomainStatus] <p>The status of the Elasticsearch domain being deleted.</p>
function M.DeleteElasticsearchDomainResponse(DomainStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteElasticsearchDomainResponse")
	local t = { 
		["DomainStatus"] = DomainStatus,
	}
	M.AssertDeleteElasticsearchDomainResponse(t)
	return t
end

local DescribeElasticsearchDomainsRequest_keys = { "DomainNames" = true, nil }

function M.AssertDescribeElasticsearchDomainsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeElasticsearchDomainsRequest to be of type 'table'")
	assert(struct["DomainNames"], "Expected key DomainNames to exist in table")
	if struct["DomainNames"] then M.AssertDomainNameList(struct["DomainNames"]) end
	for k,_ in pairs(struct) do
		assert(DescribeElasticsearchDomainsRequest_keys[k], "DescribeElasticsearchDomainsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeElasticsearchDomainsRequest
-- <p>Container for the parameters to the <code><a>DescribeElasticsearchDomains</a></code> operation. By default, the API returns the status of all Elasticsearch domains.</p>
-- @param DomainNames [DomainNameList] <p>The Elasticsearch domains for which you want information.</p>
-- Required parameter: DomainNames
function M.DescribeElasticsearchDomainsRequest(DomainNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeElasticsearchDomainsRequest")
	local t = { 
		["DomainNames"] = DomainNames,
	}
	M.AssertDescribeElasticsearchDomainsRequest(t)
	return t
end

local ListDomainNamesResponse_keys = { "DomainNames" = true, nil }

function M.AssertListDomainNamesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDomainNamesResponse to be of type 'table'")
	if struct["DomainNames"] then M.AssertDomainInfoList(struct["DomainNames"]) end
	for k,_ in pairs(struct) do
		assert(ListDomainNamesResponse_keys[k], "ListDomainNamesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDomainNamesResponse
-- <p>The result of a <code>ListDomainNames</code> operation. Contains the names of all Elasticsearch domains owned by this account.</p>
-- @param DomainNames [DomainInfoList] <p>List of Elasticsearch domain names.</p>
function M.ListDomainNamesResponse(DomainNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDomainNamesResponse")
	local t = { 
		["DomainNames"] = DomainNames,
	}
	M.AssertListDomainNamesResponse(t)
	return t
end

local ElasticsearchDomainConfig_keys = { "ElasticsearchClusterConfig" = true, "ElasticsearchVersion" = true, "EBSOptions" = true, "SnapshotOptions" = true, "AdvancedOptions" = true, "AccessPolicies" = true, nil }

function M.AssertElasticsearchDomainConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ElasticsearchDomainConfig to be of type 'table'")
	if struct["ElasticsearchClusterConfig"] then M.AssertElasticsearchClusterConfigStatus(struct["ElasticsearchClusterConfig"]) end
	if struct["ElasticsearchVersion"] then M.AssertElasticsearchVersionStatus(struct["ElasticsearchVersion"]) end
	if struct["EBSOptions"] then M.AssertEBSOptionsStatus(struct["EBSOptions"]) end
	if struct["SnapshotOptions"] then M.AssertSnapshotOptionsStatus(struct["SnapshotOptions"]) end
	if struct["AdvancedOptions"] then M.AssertAdvancedOptionsStatus(struct["AdvancedOptions"]) end
	if struct["AccessPolicies"] then M.AssertAccessPoliciesStatus(struct["AccessPolicies"]) end
	for k,_ in pairs(struct) do
		assert(ElasticsearchDomainConfig_keys[k], "ElasticsearchDomainConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ElasticsearchDomainConfig
-- <p>The configuration of an Elasticsearch domain.</p>
-- @param ElasticsearchClusterConfig [ElasticsearchClusterConfigStatus] <p>Specifies the <code>ElasticsearchClusterConfig</code> for the Elasticsearch domain.</p>
-- @param ElasticsearchVersion [ElasticsearchVersionStatus] <p>String of format X.Y to specify version for the Elasticsearch domain.</p>
-- @param EBSOptions [EBSOptionsStatus] <p>Specifies the <code>EBSOptions</code> for the Elasticsearch domain.</p>
-- @param SnapshotOptions [SnapshotOptionsStatus] <p>Specifies the <code>SnapshotOptions</code> for the Elasticsearch domain.</p>
-- @param AdvancedOptions [AdvancedOptionsStatus] <p>Specifies the <code>AdvancedOptions</code> for the domain. See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options" target="_blank">Configuring Advanced Options</a> for more information.</p>
-- @param AccessPolicies [AccessPoliciesStatus] <p>IAM access policy as a JSON-formatted string.</p>
function M.ElasticsearchDomainConfig(ElasticsearchClusterConfig, ElasticsearchVersion, EBSOptions, SnapshotOptions, AdvancedOptions, AccessPolicies, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ElasticsearchDomainConfig")
	local t = { 
		["ElasticsearchClusterConfig"] = ElasticsearchClusterConfig,
		["ElasticsearchVersion"] = ElasticsearchVersion,
		["EBSOptions"] = EBSOptions,
		["SnapshotOptions"] = SnapshotOptions,
		["AdvancedOptions"] = AdvancedOptions,
		["AccessPolicies"] = AccessPolicies,
	}
	M.AssertElasticsearchDomainConfig(t)
	return t
end

local ElasticsearchDomainStatus_keys = { "ElasticsearchClusterConfig" = true, "Endpoint" = true, "Created" = true, "Deleted" = true, "DomainName" = true, "EBSOptions" = true, "SnapshotOptions" = true, "DomainId" = true, "AccessPolicies" = true, "Processing" = true, "AdvancedOptions" = true, "ElasticsearchVersion" = true, "ARN" = true, nil }

function M.AssertElasticsearchDomainStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ElasticsearchDomainStatus to be of type 'table'")
	assert(struct["DomainId"], "Expected key DomainId to exist in table")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["ARN"], "Expected key ARN to exist in table")
	assert(struct["ElasticsearchClusterConfig"], "Expected key ElasticsearchClusterConfig to exist in table")
	if struct["ElasticsearchClusterConfig"] then M.AssertElasticsearchClusterConfig(struct["ElasticsearchClusterConfig"]) end
	if struct["Endpoint"] then M.AssertServiceUrl(struct["Endpoint"]) end
	if struct["Created"] then M.AssertBoolean(struct["Created"]) end
	if struct["Deleted"] then M.AssertBoolean(struct["Deleted"]) end
	if struct["DomainName"] then M.AssertDomainName(struct["DomainName"]) end
	if struct["EBSOptions"] then M.AssertEBSOptions(struct["EBSOptions"]) end
	if struct["SnapshotOptions"] then M.AssertSnapshotOptions(struct["SnapshotOptions"]) end
	if struct["DomainId"] then M.AssertDomainId(struct["DomainId"]) end
	if struct["AccessPolicies"] then M.AssertPolicyDocument(struct["AccessPolicies"]) end
	if struct["Processing"] then M.AssertBoolean(struct["Processing"]) end
	if struct["AdvancedOptions"] then M.AssertAdvancedOptions(struct["AdvancedOptions"]) end
	if struct["ElasticsearchVersion"] then M.AssertElasticsearchVersionString(struct["ElasticsearchVersion"]) end
	if struct["ARN"] then M.AssertARN(struct["ARN"]) end
	for k,_ in pairs(struct) do
		assert(ElasticsearchDomainStatus_keys[k], "ElasticsearchDomainStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ElasticsearchDomainStatus
-- <p>The current status of an Elasticsearch domain.</p>
-- @param ElasticsearchClusterConfig [ElasticsearchClusterConfig] <p>The type and number of instances in the domain cluster.</p>
-- @param Endpoint [ServiceUrl] <p>The Elasticsearch domain endpoint that you use to submit index and search requests.</p>
-- @param Created [Boolean] <p>The domain creation status. <code>True</code> if the creation of an Elasticsearch domain is complete. <code>False</code> if domain creation is still in progress.</p>
-- @param Deleted [Boolean] <p>The domain deletion status. <code>True</code> if a delete request has been received for the domain but resource cleanup is still in progress. <code>False</code> if the domain has not been deleted. Once domain deletion is complete, the status of the domain is no longer returned.</p>
-- @param DomainName [DomainName] <p>The name of an Elasticsearch domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
-- @param EBSOptions [EBSOptions] <p>The <code>EBSOptions</code> for the specified domain. See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-ebs" target="_blank">Configuring EBS-based Storage</a> for more information.</p>
-- @param SnapshotOptions [SnapshotOptions] <p>Specifies the status of the <code>SnapshotOptions</code></p>
-- @param DomainId [DomainId] <p>The unique identifier for the specified Elasticsearch domain.</p>
-- @param AccessPolicies [PolicyDocument] <p> IAM access policy as a JSON-formatted string.</p>
-- @param Processing [Boolean] <p>The status of the Elasticsearch domain configuration. <code>True</code> if Amazon Elasticsearch Service is processing configuration changes. <code>False</code> if the configuration is active.</p>
-- @param AdvancedOptions [AdvancedOptions] <p>Specifies the status of the <code>AdvancedOptions</code></p>
-- @param ElasticsearchVersion [ElasticsearchVersionString] <p>The current status of an Elasticsearch domain.</p>
-- @param ARN [ARN] <p>The Amazon resource name (ARN) of an Elasticsearch domain. See <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/index.html?Using_Identifiers.html" target="_blank">Identifiers for IAM Entities</a> in <i>Using AWS Identity and Access Management</i> for more information.</p>
-- Required parameter: DomainId
-- Required parameter: DomainName
-- Required parameter: ARN
-- Required parameter: ElasticsearchClusterConfig
function M.ElasticsearchDomainStatus(ElasticsearchClusterConfig, Endpoint, Created, Deleted, DomainName, EBSOptions, SnapshotOptions, DomainId, AccessPolicies, Processing, AdvancedOptions, ElasticsearchVersion, ARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ElasticsearchDomainStatus")
	local t = { 
		["ElasticsearchClusterConfig"] = ElasticsearchClusterConfig,
		["Endpoint"] = Endpoint,
		["Created"] = Created,
		["Deleted"] = Deleted,
		["DomainName"] = DomainName,
		["EBSOptions"] = EBSOptions,
		["SnapshotOptions"] = SnapshotOptions,
		["DomainId"] = DomainId,
		["AccessPolicies"] = AccessPolicies,
		["Processing"] = Processing,
		["AdvancedOptions"] = AdvancedOptions,
		["ElasticsearchVersion"] = ElasticsearchVersion,
		["ARN"] = ARN,
	}
	M.AssertElasticsearchDomainStatus(t)
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
-- <p>The configured access rules for the domain's document and search endpoints, and the current status of those rules.</p>
-- @param Status [OptionStatus] <p>The status of the access policy for the Elasticsearch domain. See <code>OptionStatus</code> for the status information that's included. </p>
-- @param Options [PolicyDocument] <p>The access policy configured for the Elasticsearch domain. Access policies may be resource-based, IP-based, or IAM-based. See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-access-policies" target="_blank"> Configuring Access Policies</a>for more information.</p>
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

local AdditionalLimit_keys = { "LimitValues" = true, "LimitName" = true, nil }

function M.AssertAdditionalLimit(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdditionalLimit to be of type 'table'")
	if struct["LimitValues"] then M.AssertLimitValueList(struct["LimitValues"]) end
	if struct["LimitName"] then M.AssertLimitName(struct["LimitName"]) end
	for k,_ in pairs(struct) do
		assert(AdditionalLimit_keys[k], "AdditionalLimit contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdditionalLimit
-- <p> List of limits that are specific to a given InstanceType and for each of it's <code> <a>InstanceRole</a> </code> . </p>
-- @param LimitValues [LimitValueList] <p> Value for given <code> <a>AdditionalLimit$LimitName</a> </code> . </p>
-- @param LimitName [LimitName] <p> Name of Additional Limit is specific to a given InstanceType and for each of it's <code> <a>InstanceRole</a> </code> etc. <br/> Attributes and their details: <br/> <ul> <li>MaximumNumberOfDataNodesSupported</li> This attribute will be present in Master node only to specify how much data nodes upto which given <code> <a>ESPartitionInstanceType</a> </code> can support as master node. <li>MaximumNumberOfDataNodesWithoutMasterNode</li> This attribute will be present in Data node only to specify how much data nodes of given <code> <a>ESPartitionInstanceType</a> </code> upto which you don't need any master nodes to govern them. </ul> </p>
function M.AdditionalLimit(LimitValues, LimitName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AdditionalLimit")
	local t = { 
		["LimitValues"] = LimitValues,
		["LimitName"] = LimitName,
	}
	M.AssertAdditionalLimit(t)
	return t
end

local SnapshotOptions_keys = { "AutomatedSnapshotStartHour" = true, nil }

function M.AssertSnapshotOptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SnapshotOptions to be of type 'table'")
	if struct["AutomatedSnapshotStartHour"] then M.AssertIntegerClass(struct["AutomatedSnapshotStartHour"]) end
	for k,_ in pairs(struct) do
		assert(SnapshotOptions_keys[k], "SnapshotOptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SnapshotOptions
-- <p>Specifies the time, in UTC format, when the service takes a daily automated snapshot of the specified Elasticsearch domain. Default value is <code>0</code> hours.</p>
-- @param AutomatedSnapshotStartHour [IntegerClass] <p>Specifies the time, in UTC format, when the service takes a daily automated snapshot of the specified Elasticsearch domain. Default value is <code>0</code> hours.</p>
function M.SnapshotOptions(AutomatedSnapshotStartHour, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SnapshotOptions")
	local t = { 
		["AutomatedSnapshotStartHour"] = AutomatedSnapshotStartHour,
	}
	M.AssertSnapshotOptions(t)
	return t
end

local Tag_keys = { "Value" = true, "Key" = true, nil }

function M.AssertTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tag to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Value"] then M.AssertTagValue(struct["Value"]) end
	if struct["Key"] then M.AssertTagKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(Tag_keys[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- <p>Specifies a key value pair for a resource tag.</p>
-- @param Value [TagValue] <p>Specifies the <code>TagValue</code>, the value assigned to the corresponding tag key. Tag values can be null and do not have to be unique in a tag set. For example, you can have a key value pair in a tag set of <code>project : Trinity</code> and <code>cost-center : Trinity</code></p>
-- @param Key [TagKey] <p>Specifies the <code>TagKey</code>, the name of the tag. Tag keys must be unique for the Elasticsearch domain to which they are attached.</p>
-- Required parameter: Key
-- Required parameter: Value
function M.Tag(Value, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tag")
	local t = { 
		["Value"] = Value,
		["Key"] = Key,
	}
	M.AssertTag(t)
	return t
end

local EBSOptionsStatus_keys = { "Status" = true, "Options" = true, nil }

function M.AssertEBSOptionsStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EBSOptionsStatus to be of type 'table'")
	assert(struct["Options"], "Expected key Options to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["Status"] then M.AssertOptionStatus(struct["Status"]) end
	if struct["Options"] then M.AssertEBSOptions(struct["Options"]) end
	for k,_ in pairs(struct) do
		assert(EBSOptionsStatus_keys[k], "EBSOptionsStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EBSOptionsStatus
-- <p> Status of the EBS options for the specified Elasticsearch domain.</p>
-- @param Status [OptionStatus] <p> Specifies the status of the EBS options for the specified Elasticsearch domain.</p>
-- @param Options [EBSOptions] <p> Specifies the EBS options for the specified Elasticsearch domain.</p>
-- Required parameter: Options
-- Required parameter: Status
function M.EBSOptionsStatus(Status, Options, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EBSOptionsStatus")
	local t = { 
		["Status"] = Status,
		["Options"] = Options,
	}
	M.AssertEBSOptionsStatus(t)
	return t
end

local ListElasticsearchVersionsRequest_keys = { "NextToken" = true, "MaxResults" = true, nil }

function M.AssertListElasticsearchVersionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListElasticsearchVersionsRequest to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListElasticsearchVersionsRequest_keys[k], "ListElasticsearchVersionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListElasticsearchVersionsRequest
-- <p> Container for the parameters to the <code> <a>ListElasticsearchVersions</a> </code> operation. <p> Use <code> <a>MaxResults</a> </code> to control the maximum number of results to retrieve in a single call. </p> <p> Use <code> <a>NextToken</a> </code> in response to retrieve more results. If the received response does not contain a NextToken, then there are no more results to retrieve. </p> </p>
-- @param NextToken [NextToken] <p> Container for the parameters to the <code> <a>ListElasticsearchVersions</a> </code> operation. <p> Use <code> <a>MaxResults</a> </code> to control the maximum number of results to retrieve in a single call. </p> <p> Use <code> <a>NextToken</a> </code> in response to retrieve more results. If the received response does not contain a NextToken, then there are no more results to retrieve. </p> </p>
-- @param MaxResults [MaxResults] <p> Set this value to limit the number of results returned. Value provided must be greater than 10 else it wont be honored. </p>
function M.ListElasticsearchVersionsRequest(NextToken, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListElasticsearchVersionsRequest")
	local t = { 
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
	}
	M.AssertListElasticsearchVersionsRequest(t)
	return t
end

local UpdateElasticsearchDomainConfigRequest_keys = { "ElasticsearchClusterConfig" = true, "DomainName" = true, "EBSOptions" = true, "SnapshotOptions" = true, "AdvancedOptions" = true, "AccessPolicies" = true, nil }

function M.AssertUpdateElasticsearchDomainConfigRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateElasticsearchDomainConfigRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["ElasticsearchClusterConfig"] then M.AssertElasticsearchClusterConfig(struct["ElasticsearchClusterConfig"]) end
	if struct["DomainName"] then M.AssertDomainName(struct["DomainName"]) end
	if struct["EBSOptions"] then M.AssertEBSOptions(struct["EBSOptions"]) end
	if struct["SnapshotOptions"] then M.AssertSnapshotOptions(struct["SnapshotOptions"]) end
	if struct["AdvancedOptions"] then M.AssertAdvancedOptions(struct["AdvancedOptions"]) end
	if struct["AccessPolicies"] then M.AssertPolicyDocument(struct["AccessPolicies"]) end
	for k,_ in pairs(struct) do
		assert(UpdateElasticsearchDomainConfigRequest_keys[k], "UpdateElasticsearchDomainConfigRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateElasticsearchDomainConfigRequest
-- <p>Container for the parameters to the <code><a>UpdateElasticsearchDomain</a></code> operation. Specifies the type and number of instances in the domain cluster.</p>
-- @param ElasticsearchClusterConfig [ElasticsearchClusterConfig] <p>The type and number of instances to instantiate for the domain cluster.</p>
-- @param DomainName [DomainName] <p>The name of the Elasticsearch domain that you are updating. </p>
-- @param EBSOptions [EBSOptions] <p>Specify the type and size of the EBS volume that you want to use. </p>
-- @param SnapshotOptions [SnapshotOptions] <p>Option to set the time, in UTC format, for the daily automated snapshot. Default value is <code>0</code> hours. </p>
-- @param AdvancedOptions [AdvancedOptions] <p>Modifies the advanced option to allow references to indices in an HTTP request body. Must be <code>false</code> when configuring access to individual sub-resources. By default, the value is <code>true</code>. See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options" target="_blank">Configuration Advanced Options</a> for more information.</p>
-- @param AccessPolicies [PolicyDocument] <p>IAM access policy as a JSON-formatted string.</p>
-- Required parameter: DomainName
function M.UpdateElasticsearchDomainConfigRequest(ElasticsearchClusterConfig, DomainName, EBSOptions, SnapshotOptions, AdvancedOptions, AccessPolicies, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateElasticsearchDomainConfigRequest")
	local t = { 
		["ElasticsearchClusterConfig"] = ElasticsearchClusterConfig,
		["DomainName"] = DomainName,
		["EBSOptions"] = EBSOptions,
		["SnapshotOptions"] = SnapshotOptions,
		["AdvancedOptions"] = AdvancedOptions,
		["AccessPolicies"] = AccessPolicies,
	}
	M.AssertUpdateElasticsearchDomainConfigRequest(t)
	return t
end

local DescribeElasticsearchDomainResponse_keys = { "DomainStatus" = true, nil }

function M.AssertDescribeElasticsearchDomainResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeElasticsearchDomainResponse to be of type 'table'")
	assert(struct["DomainStatus"], "Expected key DomainStatus to exist in table")
	if struct["DomainStatus"] then M.AssertElasticsearchDomainStatus(struct["DomainStatus"]) end
	for k,_ in pairs(struct) do
		assert(DescribeElasticsearchDomainResponse_keys[k], "DescribeElasticsearchDomainResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeElasticsearchDomainResponse
-- <p>The result of a <code>DescribeElasticsearchDomain</code> request. Contains the status of the domain specified in the request.</p>
-- @param DomainStatus [ElasticsearchDomainStatus] <p>The current status of the Elasticsearch domain.</p>
-- Required parameter: DomainStatus
function M.DescribeElasticsearchDomainResponse(DomainStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeElasticsearchDomainResponse")
	local t = { 
		["DomainStatus"] = DomainStatus,
	}
	M.AssertDescribeElasticsearchDomainResponse(t)
	return t
end

local DescribeElasticsearchDomainConfigResponse_keys = { "DomainConfig" = true, nil }

function M.AssertDescribeElasticsearchDomainConfigResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeElasticsearchDomainConfigResponse to be of type 'table'")
	assert(struct["DomainConfig"], "Expected key DomainConfig to exist in table")
	if struct["DomainConfig"] then M.AssertElasticsearchDomainConfig(struct["DomainConfig"]) end
	for k,_ in pairs(struct) do
		assert(DescribeElasticsearchDomainConfigResponse_keys[k], "DescribeElasticsearchDomainConfigResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeElasticsearchDomainConfigResponse
-- <p>The result of a <code>DescribeElasticsearchDomainConfig</code> request. Contains the configuration information of the requested domain.</p>
-- @param DomainConfig [ElasticsearchDomainConfig] <p>The configuration information of the domain requested in the <code>DescribeElasticsearchDomainConfig</code> request.</p>
-- Required parameter: DomainConfig
function M.DescribeElasticsearchDomainConfigResponse(DomainConfig, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeElasticsearchDomainConfigResponse")
	local t = { 
		["DomainConfig"] = DomainConfig,
	}
	M.AssertDescribeElasticsearchDomainConfigResponse(t)
	return t
end

local EBSOptions_keys = { "Iops" = true, "VolumeSize" = true, "VolumeType" = true, "EBSEnabled" = true, nil }

function M.AssertEBSOptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EBSOptions to be of type 'table'")
	if struct["Iops"] then M.AssertIntegerClass(struct["Iops"]) end
	if struct["VolumeSize"] then M.AssertIntegerClass(struct["VolumeSize"]) end
	if struct["VolumeType"] then M.AssertVolumeType(struct["VolumeType"]) end
	if struct["EBSEnabled"] then M.AssertBoolean(struct["EBSEnabled"]) end
	for k,_ in pairs(struct) do
		assert(EBSOptions_keys[k], "EBSOptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EBSOptions
-- <p>Options to enable, disable, and specify the properties of EBS storage volumes. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-ebs" target="_blank"> Configuring EBS-based Storage</a>.</p>
-- @param Iops [IntegerClass] <p>Specifies the IOPD for a Provisioned IOPS EBS volume (SSD).</p>
-- @param VolumeSize [IntegerClass] <p> Integer to specify the size of an EBS volume.</p>
-- @param VolumeType [VolumeType] <p> Specifies the volume type for EBS-based storage.</p>
-- @param EBSEnabled [Boolean] <p>Specifies whether EBS-based storage is enabled.</p>
function M.EBSOptions(Iops, VolumeSize, VolumeType, EBSEnabled, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EBSOptions")
	local t = { 
		["Iops"] = Iops,
		["VolumeSize"] = VolumeSize,
		["VolumeType"] = VolumeType,
		["EBSEnabled"] = EBSEnabled,
	}
	M.AssertEBSOptions(t)
	return t
end

local ElasticsearchVersionStatus_keys = { "Status" = true, "Options" = true, nil }

function M.AssertElasticsearchVersionStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ElasticsearchVersionStatus to be of type 'table'")
	assert(struct["Options"], "Expected key Options to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["Status"] then M.AssertOptionStatus(struct["Status"]) end
	if struct["Options"] then M.AssertElasticsearchVersionString(struct["Options"]) end
	for k,_ in pairs(struct) do
		assert(ElasticsearchVersionStatus_keys[k], "ElasticsearchVersionStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ElasticsearchVersionStatus
-- <p> Status of the Elasticsearch version options for the specified Elasticsearch domain.</p>
-- @param Status [OptionStatus] <p> Specifies the status of the Elasticsearch version options for the specified Elasticsearch domain.</p>
-- @param Options [ElasticsearchVersionString] <p> Specifies the Elasticsearch version for the specified Elasticsearch domain.</p>
-- Required parameter: Options
-- Required parameter: Status
function M.ElasticsearchVersionStatus(Status, Options, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ElasticsearchVersionStatus")
	local t = { 
		["Status"] = Status,
		["Options"] = Options,
	}
	M.AssertElasticsearchVersionStatus(t)
	return t
end

local ResourceAlreadyExistsException_keys = { nil }

function M.AssertResourceAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceAlreadyExistsException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ResourceAlreadyExistsException_keys[k], "ResourceAlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceAlreadyExistsException
-- <p>An exception for creating a resource that already exists. Gives http status code of 400.</p>
function M.ResourceAlreadyExistsException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceAlreadyExistsException")
	local t = { 
	}
	M.AssertResourceAlreadyExistsException(t)
	return t
end

local StorageTypeLimit_keys = { "LimitValues" = true, "LimitName" = true, nil }

function M.AssertStorageTypeLimit(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StorageTypeLimit to be of type 'table'")
	if struct["LimitValues"] then M.AssertLimitValueList(struct["LimitValues"]) end
	if struct["LimitName"] then M.AssertLimitName(struct["LimitName"]) end
	for k,_ in pairs(struct) do
		assert(StorageTypeLimit_keys[k], "StorageTypeLimit contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StorageTypeLimit
-- <p>Limits that are applicable for given storage type. </p>
-- @param LimitValues [LimitValueList] <p> Values for the <code> <a>StorageTypeLimit$LimitName</a> </code> . </p>
-- @param LimitName [LimitName] <p> Name of storage limits that are applicable for given storage type. If <code> <a>StorageType</a> </code> is ebs, following storage options are applicable <ol> <li>MinimumVolumeSize</li> Minimum amount of volume size that is applicable for given storage type.It can be empty if it is not applicable. <li>MaximumVolumeSize</li> Maximum amount of volume size that is applicable for given storage type.It can be empty if it is not applicable. <li>MaximumIops</li> Maximum amount of Iops that is applicable for given storage type.It can be empty if it is not applicable. <li>MinimumIops</li> Minimum amount of Iops that is applicable for given storage type.It can be empty if it is not applicable. </ol> </p>
function M.StorageTypeLimit(LimitValues, LimitName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StorageTypeLimit")
	local t = { 
		["LimitValues"] = LimitValues,
		["LimitName"] = LimitName,
	}
	M.AssertStorageTypeLimit(t)
	return t
end

local ListElasticsearchVersionsResponse_keys = { "ElasticsearchVersions" = true, "NextToken" = true, nil }

function M.AssertListElasticsearchVersionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListElasticsearchVersionsResponse to be of type 'table'")
	if struct["ElasticsearchVersions"] then M.AssertElasticsearchVersionList(struct["ElasticsearchVersions"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListElasticsearchVersionsResponse_keys[k], "ListElasticsearchVersionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListElasticsearchVersionsResponse
-- <p> Container for the parameters for response received from <code> <a>ListElasticsearchVersions</a> </code> operation. </p>
-- @param ElasticsearchVersions [ElasticsearchVersionList] <p> Container for the parameters for response received from <code> <a>ListElasticsearchVersions</a> </code> operation. </p>
-- @param NextToken [NextToken] <p> Container for the parameters for response received from <code> <a>ListElasticsearchVersions</a> </code> operation. </p>
function M.ListElasticsearchVersionsResponse(ElasticsearchVersions, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListElasticsearchVersionsResponse")
	local t = { 
		["ElasticsearchVersions"] = ElasticsearchVersions,
		["NextToken"] = NextToken,
	}
	M.AssertListElasticsearchVersionsResponse(t)
	return t
end

local ElasticsearchClusterConfigStatus_keys = { "Status" = true, "Options" = true, nil }

function M.AssertElasticsearchClusterConfigStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ElasticsearchClusterConfigStatus to be of type 'table'")
	assert(struct["Options"], "Expected key Options to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["Status"] then M.AssertOptionStatus(struct["Status"]) end
	if struct["Options"] then M.AssertElasticsearchClusterConfig(struct["Options"]) end
	for k,_ in pairs(struct) do
		assert(ElasticsearchClusterConfigStatus_keys[k], "ElasticsearchClusterConfigStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ElasticsearchClusterConfigStatus
-- <p> Specifies the configuration status for the specified Elasticsearch domain.</p>
-- @param Status [OptionStatus] <p> Specifies the status of the configuration for the specified Elasticsearch domain.</p>
-- @param Options [ElasticsearchClusterConfig] <p> Specifies the cluster configuration for the specified Elasticsearch domain.</p>
-- Required parameter: Options
-- Required parameter: Status
function M.ElasticsearchClusterConfigStatus(Status, Options, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ElasticsearchClusterConfigStatus")
	local t = { 
		["Status"] = Status,
		["Options"] = Options,
	}
	M.AssertElasticsearchClusterConfigStatus(t)
	return t
end

local StorageType_keys = { "StorageTypeName" = true, "StorageTypeLimits" = true, "StorageSubTypeName" = true, nil }

function M.AssertStorageType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StorageType to be of type 'table'")
	if struct["StorageTypeName"] then M.AssertStorageTypeName(struct["StorageTypeName"]) end
	if struct["StorageTypeLimits"] then M.AssertStorageTypeLimitList(struct["StorageTypeLimits"]) end
	if struct["StorageSubTypeName"] then M.AssertStorageSubTypeName(struct["StorageSubTypeName"]) end
	for k,_ in pairs(struct) do
		assert(StorageType_keys[k], "StorageType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StorageType
-- <p>StorageTypes represents the list of storage related types and their attributes that are available for given InstanceType. </p>
-- @param StorageTypeName [StorageTypeName] <p>StorageTypes represents the list of storage related types and their attributes that are available for given InstanceType. </p>
-- @param StorageTypeLimits [StorageTypeLimitList] <p>List of limits that are applicable for given storage type. </p>
-- @param StorageSubTypeName [StorageSubTypeName] <p>StorageTypes represents the list of storage related types and their attributes that are available for given InstanceType. </p>
function M.StorageType(StorageTypeName, StorageTypeLimits, StorageSubTypeName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StorageType")
	local t = { 
		["StorageTypeName"] = StorageTypeName,
		["StorageTypeLimits"] = StorageTypeLimits,
		["StorageSubTypeName"] = StorageSubTypeName,
	}
	M.AssertStorageType(t)
	return t
end

local BaseException_keys = { "message" = true, nil }

function M.AssertBaseException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BaseException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(BaseException_keys[k], "BaseException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BaseException
-- <p>An error occurred while processing the request.</p>
-- @param message [ErrorMessage] <p>A description of the error.</p>
function M.BaseException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BaseException")
	local t = { 
		["message"] = message,
	}
	M.AssertBaseException(t)
	return t
end

local InstanceLimits_keys = { "InstanceCountLimits" = true, nil }

function M.AssertInstanceLimits(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceLimits to be of type 'table'")
	if struct["InstanceCountLimits"] then M.AssertInstanceCountLimits(struct["InstanceCountLimits"]) end
	for k,_ in pairs(struct) do
		assert(InstanceLimits_keys[k], "InstanceLimits contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceLimits
-- <p>InstanceLimits represents the list of instance related attributes that are available for given InstanceType. </p>
-- @param InstanceCountLimits [InstanceCountLimits] <p>InstanceLimits represents the list of instance related attributes that are available for given InstanceType. </p>
function M.InstanceLimits(InstanceCountLimits, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceLimits")
	local t = { 
		["InstanceCountLimits"] = InstanceCountLimits,
	}
	M.AssertInstanceLimits(t)
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
-- <p>An exception for trying to create more than allowed resources or sub-resources. Gives http status code of 409.</p>
function M.LimitExceededException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
	}
	M.AssertLimitExceededException(t)
	return t
end

local DescribeElasticsearchInstanceTypeLimitsRequest_keys = { "ElasticsearchVersion" = true, "InstanceType" = true, "DomainName" = true, nil }

function M.AssertDescribeElasticsearchInstanceTypeLimitsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeElasticsearchInstanceTypeLimitsRequest to be of type 'table'")
	assert(struct["InstanceType"], "Expected key InstanceType to exist in table")
	assert(struct["ElasticsearchVersion"], "Expected key ElasticsearchVersion to exist in table")
	if struct["ElasticsearchVersion"] then M.AssertElasticsearchVersionString(struct["ElasticsearchVersion"]) end
	if struct["InstanceType"] then M.AssertESPartitionInstanceType(struct["InstanceType"]) end
	if struct["DomainName"] then M.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(DescribeElasticsearchInstanceTypeLimitsRequest_keys[k], "DescribeElasticsearchInstanceTypeLimitsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeElasticsearchInstanceTypeLimitsRequest
-- <p> Container for the parameters to <code> <a>DescribeElasticsearchInstanceTypeLimits</a> </code> operation. </p>
-- @param ElasticsearchVersion [ElasticsearchVersionString] <p> Version of Elasticsearch for which <code> <a>Limits</a> </code> are needed. </p>
-- @param InstanceType [ESPartitionInstanceType] <p> The instance type for an Elasticsearch cluster for which Elasticsearch <code> <a>Limits</a> </code> are needed. </p>
-- @param DomainName [DomainName] <p> DomainName represents the name of the Domain that we are trying to modify. This should be present only if we are querying for Elasticsearch <code> <a>Limits</a> </code> for existing domain. </p>
-- Required parameter: InstanceType
-- Required parameter: ElasticsearchVersion
function M.DescribeElasticsearchInstanceTypeLimitsRequest(ElasticsearchVersion, InstanceType, DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeElasticsearchInstanceTypeLimitsRequest")
	local t = { 
		["ElasticsearchVersion"] = ElasticsearchVersion,
		["InstanceType"] = InstanceType,
		["DomainName"] = DomainName,
	}
	M.AssertDescribeElasticsearchInstanceTypeLimitsRequest(t)
	return t
end

local ValidationException_keys = { nil }

function M.AssertValidationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ValidationException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ValidationException_keys[k], "ValidationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ValidationException
-- <p>An exception for missing / invalid input fields. Gives http status code of 400.</p>
function M.ValidationException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ValidationException")
	local t = { 
	}
	M.AssertValidationException(t)
	return t
end

local ListElasticsearchInstanceTypesResponse_keys = { "ElasticsearchInstanceTypes" = true, "NextToken" = true, nil }

function M.AssertListElasticsearchInstanceTypesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListElasticsearchInstanceTypesResponse to be of type 'table'")
	if struct["ElasticsearchInstanceTypes"] then M.AssertElasticsearchInstanceTypeList(struct["ElasticsearchInstanceTypes"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListElasticsearchInstanceTypesResponse_keys[k], "ListElasticsearchInstanceTypesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListElasticsearchInstanceTypesResponse
-- <p> Container for the parameters returned by <code> <a>ListElasticsearchInstanceTypes</a> </code> operation. </p>
-- @param ElasticsearchInstanceTypes [ElasticsearchInstanceTypeList] <p> List of instance types supported by Amazon Elasticsearch service for given <code> <a>ElasticsearchVersion</a> </code> </p>
-- @param NextToken [NextToken] <p>In case if there are more results available NextToken would be present, make further request to the same API with received NextToken to paginate remaining results. </p>
function M.ListElasticsearchInstanceTypesResponse(ElasticsearchInstanceTypes, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListElasticsearchInstanceTypesResponse")
	local t = { 
		["ElasticsearchInstanceTypes"] = ElasticsearchInstanceTypes,
		["NextToken"] = NextToken,
	}
	M.AssertListElasticsearchInstanceTypesResponse(t)
	return t
end

local DescribeElasticsearchDomainRequest_keys = { "DomainName" = true, nil }

function M.AssertDescribeElasticsearchDomainRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeElasticsearchDomainRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["DomainName"] then M.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(DescribeElasticsearchDomainRequest_keys[k], "DescribeElasticsearchDomainRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeElasticsearchDomainRequest
-- <p>Container for the parameters to the <code><a>DescribeElasticsearchDomain</a></code> operation.</p>
-- @param DomainName [DomainName] <p>The name of the Elasticsearch domain for which you want information.</p>
-- Required parameter: DomainName
function M.DescribeElasticsearchDomainRequest(DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeElasticsearchDomainRequest")
	local t = { 
		["DomainName"] = DomainName,
	}
	M.AssertDescribeElasticsearchDomainRequest(t)
	return t
end

local Limits_keys = { "InstanceLimits" = true, "StorageTypes" = true, "AdditionalLimits" = true, nil }

function M.AssertLimits(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Limits to be of type 'table'")
	if struct["InstanceLimits"] then M.AssertInstanceLimits(struct["InstanceLimits"]) end
	if struct["StorageTypes"] then M.AssertStorageTypeList(struct["StorageTypes"]) end
	if struct["AdditionalLimits"] then M.AssertAdditionalLimitList(struct["AdditionalLimits"]) end
	for k,_ in pairs(struct) do
		assert(Limits_keys[k], "Limits contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Limits
-- <p> Limits for given InstanceType and for each of it's role. <br/> Limits contains following <code> <a>StorageTypes,</a> </code> <code> <a>InstanceLimits</a> </code> and <code> <a>AdditionalLimits</a> </code> </p>
-- @param InstanceLimits [InstanceLimits] <p> Limits for given InstanceType and for each of it's role. <br/> Limits contains following <code> <a>StorageTypes,</a> </code> <code> <a>InstanceLimits</a> </code> and <code> <a>AdditionalLimits</a> </code> </p>
-- @param StorageTypes [StorageTypeList] <p>StorageType represents the list of storage related types and attributes that are available for given InstanceType. </p>
-- @param AdditionalLimits [AdditionalLimitList] <p> List of additional limits that are specific to a given InstanceType and for each of it's <code> <a>InstanceRole</a> </code> . </p>
function M.Limits(InstanceLimits, StorageTypes, AdditionalLimits, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Limits")
	local t = { 
		["InstanceLimits"] = InstanceLimits,
		["StorageTypes"] = StorageTypes,
		["AdditionalLimits"] = AdditionalLimits,
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
-- <p>The request processing has failed because of an unknown error, exception or failure (the failure is internal to the service) . Gives http status code of 500.</p>
function M.InternalException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalException")
	local t = { 
	}
	M.AssertInternalException(t)
	return t
end

local ElasticsearchClusterConfig_keys = { "DedicatedMasterEnabled" = true, "InstanceCount" = true, "ZoneAwarenessEnabled" = true, "DedicatedMasterType" = true, "InstanceType" = true, "DedicatedMasterCount" = true, nil }

function M.AssertElasticsearchClusterConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ElasticsearchClusterConfig to be of type 'table'")
	if struct["DedicatedMasterEnabled"] then M.AssertBoolean(struct["DedicatedMasterEnabled"]) end
	if struct["InstanceCount"] then M.AssertIntegerClass(struct["InstanceCount"]) end
	if struct["ZoneAwarenessEnabled"] then M.AssertBoolean(struct["ZoneAwarenessEnabled"]) end
	if struct["DedicatedMasterType"] then M.AssertESPartitionInstanceType(struct["DedicatedMasterType"]) end
	if struct["InstanceType"] then M.AssertESPartitionInstanceType(struct["InstanceType"]) end
	if struct["DedicatedMasterCount"] then M.AssertIntegerClass(struct["DedicatedMasterCount"]) end
	for k,_ in pairs(struct) do
		assert(ElasticsearchClusterConfig_keys[k], "ElasticsearchClusterConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ElasticsearchClusterConfig
-- <p>Specifies the configuration for the domain cluster, such as the type and number of instances.</p>
-- @param DedicatedMasterEnabled [Boolean] <p>A boolean value to indicate whether a dedicated master node is enabled. See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-managedomains.html#es-managedomains-dedicatedmasternodes" target="_blank">About Dedicated Master Nodes</a> for more information.</p>
-- @param InstanceCount [IntegerClass] <p>The number of instances in the specified domain cluster.</p>
-- @param ZoneAwarenessEnabled [Boolean] <p>A boolean value to indicate whether zone awareness is enabled. See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-managedomains.html#es-managedomains-zoneawareness" target="_blank">About Zone Awareness</a> for more information.</p>
-- @param DedicatedMasterType [ESPartitionInstanceType] <p>The instance type for a dedicated master node.</p>
-- @param InstanceType [ESPartitionInstanceType] <p>The instance type for an Elasticsearch cluster.</p>
-- @param DedicatedMasterCount [IntegerClass] <p>Total number of dedicated master nodes, active and on standby, for the cluster.</p>
function M.ElasticsearchClusterConfig(DedicatedMasterEnabled, InstanceCount, ZoneAwarenessEnabled, DedicatedMasterType, InstanceType, DedicatedMasterCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ElasticsearchClusterConfig")
	local t = { 
		["DedicatedMasterEnabled"] = DedicatedMasterEnabled,
		["InstanceCount"] = InstanceCount,
		["ZoneAwarenessEnabled"] = ZoneAwarenessEnabled,
		["DedicatedMasterType"] = DedicatedMasterType,
		["InstanceType"] = InstanceType,
		["DedicatedMasterCount"] = DedicatedMasterCount,
	}
	M.AssertElasticsearchClusterConfig(t)
	return t
end

local ListElasticsearchInstanceTypesRequest_keys = { "ElasticsearchVersion" = true, "NextToken" = true, "MaxResults" = true, "DomainName" = true, nil }

function M.AssertListElasticsearchInstanceTypesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListElasticsearchInstanceTypesRequest to be of type 'table'")
	assert(struct["ElasticsearchVersion"], "Expected key ElasticsearchVersion to exist in table")
	if struct["ElasticsearchVersion"] then M.AssertElasticsearchVersionString(struct["ElasticsearchVersion"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertMaxResults(struct["MaxResults"]) end
	if struct["DomainName"] then M.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(ListElasticsearchInstanceTypesRequest_keys[k], "ListElasticsearchInstanceTypesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListElasticsearchInstanceTypesRequest
-- <p> Container for the parameters to the <code> <a>ListElasticsearchInstanceTypes</a> </code> operation. </p>
-- @param ElasticsearchVersion [ElasticsearchVersionString] <p>Version of Elasticsearch for which list of supported elasticsearch instance types are needed. </p>
-- @param NextToken [NextToken] <p>NextToken should be sent in case if earlier API call produced result containing NextToken. It is used for pagination. </p>
-- @param MaxResults [MaxResults] <p> Set this value to limit the number of results returned. Value provided must be greater than 30 else it wont be honored. </p>
-- @param DomainName [DomainName] <p>DomainName represents the name of the Domain that we are trying to modify. This should be present only if we are querying for list of available Elasticsearch instance types when modifying existing domain. </p>
-- Required parameter: ElasticsearchVersion
function M.ListElasticsearchInstanceTypesRequest(ElasticsearchVersion, NextToken, MaxResults, DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListElasticsearchInstanceTypesRequest")
	local t = { 
		["ElasticsearchVersion"] = ElasticsearchVersion,
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
		["DomainName"] = DomainName,
	}
	M.AssertListElasticsearchInstanceTypesRequest(t)
	return t
end

local SnapshotOptionsStatus_keys = { "Status" = true, "Options" = true, nil }

function M.AssertSnapshotOptionsStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SnapshotOptionsStatus to be of type 'table'")
	assert(struct["Options"], "Expected key Options to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["Status"] then M.AssertOptionStatus(struct["Status"]) end
	if struct["Options"] then M.AssertSnapshotOptions(struct["Options"]) end
	for k,_ in pairs(struct) do
		assert(SnapshotOptionsStatus_keys[k], "SnapshotOptionsStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SnapshotOptionsStatus
-- <p>Status of a daily automated snapshot.</p>
-- @param Status [OptionStatus] <p>Specifies the status of a daily automated snapshot.</p>
-- @param Options [SnapshotOptions] <p>Specifies the daily snapshot options specified for the Elasticsearch domain.</p>
-- Required parameter: Options
-- Required parameter: Status
function M.SnapshotOptionsStatus(Status, Options, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SnapshotOptionsStatus")
	local t = { 
		["Status"] = Status,
		["Options"] = Options,
	}
	M.AssertSnapshotOptionsStatus(t)
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
-- <p>An exception for accessing or deleting a resource that does not exist. Gives http status code of 400.</p>
function M.ResourceNotFoundException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundException")
	local t = { 
	}
	M.AssertResourceNotFoundException(t)
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
-- <p>An error occured because the client wanted to access a not supported operation. Gives http status code of 409.</p>
function M.DisabledOperationException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisabledOperationException")
	local t = { 
	}
	M.AssertDisabledOperationException(t)
	return t
end

local DescribeElasticsearchInstanceTypeLimitsResponse_keys = { "LimitsByRole" = true, nil }

function M.AssertDescribeElasticsearchInstanceTypeLimitsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeElasticsearchInstanceTypeLimitsResponse to be of type 'table'")
	if struct["LimitsByRole"] then M.AssertLimitsByRole(struct["LimitsByRole"]) end
	for k,_ in pairs(struct) do
		assert(DescribeElasticsearchInstanceTypeLimitsResponse_keys[k], "DescribeElasticsearchInstanceTypeLimitsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeElasticsearchInstanceTypeLimitsResponse
-- <p> Container for the parameters received from <code> <a>DescribeElasticsearchInstanceTypeLimits</a> </code> operation. </p>
-- @param LimitsByRole [LimitsByRole] <p> Container for the parameters received from <code> <a>DescribeElasticsearchInstanceTypeLimits</a> </code> operation. </p>
function M.DescribeElasticsearchInstanceTypeLimitsResponse(LimitsByRole, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeElasticsearchInstanceTypeLimitsResponse")
	local t = { 
		["LimitsByRole"] = LimitsByRole,
	}
	M.AssertDescribeElasticsearchInstanceTypeLimitsResponse(t)
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
-- <p>An exception for trying to create or access sub-resource that is either invalid or not supported. Gives http status code of 409.</p>
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
-- <p>Provides the current status of the entity.</p>
-- @param PendingDeletion [Boolean] <p>Indicates whether the Elasticsearch domain is being deleted.</p>
-- @param State [OptionState] <p>Provides the <code>OptionState</code> for the Elasticsearch domain.</p>
-- @param CreationDate [UpdateTimestamp] <p>Timestamp which tells the creation date for the entity.</p>
-- @param UpdateVersion [UIntValue] <p>Specifies the latest version for the entity.</p>
-- @param UpdateDate [UpdateTimestamp] <p>Timestamp which tells the last updated time for the entity.</p>
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

local CreateElasticsearchDomainRequest_keys = { "ElasticsearchClusterConfig" = true, "ElasticsearchVersion" = true, "DomainName" = true, "EBSOptions" = true, "SnapshotOptions" = true, "AdvancedOptions" = true, "AccessPolicies" = true, nil }

function M.AssertCreateElasticsearchDomainRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateElasticsearchDomainRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["ElasticsearchClusterConfig"] then M.AssertElasticsearchClusterConfig(struct["ElasticsearchClusterConfig"]) end
	if struct["ElasticsearchVersion"] then M.AssertElasticsearchVersionString(struct["ElasticsearchVersion"]) end
	if struct["DomainName"] then M.AssertDomainName(struct["DomainName"]) end
	if struct["EBSOptions"] then M.AssertEBSOptions(struct["EBSOptions"]) end
	if struct["SnapshotOptions"] then M.AssertSnapshotOptions(struct["SnapshotOptions"]) end
	if struct["AdvancedOptions"] then M.AssertAdvancedOptions(struct["AdvancedOptions"]) end
	if struct["AccessPolicies"] then M.AssertPolicyDocument(struct["AccessPolicies"]) end
	for k,_ in pairs(struct) do
		assert(CreateElasticsearchDomainRequest_keys[k], "CreateElasticsearchDomainRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateElasticsearchDomainRequest
--  
-- @param ElasticsearchClusterConfig [ElasticsearchClusterConfig] <p>Configuration options for an Elasticsearch domain. Specifies the instance type and number of instances in the domain cluster. </p>
-- @param ElasticsearchVersion [ElasticsearchVersionString] <p>String of format X.Y to specify version for the Elasticsearch domain eg. "1.5" or "2.3". For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomains" target="_blank">Creating Elasticsearch Domains</a> in the <i>Amazon Elasticsearch Service Developer Guide</i>.</p>
-- @param DomainName [DomainName] <p>The name of the Elasticsearch domain that you are creating. Domain names are unique across the domains owned by an account within an AWS region. Domain names must start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
-- @param EBSOptions [EBSOptions] <p>Options to enable, disable and specify the type and size of EBS storage volumes. </p>
-- @param SnapshotOptions [SnapshotOptions] <p>Option to set time, in UTC format, of the daily automated snapshot. Default value is 0 hours. </p>
-- @param AdvancedOptions [AdvancedOptions] <p> Option to allow references to indices in an HTTP request body. Must be <code>false</code> when configuring access to individual sub-resources. By default, the value is <code>true</code>. See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options" target="_blank">Configuration Advanced Options</a> for more information.</p>
-- @param AccessPolicies [PolicyDocument] <p> IAM access policy as a JSON-formatted string.</p>
-- Required parameter: DomainName
function M.CreateElasticsearchDomainRequest(ElasticsearchClusterConfig, ElasticsearchVersion, DomainName, EBSOptions, SnapshotOptions, AdvancedOptions, AccessPolicies, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateElasticsearchDomainRequest")
	local t = { 
		["ElasticsearchClusterConfig"] = ElasticsearchClusterConfig,
		["ElasticsearchVersion"] = ElasticsearchVersion,
		["DomainName"] = DomainName,
		["EBSOptions"] = EBSOptions,
		["SnapshotOptions"] = SnapshotOptions,
		["AdvancedOptions"] = AdvancedOptions,
		["AccessPolicies"] = AccessPolicies,
	}
	M.AssertCreateElasticsearchDomainRequest(t)
	return t
end

local DomainInfo_keys = { "DomainName" = true, nil }

function M.AssertDomainInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DomainInfo to be of type 'table'")
	if struct["DomainName"] then M.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(DomainInfo_keys[k], "DomainInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DomainInfo
--  
-- @param DomainName [DomainName] <p> Specifies the <code>DomainName</code>.</p>
function M.DomainInfo(DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DomainInfo")
	local t = { 
		["DomainName"] = DomainName,
	}
	M.AssertDomainInfo(t)
	return t
end

local DeleteElasticsearchDomainRequest_keys = { "DomainName" = true, nil }

function M.AssertDeleteElasticsearchDomainRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteElasticsearchDomainRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["DomainName"] then M.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteElasticsearchDomainRequest_keys[k], "DeleteElasticsearchDomainRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteElasticsearchDomainRequest
-- <p>Container for the parameters to the <code><a>DeleteElasticsearchDomain</a></code> operation. Specifies the name of the Elasticsearch domain that you want to delete.</p>
-- @param DomainName [DomainName] <p>The name of the Elasticsearch domain that you want to permanently delete.</p>
-- Required parameter: DomainName
function M.DeleteElasticsearchDomainRequest(DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteElasticsearchDomainRequest")
	local t = { 
		["DomainName"] = DomainName,
	}
	M.AssertDeleteElasticsearchDomainRequest(t)
	return t
end

local AddTagsRequest_keys = { "ARN" = true, "TagList" = true, nil }

function M.AssertAddTagsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddTagsRequest to be of type 'table'")
	assert(struct["ARN"], "Expected key ARN to exist in table")
	assert(struct["TagList"], "Expected key TagList to exist in table")
	if struct["ARN"] then M.AssertARN(struct["ARN"]) end
	if struct["TagList"] then M.AssertTagList(struct["TagList"]) end
	for k,_ in pairs(struct) do
		assert(AddTagsRequest_keys[k], "AddTagsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddTagsRequest
-- <p>Container for the parameters to the <code><a>AddTags</a></code> operation. Specify the tags that you want to attach to the Elasticsearch domain.</p>
-- @param ARN [ARN] <p> Specify the <code>ARN</code> for which you want to add the tags.</p>
-- @param TagList [TagList] <p> List of <code>Tag</code> that need to be added for the Elasticsearch domain. </p>
-- Required parameter: ARN
-- Required parameter: TagList
function M.AddTagsRequest(ARN, TagList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddTagsRequest")
	local t = { 
		["ARN"] = ARN,
		["TagList"] = TagList,
	}
	M.AssertAddTagsRequest(t)
	return t
end

local CreateElasticsearchDomainResponse_keys = { "DomainStatus" = true, nil }

function M.AssertCreateElasticsearchDomainResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateElasticsearchDomainResponse to be of type 'table'")
	if struct["DomainStatus"] then M.AssertElasticsearchDomainStatus(struct["DomainStatus"]) end
	for k,_ in pairs(struct) do
		assert(CreateElasticsearchDomainResponse_keys[k], "CreateElasticsearchDomainResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateElasticsearchDomainResponse
-- <p>The result of a <code>CreateElasticsearchDomain</code> operation. Contains the status of the newly created Elasticsearch domain.</p>
-- @param DomainStatus [ElasticsearchDomainStatus] <p>The status of the newly created Elasticsearch domain. </p>
function M.CreateElasticsearchDomainResponse(DomainStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateElasticsearchDomainResponse")
	local t = { 
		["DomainStatus"] = DomainStatus,
	}
	M.AssertCreateElasticsearchDomainResponse(t)
	return t
end

local ListTagsResponse_keys = { "TagList" = true, nil }

function M.AssertListTagsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsResponse to be of type 'table'")
	if struct["TagList"] then M.AssertTagList(struct["TagList"]) end
	for k,_ in pairs(struct) do
		assert(ListTagsResponse_keys[k], "ListTagsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsResponse
-- <p>The result of a <code>ListTags</code> operation. Contains tags for all requested Elasticsearch domains.</p>
-- @param TagList [TagList] <p> List of <code>Tag</code> for the requested Elasticsearch domain.</p>
function M.ListTagsResponse(TagList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsResponse")
	local t = { 
		["TagList"] = TagList,
	}
	M.AssertListTagsResponse(t)
	return t
end

local DescribeElasticsearchDomainConfigRequest_keys = { "DomainName" = true, nil }

function M.AssertDescribeElasticsearchDomainConfigRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeElasticsearchDomainConfigRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["DomainName"] then M.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(DescribeElasticsearchDomainConfigRequest_keys[k], "DescribeElasticsearchDomainConfigRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeElasticsearchDomainConfigRequest
-- <p> Container for the parameters to the <code>DescribeElasticsearchDomainConfig</code> operation. Specifies the domain name for which you want configuration information.</p>
-- @param DomainName [DomainName] <p>The Elasticsearch domain that you want to get information about.</p>
-- Required parameter: DomainName
function M.DescribeElasticsearchDomainConfigRequest(DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeElasticsearchDomainConfigRequest")
	local t = { 
		["DomainName"] = DomainName,
	}
	M.AssertDescribeElasticsearchDomainConfigRequest(t)
	return t
end

local InstanceCountLimits_keys = { "MaximumInstanceCount" = true, "MinimumInstanceCount" = true, nil }

function M.AssertInstanceCountLimits(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceCountLimits to be of type 'table'")
	if struct["MaximumInstanceCount"] then M.AssertMaximumInstanceCount(struct["MaximumInstanceCount"]) end
	if struct["MinimumInstanceCount"] then M.AssertMinimumInstanceCount(struct["MinimumInstanceCount"]) end
	for k,_ in pairs(struct) do
		assert(InstanceCountLimits_keys[k], "InstanceCountLimits contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceCountLimits
-- <p> InstanceCountLimits represents the limits on number of instances that be created in Amazon Elasticsearch for given InstanceType. </p>
-- @param MaximumInstanceCount [MaximumInstanceCount] <p> InstanceCountLimits represents the limits on number of instances that be created in Amazon Elasticsearch for given InstanceType. </p>
-- @param MinimumInstanceCount [MinimumInstanceCount] <p> InstanceCountLimits represents the limits on number of instances that be created in Amazon Elasticsearch for given InstanceType. </p>
function M.InstanceCountLimits(MaximumInstanceCount, MinimumInstanceCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceCountLimits")
	local t = { 
		["MaximumInstanceCount"] = MaximumInstanceCount,
		["MinimumInstanceCount"] = MinimumInstanceCount,
	}
	M.AssertInstanceCountLimits(t)
	return t
end

local UpdateElasticsearchDomainConfigResponse_keys = { "DomainConfig" = true, nil }

function M.AssertUpdateElasticsearchDomainConfigResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateElasticsearchDomainConfigResponse to be of type 'table'")
	assert(struct["DomainConfig"], "Expected key DomainConfig to exist in table")
	if struct["DomainConfig"] then M.AssertElasticsearchDomainConfig(struct["DomainConfig"]) end
	for k,_ in pairs(struct) do
		assert(UpdateElasticsearchDomainConfigResponse_keys[k], "UpdateElasticsearchDomainConfigResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateElasticsearchDomainConfigResponse
-- <p>The result of an <code>UpdateElasticsearchDomain</code> request. Contains the status of the Elasticsearch domain being updated.</p>
-- @param DomainConfig [ElasticsearchDomainConfig] <p>The status of the updated Elasticsearch domain. </p>
-- Required parameter: DomainConfig
function M.UpdateElasticsearchDomainConfigResponse(DomainConfig, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateElasticsearchDomainConfigResponse")
	local t = { 
		["DomainConfig"] = DomainConfig,
	}
	M.AssertUpdateElasticsearchDomainConfigResponse(t)
	return t
end

function M.AssertOptionState(str)
	assert(str)
	assert(type(str) == "string", "Expected OptionState to be of type 'string'")
end

-- <p>The state of a requested change. One of the following:</p> <ul> <li>Processing: The request change is still in-process.</li> <li>Active: The request change is processed and deployed to the Elasticsearch domain.</li> </ul>
function M.OptionState(str)
	M.AssertOptionState(str)
	return str
end

function M.AssertVolumeType(str)
	assert(str)
	assert(type(str) == "string", "Expected VolumeType to be of type 'string'")
end

-- <p> The type of EBS volume, standard, gp2, or io1. See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-ebs" target="_blank">Configuring EBS-based Storage</a>for more information.</p>
function M.VolumeType(str)
	M.AssertVolumeType(str)
	return str
end

function M.AssertESPartitionInstanceType(str)
	assert(str)
	assert(type(str) == "string", "Expected ESPartitionInstanceType to be of type 'string'")
end

--  
function M.ESPartitionInstanceType(str)
	M.AssertESPartitionInstanceType(str)
	return str
end

function M.AssertPolicyDocument(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyDocument to be of type 'string'")
end

-- <p>Access policy rules for an Elasticsearch domain service endpoints. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-access-policies" target="_blank">Configuring Access Policies</a> in the <i>Amazon Elasticsearch Service Developer Guide</i>. The maximum size of a policy document is 100 KB.</p>
function M.PolicyDocument(str)
	M.AssertPolicyDocument(str)
	return str
end

function M.AssertLimitName(str)
	assert(str)
	assert(type(str) == "string", "Expected LimitName to be of type 'string'")
end

--  
function M.LimitName(str)
	M.AssertLimitName(str)
	return str
end

function M.AssertDomainId(str)
	assert(str)
	assert(type(str) == "string", "Expected DomainId to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

-- <p>Unique identifier for an Elasticsearch domain.</p>
function M.DomainId(str)
	M.AssertDomainId(str)
	return str
end

function M.AssertDomainName(str)
	assert(str)
	assert(type(str) == "string", "Expected DomainName to be of type 'string'")
	assert(#str <= 28, "Expected string to be max 28 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
	assert(str:match("[a-z][a-z0-9%-]+"), "Expected string to match pattern '[a-z][a-z0-9%-]+'")
end

-- <p>The name of an Elasticsearch domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
function M.DomainName(str)
	M.AssertDomainName(str)
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

function M.AssertElasticsearchVersionString(str)
	assert(str)
	assert(type(str) == "string", "Expected ElasticsearchVersionString to be of type 'string'")
end

--  
function M.ElasticsearchVersionString(str)
	M.AssertElasticsearchVersionString(str)
	return str
end

function M.AssertTagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TagValue to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

-- <p>A string of length from 0 to 256 characters that specifies the value for a Tag. Tag values can be null and do not have to be unique in a tag set.</p>
function M.TagValue(str)
	M.AssertTagValue(str)
	return str
end

function M.AssertLimitValue(str)
	assert(str)
	assert(type(str) == "string", "Expected LimitValue to be of type 'string'")
end

--  
function M.LimitValue(str)
	M.AssertLimitValue(str)
	return str
end

function M.AssertInstanceRole(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceRole to be of type 'string'")
end

--  
function M.InstanceRole(str)
	M.AssertInstanceRole(str)
	return str
end

function M.AssertErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorMessage to be of type 'string'")
end

--  
function M.ErrorMessage(str)
	M.AssertErrorMessage(str)
	return str
end

function M.AssertServiceUrl(str)
	assert(str)
	assert(type(str) == "string", "Expected ServiceUrl to be of type 'string'")
end

-- <p>The endpoint to which service requests are submitted. For example, <code>search-imdb-movies-oopcnjfn6ugofer3zx5iadxxca.eu-west-1.es.amazonaws.com</code> or <code>doc-imdb-movies-oopcnjfn6ugofer3zx5iadxxca.eu-west-1.es.amazonaws.com</code>.</p>
function M.ServiceUrl(str)
	M.AssertServiceUrl(str)
	return str
end

function M.AssertStorageSubTypeName(str)
	assert(str)
	assert(type(str) == "string", "Expected StorageSubTypeName to be of type 'string'")
end

-- <p> SubType of the given storage type. List of available sub-storage options: For "instance" storageType we wont have any storageSubType, in case of "ebs" storageType we will have following valid storageSubTypes <ol> <li>standard</li> <li>gp2</li> <li>io1</li> </ol> Refer <code><a>VolumeType</a></code> for more information regarding above EBS storage options. </p>
function M.StorageSubTypeName(str)
	M.AssertStorageSubTypeName(str)
	return str
end

function M.AssertStorageTypeName(str)
	assert(str)
	assert(type(str) == "string", "Expected StorageTypeName to be of type 'string'")
end

-- <p> Type of the storage. List of available storage options: <ol> <li>instance</li> Inbuilt storage available for the given Instance <li>ebs</li> Elastic block storage that would be attached to the given Instance </ol> </p>
function M.StorageTypeName(str)
	M.AssertStorageTypeName(str)
	return str
end

function M.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
end

-- <p> Paginated APIs accepts NextToken input to returns next page results and provides a NextToken output in the response which can be used by the client to retrieve more results. </p>
function M.NextToken(str)
	M.AssertNextToken(str)
	return str
end

function M.AssertTagKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TagKey to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

-- <p>A string of length from 1 to 128 characters that specifies the key for a Tag. Tag keys must be unique for the Elasticsearch domain to which they are attached.</p>
function M.TagKey(str)
	M.AssertTagKey(str)
	return str
end

function M.AssertARN(str)
	assert(str)
	assert(type(str) == "string", "Expected ARN to be of type 'string'")
end

-- <p>The Amazon Resource Name (ARN) of the Elasticsearch domain. See <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/index.html?Using_Identifiers.html" target="_blank">Identifiers for IAM Entities</a> in <i>Using AWS Identity and Access Management</i> for more information.</p>
function M.ARN(str)
	M.AssertARN(str)
	return str
end

function M.AssertIntegerClass(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected IntegerClass to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.IntegerClass(integer)
	M.AssertIntegerClass(integer)
	return integer
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

function M.AssertMaximumInstanceCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaximumInstanceCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.MaximumInstanceCount(integer)
	M.AssertMaximumInstanceCount(integer)
	return integer
end

function M.AssertMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
end

function M.MaxResults(integer)
	M.AssertMaxResults(integer)
	return integer
end

function M.AssertMinimumInstanceCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MinimumInstanceCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.MinimumInstanceCount(integer)
	M.AssertMinimumInstanceCount(integer)
	return integer
end

function M.AssertBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Boolean to be of type 'boolean'")
end

function M.Boolean(boolean)
	M.AssertBoolean(boolean)
	return boolean
end

function M.AssertAdvancedOptions(map)
	assert(map)
	assert(type(map) == "table", "Expected AdvancedOptions to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertString(k)
		M.AssertString(v)
	end
end

function M.AdvancedOptions(map)
	M.AssertAdvancedOptions(map)
	return map
end

function M.AssertLimitsByRole(map)
	assert(map)
	assert(type(map) == "table", "Expected LimitsByRole to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertInstanceRole(k)
		M.AssertLimits(v)
	end
end

function M.LimitsByRole(map)
	M.AssertLimitsByRole(map)
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

function M.AssertElasticsearchVersionList(list)
	assert(list)
	assert(type(list) == "table", "Expected ElasticsearchVersionList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertElasticsearchVersionString(v)
	end
end

-- <p>List of supported elastic search versions. </p>
-- List of ElasticsearchVersionString objects
function M.ElasticsearchVersionList(list)
	M.AssertElasticsearchVersionList(list)
	return list
end

function M.AssertDomainInfoList(list)
	assert(list)
	assert(type(list) == "table", "Expected DomainInfoList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDomainInfo(v)
	end
end

-- <p> Contains the list of Elasticsearch domain information.</p>
-- List of DomainInfo objects
function M.DomainInfoList(list)
	M.AssertDomainInfoList(list)
	return list
end

function M.AssertLimitValueList(list)
	assert(list)
	assert(type(list) == "table", "Expected LimitValueList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertLimitValue(v)
	end
end

--  
-- List of LimitValue objects
function M.LimitValueList(list)
	M.AssertLimitValueList(list)
	return list
end

function M.AssertElasticsearchDomainStatusList(list)
	assert(list)
	assert(type(list) == "table", "Expected ElasticsearchDomainStatusList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertElasticsearchDomainStatus(v)
	end
end

-- <p>A list that contains the status of each requested Elasticsearch domain.</p>
-- List of ElasticsearchDomainStatus objects
function M.ElasticsearchDomainStatusList(list)
	M.AssertElasticsearchDomainStatusList(list)
	return list
end

function M.AssertStorageTypeLimitList(list)
	assert(list)
	assert(type(list) == "table", "Expected StorageTypeLimitList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertStorageTypeLimit(v)
	end
end

--  
-- List of StorageTypeLimit objects
function M.StorageTypeLimitList(list)
	M.AssertStorageTypeLimitList(list)
	return list
end

function M.AssertDomainNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected DomainNameList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDomainName(v)
	end
end

-- <p>A list of Elasticsearch domain names.</p>
-- List of DomainName objects
function M.DomainNameList(list)
	M.AssertDomainNameList(list)
	return list
end

function M.AssertStringList(list)
	assert(list)
	assert(type(list) == "table", "Expected StringList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.StringList(list)
	M.AssertStringList(list)
	return list
end

function M.AssertElasticsearchInstanceTypeList(list)
	assert(list)
	assert(type(list) == "table", "Expected ElasticsearchInstanceTypeList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertESPartitionInstanceType(v)
	end
end

-- <p> List of instance types supported by Amazon Elasticsearch service. </p>
-- List of ESPartitionInstanceType objects
function M.ElasticsearchInstanceTypeList(list)
	M.AssertElasticsearchInstanceTypeList(list)
	return list
end

function M.AssertStorageTypeList(list)
	assert(list)
	assert(type(list) == "table", "Expected StorageTypeList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertStorageType(v)
	end
end

--  
-- List of StorageType objects
function M.StorageTypeList(list)
	M.AssertStorageTypeList(list)
	return list
end

function M.AssertAdditionalLimitList(list)
	assert(list)
	assert(type(list) == "table", "Expected AdditionalLimitList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAdditionalLimit(v)
	end
end

--  
-- List of AdditionalLimit objects
function M.AdditionalLimitList(list)
	M.AssertAdditionalLimitList(list)
	return list
end

function M.AssertTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTag(v)
	end
end

-- <p>A list of <code>Tag</code> </p>
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
	uri = scheme_mapper.from_string(config.scheme) .. "://"
	uri = uri .. config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
end


--
-- OPERATIONS
--
--- RemoveTags
-- @param RemoveTagsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RemoveTagsAsync(RemoveTagsRequest, cb)
	assert(RemoveTagsRequest, "You must provide a RemoveTagsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".RemoveTags",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2015-01-01/tags-removal", RemoveTagsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteElasticsearchDomain
-- @param DeleteElasticsearchDomainRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteElasticsearchDomainAsync(DeleteElasticsearchDomainRequest, cb)
	assert(DeleteElasticsearchDomainRequest, "You must provide a DeleteElasticsearchDomainRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteElasticsearchDomain",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/2015-01-01/es/domain/{DomainName}", DeleteElasticsearchDomainRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AddTags
-- @param AddTagsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AddTagsAsync(AddTagsRequest, cb)
	assert(AddTagsRequest, "You must provide a AddTagsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".AddTags",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2015-01-01/tags", AddTagsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeElasticsearchInstanceTypeLimits
-- @param DescribeElasticsearchInstanceTypeLimitsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeElasticsearchInstanceTypeLimitsAsync(DescribeElasticsearchInstanceTypeLimitsRequest, cb)
	assert(DescribeElasticsearchInstanceTypeLimitsRequest, "You must provide a DescribeElasticsearchInstanceTypeLimitsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeElasticsearchInstanceTypeLimits",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2015-01-01/es/instanceTypeLimits/{ElasticsearchVersion}/{InstanceType}", DescribeElasticsearchInstanceTypeLimitsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateElasticsearchDomainConfig
-- @param UpdateElasticsearchDomainConfigRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateElasticsearchDomainConfigAsync(UpdateElasticsearchDomainConfigRequest, cb)
	assert(UpdateElasticsearchDomainConfigRequest, "You must provide a UpdateElasticsearchDomainConfigRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateElasticsearchDomainConfig",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2015-01-01/es/domain/{DomainName}/config", UpdateElasticsearchDomainConfigRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeElasticsearchDomainConfig
-- @param DescribeElasticsearchDomainConfigRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeElasticsearchDomainConfigAsync(DescribeElasticsearchDomainConfigRequest, cb)
	assert(DescribeElasticsearchDomainConfigRequest, "You must provide a DescribeElasticsearchDomainConfigRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeElasticsearchDomainConfig",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2015-01-01/es/domain/{DomainName}/config", DescribeElasticsearchDomainConfigRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateElasticsearchDomain
-- @param CreateElasticsearchDomainRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateElasticsearchDomainAsync(CreateElasticsearchDomainRequest, cb)
	assert(CreateElasticsearchDomainRequest, "You must provide a CreateElasticsearchDomainRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateElasticsearchDomain",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2015-01-01/es/domain", CreateElasticsearchDomainRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeElasticsearchDomains
-- @param DescribeElasticsearchDomainsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeElasticsearchDomainsAsync(DescribeElasticsearchDomainsRequest, cb)
	assert(DescribeElasticsearchDomainsRequest, "You must provide a DescribeElasticsearchDomainsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeElasticsearchDomains",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2015-01-01/es/domain-info", DescribeElasticsearchDomainsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListElasticsearchInstanceTypes
-- @param ListElasticsearchInstanceTypesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListElasticsearchInstanceTypesAsync(ListElasticsearchInstanceTypesRequest, cb)
	assert(ListElasticsearchInstanceTypesRequest, "You must provide a ListElasticsearchInstanceTypesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListElasticsearchInstanceTypes",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2015-01-01/es/instanceTypes/{ElasticsearchVersion}", ListElasticsearchInstanceTypesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListElasticsearchVersions
-- @param ListElasticsearchVersionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListElasticsearchVersionsAsync(ListElasticsearchVersionsRequest, cb)
	assert(ListElasticsearchVersionsRequest, "You must provide a ListElasticsearchVersionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListElasticsearchVersions",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2015-01-01/es/versions", ListElasticsearchVersionsRequest, headers, M.metadata, cb)
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

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2015-01-01/domain", , headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListTags
-- @param ListTagsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListTagsAsync(ListTagsRequest, cb)
	assert(ListTagsRequest, "You must provide a ListTagsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListTags",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2015-01-01/tags/", ListTagsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeElasticsearchDomain
-- @param DescribeElasticsearchDomainRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeElasticsearchDomainAsync(DescribeElasticsearchDomainRequest, cb)
	assert(DescribeElasticsearchDomainRequest, "You must provide a DescribeElasticsearchDomainRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeElasticsearchDomain",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2015-01-01/es/domain/{DomainName}", DescribeElasticsearchDomainRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
