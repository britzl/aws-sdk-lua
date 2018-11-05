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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DomainStatusList [ElasticsearchDomainStatusList] <p>The status of the domains requested in the <code>DescribeElasticsearchDomains</code> request.</p>
-- Required key: DomainStatusList
-- @return DescribeElasticsearchDomainsResponse structure as a key-value pair table
function M.DescribeElasticsearchDomainsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeElasticsearchDomainsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DomainStatusList"] = args["DomainStatusList"],
	}
	asserts.AssertDescribeElasticsearchDomainsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [OptionStatus] <p> Specifies the status of <code>OptionStatus</code> for advanced options for the specified Elasticsearch domain.</p>
-- * Options [AdvancedOptions] <p> Specifies the status of advanced options for the specified Elasticsearch domain.</p>
-- Required key: Options
-- Required key: Status
-- @return AdvancedOptionsStatus structure as a key-value pair table
function M.AdvancedOptionsStatus(args)
	assert(args, "You must provide an argument table when creating AdvancedOptionsStatus")
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
	asserts.AssertAdvancedOptionsStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ARN [ARN] <p> Specify the <code>ARN</code> for the Elasticsearch domain to which the tags are attached that you want to view.</p>
-- Required key: ARN
-- @return ListTagsRequest structure as a key-value pair table
function M.ListTagsRequest(args)
	assert(args, "You must provide an argument table when creating ListTagsRequest")
    local query_args = { 
        ["arn"] = args["ARN"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ARN"] = args["ARN"],
	}
	asserts.AssertListTagsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PurchaseReservedElasticsearchInstanceOfferingRequest = { ["ReservationName"] = true, ["InstanceCount"] = true, ["ReservedElasticsearchInstanceOfferingId"] = true, nil }

function asserts.AssertPurchaseReservedElasticsearchInstanceOfferingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PurchaseReservedElasticsearchInstanceOfferingRequest to be of type 'table'")
	assert(struct["ReservedElasticsearchInstanceOfferingId"], "Expected key ReservedElasticsearchInstanceOfferingId to exist in table")
	assert(struct["ReservationName"], "Expected key ReservationName to exist in table")
	if struct["ReservationName"] then asserts.AssertReservationToken(struct["ReservationName"]) end
	if struct["InstanceCount"] then asserts.AssertInstanceCount(struct["InstanceCount"]) end
	if struct["ReservedElasticsearchInstanceOfferingId"] then asserts.AssertGUID(struct["ReservedElasticsearchInstanceOfferingId"]) end
	for k,_ in pairs(struct) do
		assert(keys.PurchaseReservedElasticsearchInstanceOfferingRequest[k], "PurchaseReservedElasticsearchInstanceOfferingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PurchaseReservedElasticsearchInstanceOfferingRequest
-- <p>Container for parameters to <code>PurchaseReservedElasticsearchInstanceOffering</code></p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReservationName [ReservationToken] <p>A customer-specified identifier to track this reservation.</p>
-- * InstanceCount [InstanceCount] <p>The number of Elasticsearch instances to reserve.</p>
-- * ReservedElasticsearchInstanceOfferingId [GUID] <p>The ID of the reserved Elasticsearch instance offering to purchase.</p>
-- Required key: ReservedElasticsearchInstanceOfferingId
-- Required key: ReservationName
-- @return PurchaseReservedElasticsearchInstanceOfferingRequest structure as a key-value pair table
function M.PurchaseReservedElasticsearchInstanceOfferingRequest(args)
	assert(args, "You must provide an argument table when creating PurchaseReservedElasticsearchInstanceOfferingRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReservationName"] = args["ReservationName"],
		["InstanceCount"] = args["InstanceCount"],
		["ReservedElasticsearchInstanceOfferingId"] = args["ReservedElasticsearchInstanceOfferingId"],
	}
	asserts.AssertPurchaseReservedElasticsearchInstanceOfferingRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpgradeElasticsearchDomainResponse = { ["PerformCheckOnly"] = true, ["TargetVersion"] = true, ["DomainName"] = true, nil }

function asserts.AssertUpgradeElasticsearchDomainResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpgradeElasticsearchDomainResponse to be of type 'table'")
	if struct["PerformCheckOnly"] then asserts.AssertBoolean(struct["PerformCheckOnly"]) end
	if struct["TargetVersion"] then asserts.AssertElasticsearchVersionString(struct["TargetVersion"]) end
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpgradeElasticsearchDomainResponse[k], "UpgradeElasticsearchDomainResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpgradeElasticsearchDomainResponse
-- <p> Container for response returned by <code> <a>UpgradeElasticsearchDomain</a> </code> operation. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PerformCheckOnly [Boolean] <p> This flag, when set to True, indicates that an Upgrade Eligibility Check needs to be performed. This will not actually perform the Upgrade. </p>
-- * TargetVersion [ElasticsearchVersionString] <p>The version of Elasticsearch that you intend to upgrade the domain to.</p>
-- * DomainName [DomainName] 
-- @return UpgradeElasticsearchDomainResponse structure as a key-value pair table
function M.UpgradeElasticsearchDomainResponse(args)
	assert(args, "You must provide an argument table when creating UpgradeElasticsearchDomainResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PerformCheckOnly"] = args["PerformCheckOnly"],
		["TargetVersion"] = args["TargetVersion"],
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertUpgradeElasticsearchDomainResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TagKeys [StringList] <p>Specifies the <code>TagKey</code> list which you want to remove from the Elasticsearch domain.</p>
-- * ARN [ARN] <p>Specifies the <code>ARN</code> for the Elasticsearch domain from which you want to delete the specified tags.</p>
-- Required key: ARN
-- Required key: TagKeys
-- @return RemoveTagsRequest structure as a key-value pair table
function M.RemoveTagsRequest(args)
	assert(args, "You must provide an argument table when creating RemoveTagsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TagKeys"] = args["TagKeys"],
		["ARN"] = args["ARN"],
	}
	asserts.AssertRemoveTagsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DomainStatus [ElasticsearchDomainStatus] <p>The status of the Elasticsearch domain being deleted.</p>
-- @return DeleteElasticsearchDomainResponse structure as a key-value pair table
function M.DeleteElasticsearchDomainResponse(args)
	assert(args, "You must provide an argument table when creating DeleteElasticsearchDomainResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DomainStatus"] = args["DomainStatus"],
	}
	asserts.AssertDeleteElasticsearchDomainResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DomainNames [DomainNameList] <p>The Elasticsearch domains for which you want information.</p>
-- Required key: DomainNames
-- @return DescribeElasticsearchDomainsRequest structure as a key-value pair table
function M.DescribeElasticsearchDomainsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeElasticsearchDomainsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DomainNames"] = args["DomainNames"],
	}
	asserts.AssertDescribeElasticsearchDomainsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CognitoOptions = { ["IdentityPoolId"] = true, ["RoleArn"] = true, ["Enabled"] = true, ["UserPoolId"] = true, nil }

function asserts.AssertCognitoOptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CognitoOptions to be of type 'table'")
	if struct["IdentityPoolId"] then asserts.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	if struct["RoleArn"] then asserts.AssertRoleArn(struct["RoleArn"]) end
	if struct["Enabled"] then asserts.AssertBoolean(struct["Enabled"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolId(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CognitoOptions[k], "CognitoOptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CognitoOptions
-- <p>Options to specify the Cognito user and identity pools for Kibana authentication. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html" target="_blank">Amazon Cognito Authentication for Kibana</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IdentityPoolId [IdentityPoolId] <p>Specifies the Cognito identity pool ID for Kibana authentication.</p>
-- * RoleArn [RoleArn] <p>Specifies the role ARN that provides Elasticsearch permissions for accessing Cognito resources.</p>
-- * Enabled [Boolean] <p>Specifies the option to enable Cognito for Kibana authentication.</p>
-- * UserPoolId [UserPoolId] <p>Specifies the Cognito user pool ID for Kibana authentication.</p>
-- @return CognitoOptions structure as a key-value pair table
function M.CognitoOptions(args)
	assert(args, "You must provide an argument table when creating CognitoOptions")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IdentityPoolId"] = args["IdentityPoolId"],
		["RoleArn"] = args["RoleArn"],
		["Enabled"] = args["Enabled"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertCognitoOptions(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeReservedElasticsearchInstanceOfferingsRequest = { ["NextToken"] = true, ["MaxResults"] = true, ["ReservedElasticsearchInstanceOfferingId"] = true, nil }

function asserts.AssertDescribeReservedElasticsearchInstanceOfferingsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeReservedElasticsearchInstanceOfferingsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	if struct["ReservedElasticsearchInstanceOfferingId"] then asserts.AssertGUID(struct["ReservedElasticsearchInstanceOfferingId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeReservedElasticsearchInstanceOfferingsRequest[k], "DescribeReservedElasticsearchInstanceOfferingsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeReservedElasticsearchInstanceOfferingsRequest
-- <p>Container for parameters to <code>DescribeReservedElasticsearchInstanceOfferings</code></p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>NextToken should be sent in case if earlier API call produced result containing NextToken. It is used for pagination.</p>
-- * MaxResults [MaxResults] <p>Set this value to limit the number of results returned. If not specified, defaults to 100.</p>
-- * ReservedElasticsearchInstanceOfferingId [GUID] <p>The offering identifier filter value. Use this parameter to show only the available offering that matches the specified reservation identifier.</p>
-- @return DescribeReservedElasticsearchInstanceOfferingsRequest structure as a key-value pair table
function M.DescribeReservedElasticsearchInstanceOfferingsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeReservedElasticsearchInstanceOfferingsRequest")
    local query_args = { 
        ["nextToken"] = args["NextToken"],
        ["maxResults"] = args["MaxResults"],
        ["offeringId"] = args["ReservedElasticsearchInstanceOfferingId"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["ReservedElasticsearchInstanceOfferingId"] = args["ReservedElasticsearchInstanceOfferingId"],
	}
	asserts.AssertDescribeReservedElasticsearchInstanceOfferingsRequest(all_args)
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
	if struct["DomainNames"] then asserts.AssertDomainInfoList(struct["DomainNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDomainNamesResponse[k], "ListDomainNamesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDomainNamesResponse
-- <p>The result of a <code>ListDomainNames</code> operation. Contains the names of all Elasticsearch domains owned by this account.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DomainNames [DomainInfoList] <p>List of Elasticsearch domain names.</p>
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

keys.GetUpgradeStatusRequest = { ["DomainName"] = true, nil }

function asserts.AssertGetUpgradeStatusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetUpgradeStatusRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetUpgradeStatusRequest[k], "GetUpgradeStatusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetUpgradeStatusRequest
-- <p> Container for request parameters to <code> <a>GetUpgradeStatus</a> </code> operation. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DomainName [DomainName] 
-- Required key: DomainName
-- @return GetUpgradeStatusRequest structure as a key-value pair table
function M.GetUpgradeStatusRequest(args)
	assert(args, "You must provide an argument table when creating GetUpgradeStatusRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{DomainName}"] = args["DomainName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertGetUpgradeStatusRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartElasticsearchServiceSoftwareUpdateRequest = { ["DomainName"] = true, nil }

function asserts.AssertStartElasticsearchServiceSoftwareUpdateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartElasticsearchServiceSoftwareUpdateRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartElasticsearchServiceSoftwareUpdateRequest[k], "StartElasticsearchServiceSoftwareUpdateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartElasticsearchServiceSoftwareUpdateRequest
-- <p>Container for the parameters to the <code><a>StartElasticsearchServiceSoftwareUpdate</a></code> operation. Specifies the name of the Elasticsearch domain that you wish to schedule a service software update on.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DomainName [DomainName] <p>The name of the domain that you want to update to the latest service software.</p>
-- Required key: DomainName
-- @return StartElasticsearchServiceSoftwareUpdateRequest structure as a key-value pair table
function M.StartElasticsearchServiceSoftwareUpdateRequest(args)
	assert(args, "You must provide an argument table when creating StartElasticsearchServiceSoftwareUpdateRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertStartElasticsearchServiceSoftwareUpdateRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ElasticsearchDomainConfig = { ["ElasticsearchClusterConfig"] = true, ["VPCOptions"] = true, ["CognitoOptions"] = true, ["NodeToNodeEncryptionOptions"] = true, ["EBSOptions"] = true, ["SnapshotOptions"] = true, ["ElasticsearchVersion"] = true, ["LogPublishingOptions"] = true, ["AdvancedOptions"] = true, ["EncryptionAtRestOptions"] = true, ["AccessPolicies"] = true, nil }

function asserts.AssertElasticsearchDomainConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ElasticsearchDomainConfig to be of type 'table'")
	if struct["ElasticsearchClusterConfig"] then asserts.AssertElasticsearchClusterConfigStatus(struct["ElasticsearchClusterConfig"]) end
	if struct["VPCOptions"] then asserts.AssertVPCDerivedInfoStatus(struct["VPCOptions"]) end
	if struct["CognitoOptions"] then asserts.AssertCognitoOptionsStatus(struct["CognitoOptions"]) end
	if struct["NodeToNodeEncryptionOptions"] then asserts.AssertNodeToNodeEncryptionOptionsStatus(struct["NodeToNodeEncryptionOptions"]) end
	if struct["EBSOptions"] then asserts.AssertEBSOptionsStatus(struct["EBSOptions"]) end
	if struct["SnapshotOptions"] then asserts.AssertSnapshotOptionsStatus(struct["SnapshotOptions"]) end
	if struct["ElasticsearchVersion"] then asserts.AssertElasticsearchVersionStatus(struct["ElasticsearchVersion"]) end
	if struct["LogPublishingOptions"] then asserts.AssertLogPublishingOptionsStatus(struct["LogPublishingOptions"]) end
	if struct["AdvancedOptions"] then asserts.AssertAdvancedOptionsStatus(struct["AdvancedOptions"]) end
	if struct["EncryptionAtRestOptions"] then asserts.AssertEncryptionAtRestOptionsStatus(struct["EncryptionAtRestOptions"]) end
	if struct["AccessPolicies"] then asserts.AssertAccessPoliciesStatus(struct["AccessPolicies"]) end
	for k,_ in pairs(struct) do
		assert(keys.ElasticsearchDomainConfig[k], "ElasticsearchDomainConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ElasticsearchDomainConfig
-- <p>The configuration of an Elasticsearch domain.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ElasticsearchClusterConfig [ElasticsearchClusterConfigStatus] <p>Specifies the <code>ElasticsearchClusterConfig</code> for the Elasticsearch domain.</p>
-- * VPCOptions [VPCDerivedInfoStatus] <p>The <code>VPCOptions</code> for the specified domain. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html" target="_blank">VPC Endpoints for Amazon Elasticsearch Service Domains</a>.</p>
-- * CognitoOptions [CognitoOptionsStatus] <p>The <code>CognitoOptions</code> for the specified domain. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html" target="_blank">Amazon Cognito Authentication for Kibana</a>.</p>
-- * NodeToNodeEncryptionOptions [NodeToNodeEncryptionOptionsStatus] <p>Specifies the <code>NodeToNodeEncryptionOptions</code> for the Elasticsearch domain.</p>
-- * EBSOptions [EBSOptionsStatus] <p>Specifies the <code>EBSOptions</code> for the Elasticsearch domain.</p>
-- * SnapshotOptions [SnapshotOptionsStatus] <p>Specifies the <code>SnapshotOptions</code> for the Elasticsearch domain.</p>
-- * ElasticsearchVersion [ElasticsearchVersionStatus] <p>String of format X.Y to specify version for the Elasticsearch domain.</p>
-- * LogPublishingOptions [LogPublishingOptionsStatus] <p>Log publishing options for the given domain.</p>
-- * AdvancedOptions [AdvancedOptionsStatus] <p>Specifies the <code>AdvancedOptions</code> for the domain. See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options" target="_blank">Configuring Advanced Options</a> for more information.</p>
-- * EncryptionAtRestOptions [EncryptionAtRestOptionsStatus] <p>Specifies the <code>EncryptionAtRestOptions</code> for the Elasticsearch domain.</p>
-- * AccessPolicies [AccessPoliciesStatus] <p>IAM access policy as a JSON-formatted string.</p>
-- @return ElasticsearchDomainConfig structure as a key-value pair table
function M.ElasticsearchDomainConfig(args)
	assert(args, "You must provide an argument table when creating ElasticsearchDomainConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ElasticsearchClusterConfig"] = args["ElasticsearchClusterConfig"],
		["VPCOptions"] = args["VPCOptions"],
		["CognitoOptions"] = args["CognitoOptions"],
		["NodeToNodeEncryptionOptions"] = args["NodeToNodeEncryptionOptions"],
		["EBSOptions"] = args["EBSOptions"],
		["SnapshotOptions"] = args["SnapshotOptions"],
		["ElasticsearchVersion"] = args["ElasticsearchVersion"],
		["LogPublishingOptions"] = args["LogPublishingOptions"],
		["AdvancedOptions"] = args["AdvancedOptions"],
		["EncryptionAtRestOptions"] = args["EncryptionAtRestOptions"],
		["AccessPolicies"] = args["AccessPolicies"],
	}
	asserts.AssertElasticsearchDomainConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReservedElasticsearchInstance = { ["FixedPrice"] = true, ["ReservedElasticsearchInstanceOfferingId"] = true, ["ReservationName"] = true, ["PaymentOption"] = true, ["UsagePrice"] = true, ["ReservedElasticsearchInstanceId"] = true, ["RecurringCharges"] = true, ["State"] = true, ["StartTime"] = true, ["ElasticsearchInstanceCount"] = true, ["Duration"] = true, ["ElasticsearchInstanceType"] = true, ["CurrencyCode"] = true, nil }

function asserts.AssertReservedElasticsearchInstance(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservedElasticsearchInstance to be of type 'table'")
	if struct["FixedPrice"] then asserts.AssertDouble(struct["FixedPrice"]) end
	if struct["ReservedElasticsearchInstanceOfferingId"] then asserts.AssertString(struct["ReservedElasticsearchInstanceOfferingId"]) end
	if struct["ReservationName"] then asserts.AssertReservationToken(struct["ReservationName"]) end
	if struct["PaymentOption"] then asserts.AssertReservedElasticsearchInstancePaymentOption(struct["PaymentOption"]) end
	if struct["UsagePrice"] then asserts.AssertDouble(struct["UsagePrice"]) end
	if struct["ReservedElasticsearchInstanceId"] then asserts.AssertGUID(struct["ReservedElasticsearchInstanceId"]) end
	if struct["RecurringCharges"] then asserts.AssertRecurringChargeList(struct["RecurringCharges"]) end
	if struct["State"] then asserts.AssertString(struct["State"]) end
	if struct["StartTime"] then asserts.AssertUpdateTimestamp(struct["StartTime"]) end
	if struct["ElasticsearchInstanceCount"] then asserts.AssertInteger(struct["ElasticsearchInstanceCount"]) end
	if struct["Duration"] then asserts.AssertInteger(struct["Duration"]) end
	if struct["ElasticsearchInstanceType"] then asserts.AssertESPartitionInstanceType(struct["ElasticsearchInstanceType"]) end
	if struct["CurrencyCode"] then asserts.AssertString(struct["CurrencyCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReservedElasticsearchInstance[k], "ReservedElasticsearchInstance contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservedElasticsearchInstance
-- <p>Details of a reserved Elasticsearch instance.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FixedPrice [Double] <p>The upfront fixed charge you will paid to purchase the specific reserved Elasticsearch instance offering. </p>
-- * ReservedElasticsearchInstanceOfferingId [String] <p>The offering identifier.</p>
-- * ReservationName [ReservationToken] <p>The customer-specified identifier to track this reservation.</p>
-- * PaymentOption [ReservedElasticsearchInstancePaymentOption] <p>The payment option as defined in the reserved Elasticsearch instance offering.</p>
-- * UsagePrice [Double] <p>The rate you are charged for each hour for the domain that is using this reserved instance.</p>
-- * ReservedElasticsearchInstanceId [GUID] <p>The unique identifier for the reservation.</p>
-- * RecurringCharges [RecurringChargeList] <p>The charge to your account regardless of whether you are creating any domains using the instance offering.</p>
-- * State [String] <p>The state of the reserved Elasticsearch instance.</p>
-- * StartTime [UpdateTimestamp] <p>The time the reservation started.</p>
-- * ElasticsearchInstanceCount [Integer] <p>The number of Elasticsearch instances that have been reserved.</p>
-- * Duration [Integer] <p>The duration, in seconds, for which the Elasticsearch instance is reserved.</p>
-- * ElasticsearchInstanceType [ESPartitionInstanceType] <p>The Elasticsearch instance type offered by the reserved instance offering.</p>
-- * CurrencyCode [String] <p>The currency code for the reserved Elasticsearch instance offering.</p>
-- @return ReservedElasticsearchInstance structure as a key-value pair table
function M.ReservedElasticsearchInstance(args)
	assert(args, "You must provide an argument table when creating ReservedElasticsearchInstance")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FixedPrice"] = args["FixedPrice"],
		["ReservedElasticsearchInstanceOfferingId"] = args["ReservedElasticsearchInstanceOfferingId"],
		["ReservationName"] = args["ReservationName"],
		["PaymentOption"] = args["PaymentOption"],
		["UsagePrice"] = args["UsagePrice"],
		["ReservedElasticsearchInstanceId"] = args["ReservedElasticsearchInstanceId"],
		["RecurringCharges"] = args["RecurringCharges"],
		["State"] = args["State"],
		["StartTime"] = args["StartTime"],
		["ElasticsearchInstanceCount"] = args["ElasticsearchInstanceCount"],
		["Duration"] = args["Duration"],
		["ElasticsearchInstanceType"] = args["ElasticsearchInstanceType"],
		["CurrencyCode"] = args["CurrencyCode"],
	}
	asserts.AssertReservedElasticsearchInstance(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ElasticsearchDomainStatus = { ["ElasticsearchClusterConfig"] = true, ["Endpoint"] = true, ["UpgradeProcessing"] = true, ["NodeToNodeEncryptionOptions"] = true, ["VPCOptions"] = true, ["Created"] = true, ["Deleted"] = true, ["DomainName"] = true, ["EBSOptions"] = true, ["ServiceSoftwareOptions"] = true, ["CognitoOptions"] = true, ["SnapshotOptions"] = true, ["DomainId"] = true, ["AccessPolicies"] = true, ["Processing"] = true, ["AdvancedOptions"] = true, ["Endpoints"] = true, ["EncryptionAtRestOptions"] = true, ["ElasticsearchVersion"] = true, ["ARN"] = true, ["LogPublishingOptions"] = true, nil }

function asserts.AssertElasticsearchDomainStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ElasticsearchDomainStatus to be of type 'table'")
	assert(struct["DomainId"], "Expected key DomainId to exist in table")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["ARN"], "Expected key ARN to exist in table")
	assert(struct["ElasticsearchClusterConfig"], "Expected key ElasticsearchClusterConfig to exist in table")
	if struct["ElasticsearchClusterConfig"] then asserts.AssertElasticsearchClusterConfig(struct["ElasticsearchClusterConfig"]) end
	if struct["Endpoint"] then asserts.AssertServiceUrl(struct["Endpoint"]) end
	if struct["UpgradeProcessing"] then asserts.AssertBoolean(struct["UpgradeProcessing"]) end
	if struct["NodeToNodeEncryptionOptions"] then asserts.AssertNodeToNodeEncryptionOptions(struct["NodeToNodeEncryptionOptions"]) end
	if struct["VPCOptions"] then asserts.AssertVPCDerivedInfo(struct["VPCOptions"]) end
	if struct["Created"] then asserts.AssertBoolean(struct["Created"]) end
	if struct["Deleted"] then asserts.AssertBoolean(struct["Deleted"]) end
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	if struct["EBSOptions"] then asserts.AssertEBSOptions(struct["EBSOptions"]) end
	if struct["ServiceSoftwareOptions"] then asserts.AssertServiceSoftwareOptions(struct["ServiceSoftwareOptions"]) end
	if struct["CognitoOptions"] then asserts.AssertCognitoOptions(struct["CognitoOptions"]) end
	if struct["SnapshotOptions"] then asserts.AssertSnapshotOptions(struct["SnapshotOptions"]) end
	if struct["DomainId"] then asserts.AssertDomainId(struct["DomainId"]) end
	if struct["AccessPolicies"] then asserts.AssertPolicyDocument(struct["AccessPolicies"]) end
	if struct["Processing"] then asserts.AssertBoolean(struct["Processing"]) end
	if struct["AdvancedOptions"] then asserts.AssertAdvancedOptions(struct["AdvancedOptions"]) end
	if struct["Endpoints"] then asserts.AssertEndpointsMap(struct["Endpoints"]) end
	if struct["EncryptionAtRestOptions"] then asserts.AssertEncryptionAtRestOptions(struct["EncryptionAtRestOptions"]) end
	if struct["ElasticsearchVersion"] then asserts.AssertElasticsearchVersionString(struct["ElasticsearchVersion"]) end
	if struct["ARN"] then asserts.AssertARN(struct["ARN"]) end
	if struct["LogPublishingOptions"] then asserts.AssertLogPublishingOptions(struct["LogPublishingOptions"]) end
	for k,_ in pairs(struct) do
		assert(keys.ElasticsearchDomainStatus[k], "ElasticsearchDomainStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ElasticsearchDomainStatus
-- <p>The current status of an Elasticsearch domain.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ElasticsearchClusterConfig [ElasticsearchClusterConfig] <p>The type and number of instances in the domain cluster.</p>
-- * Endpoint [ServiceUrl] <p>The Elasticsearch domain endpoint that you use to submit index and search requests.</p>
-- * UpgradeProcessing [Boolean] <p>The status of an Elasticsearch domain version upgrade. <code>True</code> if Amazon Elasticsearch Service is undergoing a version upgrade. <code>False</code> if the configuration is active.</p>
-- * NodeToNodeEncryptionOptions [NodeToNodeEncryptionOptions] <p>Specifies the status of the <code>NodeToNodeEncryptionOptions</code>.</p>
-- * VPCOptions [VPCDerivedInfo] <p>The <code>VPCOptions</code> for the specified domain. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html" target="_blank">VPC Endpoints for Amazon Elasticsearch Service Domains</a>.</p>
-- * Created [Boolean] <p>The domain creation status. <code>True</code> if the creation of an Elasticsearch domain is complete. <code>False</code> if domain creation is still in progress.</p>
-- * Deleted [Boolean] <p>The domain deletion status. <code>True</code> if a delete request has been received for the domain but resource cleanup is still in progress. <code>False</code> if the domain has not been deleted. Once domain deletion is complete, the status of the domain is no longer returned.</p>
-- * DomainName [DomainName] <p>The name of an Elasticsearch domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
-- * EBSOptions [EBSOptions] <p>The <code>EBSOptions</code> for the specified domain. See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-ebs" target="_blank">Configuring EBS-based Storage</a> for more information.</p>
-- * ServiceSoftwareOptions [ServiceSoftwareOptions] <p>The current status of the Elasticsearch domain's service software.</p>
-- * CognitoOptions [CognitoOptions] <p>The <code>CognitoOptions</code> for the specified domain. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html" target="_blank">Amazon Cognito Authentication for Kibana</a>.</p>
-- * SnapshotOptions [SnapshotOptions] <p>Specifies the status of the <code>SnapshotOptions</code></p>
-- * DomainId [DomainId] <p>The unique identifier for the specified Elasticsearch domain.</p>
-- * AccessPolicies [PolicyDocument] <p> IAM access policy as a JSON-formatted string.</p>
-- * Processing [Boolean] <p>The status of the Elasticsearch domain configuration. <code>True</code> if Amazon Elasticsearch Service is processing configuration changes. <code>False</code> if the configuration is active.</p>
-- * AdvancedOptions [AdvancedOptions] <p>Specifies the status of the <code>AdvancedOptions</code></p>
-- * Endpoints [EndpointsMap] <p>Map containing the Elasticsearch domain endpoints used to submit index and search requests. Example <code>key, value</code>: <code>'vpc','vpc-endpoint-h2dsd34efgyghrtguk5gt6j2foh4.us-east-1.es.amazonaws.com'</code>.</p>
-- * EncryptionAtRestOptions [EncryptionAtRestOptions] <p> Specifies the status of the <code>EncryptionAtRestOptions</code>.</p>
-- * ElasticsearchVersion [ElasticsearchVersionString] 
-- * ARN [ARN] <p>The Amazon resource name (ARN) of an Elasticsearch domain. See <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/index.html?Using_Identifiers.html" target="_blank">Identifiers for IAM Entities</a> in <i>Using AWS Identity and Access Management</i> for more information.</p>
-- * LogPublishingOptions [LogPublishingOptions] <p>Log publishing options for the given domain.</p>
-- Required key: DomainId
-- Required key: DomainName
-- Required key: ARN
-- Required key: ElasticsearchClusterConfig
-- @return ElasticsearchDomainStatus structure as a key-value pair table
function M.ElasticsearchDomainStatus(args)
	assert(args, "You must provide an argument table when creating ElasticsearchDomainStatus")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ElasticsearchClusterConfig"] = args["ElasticsearchClusterConfig"],
		["Endpoint"] = args["Endpoint"],
		["UpgradeProcessing"] = args["UpgradeProcessing"],
		["NodeToNodeEncryptionOptions"] = args["NodeToNodeEncryptionOptions"],
		["VPCOptions"] = args["VPCOptions"],
		["Created"] = args["Created"],
		["Deleted"] = args["Deleted"],
		["DomainName"] = args["DomainName"],
		["EBSOptions"] = args["EBSOptions"],
		["ServiceSoftwareOptions"] = args["ServiceSoftwareOptions"],
		["CognitoOptions"] = args["CognitoOptions"],
		["SnapshotOptions"] = args["SnapshotOptions"],
		["DomainId"] = args["DomainId"],
		["AccessPolicies"] = args["AccessPolicies"],
		["Processing"] = args["Processing"],
		["AdvancedOptions"] = args["AdvancedOptions"],
		["Endpoints"] = args["Endpoints"],
		["EncryptionAtRestOptions"] = args["EncryptionAtRestOptions"],
		["ElasticsearchVersion"] = args["ElasticsearchVersion"],
		["ARN"] = args["ARN"],
		["LogPublishingOptions"] = args["LogPublishingOptions"],
	}
	asserts.AssertElasticsearchDomainStatus(all_args)
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
-- * Status [OptionStatus] <p>The status of the access policy for the Elasticsearch domain. See <code>OptionStatus</code> for the status information that's included. </p>
-- * Options [PolicyDocument] <p>The access policy configured for the Elasticsearch domain. Access policies may be resource-based, IP-based, or IAM-based. See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-access-policies" target="_blank"> Configuring Access Policies</a>for more information.</p>
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AutomatedSnapshotStartHour [IntegerClass] <p>Specifies the time, in UTC format, when the service takes a daily automated snapshot of the specified Elasticsearch domain. Default value is <code>0</code> hours.</p>
-- @return SnapshotOptions structure as a key-value pair table
function M.SnapshotOptions(args)
	assert(args, "You must provide an argument table when creating SnapshotOptions")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AutomatedSnapshotStartHour"] = args["AutomatedSnapshotStartHour"],
	}
	asserts.AssertSnapshotOptions(all_args)
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
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Value"] then asserts.AssertTagValue(struct["Value"]) end
	if struct["Key"] then asserts.AssertTagKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.Tag[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- <p>Specifies a key value pair for a resource tag.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [TagValue] <p>Specifies the <code>TagValue</code>, the value assigned to the corresponding tag key. Tag values can be null and do not have to be unique in a tag set. For example, you can have a key value pair in a tag set of <code>project : Trinity</code> and <code>cost-center : Trinity</code></p>
-- * Key [TagKey] <p>Specifies the <code>TagKey</code>, the name of the tag. Tag keys must be unique for the Elasticsearch domain to which they are attached.</p>
-- Required key: Key
-- Required key: Value
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [OptionStatus] <p> Specifies the status of the EBS options for the specified Elasticsearch domain.</p>
-- * Options [EBSOptions] <p> Specifies the EBS options for the specified Elasticsearch domain.</p>
-- Required key: Options
-- Required key: Status
-- @return EBSOptionsStatus structure as a key-value pair table
function M.EBSOptionsStatus(args)
	assert(args, "You must provide an argument table when creating EBSOptionsStatus")
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
	asserts.AssertEBSOptionsStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CancelElasticsearchServiceSoftwareUpdateResponse = { ["ServiceSoftwareOptions"] = true, nil }

function asserts.AssertCancelElasticsearchServiceSoftwareUpdateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelElasticsearchServiceSoftwareUpdateResponse to be of type 'table'")
	if struct["ServiceSoftwareOptions"] then asserts.AssertServiceSoftwareOptions(struct["ServiceSoftwareOptions"]) end
	for k,_ in pairs(struct) do
		assert(keys.CancelElasticsearchServiceSoftwareUpdateResponse[k], "CancelElasticsearchServiceSoftwareUpdateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelElasticsearchServiceSoftwareUpdateResponse
-- <p>The result of a <code>CancelElasticsearchServiceSoftwareUpdate</code> operation. Contains the status of the update.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ServiceSoftwareOptions [ServiceSoftwareOptions] <p>The current status of the Elasticsearch service software update.</p>
-- @return CancelElasticsearchServiceSoftwareUpdateResponse structure as a key-value pair table
function M.CancelElasticsearchServiceSoftwareUpdateResponse(args)
	assert(args, "You must provide an argument table when creating CancelElasticsearchServiceSoftwareUpdateResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ServiceSoftwareOptions"] = args["ServiceSoftwareOptions"],
	}
	asserts.AssertCancelElasticsearchServiceSoftwareUpdateResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] 
-- * MaxResults [MaxResults] <p> Set this value to limit the number of results returned. Value provided must be greater than 10 else it wont be honored. </p>
-- @return ListElasticsearchVersionsRequest structure as a key-value pair table
function M.ListElasticsearchVersionsRequest(args)
	assert(args, "You must provide an argument table when creating ListElasticsearchVersionsRequest")
    local query_args = { 
        ["nextToken"] = args["NextToken"],
        ["maxResults"] = args["MaxResults"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListElasticsearchVersionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartElasticsearchServiceSoftwareUpdateResponse = { ["ServiceSoftwareOptions"] = true, nil }

function asserts.AssertStartElasticsearchServiceSoftwareUpdateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartElasticsearchServiceSoftwareUpdateResponse to be of type 'table'")
	if struct["ServiceSoftwareOptions"] then asserts.AssertServiceSoftwareOptions(struct["ServiceSoftwareOptions"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartElasticsearchServiceSoftwareUpdateResponse[k], "StartElasticsearchServiceSoftwareUpdateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartElasticsearchServiceSoftwareUpdateResponse
-- <p>The result of a <code>StartElasticsearchServiceSoftwareUpdate</code> operation. Contains the status of the update.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ServiceSoftwareOptions [ServiceSoftwareOptions] <p>The current status of the Elasticsearch service software update.</p>
-- @return StartElasticsearchServiceSoftwareUpdateResponse structure as a key-value pair table
function M.StartElasticsearchServiceSoftwareUpdateResponse(args)
	assert(args, "You must provide an argument table when creating StartElasticsearchServiceSoftwareUpdateResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ServiceSoftwareOptions"] = args["ServiceSoftwareOptions"],
	}
	asserts.AssertStartElasticsearchServiceSoftwareUpdateResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateElasticsearchDomainConfigRequest = { ["ElasticsearchClusterConfig"] = true, ["VPCOptions"] = true, ["DomainName"] = true, ["EBSOptions"] = true, ["SnapshotOptions"] = true, ["CognitoOptions"] = true, ["LogPublishingOptions"] = true, ["AdvancedOptions"] = true, ["AccessPolicies"] = true, nil }

function asserts.AssertUpdateElasticsearchDomainConfigRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateElasticsearchDomainConfigRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["ElasticsearchClusterConfig"] then asserts.AssertElasticsearchClusterConfig(struct["ElasticsearchClusterConfig"]) end
	if struct["VPCOptions"] then asserts.AssertVPCOptions(struct["VPCOptions"]) end
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	if struct["EBSOptions"] then asserts.AssertEBSOptions(struct["EBSOptions"]) end
	if struct["SnapshotOptions"] then asserts.AssertSnapshotOptions(struct["SnapshotOptions"]) end
	if struct["CognitoOptions"] then asserts.AssertCognitoOptions(struct["CognitoOptions"]) end
	if struct["LogPublishingOptions"] then asserts.AssertLogPublishingOptions(struct["LogPublishingOptions"]) end
	if struct["AdvancedOptions"] then asserts.AssertAdvancedOptions(struct["AdvancedOptions"]) end
	if struct["AccessPolicies"] then asserts.AssertPolicyDocument(struct["AccessPolicies"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateElasticsearchDomainConfigRequest[k], "UpdateElasticsearchDomainConfigRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateElasticsearchDomainConfigRequest
-- <p>Container for the parameters to the <code><a>UpdateElasticsearchDomain</a></code> operation. Specifies the type and number of instances in the domain cluster.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ElasticsearchClusterConfig [ElasticsearchClusterConfig] <p>The type and number of instances to instantiate for the domain cluster.</p>
-- * VPCOptions [VPCOptions] <p>Options to specify the subnets and security groups for VPC endpoint. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html#es-creating-vpc" target="_blank">Creating a VPC</a> in <i>VPC Endpoints for Amazon Elasticsearch Service Domains</i></p>
-- * DomainName [DomainName] <p>The name of the Elasticsearch domain that you are updating. </p>
-- * EBSOptions [EBSOptions] <p>Specify the type and size of the EBS volume that you want to use. </p>
-- * SnapshotOptions [SnapshotOptions] <p>Option to set the time, in UTC format, for the daily automated snapshot. Default value is <code>0</code> hours. </p>
-- * CognitoOptions [CognitoOptions] <p>Options to specify the Cognito user and identity pools for Kibana authentication. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html" target="_blank">Amazon Cognito Authentication for Kibana</a>.</p>
-- * LogPublishingOptions [LogPublishingOptions] <p>Map of <code>LogType</code> and <code>LogPublishingOption</code>, each containing options to publish a given type of Elasticsearch log.</p>
-- * AdvancedOptions [AdvancedOptions] <p>Modifies the advanced option to allow references to indices in an HTTP request body. Must be <code>false</code> when configuring access to individual sub-resources. By default, the value is <code>true</code>. See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options" target="_blank">Configuration Advanced Options</a> for more information.</p>
-- * AccessPolicies [PolicyDocument] <p>IAM access policy as a JSON-formatted string.</p>
-- Required key: DomainName
-- @return UpdateElasticsearchDomainConfigRequest structure as a key-value pair table
function M.UpdateElasticsearchDomainConfigRequest(args)
	assert(args, "You must provide an argument table when creating UpdateElasticsearchDomainConfigRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{DomainName}"] = args["DomainName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ElasticsearchClusterConfig"] = args["ElasticsearchClusterConfig"],
		["VPCOptions"] = args["VPCOptions"],
		["DomainName"] = args["DomainName"],
		["EBSOptions"] = args["EBSOptions"],
		["SnapshotOptions"] = args["SnapshotOptions"],
		["CognitoOptions"] = args["CognitoOptions"],
		["LogPublishingOptions"] = args["LogPublishingOptions"],
		["AdvancedOptions"] = args["AdvancedOptions"],
		["AccessPolicies"] = args["AccessPolicies"],
	}
	asserts.AssertUpdateElasticsearchDomainConfigRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NodeToNodeEncryptionOptionsStatus = { ["Status"] = true, ["Options"] = true, nil }

function asserts.AssertNodeToNodeEncryptionOptionsStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NodeToNodeEncryptionOptionsStatus to be of type 'table'")
	assert(struct["Options"], "Expected key Options to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["Status"] then asserts.AssertOptionStatus(struct["Status"]) end
	if struct["Options"] then asserts.AssertNodeToNodeEncryptionOptions(struct["Options"]) end
	for k,_ in pairs(struct) do
		assert(keys.NodeToNodeEncryptionOptionsStatus[k], "NodeToNodeEncryptionOptionsStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NodeToNodeEncryptionOptionsStatus
-- <p>Status of the node-to-node encryption options for the specified Elasticsearch domain.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [OptionStatus] <p>Specifies the status of the node-to-node encryption options for the specified Elasticsearch domain.</p>
-- * Options [NodeToNodeEncryptionOptions] <p>Specifies the node-to-node encryption options for the specified Elasticsearch domain.</p>
-- Required key: Options
-- Required key: Status
-- @return NodeToNodeEncryptionOptionsStatus structure as a key-value pair table
function M.NodeToNodeEncryptionOptionsStatus(args)
	assert(args, "You must provide an argument table when creating NodeToNodeEncryptionOptionsStatus")
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
	asserts.AssertNodeToNodeEncryptionOptionsStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DomainStatus [ElasticsearchDomainStatus] <p>The current status of the Elasticsearch domain.</p>
-- Required key: DomainStatus
-- @return DescribeElasticsearchDomainResponse structure as a key-value pair table
function M.DescribeElasticsearchDomainResponse(args)
	assert(args, "You must provide an argument table when creating DescribeElasticsearchDomainResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DomainStatus"] = args["DomainStatus"],
	}
	asserts.AssertDescribeElasticsearchDomainResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LogPublishingOption = { ["CloudWatchLogsLogGroupArn"] = true, ["Enabled"] = true, nil }

function asserts.AssertLogPublishingOption(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LogPublishingOption to be of type 'table'")
	if struct["CloudWatchLogsLogGroupArn"] then asserts.AssertCloudWatchLogsLogGroupArn(struct["CloudWatchLogsLogGroupArn"]) end
	if struct["Enabled"] then asserts.AssertBoolean(struct["Enabled"]) end
	for k,_ in pairs(struct) do
		assert(keys.LogPublishingOption[k], "LogPublishingOption contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LogPublishingOption
-- <p>Log Publishing option that is set for given domain. <br/>Attributes and their details: <ul> <li>CloudWatchLogsLogGroupArn: ARN of the Cloudwatch log group to which log needs to be published.</li> <li>Enabled: Whether the log publishing for given log type is enabled or not</li> </ul> </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CloudWatchLogsLogGroupArn [CloudWatchLogsLogGroupArn] 
-- * Enabled [Boolean] <p> Specifies whether given log publishing option is enabled or not.</p>
-- @return LogPublishingOption structure as a key-value pair table
function M.LogPublishingOption(args)
	assert(args, "You must provide an argument table when creating LogPublishingOption")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CloudWatchLogsLogGroupArn"] = args["CloudWatchLogsLogGroupArn"],
		["Enabled"] = args["Enabled"],
	}
	asserts.AssertLogPublishingOption(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DomainConfig [ElasticsearchDomainConfig] <p>The configuration information of the domain requested in the <code>DescribeElasticsearchDomainConfig</code> request.</p>
-- Required key: DomainConfig
-- @return DescribeElasticsearchDomainConfigResponse structure as a key-value pair table
function M.DescribeElasticsearchDomainConfigResponse(args)
	assert(args, "You must provide an argument table when creating DescribeElasticsearchDomainConfigResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DomainConfig"] = args["DomainConfig"],
	}
	asserts.AssertDescribeElasticsearchDomainConfigResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CancelElasticsearchServiceSoftwareUpdateRequest = { ["DomainName"] = true, nil }

function asserts.AssertCancelElasticsearchServiceSoftwareUpdateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelElasticsearchServiceSoftwareUpdateRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CancelElasticsearchServiceSoftwareUpdateRequest[k], "CancelElasticsearchServiceSoftwareUpdateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelElasticsearchServiceSoftwareUpdateRequest
-- <p>Container for the parameters to the <code><a>CancelElasticsearchServiceSoftwareUpdate</a></code> operation. Specifies the name of the Elasticsearch domain that you wish to cancel a service software update on.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DomainName [DomainName] <p>The name of the domain that you want to stop the latest service software update on.</p>
-- Required key: DomainName
-- @return CancelElasticsearchServiceSoftwareUpdateRequest structure as a key-value pair table
function M.CancelElasticsearchServiceSoftwareUpdateRequest(args)
	assert(args, "You must provide an argument table when creating CancelElasticsearchServiceSoftwareUpdateRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertCancelElasticsearchServiceSoftwareUpdateRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.VPCOptions = { ["SubnetIds"] = true, ["SecurityGroupIds"] = true, nil }

function asserts.AssertVPCOptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VPCOptions to be of type 'table'")
	if struct["SubnetIds"] then asserts.AssertStringList(struct["SubnetIds"]) end
	if struct["SecurityGroupIds"] then asserts.AssertStringList(struct["SecurityGroupIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.VPCOptions[k], "VPCOptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VPCOptions
-- <p>Options to specify the subnets and security groups for VPC endpoint. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html" target="_blank"> VPC Endpoints for Amazon Elasticsearch Service Domains</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SubnetIds [StringList] <p>Specifies the subnets for VPC endpoint.</p>
-- * SecurityGroupIds [StringList] <p>Specifies the security groups for VPC endpoint.</p>
-- @return VPCOptions structure as a key-value pair table
function M.VPCOptions(args)
	assert(args, "You must provide an argument table when creating VPCOptions")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SubnetIds"] = args["SubnetIds"],
		["SecurityGroupIds"] = args["SecurityGroupIds"],
	}
	asserts.AssertVPCOptions(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RecurringCharge = { ["RecurringChargeAmount"] = true, ["RecurringChargeFrequency"] = true, nil }

function asserts.AssertRecurringCharge(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RecurringCharge to be of type 'table'")
	if struct["RecurringChargeAmount"] then asserts.AssertDouble(struct["RecurringChargeAmount"]) end
	if struct["RecurringChargeFrequency"] then asserts.AssertString(struct["RecurringChargeFrequency"]) end
	for k,_ in pairs(struct) do
		assert(keys.RecurringCharge[k], "RecurringCharge contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RecurringCharge
-- <p>Contains the specific price and frequency of a recurring charges for a reserved Elasticsearch instance, or for a reserved Elasticsearch instance offering.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RecurringChargeAmount [Double] <p>The monetary amount of the recurring charge.</p>
-- * RecurringChargeFrequency [String] <p>The frequency of the recurring charge.</p>
-- @return RecurringCharge structure as a key-value pair table
function M.RecurringCharge(args)
	assert(args, "You must provide an argument table when creating RecurringCharge")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RecurringChargeAmount"] = args["RecurringChargeAmount"],
		["RecurringChargeFrequency"] = args["RecurringChargeFrequency"],
	}
	asserts.AssertRecurringCharge(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Iops [IntegerClass] <p>Specifies the IOPD for a Provisioned IOPS EBS volume (SSD).</p>
-- * VolumeSize [IntegerClass] <p> Integer to specify the size of an EBS volume.</p>
-- * VolumeType [VolumeType] <p> Specifies the volume type for EBS-based storage.</p>
-- * EBSEnabled [Boolean] <p>Specifies whether EBS-based storage is enabled.</p>
-- @return EBSOptions structure as a key-value pair table
function M.EBSOptions(args)
	assert(args, "You must provide an argument table when creating EBSOptions")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Iops"] = args["Iops"],
		["VolumeSize"] = args["VolumeSize"],
		["VolumeType"] = args["VolumeType"],
		["EBSEnabled"] = args["EBSEnabled"],
	}
	asserts.AssertEBSOptions(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [OptionStatus] <p> Specifies the status of the Elasticsearch version options for the specified Elasticsearch domain.</p>
-- * Options [ElasticsearchVersionString] <p> Specifies the Elasticsearch version for the specified Elasticsearch domain.</p>
-- Required key: Options
-- Required key: Status
-- @return ElasticsearchVersionStatus structure as a key-value pair table
function M.ElasticsearchVersionStatus(args)
	assert(args, "You must provide an argument table when creating ElasticsearchVersionStatus")
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
	asserts.AssertElasticsearchVersionStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LimitValues [LimitValueList] <p> Values for the <code> <a>StorageTypeLimit$LimitName</a> </code> . </p>
-- * LimitName [LimitName] <p> Name of storage limits that are applicable for given storage type. If <code> <a>StorageType</a> </code> is ebs, following storage options are applicable <ol> <li>MinimumVolumeSize</li> Minimum amount of volume size that is applicable for given storage type.It can be empty if it is not applicable. <li>MaximumVolumeSize</li> Maximum amount of volume size that is applicable for given storage type.It can be empty if it is not applicable. <li>MaximumIops</li> Maximum amount of Iops that is applicable for given storage type.It can be empty if it is not applicable. <li>MinimumIops</li> Minimum amount of Iops that is applicable for given storage type.It can be empty if it is not applicable. </ol> </p>
-- @return StorageTypeLimit structure as a key-value pair table
function M.StorageTypeLimit(args)
	assert(args, "You must provide an argument table when creating StorageTypeLimit")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LimitValues"] = args["LimitValues"],
		["LimitName"] = args["LimitName"],
	}
	asserts.AssertStorageTypeLimit(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ElasticsearchVersions [ElasticsearchVersionList] 
-- * NextToken [NextToken] 
-- @return ListElasticsearchVersionsResponse structure as a key-value pair table
function M.ListElasticsearchVersionsResponse(args)
	assert(args, "You must provide an argument table when creating ListElasticsearchVersionsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ElasticsearchVersions"] = args["ElasticsearchVersions"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListElasticsearchVersionsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [OptionStatus] <p> Specifies the status of the configuration for the specified Elasticsearch domain.</p>
-- * Options [ElasticsearchClusterConfig] <p> Specifies the cluster configuration for the specified Elasticsearch domain.</p>
-- Required key: Options
-- Required key: Status
-- @return ElasticsearchClusterConfigStatus structure as a key-value pair table
function M.ElasticsearchClusterConfigStatus(args)
	assert(args, "You must provide an argument table when creating ElasticsearchClusterConfigStatus")
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
	asserts.AssertElasticsearchClusterConfigStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LimitValues [LimitValueList] <p> Value for given <code> <a>AdditionalLimit$LimitName</a> </code> . </p>
-- * LimitName [LimitName] <p> Name of Additional Limit is specific to a given InstanceType and for each of it's <code> <a>InstanceRole</a> </code> etc. <br/> Attributes and their details: <br/> <ul> <li>MaximumNumberOfDataNodesSupported</li> This attribute will be present in Master node only to specify how much data nodes upto which given <code> <a>ESPartitionInstanceType</a> </code> can support as master node. <li>MaximumNumberOfDataNodesWithoutMasterNode</li> This attribute will be present in Data node only to specify how much data nodes of given <code> <a>ESPartitionInstanceType</a> </code> upto which you don't need any master nodes to govern them. </ul> </p>
-- @return AdditionalLimit structure as a key-value pair table
function M.AdditionalLimit(args)
	assert(args, "You must provide an argument table when creating AdditionalLimit")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LimitValues"] = args["LimitValues"],
		["LimitName"] = args["LimitName"],
	}
	asserts.AssertAdditionalLimit(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PurchaseReservedElasticsearchInstanceOfferingResponse = { ["ReservationName"] = true, ["ReservedElasticsearchInstanceId"] = true, nil }

function asserts.AssertPurchaseReservedElasticsearchInstanceOfferingResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PurchaseReservedElasticsearchInstanceOfferingResponse to be of type 'table'")
	if struct["ReservationName"] then asserts.AssertReservationToken(struct["ReservationName"]) end
	if struct["ReservedElasticsearchInstanceId"] then asserts.AssertGUID(struct["ReservedElasticsearchInstanceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.PurchaseReservedElasticsearchInstanceOfferingResponse[k], "PurchaseReservedElasticsearchInstanceOfferingResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PurchaseReservedElasticsearchInstanceOfferingResponse
-- <p>Represents the output of a <code>PurchaseReservedElasticsearchInstanceOffering</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReservationName [ReservationToken] <p>The customer-specified identifier used to track this reservation.</p>
-- * ReservedElasticsearchInstanceId [GUID] <p>Details of the reserved Elasticsearch instance which was purchased.</p>
-- @return PurchaseReservedElasticsearchInstanceOfferingResponse structure as a key-value pair table
function M.PurchaseReservedElasticsearchInstanceOfferingResponse(args)
	assert(args, "You must provide an argument table when creating PurchaseReservedElasticsearchInstanceOfferingResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReservationName"] = args["ReservationName"],
		["ReservedElasticsearchInstanceId"] = args["ReservedElasticsearchInstanceId"],
	}
	asserts.AssertPurchaseReservedElasticsearchInstanceOfferingResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StorageTypeName [StorageTypeName] 
-- * StorageTypeLimits [StorageTypeLimitList] <p>List of limits that are applicable for given storage type. </p>
-- * StorageSubTypeName [StorageSubTypeName] 
-- @return StorageType structure as a key-value pair table
function M.StorageType(args)
	assert(args, "You must provide an argument table when creating StorageType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StorageTypeName"] = args["StorageTypeName"],
		["StorageTypeLimits"] = args["StorageTypeLimits"],
		["StorageSubTypeName"] = args["StorageSubTypeName"],
	}
	asserts.AssertStorageType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeReservedElasticsearchInstanceOfferingsResponse = { ["NextToken"] = true, ["ReservedElasticsearchInstanceOfferings"] = true, nil }

function asserts.AssertDescribeReservedElasticsearchInstanceOfferingsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeReservedElasticsearchInstanceOfferingsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["ReservedElasticsearchInstanceOfferings"] then asserts.AssertReservedElasticsearchInstanceOfferingList(struct["ReservedElasticsearchInstanceOfferings"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeReservedElasticsearchInstanceOfferingsResponse[k], "DescribeReservedElasticsearchInstanceOfferingsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeReservedElasticsearchInstanceOfferingsResponse
-- <p>Container for results from <code>DescribeReservedElasticsearchInstanceOfferings</code></p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>Provides an identifier to allow retrieval of paginated results.</p>
-- * ReservedElasticsearchInstanceOfferings [ReservedElasticsearchInstanceOfferingList] <p>List of reserved Elasticsearch instance offerings</p>
-- @return DescribeReservedElasticsearchInstanceOfferingsResponse structure as a key-value pair table
function M.DescribeReservedElasticsearchInstanceOfferingsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeReservedElasticsearchInstanceOfferingsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["ReservedElasticsearchInstanceOfferings"] = args["ReservedElasticsearchInstanceOfferings"],
	}
	asserts.AssertDescribeReservedElasticsearchInstanceOfferingsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CognitoOptionsStatus = { ["Status"] = true, ["Options"] = true, nil }

function asserts.AssertCognitoOptionsStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CognitoOptionsStatus to be of type 'table'")
	assert(struct["Options"], "Expected key Options to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["Status"] then asserts.AssertOptionStatus(struct["Status"]) end
	if struct["Options"] then asserts.AssertCognitoOptions(struct["Options"]) end
	for k,_ in pairs(struct) do
		assert(keys.CognitoOptionsStatus[k], "CognitoOptionsStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CognitoOptionsStatus
-- <p>Status of the Cognito options for the specified Elasticsearch domain.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [OptionStatus] <p>Specifies the status of the Cognito options for the specified Elasticsearch domain.</p>
-- * Options [CognitoOptions] <p>Specifies the Cognito options for the specified Elasticsearch domain.</p>
-- Required key: Options
-- Required key: Status
-- @return CognitoOptionsStatus structure as a key-value pair table
function M.CognitoOptionsStatus(args)
	assert(args, "You must provide an argument table when creating CognitoOptionsStatus")
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
	asserts.AssertCognitoOptionsStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ServiceSoftwareOptions = { ["Description"] = true, ["Cancellable"] = true, ["UpdateAvailable"] = true, ["CurrentVersion"] = true, ["NewVersion"] = true, ["UpdateStatus"] = true, ["AutomatedUpdateDate"] = true, nil }

function asserts.AssertServiceSoftwareOptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceSoftwareOptions to be of type 'table'")
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	if struct["Cancellable"] then asserts.AssertBoolean(struct["Cancellable"]) end
	if struct["UpdateAvailable"] then asserts.AssertBoolean(struct["UpdateAvailable"]) end
	if struct["CurrentVersion"] then asserts.AssertString(struct["CurrentVersion"]) end
	if struct["NewVersion"] then asserts.AssertString(struct["NewVersion"]) end
	if struct["UpdateStatus"] then asserts.AssertDeploymentStatus(struct["UpdateStatus"]) end
	if struct["AutomatedUpdateDate"] then asserts.AssertDeploymentCloseDateTimeStamp(struct["AutomatedUpdateDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.ServiceSoftwareOptions[k], "ServiceSoftwareOptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceSoftwareOptions
-- <p>The current options of an Elasticsearch domain service software options.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Description [String] <p>The description of the <code>UpdateStatus</code>.</p>
-- * Cancellable [Boolean] <p><code>True</code> if you are able to cancel your service software version update. <code>False</code> if you are not able to cancel your service software version. </p>
-- * UpdateAvailable [Boolean] <p><code>True</code> if you are able to update you service software version. <code>False</code> if you are not able to update your service software version. </p>
-- * CurrentVersion [String] <p>The current service software version that is present on the domain.</p>
-- * NewVersion [String] <p>The new service software version if one is available.</p>
-- * UpdateStatus [DeploymentStatus] <p>The status of your service software update. This field can take the following values: <code>ELIGIBLE</code>, <code>PENDING_UPDATE</code>, <code>IN_PROGRESS</code>, <code>COMPLETED</code>, and <code>NOT_ELIGIBLE</code>.</p>
-- * AutomatedUpdateDate [DeploymentCloseDateTimeStamp] <p>Timestamp, in Epoch time, until which you can manually request a service software update. After this date, we automatically update your service software.</p>
-- @return ServiceSoftwareOptions structure as a key-value pair table
function M.ServiceSoftwareOptions(args)
	assert(args, "You must provide an argument table when creating ServiceSoftwareOptions")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Description"] = args["Description"],
		["Cancellable"] = args["Cancellable"],
		["UpdateAvailable"] = args["UpdateAvailable"],
		["CurrentVersion"] = args["CurrentVersion"],
		["NewVersion"] = args["NewVersion"],
		["UpdateStatus"] = args["UpdateStatus"],
		["AutomatedUpdateDate"] = args["AutomatedUpdateDate"],
	}
	asserts.AssertServiceSoftwareOptions(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceCountLimits [InstanceCountLimits] 
-- @return InstanceLimits structure as a key-value pair table
function M.InstanceLimits(args)
	assert(args, "You must provide an argument table when creating InstanceLimits")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceCountLimits"] = args["InstanceCountLimits"],
	}
	asserts.AssertInstanceLimits(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ElasticsearchVersion [ElasticsearchVersionString] <p> Version of Elasticsearch for which <code> <a>Limits</a> </code> are needed. </p>
-- * InstanceType [ESPartitionInstanceType] <p> The instance type for an Elasticsearch cluster for which Elasticsearch <code> <a>Limits</a> </code> are needed. </p>
-- * DomainName [DomainName] <p> DomainName represents the name of the Domain that we are trying to modify. This should be present only if we are querying for Elasticsearch <code> <a>Limits</a> </code> for existing domain. </p>
-- Required key: InstanceType
-- Required key: ElasticsearchVersion
-- @return DescribeElasticsearchInstanceTypeLimitsRequest structure as a key-value pair table
function M.DescribeElasticsearchInstanceTypeLimitsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeElasticsearchInstanceTypeLimitsRequest")
    local query_args = { 
        ["domainName"] = args["DomainName"],
    }
    local uri_args = { 
        ["{ElasticsearchVersion}"] = args["ElasticsearchVersion"],
        ["{InstanceType}"] = args["InstanceType"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ElasticsearchVersion"] = args["ElasticsearchVersion"],
		["InstanceType"] = args["InstanceType"],
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertDescribeElasticsearchInstanceTypeLimitsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeReservedElasticsearchInstancesRequest = { ["NextToken"] = true, ["ReservedElasticsearchInstanceId"] = true, ["MaxResults"] = true, nil }

function asserts.AssertDescribeReservedElasticsearchInstancesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeReservedElasticsearchInstancesRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["ReservedElasticsearchInstanceId"] then asserts.AssertGUID(struct["ReservedElasticsearchInstanceId"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeReservedElasticsearchInstancesRequest[k], "DescribeReservedElasticsearchInstancesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeReservedElasticsearchInstancesRequest
-- <p>Container for parameters to <code>DescribeReservedElasticsearchInstances</code></p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>NextToken should be sent in case if earlier API call produced result containing NextToken. It is used for pagination.</p>
-- * ReservedElasticsearchInstanceId [GUID] <p>The reserved instance identifier filter value. Use this parameter to show only the reservation that matches the specified reserved Elasticsearch instance ID.</p>
-- * MaxResults [MaxResults] <p>Set this value to limit the number of results returned. If not specified, defaults to 100.</p>
-- @return DescribeReservedElasticsearchInstancesRequest structure as a key-value pair table
function M.DescribeReservedElasticsearchInstancesRequest(args)
	assert(args, "You must provide an argument table when creating DescribeReservedElasticsearchInstancesRequest")
    local query_args = { 
        ["nextToken"] = args["NextToken"],
        ["reservationId"] = args["ReservedElasticsearchInstanceId"],
        ["maxResults"] = args["MaxResults"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["ReservedElasticsearchInstanceId"] = args["ReservedElasticsearchInstanceId"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertDescribeReservedElasticsearchInstancesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpgradeElasticsearchDomainRequest = { ["PerformCheckOnly"] = true, ["TargetVersion"] = true, ["DomainName"] = true, nil }

function asserts.AssertUpgradeElasticsearchDomainRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpgradeElasticsearchDomainRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["TargetVersion"], "Expected key TargetVersion to exist in table")
	if struct["PerformCheckOnly"] then asserts.AssertBoolean(struct["PerformCheckOnly"]) end
	if struct["TargetVersion"] then asserts.AssertElasticsearchVersionString(struct["TargetVersion"]) end
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpgradeElasticsearchDomainRequest[k], "UpgradeElasticsearchDomainRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpgradeElasticsearchDomainRequest
-- <p> Container for request parameters to <code> <a>UpgradeElasticsearchDomain</a> </code> operation. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PerformCheckOnly [Boolean] <p> This flag, when set to True, indicates that an Upgrade Eligibility Check needs to be performed. This will not actually perform the Upgrade. </p>
-- * TargetVersion [ElasticsearchVersionString] <p>The version of Elasticsearch that you intend to upgrade the domain to.</p>
-- * DomainName [DomainName] 
-- Required key: DomainName
-- Required key: TargetVersion
-- @return UpgradeElasticsearchDomainRequest structure as a key-value pair table
function M.UpgradeElasticsearchDomainRequest(args)
	assert(args, "You must provide an argument table when creating UpgradeElasticsearchDomainRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PerformCheckOnly"] = args["PerformCheckOnly"],
		["TargetVersion"] = args["TargetVersion"],
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertUpgradeElasticsearchDomainRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ElasticsearchInstanceTypes [ElasticsearchInstanceTypeList] <p> List of instance types supported by Amazon Elasticsearch service for given <code> <a>ElasticsearchVersion</a> </code> </p>
-- * NextToken [NextToken] <p>In case if there are more results available NextToken would be present, make further request to the same API with received NextToken to paginate remaining results. </p>
-- @return ListElasticsearchInstanceTypesResponse structure as a key-value pair table
function M.ListElasticsearchInstanceTypesResponse(args)
	assert(args, "You must provide an argument table when creating ListElasticsearchInstanceTypesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ElasticsearchInstanceTypes"] = args["ElasticsearchInstanceTypes"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListElasticsearchInstanceTypesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpgradeHistory = { ["StepsList"] = true, ["StartTimestamp"] = true, ["UpgradeName"] = true, ["UpgradeStatus"] = true, nil }

function asserts.AssertUpgradeHistory(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpgradeHistory to be of type 'table'")
	if struct["StepsList"] then asserts.AssertUpgradeStepsList(struct["StepsList"]) end
	if struct["StartTimestamp"] then asserts.AssertStartTimestamp(struct["StartTimestamp"]) end
	if struct["UpgradeName"] then asserts.AssertUpgradeName(struct["UpgradeName"]) end
	if struct["UpgradeStatus"] then asserts.AssertUpgradeStatus(struct["UpgradeStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpgradeHistory[k], "UpgradeHistory contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpgradeHistory
-- <p>History of the last 10 Upgrades and Upgrade Eligibility Checks.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StepsList [UpgradeStepsList] <p> A list of <code> <a>UpgradeStepItem</a> </code> s representing information about each step performed as pard of a specific Upgrade or Upgrade Eligibility Check. </p>
-- * StartTimestamp [StartTimestamp] <p>UTC Timestamp at which the Upgrade API call was made in "yyyy-MM-ddTHH:mm:ssZ" format.</p>
-- * UpgradeName [UpgradeName] <p>A string that describes the update briefly</p>
-- * UpgradeStatus [UpgradeStatus] <p> The overall status of the update. The status can take one of the following values: <ul> <li>In Progress</li> <li>Succeeded</li> <li>Succeeded with Issues</li> <li>Failed</li> </ul> </p>
-- @return UpgradeHistory structure as a key-value pair table
function M.UpgradeHistory(args)
	assert(args, "You must provide an argument table when creating UpgradeHistory")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StepsList"] = args["StepsList"],
		["StartTimestamp"] = args["StartTimestamp"],
		["UpgradeName"] = args["UpgradeName"],
		["UpgradeStatus"] = args["UpgradeStatus"],
	}
	asserts.AssertUpgradeHistory(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DomainName [DomainName] <p>The name of the Elasticsearch domain for which you want information.</p>
-- Required key: DomainName
-- @return DescribeElasticsearchDomainRequest structure as a key-value pair table
function M.DescribeElasticsearchDomainRequest(args)
	assert(args, "You must provide an argument table when creating DescribeElasticsearchDomainRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{DomainName}"] = args["DomainName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertDescribeElasticsearchDomainRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.VPCDerivedInfoStatus = { ["Status"] = true, ["Options"] = true, nil }

function asserts.AssertVPCDerivedInfoStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VPCDerivedInfoStatus to be of type 'table'")
	assert(struct["Options"], "Expected key Options to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["Status"] then asserts.AssertOptionStatus(struct["Status"]) end
	if struct["Options"] then asserts.AssertVPCDerivedInfo(struct["Options"]) end
	for k,_ in pairs(struct) do
		assert(keys.VPCDerivedInfoStatus[k], "VPCDerivedInfoStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VPCDerivedInfoStatus
-- <p> Status of the VPC options for the specified Elasticsearch domain.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [OptionStatus] <p> Specifies the status of the VPC options for the specified Elasticsearch domain.</p>
-- * Options [VPCDerivedInfo] <p> Specifies the VPC options for the specified Elasticsearch domain.</p>
-- Required key: Options
-- Required key: Status
-- @return VPCDerivedInfoStatus structure as a key-value pair table
function M.VPCDerivedInfoStatus(args)
	assert(args, "You must provide an argument table when creating VPCDerivedInfoStatus")
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
	asserts.AssertVPCDerivedInfoStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeReservedElasticsearchInstancesResponse = { ["ReservedElasticsearchInstances"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeReservedElasticsearchInstancesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeReservedElasticsearchInstancesResponse to be of type 'table'")
	if struct["ReservedElasticsearchInstances"] then asserts.AssertReservedElasticsearchInstanceList(struct["ReservedElasticsearchInstances"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeReservedElasticsearchInstancesResponse[k], "DescribeReservedElasticsearchInstancesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeReservedElasticsearchInstancesResponse
-- <p>Container for results from <code>DescribeReservedElasticsearchInstances</code></p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReservedElasticsearchInstances [ReservedElasticsearchInstanceList] <p>List of reserved Elasticsearch instances.</p>
-- * NextToken [String] <p>Provides an identifier to allow retrieval of paginated results.</p>
-- @return DescribeReservedElasticsearchInstancesResponse structure as a key-value pair table
function M.DescribeReservedElasticsearchInstancesResponse(args)
	assert(args, "You must provide an argument table when creating DescribeReservedElasticsearchInstancesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReservedElasticsearchInstances"] = args["ReservedElasticsearchInstances"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeReservedElasticsearchInstancesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceLimits [InstanceLimits] 
-- * StorageTypes [StorageTypeList] <p>StorageType represents the list of storage related types and attributes that are available for given InstanceType. </p>
-- * AdditionalLimits [AdditionalLimitList] <p> List of additional limits that are specific to a given InstanceType and for each of it's <code> <a>InstanceRole</a> </code> . </p>
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
		["InstanceLimits"] = args["InstanceLimits"],
		["StorageTypes"] = args["StorageTypes"],
		["AdditionalLimits"] = args["AdditionalLimits"],
	}
	asserts.AssertLimits(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReservedElasticsearchInstanceOffering = { ["FixedPrice"] = true, ["ReservedElasticsearchInstanceOfferingId"] = true, ["RecurringCharges"] = true, ["UsagePrice"] = true, ["PaymentOption"] = true, ["Duration"] = true, ["ElasticsearchInstanceType"] = true, ["CurrencyCode"] = true, nil }

function asserts.AssertReservedElasticsearchInstanceOffering(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservedElasticsearchInstanceOffering to be of type 'table'")
	if struct["FixedPrice"] then asserts.AssertDouble(struct["FixedPrice"]) end
	if struct["ReservedElasticsearchInstanceOfferingId"] then asserts.AssertGUID(struct["ReservedElasticsearchInstanceOfferingId"]) end
	if struct["RecurringCharges"] then asserts.AssertRecurringChargeList(struct["RecurringCharges"]) end
	if struct["UsagePrice"] then asserts.AssertDouble(struct["UsagePrice"]) end
	if struct["PaymentOption"] then asserts.AssertReservedElasticsearchInstancePaymentOption(struct["PaymentOption"]) end
	if struct["Duration"] then asserts.AssertInteger(struct["Duration"]) end
	if struct["ElasticsearchInstanceType"] then asserts.AssertESPartitionInstanceType(struct["ElasticsearchInstanceType"]) end
	if struct["CurrencyCode"] then asserts.AssertString(struct["CurrencyCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReservedElasticsearchInstanceOffering[k], "ReservedElasticsearchInstanceOffering contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservedElasticsearchInstanceOffering
-- <p>Details of a reserved Elasticsearch instance offering.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FixedPrice [Double] <p>The upfront fixed charge you will pay to purchase the specific reserved Elasticsearch instance offering. </p>
-- * ReservedElasticsearchInstanceOfferingId [GUID] <p>The Elasticsearch reserved instance offering identifier.</p>
-- * RecurringCharges [RecurringChargeList] <p>The charge to your account regardless of whether you are creating any domains using the instance offering.</p>
-- * UsagePrice [Double] <p>The rate you are charged for each hour the domain that is using the offering is running.</p>
-- * PaymentOption [ReservedElasticsearchInstancePaymentOption] <p>Payment option for the reserved Elasticsearch instance offering</p>
-- * Duration [Integer] <p>The duration, in seconds, for which the offering will reserve the Elasticsearch instance.</p>
-- * ElasticsearchInstanceType [ESPartitionInstanceType] <p>The Elasticsearch instance type offered by the reserved instance offering.</p>
-- * CurrencyCode [String] <p>The currency code for the reserved Elasticsearch instance offering.</p>
-- @return ReservedElasticsearchInstanceOffering structure as a key-value pair table
function M.ReservedElasticsearchInstanceOffering(args)
	assert(args, "You must provide an argument table when creating ReservedElasticsearchInstanceOffering")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FixedPrice"] = args["FixedPrice"],
		["ReservedElasticsearchInstanceOfferingId"] = args["ReservedElasticsearchInstanceOfferingId"],
		["RecurringCharges"] = args["RecurringCharges"],
		["UsagePrice"] = args["UsagePrice"],
		["PaymentOption"] = args["PaymentOption"],
		["Duration"] = args["Duration"],
		["ElasticsearchInstanceType"] = args["ElasticsearchInstanceType"],
		["CurrencyCode"] = args["CurrencyCode"],
	}
	asserts.AssertReservedElasticsearchInstanceOffering(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DedicatedMasterEnabled [Boolean] <p>A boolean value to indicate whether a dedicated master node is enabled. See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-managedomains.html#es-managedomains-dedicatedmasternodes" target="_blank">About Dedicated Master Nodes</a> for more information.</p>
-- * InstanceCount [IntegerClass] <p>The number of instances in the specified domain cluster.</p>
-- * ZoneAwarenessEnabled [Boolean] <p>A boolean value to indicate whether zone awareness is enabled. See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-managedomains.html#es-managedomains-zoneawareness" target="_blank">About Zone Awareness</a> for more information.</p>
-- * DedicatedMasterType [ESPartitionInstanceType] <p>The instance type for a dedicated master node.</p>
-- * InstanceType [ESPartitionInstanceType] <p>The instance type for an Elasticsearch cluster.</p>
-- * DedicatedMasterCount [IntegerClass] <p>Total number of dedicated master nodes, active and on standby, for the cluster.</p>
-- @return ElasticsearchClusterConfig structure as a key-value pair table
function M.ElasticsearchClusterConfig(args)
	assert(args, "You must provide an argument table when creating ElasticsearchClusterConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DedicatedMasterEnabled"] = args["DedicatedMasterEnabled"],
		["InstanceCount"] = args["InstanceCount"],
		["ZoneAwarenessEnabled"] = args["ZoneAwarenessEnabled"],
		["DedicatedMasterType"] = args["DedicatedMasterType"],
		["InstanceType"] = args["InstanceType"],
		["DedicatedMasterCount"] = args["DedicatedMasterCount"],
	}
	asserts.AssertElasticsearchClusterConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ElasticsearchVersion [ElasticsearchVersionString] <p>Version of Elasticsearch for which list of supported elasticsearch instance types are needed. </p>
-- * NextToken [NextToken] <p>NextToken should be sent in case if earlier API call produced result containing NextToken. It is used for pagination. </p>
-- * MaxResults [MaxResults] <p> Set this value to limit the number of results returned. Value provided must be greater than 30 else it wont be honored. </p>
-- * DomainName [DomainName] <p>DomainName represents the name of the Domain that we are trying to modify. This should be present only if we are querying for list of available Elasticsearch instance types when modifying existing domain. </p>
-- Required key: ElasticsearchVersion
-- @return ListElasticsearchInstanceTypesRequest structure as a key-value pair table
function M.ListElasticsearchInstanceTypesRequest(args)
	assert(args, "You must provide an argument table when creating ListElasticsearchInstanceTypesRequest")
    local query_args = { 
        ["nextToken"] = args["NextToken"],
        ["maxResults"] = args["MaxResults"],
        ["domainName"] = args["DomainName"],
    }
    local uri_args = { 
        ["{ElasticsearchVersion}"] = args["ElasticsearchVersion"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ElasticsearchVersion"] = args["ElasticsearchVersion"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertListElasticsearchInstanceTypesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [OptionStatus] <p>Specifies the status of a daily automated snapshot.</p>
-- * Options [SnapshotOptions] <p>Specifies the daily snapshot options specified for the Elasticsearch domain.</p>
-- Required key: Options
-- Required key: Status
-- @return SnapshotOptionsStatus structure as a key-value pair table
function M.SnapshotOptionsStatus(args)
	assert(args, "You must provide an argument table when creating SnapshotOptionsStatus")
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
	asserts.AssertSnapshotOptionsStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EncryptionAtRestOptions = { ["KmsKeyId"] = true, ["Enabled"] = true, nil }

function asserts.AssertEncryptionAtRestOptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EncryptionAtRestOptions to be of type 'table'")
	if struct["KmsKeyId"] then asserts.AssertKmsKeyId(struct["KmsKeyId"]) end
	if struct["Enabled"] then asserts.AssertBoolean(struct["Enabled"]) end
	for k,_ in pairs(struct) do
		assert(keys.EncryptionAtRestOptions[k], "EncryptionAtRestOptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EncryptionAtRestOptions
-- <p>Specifies the Encryption At Rest Options.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * KmsKeyId [KmsKeyId] <p> Specifies the KMS Key ID for Encryption At Rest options.</p>
-- * Enabled [Boolean] <p>Specifies the option to enable Encryption At Rest.</p>
-- @return EncryptionAtRestOptions structure as a key-value pair table
function M.EncryptionAtRestOptions(args)
	assert(args, "You must provide an argument table when creating EncryptionAtRestOptions")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["KmsKeyId"] = args["KmsKeyId"],
		["Enabled"] = args["Enabled"],
	}
	asserts.AssertEncryptionAtRestOptions(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetUpgradeHistoryResponse = { ["UpgradeHistories"] = true, ["NextToken"] = true, nil }

function asserts.AssertGetUpgradeHistoryResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetUpgradeHistoryResponse to be of type 'table'")
	if struct["UpgradeHistories"] then asserts.AssertUpgradeHistoryList(struct["UpgradeHistories"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetUpgradeHistoryResponse[k], "GetUpgradeHistoryResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetUpgradeHistoryResponse
-- <p> Container for response returned by <code> <a>GetUpgradeHistory</a> </code> operation. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UpgradeHistories [UpgradeHistoryList] <p> A list of <code> <a>UpgradeHistory</a> </code> objects corresponding to each Upgrade or Upgrade Eligibility Check performed on a domain returned as part of <code> <a>GetUpgradeHistoryResponse</a> </code> object. </p>
-- * NextToken [String] <p>Pagination token that needs to be supplied to the next call to get the next page of results</p>
-- @return GetUpgradeHistoryResponse structure as a key-value pair table
function M.GetUpgradeHistoryResponse(args)
	assert(args, "You must provide an argument table when creating GetUpgradeHistoryResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UpgradeHistories"] = args["UpgradeHistories"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertGetUpgradeHistoryResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LimitsByRole [LimitsByRole] 
-- @return DescribeElasticsearchInstanceTypeLimitsResponse structure as a key-value pair table
function M.DescribeElasticsearchInstanceTypeLimitsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeElasticsearchInstanceTypeLimitsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LimitsByRole"] = args["LimitsByRole"],
	}
	asserts.AssertDescribeElasticsearchInstanceTypeLimitsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CompatibleVersionsMap = { ["SourceVersion"] = true, ["TargetVersions"] = true, nil }

function asserts.AssertCompatibleVersionsMap(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CompatibleVersionsMap to be of type 'table'")
	if struct["SourceVersion"] then asserts.AssertElasticsearchVersionString(struct["SourceVersion"]) end
	if struct["TargetVersions"] then asserts.AssertElasticsearchVersionList(struct["TargetVersions"]) end
	for k,_ in pairs(struct) do
		assert(keys.CompatibleVersionsMap[k], "CompatibleVersionsMap contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CompatibleVersionsMap
-- <p> A map from an <code> <a>ElasticsearchVersion</a> </code> to a list of compatible <code> <a>ElasticsearchVersion</a> </code> s to which the domain can be upgraded. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SourceVersion [ElasticsearchVersionString] <p>The current version of Elasticsearch on which a domain is.</p>
-- * TargetVersions [ElasticsearchVersionList] 
-- @return CompatibleVersionsMap structure as a key-value pair table
function M.CompatibleVersionsMap(args)
	assert(args, "You must provide an argument table when creating CompatibleVersionsMap")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SourceVersion"] = args["SourceVersion"],
		["TargetVersions"] = args["TargetVersions"],
	}
	asserts.AssertCompatibleVersionsMap(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NodeToNodeEncryptionOptions = { ["Enabled"] = true, nil }

function asserts.AssertNodeToNodeEncryptionOptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NodeToNodeEncryptionOptions to be of type 'table'")
	if struct["Enabled"] then asserts.AssertBoolean(struct["Enabled"]) end
	for k,_ in pairs(struct) do
		assert(keys.NodeToNodeEncryptionOptions[k], "NodeToNodeEncryptionOptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NodeToNodeEncryptionOptions
-- <p>Specifies the node-to-node encryption options.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Enabled [Boolean] <p>Specify true to enable node-to-node encryption.</p>
-- @return NodeToNodeEncryptionOptions structure as a key-value pair table
function M.NodeToNodeEncryptionOptions(args)
	assert(args, "You must provide an argument table when creating NodeToNodeEncryptionOptions")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Enabled"] = args["Enabled"],
	}
	asserts.AssertNodeToNodeEncryptionOptions(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetCompatibleElasticsearchVersionsResponse = { ["CompatibleElasticsearchVersions"] = true, nil }

function asserts.AssertGetCompatibleElasticsearchVersionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCompatibleElasticsearchVersionsResponse to be of type 'table'")
	if struct["CompatibleElasticsearchVersions"] then asserts.AssertCompatibleElasticsearchVersionsList(struct["CompatibleElasticsearchVersions"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCompatibleElasticsearchVersionsResponse[k], "GetCompatibleElasticsearchVersionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCompatibleElasticsearchVersionsResponse
-- <p> Container for response returned by <code> <a>GetCompatibleElasticsearchVersions</a> </code> operation. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CompatibleElasticsearchVersions [CompatibleElasticsearchVersionsList] <p> A map of compatible Elasticsearch versions returned as part of the <code> <a>GetCompatibleElasticsearchVersions</a> </code> operation. </p>
-- @return GetCompatibleElasticsearchVersionsResponse structure as a key-value pair table
function M.GetCompatibleElasticsearchVersionsResponse(args)
	assert(args, "You must provide an argument table when creating GetCompatibleElasticsearchVersionsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CompatibleElasticsearchVersions"] = args["CompatibleElasticsearchVersions"],
	}
	asserts.AssertGetCompatibleElasticsearchVersionsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateElasticsearchDomainRequest = { ["ElasticsearchClusterConfig"] = true, ["ElasticsearchVersion"] = true, ["CognitoOptions"] = true, ["NodeToNodeEncryptionOptions"] = true, ["DomainName"] = true, ["EBSOptions"] = true, ["SnapshotOptions"] = true, ["VPCOptions"] = true, ["LogPublishingOptions"] = true, ["AdvancedOptions"] = true, ["EncryptionAtRestOptions"] = true, ["AccessPolicies"] = true, nil }

function asserts.AssertCreateElasticsearchDomainRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateElasticsearchDomainRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["ElasticsearchClusterConfig"] then asserts.AssertElasticsearchClusterConfig(struct["ElasticsearchClusterConfig"]) end
	if struct["ElasticsearchVersion"] then asserts.AssertElasticsearchVersionString(struct["ElasticsearchVersion"]) end
	if struct["CognitoOptions"] then asserts.AssertCognitoOptions(struct["CognitoOptions"]) end
	if struct["NodeToNodeEncryptionOptions"] then asserts.AssertNodeToNodeEncryptionOptions(struct["NodeToNodeEncryptionOptions"]) end
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	if struct["EBSOptions"] then asserts.AssertEBSOptions(struct["EBSOptions"]) end
	if struct["SnapshotOptions"] then asserts.AssertSnapshotOptions(struct["SnapshotOptions"]) end
	if struct["VPCOptions"] then asserts.AssertVPCOptions(struct["VPCOptions"]) end
	if struct["LogPublishingOptions"] then asserts.AssertLogPublishingOptions(struct["LogPublishingOptions"]) end
	if struct["AdvancedOptions"] then asserts.AssertAdvancedOptions(struct["AdvancedOptions"]) end
	if struct["EncryptionAtRestOptions"] then asserts.AssertEncryptionAtRestOptions(struct["EncryptionAtRestOptions"]) end
	if struct["AccessPolicies"] then asserts.AssertPolicyDocument(struct["AccessPolicies"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateElasticsearchDomainRequest[k], "CreateElasticsearchDomainRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateElasticsearchDomainRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ElasticsearchClusterConfig [ElasticsearchClusterConfig] <p>Configuration options for an Elasticsearch domain. Specifies the instance type and number of instances in the domain cluster. </p>
-- * ElasticsearchVersion [ElasticsearchVersionString] <p>String of format X.Y to specify version for the Elasticsearch domain eg. "1.5" or "2.3". For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomains" target="_blank">Creating Elasticsearch Domains</a> in the <i>Amazon Elasticsearch Service Developer Guide</i>.</p>
-- * CognitoOptions [CognitoOptions] <p>Options to specify the Cognito user and identity pools for Kibana authentication. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html" target="_blank">Amazon Cognito Authentication for Kibana</a>.</p>
-- * NodeToNodeEncryptionOptions [NodeToNodeEncryptionOptions] <p>Specifies the NodeToNodeEncryptionOptions.</p>
-- * DomainName [DomainName] <p>The name of the Elasticsearch domain that you are creating. Domain names are unique across the domains owned by an account within an AWS region. Domain names must start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
-- * EBSOptions [EBSOptions] <p>Options to enable, disable and specify the type and size of EBS storage volumes. </p>
-- * SnapshotOptions [SnapshotOptions] <p>Option to set time, in UTC format, of the daily automated snapshot. Default value is 0 hours. </p>
-- * VPCOptions [VPCOptions] <p>Options to specify the subnets and security groups for VPC endpoint. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html#es-creating-vpc" target="_blank">Creating a VPC</a> in <i>VPC Endpoints for Amazon Elasticsearch Service Domains</i></p>
-- * LogPublishingOptions [LogPublishingOptions] <p>Map of <code>LogType</code> and <code>LogPublishingOption</code>, each containing options to publish a given type of Elasticsearch log.</p>
-- * AdvancedOptions [AdvancedOptions] <p> Option to allow references to indices in an HTTP request body. Must be <code>false</code> when configuring access to individual sub-resources. By default, the value is <code>true</code>. See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options" target="_blank">Configuration Advanced Options</a> for more information.</p>
-- * EncryptionAtRestOptions [EncryptionAtRestOptions] <p>Specifies the Encryption At Rest Options.</p>
-- * AccessPolicies [PolicyDocument] <p> IAM access policy as a JSON-formatted string.</p>
-- Required key: DomainName
-- @return CreateElasticsearchDomainRequest structure as a key-value pair table
function M.CreateElasticsearchDomainRequest(args)
	assert(args, "You must provide an argument table when creating CreateElasticsearchDomainRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ElasticsearchClusterConfig"] = args["ElasticsearchClusterConfig"],
		["ElasticsearchVersion"] = args["ElasticsearchVersion"],
		["CognitoOptions"] = args["CognitoOptions"],
		["NodeToNodeEncryptionOptions"] = args["NodeToNodeEncryptionOptions"],
		["DomainName"] = args["DomainName"],
		["EBSOptions"] = args["EBSOptions"],
		["SnapshotOptions"] = args["SnapshotOptions"],
		["VPCOptions"] = args["VPCOptions"],
		["LogPublishingOptions"] = args["LogPublishingOptions"],
		["AdvancedOptions"] = args["AdvancedOptions"],
		["EncryptionAtRestOptions"] = args["EncryptionAtRestOptions"],
		["AccessPolicies"] = args["AccessPolicies"],
	}
	asserts.AssertCreateElasticsearchDomainRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DomainName [DomainName] <p> Specifies the <code>DomainName</code>.</p>
-- @return DomainInfo structure as a key-value pair table
function M.DomainInfo(args)
	assert(args, "You must provide an argument table when creating DomainInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertDomainInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DomainName [DomainName] <p>The name of the Elasticsearch domain that you want to permanently delete.</p>
-- Required key: DomainName
-- @return DeleteElasticsearchDomainRequest structure as a key-value pair table
function M.DeleteElasticsearchDomainRequest(args)
	assert(args, "You must provide an argument table when creating DeleteElasticsearchDomainRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{DomainName}"] = args["DomainName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertDeleteElasticsearchDomainRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetUpgradeHistoryRequest = { ["NextToken"] = true, ["MaxResults"] = true, ["DomainName"] = true, nil }

function asserts.AssertGetUpgradeHistoryRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetUpgradeHistoryRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetUpgradeHistoryRequest[k], "GetUpgradeHistoryRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetUpgradeHistoryRequest
-- <p> Container for request parameters to <code> <a>GetUpgradeHistory</a> </code> operation. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] 
-- * MaxResults [MaxResults] 
-- * DomainName [DomainName] 
-- Required key: DomainName
-- @return GetUpgradeHistoryRequest structure as a key-value pair table
function M.GetUpgradeHistoryRequest(args)
	assert(args, "You must provide an argument table when creating GetUpgradeHistoryRequest")
    local query_args = { 
        ["nextToken"] = args["NextToken"],
        ["maxResults"] = args["MaxResults"],
    }
    local uri_args = { 
        ["{DomainName}"] = args["DomainName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertGetUpgradeHistoryRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetCompatibleElasticsearchVersionsRequest = { ["DomainName"] = true, nil }

function asserts.AssertGetCompatibleElasticsearchVersionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCompatibleElasticsearchVersionsRequest to be of type 'table'")
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCompatibleElasticsearchVersionsRequest[k], "GetCompatibleElasticsearchVersionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCompatibleElasticsearchVersionsRequest
-- <p> Container for request parameters to <code> <a>GetCompatibleElasticsearchVersions</a> </code> operation. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DomainName [DomainName] 
-- @return GetCompatibleElasticsearchVersionsRequest structure as a key-value pair table
function M.GetCompatibleElasticsearchVersionsRequest(args)
	assert(args, "You must provide an argument table when creating GetCompatibleElasticsearchVersionsRequest")
    local query_args = { 
        ["domainName"] = args["DomainName"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertGetCompatibleElasticsearchVersionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ARN [ARN] <p> Specify the <code>ARN</code> for which you want to add the tags.</p>
-- * TagList [TagList] <p> List of <code>Tag</code> that need to be added for the Elasticsearch domain. </p>
-- Required key: ARN
-- Required key: TagList
-- @return AddTagsRequest structure as a key-value pair table
function M.AddTagsRequest(args)
	assert(args, "You must provide an argument table when creating AddTagsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ARN"] = args["ARN"],
		["TagList"] = args["TagList"],
	}
	asserts.AssertAddTagsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DomainStatus [ElasticsearchDomainStatus] <p>The status of the newly created Elasticsearch domain. </p>
-- @return CreateElasticsearchDomainResponse structure as a key-value pair table
function M.CreateElasticsearchDomainResponse(args)
	assert(args, "You must provide an argument table when creating CreateElasticsearchDomainResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DomainStatus"] = args["DomainStatus"],
	}
	asserts.AssertCreateElasticsearchDomainResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TagList [TagList] <p> List of <code>Tag</code> for the requested Elasticsearch domain.</p>
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
		["TagList"] = args["TagList"],
	}
	asserts.AssertListTagsResponse(all_args)
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
-- <p>Provides the current status of the entity.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PendingDeletion [Boolean] <p>Indicates whether the Elasticsearch domain is being deleted.</p>
-- * State [OptionState] <p>Provides the <code>OptionState</code> for the Elasticsearch domain.</p>
-- * CreationDate [UpdateTimestamp] <p>Timestamp which tells the creation date for the entity.</p>
-- * UpdateVersion [UIntValue] <p>Specifies the latest version for the entity.</p>
-- * UpdateDate [UpdateTimestamp] <p>Timestamp which tells the last updated time for the entity.</p>
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

keys.UpgradeStepItem = { ["UpgradeStep"] = true, ["ProgressPercent"] = true, ["Issues"] = true, ["UpgradeStepStatus"] = true, nil }

function asserts.AssertUpgradeStepItem(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpgradeStepItem to be of type 'table'")
	if struct["UpgradeStep"] then asserts.AssertUpgradeStep(struct["UpgradeStep"]) end
	if struct["ProgressPercent"] then asserts.AssertDouble(struct["ProgressPercent"]) end
	if struct["Issues"] then asserts.AssertIssues(struct["Issues"]) end
	if struct["UpgradeStepStatus"] then asserts.AssertUpgradeStatus(struct["UpgradeStepStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpgradeStepItem[k], "UpgradeStepItem contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpgradeStepItem
-- <p>Represents a single step of the Upgrade or Upgrade Eligibility Check workflow.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UpgradeStep [UpgradeStep] <p> Represents one of 3 steps that an Upgrade or Upgrade Eligibility Check does through: <ul> <li>PreUpgradeCheck</li> <li>Snapshot</li> <li>Upgrade</li> </ul> </p>
-- * ProgressPercent [Double] <p>The Floating point value representing progress percentage of a particular step.</p>
-- * Issues [Issues] <p>A list of strings containing detailed information about the errors encountered in a particular step.</p>
-- * UpgradeStepStatus [UpgradeStatus] <p> The status of a particular step during an upgrade. The status can take one of the following values: <ul> <li>In Progress</li> <li>Succeeded</li> <li>Succeeded with Issues</li> <li>Failed</li> </ul> </p>
-- @return UpgradeStepItem structure as a key-value pair table
function M.UpgradeStepItem(args)
	assert(args, "You must provide an argument table when creating UpgradeStepItem")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UpgradeStep"] = args["UpgradeStep"],
		["ProgressPercent"] = args["ProgressPercent"],
		["Issues"] = args["Issues"],
		["UpgradeStepStatus"] = args["UpgradeStepStatus"],
	}
	asserts.AssertUpgradeStepItem(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DomainName [DomainName] <p>The Elasticsearch domain that you want to get information about.</p>
-- Required key: DomainName
-- @return DescribeElasticsearchDomainConfigRequest structure as a key-value pair table
function M.DescribeElasticsearchDomainConfigRequest(args)
	assert(args, "You must provide an argument table when creating DescribeElasticsearchDomainConfigRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{DomainName}"] = args["DomainName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertDescribeElasticsearchDomainConfigRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MaximumInstanceCount [MaximumInstanceCount] 
-- * MinimumInstanceCount [MinimumInstanceCount] 
-- @return InstanceCountLimits structure as a key-value pair table
function M.InstanceCountLimits(args)
	assert(args, "You must provide an argument table when creating InstanceCountLimits")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MaximumInstanceCount"] = args["MaximumInstanceCount"],
		["MinimumInstanceCount"] = args["MinimumInstanceCount"],
	}
	asserts.AssertInstanceCountLimits(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LogPublishingOptionsStatus = { ["Status"] = true, ["Options"] = true, nil }

function asserts.AssertLogPublishingOptionsStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LogPublishingOptionsStatus to be of type 'table'")
	if struct["Status"] then asserts.AssertOptionStatus(struct["Status"]) end
	if struct["Options"] then asserts.AssertLogPublishingOptions(struct["Options"]) end
	for k,_ in pairs(struct) do
		assert(keys.LogPublishingOptionsStatus[k], "LogPublishingOptionsStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LogPublishingOptionsStatus
-- <p>The configured log publishing options for the domain and their current status.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [OptionStatus] <p>The status of the log publishing options for the Elasticsearch domain. See <code>OptionStatus</code> for the status information that's included. </p>
-- * Options [LogPublishingOptions] <p>The log publishing options configured for the Elasticsearch domain.</p>
-- @return LogPublishingOptionsStatus structure as a key-value pair table
function M.LogPublishingOptionsStatus(args)
	assert(args, "You must provide an argument table when creating LogPublishingOptionsStatus")
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
	asserts.AssertLogPublishingOptionsStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetUpgradeStatusResponse = { ["UpgradeStep"] = true, ["UpgradeName"] = true, ["StepStatus"] = true, nil }

function asserts.AssertGetUpgradeStatusResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetUpgradeStatusResponse to be of type 'table'")
	if struct["UpgradeStep"] then asserts.AssertUpgradeStep(struct["UpgradeStep"]) end
	if struct["UpgradeName"] then asserts.AssertUpgradeName(struct["UpgradeName"]) end
	if struct["StepStatus"] then asserts.AssertUpgradeStatus(struct["StepStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetUpgradeStatusResponse[k], "GetUpgradeStatusResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetUpgradeStatusResponse
-- <p> Container for response returned by <code> <a>GetUpgradeStatus</a> </code> operation. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UpgradeStep [UpgradeStep] <p> Represents one of 3 steps that an Upgrade or Upgrade Eligibility Check does through: <ul> <li>PreUpgradeCheck</li> <li>Snapshot</li> <li>Upgrade</li> </ul> </p>
-- * UpgradeName [UpgradeName] <p>A string that describes the update briefly</p>
-- * StepStatus [UpgradeStatus] <p> One of 4 statuses that a step can go through returned as part of the <code> <a>GetUpgradeStatusResponse</a> </code> object. The status can take one of the following values: <ul> <li>In Progress</li> <li>Succeeded</li> <li>Succeeded with Issues</li> <li>Failed</li> </ul> </p>
-- @return GetUpgradeStatusResponse structure as a key-value pair table
function M.GetUpgradeStatusResponse(args)
	assert(args, "You must provide an argument table when creating GetUpgradeStatusResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UpgradeStep"] = args["UpgradeStep"],
		["UpgradeName"] = args["UpgradeName"],
		["StepStatus"] = args["StepStatus"],
	}
	asserts.AssertGetUpgradeStatusResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DomainConfig [ElasticsearchDomainConfig] <p>The status of the updated Elasticsearch domain. </p>
-- Required key: DomainConfig
-- @return UpdateElasticsearchDomainConfigResponse structure as a key-value pair table
function M.UpdateElasticsearchDomainConfigResponse(args)
	assert(args, "You must provide an argument table when creating UpdateElasticsearchDomainConfigResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DomainConfig"] = args["DomainConfig"],
	}
	asserts.AssertUpdateElasticsearchDomainConfigResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.VPCDerivedInfo = { ["SubnetIds"] = true, ["VPCId"] = true, ["SecurityGroupIds"] = true, ["AvailabilityZones"] = true, nil }

function asserts.AssertVPCDerivedInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VPCDerivedInfo to be of type 'table'")
	if struct["SubnetIds"] then asserts.AssertStringList(struct["SubnetIds"]) end
	if struct["VPCId"] then asserts.AssertString(struct["VPCId"]) end
	if struct["SecurityGroupIds"] then asserts.AssertStringList(struct["SecurityGroupIds"]) end
	if struct["AvailabilityZones"] then asserts.AssertStringList(struct["AvailabilityZones"]) end
	for k,_ in pairs(struct) do
		assert(keys.VPCDerivedInfo[k], "VPCDerivedInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VPCDerivedInfo
-- <p>Options to specify the subnets and security groups for VPC endpoint. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html" target="_blank"> VPC Endpoints for Amazon Elasticsearch Service Domains</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SubnetIds [StringList] <p>Specifies the subnets for VPC endpoint.</p>
-- * VPCId [String] <p>The VPC Id for the Elasticsearch domain. Exists only if the domain was created with VPCOptions.</p>
-- * SecurityGroupIds [StringList] <p>Specifies the security groups for VPC endpoint.</p>
-- * AvailabilityZones [StringList] <p>The availability zones for the Elasticsearch domain. Exists only if the domain was created with VPCOptions.</p>
-- @return VPCDerivedInfo structure as a key-value pair table
function M.VPCDerivedInfo(args)
	assert(args, "You must provide an argument table when creating VPCDerivedInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SubnetIds"] = args["SubnetIds"],
		["VPCId"] = args["VPCId"],
		["SecurityGroupIds"] = args["SecurityGroupIds"],
		["AvailabilityZones"] = args["AvailabilityZones"],
	}
	asserts.AssertVPCDerivedInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EncryptionAtRestOptionsStatus = { ["Status"] = true, ["Options"] = true, nil }

function asserts.AssertEncryptionAtRestOptionsStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EncryptionAtRestOptionsStatus to be of type 'table'")
	assert(struct["Options"], "Expected key Options to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["Status"] then asserts.AssertOptionStatus(struct["Status"]) end
	if struct["Options"] then asserts.AssertEncryptionAtRestOptions(struct["Options"]) end
	for k,_ in pairs(struct) do
		assert(keys.EncryptionAtRestOptionsStatus[k], "EncryptionAtRestOptionsStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EncryptionAtRestOptionsStatus
-- <p> Status of the Encryption At Rest options for the specified Elasticsearch domain.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [OptionStatus] <p> Specifies the status of the Encryption At Rest options for the specified Elasticsearch domain.</p>
-- * Options [EncryptionAtRestOptions] <p> Specifies the Encryption At Rest options for the specified Elasticsearch domain.</p>
-- Required key: Options
-- Required key: Status
-- @return EncryptionAtRestOptionsStatus structure as a key-value pair table
function M.EncryptionAtRestOptionsStatus(args)
	assert(args, "You must provide an argument table when creating EncryptionAtRestOptionsStatus")
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
	asserts.AssertEncryptionAtRestOptionsStatus(all_args)
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

function asserts.AssertUpgradeName(str)
	assert(str)
	assert(type(str) == "string", "Expected UpgradeName to be of type 'string'")
end

--  
function M.UpgradeName(str)
	asserts.AssertUpgradeName(str)
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

function asserts.AssertKmsKeyId(str)
	assert(str)
	assert(type(str) == "string", "Expected KmsKeyId to be of type 'string'")
	assert(#str <= 500, "Expected string to be max 500 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.KmsKeyId(str)
	asserts.AssertKmsKeyId(str)
	return str
end

function asserts.AssertIdentityPoolId(str)
	assert(str)
	assert(type(str) == "string", "Expected IdentityPoolId to be of type 'string'")
	assert(#str <= 55, "Expected string to be max 55 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.IdentityPoolId(str)
	asserts.AssertIdentityPoolId(str)
	return str
end

function asserts.AssertLogType(str)
	assert(str)
	assert(type(str) == "string", "Expected LogType to be of type 'string'")
end

-- <p>Type of Log File, it can be one of the following: <ul> <li>INDEX_SLOW_LOGS: Index slow logs contain insert requests that took more time than configured index query log threshold to execute.</li> <li>SEARCH_SLOW_LOGS: Search slow logs contain search queries that took more time than configured search query log threshold to execute.</li> <li>ES_APPLICATION_LOGS: Elasticsearch application logs contain information about errors and warnings raised during the operation of the service and can be useful for troubleshooting.</li> </ul> </p>
function M.LogType(str)
	asserts.AssertLogType(str)
	return str
end

function asserts.AssertUpgradeStep(str)
	assert(str)
	assert(type(str) == "string", "Expected UpgradeStep to be of type 'string'")
end

--  
function M.UpgradeStep(str)
	asserts.AssertUpgradeStep(str)
	return str
end

function asserts.AssertUserPoolId(str)
	assert(str)
	assert(type(str) == "string", "Expected UserPoolId to be of type 'string'")
	assert(#str <= 55, "Expected string to be max 55 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.UserPoolId(str)
	asserts.AssertUserPoolId(str)
	return str
end

function asserts.AssertUpgradeStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected UpgradeStatus to be of type 'string'")
end

--  
function M.UpgradeStatus(str)
	asserts.AssertUpgradeStatus(str)
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

function asserts.AssertReservationToken(str)
	assert(str)
	assert(type(str) == "string", "Expected ReservationToken to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 5, "Expected string to be min 5 characters")
end

--  
function M.ReservationToken(str)
	asserts.AssertReservationToken(str)
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

function asserts.AssertRoleArn(str)
	assert(str)
	assert(type(str) == "string", "Expected RoleArn to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 20, "Expected string to be min 20 characters")
end

--  
function M.RoleArn(str)
	asserts.AssertRoleArn(str)
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

function asserts.AssertGUID(str)
	assert(str)
	assert(type(str) == "string", "Expected GUID to be of type 'string'")
end

--  
function M.GUID(str)
	asserts.AssertGUID(str)
	return str
end

function asserts.AssertIssue(str)
	assert(str)
	assert(type(str) == "string", "Expected Issue to be of type 'string'")
end

--  
function M.Issue(str)
	asserts.AssertIssue(str)
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

function asserts.AssertDeploymentStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected DeploymentStatus to be of type 'string'")
end

--  
function M.DeploymentStatus(str)
	asserts.AssertDeploymentStatus(str)
	return str
end

function asserts.AssertCloudWatchLogsLogGroupArn(str)
	assert(str)
	assert(type(str) == "string", "Expected CloudWatchLogsLogGroupArn to be of type 'string'")
end

-- <p>ARN of the Cloudwatch log group to which log needs to be published.</p>
function M.CloudWatchLogsLogGroupArn(str)
	asserts.AssertCloudWatchLogsLogGroupArn(str)
	return str
end

function asserts.AssertReservedElasticsearchInstancePaymentOption(str)
	assert(str)
	assert(type(str) == "string", "Expected ReservedElasticsearchInstancePaymentOption to be of type 'string'")
end

--  
function M.ReservedElasticsearchInstancePaymentOption(str)
	asserts.AssertReservedElasticsearchInstancePaymentOption(str)
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

function asserts.AssertDouble(double)
	assert(double)
	assert(type(double) == "number", "Expected Double to be of type 'number'")
end

function M.Double(double)
	asserts.AssertDouble(double)
	return double
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

function asserts.AssertInteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Integer to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Integer(integer)
	asserts.AssertInteger(integer)
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

function asserts.AssertBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Boolean to be of type 'boolean'")
end

function M.Boolean(boolean)
	asserts.AssertBoolean(boolean)
	return boolean
end

function asserts.AssertEndpointsMap(map)
	assert(map)
	assert(type(map) == "table", "Expected EndpointsMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertString(k)
		asserts.AssertServiceUrl(v)
	end
end

function M.EndpointsMap(map)
	asserts.AssertEndpointsMap(map)
	return map
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

function asserts.AssertLogPublishingOptions(map)
	assert(map)
	assert(type(map) == "table", "Expected LogPublishingOptions to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertLogType(k)
		asserts.AssertLogPublishingOption(v)
	end
end

function M.LogPublishingOptions(map)
	asserts.AssertLogPublishingOptions(map)
	return map
end

function asserts.AssertStartTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected StartTimestamp to be of type 'string'")
end

function M.StartTimestamp(timestamp)
	asserts.AssertStartTimestamp(timestamp)
	return timestamp
end

function asserts.AssertDeploymentCloseDateTimeStamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected DeploymentCloseDateTimeStamp to be of type 'string'")
end

function M.DeploymentCloseDateTimeStamp(timestamp)
	asserts.AssertDeploymentCloseDateTimeStamp(timestamp)
	return timestamp
end

function asserts.AssertUpdateTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected UpdateTimestamp to be of type 'string'")
end

function M.UpdateTimestamp(timestamp)
	asserts.AssertUpdateTimestamp(timestamp)
	return timestamp
end

function asserts.AssertUpgradeHistoryList(list)
	assert(list)
	assert(type(list) == "table", "Expected UpgradeHistoryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertUpgradeHistory(v)
	end
end

--  
-- List of UpgradeHistory objects
function M.UpgradeHistoryList(list)
	asserts.AssertUpgradeHistoryList(list)
	return list
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

function asserts.AssertCompatibleElasticsearchVersionsList(list)
	assert(list)
	assert(type(list) == "table", "Expected CompatibleElasticsearchVersionsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCompatibleVersionsMap(v)
	end
end

--  
-- List of CompatibleVersionsMap objects
function M.CompatibleElasticsearchVersionsList(list)
	asserts.AssertCompatibleElasticsearchVersionsList(list)
	return list
end

function asserts.AssertReservedElasticsearchInstanceList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReservedElasticsearchInstanceList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertReservedElasticsearchInstance(v)
	end
end

--  
-- List of ReservedElasticsearchInstance objects
function M.ReservedElasticsearchInstanceList(list)
	asserts.AssertReservedElasticsearchInstanceList(list)
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

function asserts.AssertReservedElasticsearchInstanceOfferingList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReservedElasticsearchInstanceOfferingList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertReservedElasticsearchInstanceOffering(v)
	end
end

--  
-- List of ReservedElasticsearchInstanceOffering objects
function M.ReservedElasticsearchInstanceOfferingList(list)
	asserts.AssertReservedElasticsearchInstanceOfferingList(list)
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

function asserts.AssertRecurringChargeList(list)
	assert(list)
	assert(type(list) == "table", "Expected RecurringChargeList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRecurringCharge(v)
	end
end

--  
-- List of RecurringCharge objects
function M.RecurringChargeList(list)
	asserts.AssertRecurringChargeList(list)
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

function asserts.AssertIssues(list)
	assert(list)
	assert(type(list) == "table", "Expected Issues to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertIssue(v)
	end
end

--  
-- List of Issue objects
function M.Issues(list)
	asserts.AssertIssues(list)
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

function asserts.AssertUpgradeStepsList(list)
	assert(list)
	assert(type(list) == "table", "Expected UpgradeStepsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertUpgradeStepItem(v)
	end
end

--  
-- List of UpgradeStepItem objects
function M.UpgradeStepsList(list)
	asserts.AssertUpgradeStepsList(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
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
	settings.signature_version = M.metadata.signature_version
	settings.uri = (config.scheme or "https") .. "://" .. settings.endpoint
end


--
-- OPERATIONS
--
--- Call DescribeElasticsearchInstanceTypeLimits asynchronously, invoking a callback when done
-- @param DescribeElasticsearchInstanceTypeLimitsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeElasticsearchInstanceTypeLimitsAsync(DescribeElasticsearchInstanceTypeLimitsRequest, cb)
	assert(DescribeElasticsearchInstanceTypeLimitsRequest, "You must provide a DescribeElasticsearchInstanceTypeLimitsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeElasticsearchInstanceTypeLimits",
	}
	for header,value in pairs(DescribeElasticsearchInstanceTypeLimitsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
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
-- @return error_type
-- @return error_message
function M.DescribeElasticsearchInstanceTypeLimitsSync(DescribeElasticsearchInstanceTypeLimitsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeElasticsearchInstanceTypeLimitsAsync(DescribeElasticsearchInstanceTypeLimitsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PurchaseReservedElasticsearchInstanceOffering asynchronously, invoking a callback when done
-- @param PurchaseReservedElasticsearchInstanceOfferingRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PurchaseReservedElasticsearchInstanceOfferingAsync(PurchaseReservedElasticsearchInstanceOfferingRequest, cb)
	assert(PurchaseReservedElasticsearchInstanceOfferingRequest, "You must provide a PurchaseReservedElasticsearchInstanceOfferingRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PurchaseReservedElasticsearchInstanceOffering",
	}
	for header,value in pairs(PurchaseReservedElasticsearchInstanceOfferingRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/2015-01-01/es/purchaseReservedInstanceOffering", PurchaseReservedElasticsearchInstanceOfferingRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PurchaseReservedElasticsearchInstanceOffering synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PurchaseReservedElasticsearchInstanceOfferingRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PurchaseReservedElasticsearchInstanceOfferingSync(PurchaseReservedElasticsearchInstanceOfferingRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PurchaseReservedElasticsearchInstanceOfferingAsync(PurchaseReservedElasticsearchInstanceOfferingRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeElasticsearchDomainConfig asynchronously, invoking a callback when done
-- @param DescribeElasticsearchDomainConfigRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeElasticsearchDomainConfigAsync(DescribeElasticsearchDomainConfigRequest, cb)
	assert(DescribeElasticsearchDomainConfigRequest, "You must provide a DescribeElasticsearchDomainConfigRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeElasticsearchDomainConfig",
	}
	for header,value in pairs(DescribeElasticsearchDomainConfigRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
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
-- @return error_type
-- @return error_message
function M.DescribeElasticsearchDomainConfigSync(DescribeElasticsearchDomainConfigRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeElasticsearchDomainConfigAsync(DescribeElasticsearchDomainConfigRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateElasticsearchDomain asynchronously, invoking a callback when done
-- @param CreateElasticsearchDomainRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateElasticsearchDomainAsync(CreateElasticsearchDomainRequest, cb)
	assert(CreateElasticsearchDomainRequest, "You must provide a CreateElasticsearchDomainRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateElasticsearchDomain",
	}
	for header,value in pairs(CreateElasticsearchDomainRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
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
-- @return error_type
-- @return error_message
function M.CreateElasticsearchDomainSync(CreateElasticsearchDomainRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateElasticsearchDomainAsync(CreateElasticsearchDomainRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListElasticsearchInstanceTypes asynchronously, invoking a callback when done
-- @param ListElasticsearchInstanceTypesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListElasticsearchInstanceTypesAsync(ListElasticsearchInstanceTypesRequest, cb)
	assert(ListElasticsearchInstanceTypesRequest, "You must provide a ListElasticsearchInstanceTypesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListElasticsearchInstanceTypes",
	}
	for header,value in pairs(ListElasticsearchInstanceTypesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
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
-- @return error_type
-- @return error_message
function M.ListElasticsearchInstanceTypesSync(ListElasticsearchInstanceTypesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListElasticsearchInstanceTypesAsync(ListElasticsearchInstanceTypesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetUpgradeStatus asynchronously, invoking a callback when done
-- @param GetUpgradeStatusRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetUpgradeStatusAsync(GetUpgradeStatusRequest, cb)
	assert(GetUpgradeStatusRequest, "You must provide a GetUpgradeStatusRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetUpgradeStatus",
	}
	for header,value in pairs(GetUpgradeStatusRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/2015-01-01/es/upgradeDomain/{DomainName}/status", GetUpgradeStatusRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetUpgradeStatus synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetUpgradeStatusRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetUpgradeStatusSync(GetUpgradeStatusRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetUpgradeStatusAsync(GetUpgradeStatusRequest, function(response, error_type, error_message)
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


	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/2015-01-01/domain", {}, headers, settings, cb)
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

--- Call StartElasticsearchServiceSoftwareUpdate asynchronously, invoking a callback when done
-- @param StartElasticsearchServiceSoftwareUpdateRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StartElasticsearchServiceSoftwareUpdateAsync(StartElasticsearchServiceSoftwareUpdateRequest, cb)
	assert(StartElasticsearchServiceSoftwareUpdateRequest, "You must provide a StartElasticsearchServiceSoftwareUpdateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".StartElasticsearchServiceSoftwareUpdate",
	}
	for header,value in pairs(StartElasticsearchServiceSoftwareUpdateRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/2015-01-01/es/serviceSoftwareUpdate/start", StartElasticsearchServiceSoftwareUpdateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartElasticsearchServiceSoftwareUpdate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartElasticsearchServiceSoftwareUpdateRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StartElasticsearchServiceSoftwareUpdateSync(StartElasticsearchServiceSoftwareUpdateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartElasticsearchServiceSoftwareUpdateAsync(StartElasticsearchServiceSoftwareUpdateRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteElasticsearchServiceRole asynchronously, invoking a callback when done
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteElasticsearchServiceRoleAsync(cb)
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteElasticsearchServiceRole",
	}


	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/2015-01-01/es/role", {}, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteElasticsearchServiceRole synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteElasticsearchServiceRoleSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteElasticsearchServiceRoleAsync(function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeElasticsearchDomains asynchronously, invoking a callback when done
-- @param DescribeElasticsearchDomainsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeElasticsearchDomainsAsync(DescribeElasticsearchDomainsRequest, cb)
	assert(DescribeElasticsearchDomainsRequest, "You must provide a DescribeElasticsearchDomainsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeElasticsearchDomains",
	}
	for header,value in pairs(DescribeElasticsearchDomainsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeElasticsearchDomainsSync(DescribeElasticsearchDomainsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeElasticsearchDomainsAsync(DescribeElasticsearchDomainsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateElasticsearchDomainConfig asynchronously, invoking a callback when done
-- @param UpdateElasticsearchDomainConfigRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateElasticsearchDomainConfigAsync(UpdateElasticsearchDomainConfigRequest, cb)
	assert(UpdateElasticsearchDomainConfigRequest, "You must provide a UpdateElasticsearchDomainConfigRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateElasticsearchDomainConfig",
	}
	for header,value in pairs(UpdateElasticsearchDomainConfigRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
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
-- @return error_type
-- @return error_message
function M.UpdateElasticsearchDomainConfigSync(UpdateElasticsearchDomainConfigRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateElasticsearchDomainConfigAsync(UpdateElasticsearchDomainConfigRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RemoveTags asynchronously, invoking a callback when done
-- @param RemoveTagsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RemoveTagsAsync(RemoveTagsRequest, cb)
	assert(RemoveTagsRequest, "You must provide a RemoveTagsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RemoveTags",
	}
	for header,value in pairs(RemoveTagsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
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
-- @return error_type
-- @return error_message
function M.RemoveTagsSync(RemoveTagsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RemoveTagsAsync(RemoveTagsRequest, function(response, error_type, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = ".ListTags",
	}
	for header,value in pairs(ListTagsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
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

--- Call CancelElasticsearchServiceSoftwareUpdate asynchronously, invoking a callback when done
-- @param CancelElasticsearchServiceSoftwareUpdateRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CancelElasticsearchServiceSoftwareUpdateAsync(CancelElasticsearchServiceSoftwareUpdateRequest, cb)
	assert(CancelElasticsearchServiceSoftwareUpdateRequest, "You must provide a CancelElasticsearchServiceSoftwareUpdateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CancelElasticsearchServiceSoftwareUpdate",
	}
	for header,value in pairs(CancelElasticsearchServiceSoftwareUpdateRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/2015-01-01/es/serviceSoftwareUpdate/cancel", CancelElasticsearchServiceSoftwareUpdateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CancelElasticsearchServiceSoftwareUpdate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CancelElasticsearchServiceSoftwareUpdateRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CancelElasticsearchServiceSoftwareUpdateSync(CancelElasticsearchServiceSoftwareUpdateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CancelElasticsearchServiceSoftwareUpdateAsync(CancelElasticsearchServiceSoftwareUpdateRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListElasticsearchVersions asynchronously, invoking a callback when done
-- @param ListElasticsearchVersionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListElasticsearchVersionsAsync(ListElasticsearchVersionsRequest, cb)
	assert(ListElasticsearchVersionsRequest, "You must provide a ListElasticsearchVersionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListElasticsearchVersions",
	}
	for header,value in pairs(ListElasticsearchVersionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
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
-- @return error_type
-- @return error_message
function M.ListElasticsearchVersionsSync(ListElasticsearchVersionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListElasticsearchVersionsAsync(ListElasticsearchVersionsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpgradeElasticsearchDomain asynchronously, invoking a callback when done
-- @param UpgradeElasticsearchDomainRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpgradeElasticsearchDomainAsync(UpgradeElasticsearchDomainRequest, cb)
	assert(UpgradeElasticsearchDomainRequest, "You must provide a UpgradeElasticsearchDomainRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpgradeElasticsearchDomain",
	}
	for header,value in pairs(UpgradeElasticsearchDomainRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/2015-01-01/es/upgradeDomain", UpgradeElasticsearchDomainRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpgradeElasticsearchDomain synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpgradeElasticsearchDomainRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpgradeElasticsearchDomainSync(UpgradeElasticsearchDomainRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpgradeElasticsearchDomainAsync(UpgradeElasticsearchDomainRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteElasticsearchDomain asynchronously, invoking a callback when done
-- @param DeleteElasticsearchDomainRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteElasticsearchDomainAsync(DeleteElasticsearchDomainRequest, cb)
	assert(DeleteElasticsearchDomainRequest, "You must provide a DeleteElasticsearchDomainRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteElasticsearchDomain",
	}
	for header,value in pairs(DeleteElasticsearchDomainRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
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
-- @return error_type
-- @return error_message
function M.DeleteElasticsearchDomainSync(DeleteElasticsearchDomainRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteElasticsearchDomainAsync(DeleteElasticsearchDomainRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AddTags asynchronously, invoking a callback when done
-- @param AddTagsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AddTagsAsync(AddTagsRequest, cb)
	assert(AddTagsRequest, "You must provide a AddTagsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".AddTags",
	}
	for header,value in pairs(AddTagsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
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
-- @return error_type
-- @return error_message
function M.AddTagsSync(AddTagsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddTagsAsync(AddTagsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetCompatibleElasticsearchVersions asynchronously, invoking a callback when done
-- @param GetCompatibleElasticsearchVersionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetCompatibleElasticsearchVersionsAsync(GetCompatibleElasticsearchVersionsRequest, cb)
	assert(GetCompatibleElasticsearchVersionsRequest, "You must provide a GetCompatibleElasticsearchVersionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetCompatibleElasticsearchVersions",
	}
	for header,value in pairs(GetCompatibleElasticsearchVersionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/2015-01-01/es/compatibleVersions", GetCompatibleElasticsearchVersionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetCompatibleElasticsearchVersions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetCompatibleElasticsearchVersionsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetCompatibleElasticsearchVersionsSync(GetCompatibleElasticsearchVersionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetCompatibleElasticsearchVersionsAsync(GetCompatibleElasticsearchVersionsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeElasticsearchDomain asynchronously, invoking a callback when done
-- @param DescribeElasticsearchDomainRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeElasticsearchDomainAsync(DescribeElasticsearchDomainRequest, cb)
	assert(DescribeElasticsearchDomainRequest, "You must provide a DescribeElasticsearchDomainRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeElasticsearchDomain",
	}
	for header,value in pairs(DescribeElasticsearchDomainRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
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
-- @return error_type
-- @return error_message
function M.DescribeElasticsearchDomainSync(DescribeElasticsearchDomainRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeElasticsearchDomainAsync(DescribeElasticsearchDomainRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeReservedElasticsearchInstanceOfferings asynchronously, invoking a callback when done
-- @param DescribeReservedElasticsearchInstanceOfferingsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeReservedElasticsearchInstanceOfferingsAsync(DescribeReservedElasticsearchInstanceOfferingsRequest, cb)
	assert(DescribeReservedElasticsearchInstanceOfferingsRequest, "You must provide a DescribeReservedElasticsearchInstanceOfferingsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeReservedElasticsearchInstanceOfferings",
	}
	for header,value in pairs(DescribeReservedElasticsearchInstanceOfferingsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/2015-01-01/es/reservedInstanceOfferings", DescribeReservedElasticsearchInstanceOfferingsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeReservedElasticsearchInstanceOfferings synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeReservedElasticsearchInstanceOfferingsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeReservedElasticsearchInstanceOfferingsSync(DescribeReservedElasticsearchInstanceOfferingsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeReservedElasticsearchInstanceOfferingsAsync(DescribeReservedElasticsearchInstanceOfferingsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetUpgradeHistory asynchronously, invoking a callback when done
-- @param GetUpgradeHistoryRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetUpgradeHistoryAsync(GetUpgradeHistoryRequest, cb)
	assert(GetUpgradeHistoryRequest, "You must provide a GetUpgradeHistoryRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetUpgradeHistory",
	}
	for header,value in pairs(GetUpgradeHistoryRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/2015-01-01/es/upgradeDomain/{DomainName}/history", GetUpgradeHistoryRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetUpgradeHistory synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetUpgradeHistoryRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetUpgradeHistorySync(GetUpgradeHistoryRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetUpgradeHistoryAsync(GetUpgradeHistoryRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeReservedElasticsearchInstances asynchronously, invoking a callback when done
-- @param DescribeReservedElasticsearchInstancesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeReservedElasticsearchInstancesAsync(DescribeReservedElasticsearchInstancesRequest, cb)
	assert(DescribeReservedElasticsearchInstancesRequest, "You must provide a DescribeReservedElasticsearchInstancesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeReservedElasticsearchInstances",
	}
	for header,value in pairs(DescribeReservedElasticsearchInstancesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/2015-01-01/es/reservedInstances", DescribeReservedElasticsearchInstancesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeReservedElasticsearchInstances synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeReservedElasticsearchInstancesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeReservedElasticsearchInstancesSync(DescribeReservedElasticsearchInstancesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeReservedElasticsearchInstancesAsync(DescribeReservedElasticsearchInstancesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
