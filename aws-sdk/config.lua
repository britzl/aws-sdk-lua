--- GENERATED CODE - DO NOT MODIFY
-- AWS Config (config-2014-11-12)

local M = {}

M.metadata = {
	api_version = "2014-11-12",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "config",
	service_abbreviation = "Config Service",
	service_full_name = "AWS Config",
	signature_version = "v4",
	target_prefix = "StarlingDoveService",
	timestamp_format = "",
	global_endpoint = "",
	uid = "config-2014-11-12",
}

local keys = {}
local asserts = {}

keys.PutConfigurationRecorderRequest = { ["ConfigurationRecorder"] = true, nil }

function asserts.AssertPutConfigurationRecorderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutConfigurationRecorderRequest to be of type 'table'")
	assert(struct["ConfigurationRecorder"], "Expected key ConfigurationRecorder to exist in table")
	if struct["ConfigurationRecorder"] then asserts.AssertConfigurationRecorder(struct["ConfigurationRecorder"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutConfigurationRecorderRequest[k], "PutConfigurationRecorderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutConfigurationRecorderRequest
-- <p>The input for the <a>PutConfigurationRecorder</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConfigurationRecorder [ConfigurationRecorder] <p>The configuration recorder object that records each configuration change made to the resources.</p>
-- Required key: ConfigurationRecorder
-- @return PutConfigurationRecorderRequest structure as a key-value pair table
function M.PutConfigurationRecorderRequest(args)
	assert(args, "You must provide an argument table when creating PutConfigurationRecorderRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConfigurationRecorder"] = args["ConfigurationRecorder"],
	}
	asserts.AssertPutConfigurationRecorderRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutAggregationAuthorizationRequest = { ["AuthorizedAccountId"] = true, ["AuthorizedAwsRegion"] = true, nil }

function asserts.AssertPutAggregationAuthorizationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutAggregationAuthorizationRequest to be of type 'table'")
	assert(struct["AuthorizedAccountId"], "Expected key AuthorizedAccountId to exist in table")
	assert(struct["AuthorizedAwsRegion"], "Expected key AuthorizedAwsRegion to exist in table")
	if struct["AuthorizedAccountId"] then asserts.AssertAccountId(struct["AuthorizedAccountId"]) end
	if struct["AuthorizedAwsRegion"] then asserts.AssertAwsRegion(struct["AuthorizedAwsRegion"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutAggregationAuthorizationRequest[k], "PutAggregationAuthorizationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutAggregationAuthorizationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AuthorizedAccountId [AccountId] <p>The 12-digit account ID of the account authorized to aggregate data.</p>
-- * AuthorizedAwsRegion [AwsRegion] <p>The region authorized to collect aggregated data.</p>
-- Required key: AuthorizedAccountId
-- Required key: AuthorizedAwsRegion
-- @return PutAggregationAuthorizationRequest structure as a key-value pair table
function M.PutAggregationAuthorizationRequest(args)
	assert(args, "You must provide an argument table when creating PutAggregationAuthorizationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AuthorizedAccountId"] = args["AuthorizedAccountId"],
		["AuthorizedAwsRegion"] = args["AuthorizedAwsRegion"],
	}
	asserts.AssertPutAggregationAuthorizationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeAggregateComplianceByConfigRulesResponse = { ["AggregateComplianceByConfigRules"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeAggregateComplianceByConfigRulesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAggregateComplianceByConfigRulesResponse to be of type 'table'")
	if struct["AggregateComplianceByConfigRules"] then asserts.AssertAggregateComplianceByConfigRuleList(struct["AggregateComplianceByConfigRules"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAggregateComplianceByConfigRulesResponse[k], "DescribeAggregateComplianceByConfigRulesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAggregateComplianceByConfigRulesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AggregateComplianceByConfigRules [AggregateComplianceByConfigRuleList] <p>Returns a list of AggregateComplianceByConfigRule object.</p>
-- * NextToken [NextToken] <p>The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.</p>
-- @return DescribeAggregateComplianceByConfigRulesResponse structure as a key-value pair table
function M.DescribeAggregateComplianceByConfigRulesResponse(args)
	assert(args, "You must provide an argument table when creating DescribeAggregateComplianceByConfigRulesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AggregateComplianceByConfigRules"] = args["AggregateComplianceByConfigRules"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeAggregateComplianceByConfigRulesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResourceKey = { ["resourceType"] = true, ["resourceId"] = true, nil }

function asserts.AssertResourceKey(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceKey to be of type 'table'")
	assert(struct["resourceType"], "Expected key resourceType to exist in table")
	assert(struct["resourceId"], "Expected key resourceId to exist in table")
	if struct["resourceType"] then asserts.AssertResourceType(struct["resourceType"]) end
	if struct["resourceId"] then asserts.AssertResourceId(struct["resourceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceKey[k], "ResourceKey contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceKey
-- <p>The details that identify a resource within AWS Config, including the resource type and resource ID.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resourceType [ResourceType] <p>The resource type.</p>
-- * resourceId [ResourceId] <p>The ID of the resource (for example., sg-xxxxxx). </p>
-- Required key: resourceType
-- Required key: resourceId
-- @return ResourceKey structure as a key-value pair table
function M.ResourceKey(args)
	assert(args, "You must provide an argument table when creating ResourceKey")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["resourceType"] = args["resourceType"],
		["resourceId"] = args["resourceId"],
	}
	asserts.AssertResourceKey(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchGetResourceConfigResponse = { ["unprocessedResourceKeys"] = true, ["baseConfigurationItems"] = true, nil }

function asserts.AssertBatchGetResourceConfigResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetResourceConfigResponse to be of type 'table'")
	if struct["unprocessedResourceKeys"] then asserts.AssertResourceKeys(struct["unprocessedResourceKeys"]) end
	if struct["baseConfigurationItems"] then asserts.AssertBaseConfigurationItems(struct["baseConfigurationItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchGetResourceConfigResponse[k], "BatchGetResourceConfigResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetResourceConfigResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * unprocessedResourceKeys [ResourceKeys] <p>A list of resource keys that were not processed with the current response. The unprocessesResourceKeys value is in the same form as ResourceKeys, so the value can be directly provided to a subsequent BatchGetResourceConfig operation. If there are no unprocessed resource keys, the response contains an empty unprocessedResourceKeys list. </p>
-- * baseConfigurationItems [BaseConfigurationItems] <p>A list that contains the current configuration of one or more resources.</p>
-- @return BatchGetResourceConfigResponse structure as a key-value pair table
function M.BatchGetResourceConfigResponse(args)
	assert(args, "You must provide an argument table when creating BatchGetResourceConfigResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["unprocessedResourceKeys"] = args["unprocessedResourceKeys"],
		["baseConfigurationItems"] = args["baseConfigurationItems"],
	}
	asserts.AssertBatchGetResourceConfigResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeComplianceByConfigRuleResponse = { ["ComplianceByConfigRules"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeComplianceByConfigRuleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeComplianceByConfigRuleResponse to be of type 'table'")
	if struct["ComplianceByConfigRules"] then asserts.AssertComplianceByConfigRules(struct["ComplianceByConfigRules"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeComplianceByConfigRuleResponse[k], "DescribeComplianceByConfigRuleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeComplianceByConfigRuleResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ComplianceByConfigRules [ComplianceByConfigRules] <p>Indicates whether each of the specified AWS Config rules is compliant.</p>
-- * NextToken [String] <p>The string that you use in a subsequent request to get the next page of results in a paginated response.</p>
-- @return DescribeComplianceByConfigRuleResponse structure as a key-value pair table
function M.DescribeComplianceByConfigRuleResponse(args)
	assert(args, "You must provide an argument table when creating DescribeComplianceByConfigRuleResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ComplianceByConfigRules"] = args["ComplianceByConfigRules"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeComplianceByConfigRuleResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutEvaluationsResponse = { ["FailedEvaluations"] = true, nil }

function asserts.AssertPutEvaluationsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutEvaluationsResponse to be of type 'table'")
	if struct["FailedEvaluations"] then asserts.AssertEvaluations(struct["FailedEvaluations"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutEvaluationsResponse[k], "PutEvaluationsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutEvaluationsResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FailedEvaluations [Evaluations] <p>Requests that failed because of a client or server error.</p>
-- @return PutEvaluationsResponse structure as a key-value pair table
function M.PutEvaluationsResponse(args)
	assert(args, "You must provide an argument table when creating PutEvaluationsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FailedEvaluations"] = args["FailedEvaluations"],
	}
	asserts.AssertPutEvaluationsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OrganizationAggregationSource = { ["RoleArn"] = true, ["AwsRegions"] = true, ["AllAwsRegions"] = true, nil }

function asserts.AssertOrganizationAggregationSource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OrganizationAggregationSource to be of type 'table'")
	assert(struct["RoleArn"], "Expected key RoleArn to exist in table")
	if struct["RoleArn"] then asserts.AssertString(struct["RoleArn"]) end
	if struct["AwsRegions"] then asserts.AssertAggregatorRegionList(struct["AwsRegions"]) end
	if struct["AllAwsRegions"] then asserts.AssertBoolean(struct["AllAwsRegions"]) end
	for k,_ in pairs(struct) do
		assert(keys.OrganizationAggregationSource[k], "OrganizationAggregationSource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OrganizationAggregationSource
-- <p>This object contains regions to setup the aggregator and an IAM role to retrieve organization details.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoleArn [String] <p>ARN of the IAM role used to retreive AWS Organization details associated with the aggregator account.</p>
-- * AwsRegions [AggregatorRegionList] <p>The source regions being aggregated.</p>
-- * AllAwsRegions [Boolean] <p>If true, aggregate existing AWS Config regions and future regions.</p>
-- Required key: RoleArn
-- @return OrganizationAggregationSource structure as a key-value pair table
function M.OrganizationAggregationSource(args)
	assert(args, "You must provide an argument table when creating OrganizationAggregationSource")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RoleArn"] = args["RoleArn"],
		["AwsRegions"] = args["AwsRegions"],
		["AllAwsRegions"] = args["AllAwsRegions"],
	}
	asserts.AssertOrganizationAggregationSource(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartConfigRulesEvaluationResponse = { nil }

function asserts.AssertStartConfigRulesEvaluationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartConfigRulesEvaluationResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.StartConfigRulesEvaluationResponse[k], "StartConfigRulesEvaluationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartConfigRulesEvaluationResponse
-- <p>The output when you start the evaluation for the specified AWS Config rule.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return StartConfigRulesEvaluationResponse structure as a key-value pair table
function M.StartConfigRulesEvaluationResponse(args)
	assert(args, "You must provide an argument table when creating StartConfigRulesEvaluationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertStartConfigRulesEvaluationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ConfigurationRecorder = { ["recordingGroup"] = true, ["roleARN"] = true, ["name"] = true, nil }

function asserts.AssertConfigurationRecorder(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfigurationRecorder to be of type 'table'")
	if struct["recordingGroup"] then asserts.AssertRecordingGroup(struct["recordingGroup"]) end
	if struct["roleARN"] then asserts.AssertString(struct["roleARN"]) end
	if struct["name"] then asserts.AssertRecorderName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConfigurationRecorder[k], "ConfigurationRecorder contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfigurationRecorder
-- <p>An object that represents the recording of configuration changes of an AWS resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * recordingGroup [RecordingGroup] <p>Specifies the types of AWS resources for which AWS Config records configuration changes.</p>
-- * roleARN [String] <p>Amazon Resource Name (ARN) of the IAM role used to describe the AWS resources associated with the account.</p>
-- * name [RecorderName] <p>The name of the recorder. By default, AWS Config automatically assigns the name "default" when creating the configuration recorder. You cannot change the assigned name.</p>
-- @return ConfigurationRecorder structure as a key-value pair table
function M.ConfigurationRecorder(args)
	assert(args, "You must provide an argument table when creating ConfigurationRecorder")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["recordingGroup"] = args["recordingGroup"],
		["roleARN"] = args["roleARN"],
		["name"] = args["name"],
	}
	asserts.AssertConfigurationRecorder(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetComplianceSummaryByResourceTypeResponse = { ["ComplianceSummariesByResourceType"] = true, nil }

function asserts.AssertGetComplianceSummaryByResourceTypeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetComplianceSummaryByResourceTypeResponse to be of type 'table'")
	if struct["ComplianceSummariesByResourceType"] then asserts.AssertComplianceSummariesByResourceType(struct["ComplianceSummariesByResourceType"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetComplianceSummaryByResourceTypeResponse[k], "GetComplianceSummaryByResourceTypeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetComplianceSummaryByResourceTypeResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ComplianceSummariesByResourceType [ComplianceSummariesByResourceType] <p>The number of resources that are compliant and the number that are noncompliant. If one or more resource types were provided with the request, the numbers are returned for each resource type. The maximum number returned is 100.</p>
-- @return GetComplianceSummaryByResourceTypeResponse structure as a key-value pair table
function M.GetComplianceSummaryByResourceTypeResponse(args)
	assert(args, "You must provide an argument table when creating GetComplianceSummaryByResourceTypeResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ComplianceSummariesByResourceType"] = args["ComplianceSummariesByResourceType"],
	}
	asserts.AssertGetComplianceSummaryByResourceTypeResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetResourceConfigHistoryResponse = { ["configurationItems"] = true, ["nextToken"] = true, nil }

function asserts.AssertGetResourceConfigHistoryResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetResourceConfigHistoryResponse to be of type 'table'")
	if struct["configurationItems"] then asserts.AssertConfigurationItemList(struct["configurationItems"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetResourceConfigHistoryResponse[k], "GetResourceConfigHistoryResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetResourceConfigHistoryResponse
-- <p>The output for the <a>GetResourceConfigHistory</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * configurationItems [ConfigurationItemList] <p>A list that contains the configuration history of one or more resources.</p>
-- * nextToken [NextToken] <p>The string that you use in a subsequent request to get the next page of results in a paginated response.</p>
-- @return GetResourceConfigHistoryResponse structure as a key-value pair table
function M.GetResourceConfigHistoryResponse(args)
	assert(args, "You must provide an argument table when creating GetResourceConfigHistoryResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["configurationItems"] = args["configurationItems"],
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertGetResourceConfigHistoryResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeAggregationAuthorizationsRequest = { ["NextToken"] = true, ["Limit"] = true, nil }

function asserts.AssertDescribeAggregationAuthorizationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAggregationAuthorizationsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["Limit"] then asserts.AssertLimit(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAggregationAuthorizationsRequest[k], "DescribeAggregationAuthorizationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAggregationAuthorizationsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [String] <p>The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.</p>
-- * Limit [Limit] <p>The maximum number of AggregationAuthorizations returned on each page. The default is maximum. If you specify 0, AWS Config uses the default.</p>
-- @return DescribeAggregationAuthorizationsRequest structure as a key-value pair table
function M.DescribeAggregationAuthorizationsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeAggregationAuthorizationsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Limit"] = args["Limit"],
	}
	asserts.AssertDescribeAggregationAuthorizationsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeliverConfigSnapshotRequest = { ["deliveryChannelName"] = true, nil }

function asserts.AssertDeliverConfigSnapshotRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeliverConfigSnapshotRequest to be of type 'table'")
	assert(struct["deliveryChannelName"], "Expected key deliveryChannelName to exist in table")
	if struct["deliveryChannelName"] then asserts.AssertChannelName(struct["deliveryChannelName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeliverConfigSnapshotRequest[k], "DeliverConfigSnapshotRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeliverConfigSnapshotRequest
-- <p>The input for the <a>DeliverConfigSnapshot</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * deliveryChannelName [ChannelName] <p>The name of the delivery channel through which the snapshot is delivered.</p>
-- Required key: deliveryChannelName
-- @return DeliverConfigSnapshotRequest structure as a key-value pair table
function M.DeliverConfigSnapshotRequest(args)
	assert(args, "You must provide an argument table when creating DeliverConfigSnapshotRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["deliveryChannelName"] = args["deliveryChannelName"],
	}
	asserts.AssertDeliverConfigSnapshotRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeConfigurationAggregatorsRequest = { ["NextToken"] = true, ["Limit"] = true, ["ConfigurationAggregatorNames"] = true, nil }

function asserts.AssertDescribeConfigurationAggregatorsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeConfigurationAggregatorsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["Limit"] then asserts.AssertLimit(struct["Limit"]) end
	if struct["ConfigurationAggregatorNames"] then asserts.AssertConfigurationAggregatorNameList(struct["ConfigurationAggregatorNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeConfigurationAggregatorsRequest[k], "DescribeConfigurationAggregatorsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeConfigurationAggregatorsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [String] <p>The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.</p>
-- * Limit [Limit] <p>The maximum number of configuration aggregators returned on each page. The default is maximum. If you specify 0, AWS Config uses the default.</p>
-- * ConfigurationAggregatorNames [ConfigurationAggregatorNameList] <p>The name of the configuration aggregators.</p>
-- @return DescribeConfigurationAggregatorsRequest structure as a key-value pair table
function M.DescribeConfigurationAggregatorsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeConfigurationAggregatorsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Limit"] = args["Limit"],
		["ConfigurationAggregatorNames"] = args["ConfigurationAggregatorNames"],
	}
	asserts.AssertDescribeConfigurationAggregatorsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDeliveryChannelStatusResponse = { ["DeliveryChannelsStatus"] = true, nil }

function asserts.AssertDescribeDeliveryChannelStatusResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDeliveryChannelStatusResponse to be of type 'table'")
	if struct["DeliveryChannelsStatus"] then asserts.AssertDeliveryChannelStatusList(struct["DeliveryChannelsStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDeliveryChannelStatusResponse[k], "DescribeDeliveryChannelStatusResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDeliveryChannelStatusResponse
-- <p>The output for the <a>DescribeDeliveryChannelStatus</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeliveryChannelsStatus [DeliveryChannelStatusList] <p>A list that contains the status of a specified delivery channel.</p>
-- @return DescribeDeliveryChannelStatusResponse structure as a key-value pair table
function M.DescribeDeliveryChannelStatusResponse(args)
	assert(args, "You must provide an argument table when creating DescribeDeliveryChannelStatusResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeliveryChannelsStatus"] = args["DeliveryChannelsStatus"],
	}
	asserts.AssertDescribeDeliveryChannelStatusResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartConfigurationRecorderRequest = { ["ConfigurationRecorderName"] = true, nil }

function asserts.AssertStartConfigurationRecorderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartConfigurationRecorderRequest to be of type 'table'")
	assert(struct["ConfigurationRecorderName"], "Expected key ConfigurationRecorderName to exist in table")
	if struct["ConfigurationRecorderName"] then asserts.AssertRecorderName(struct["ConfigurationRecorderName"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartConfigurationRecorderRequest[k], "StartConfigurationRecorderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartConfigurationRecorderRequest
-- <p>The input for the <a>StartConfigurationRecorder</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConfigurationRecorderName [RecorderName] <p>The name of the recorder object that records each configuration change made to the resources.</p>
-- Required key: ConfigurationRecorderName
-- @return StartConfigurationRecorderRequest structure as a key-value pair table
function M.StartConfigurationRecorderRequest(args)
	assert(args, "You must provide an argument table when creating StartConfigurationRecorderRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConfigurationRecorderName"] = args["ConfigurationRecorderName"],
	}
	asserts.AssertStartConfigurationRecorderRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeConfigurationRecorderStatusResponse = { ["ConfigurationRecordersStatus"] = true, nil }

function asserts.AssertDescribeConfigurationRecorderStatusResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeConfigurationRecorderStatusResponse to be of type 'table'")
	if struct["ConfigurationRecordersStatus"] then asserts.AssertConfigurationRecorderStatusList(struct["ConfigurationRecordersStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeConfigurationRecorderStatusResponse[k], "DescribeConfigurationRecorderStatusResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeConfigurationRecorderStatusResponse
-- <p>The output for the <a>DescribeConfigurationRecorderStatus</a> action, in JSON format.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConfigurationRecordersStatus [ConfigurationRecorderStatusList] <p>A list that contains status of the specified recorders.</p>
-- @return DescribeConfigurationRecorderStatusResponse structure as a key-value pair table
function M.DescribeConfigurationRecorderStatusResponse(args)
	assert(args, "You must provide an argument table when creating DescribeConfigurationRecorderStatusResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConfigurationRecordersStatus"] = args["ConfigurationRecordersStatus"],
	}
	asserts.AssertDescribeConfigurationRecorderStatusResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Compliance = { ["ComplianceContributorCount"] = true, ["ComplianceType"] = true, nil }

function asserts.AssertCompliance(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Compliance to be of type 'table'")
	if struct["ComplianceContributorCount"] then asserts.AssertComplianceContributorCount(struct["ComplianceContributorCount"]) end
	if struct["ComplianceType"] then asserts.AssertComplianceType(struct["ComplianceType"]) end
	for k,_ in pairs(struct) do
		assert(keys.Compliance[k], "Compliance contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Compliance
-- <p>Indicates whether an AWS resource or AWS Config rule is compliant and provides the number of contributors that affect the compliance.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ComplianceContributorCount [ComplianceContributorCount] <p>The number of AWS resources or AWS Config rules that cause a result of <code>NON_COMPLIANT</code>, up to a maximum number.</p>
-- * ComplianceType [ComplianceType] <p>Indicates whether an AWS resource or AWS Config rule is compliant.</p> <p>A resource is compliant if it complies with all of the AWS Config rules that evaluate it. A resource is noncompliant if it does not comply with one or more of these rules.</p> <p>A rule is compliant if all of the resources that the rule evaluates comply with it. A rule is noncompliant if any of these resources do not comply.</p> <p>AWS Config returns the <code>INSUFFICIENT_DATA</code> value when no evaluation results are available for the AWS resource or AWS Config rule.</p> <p>For the <code>Compliance</code> data type, AWS Config supports only <code>COMPLIANT</code>, <code>NON_COMPLIANT</code>, and <code>INSUFFICIENT_DATA</code> values. AWS Config does not support the <code>NOT_APPLICABLE</code> value for the <code>Compliance</code> data type.</p>
-- @return Compliance structure as a key-value pair table
function M.Compliance(args)
	assert(args, "You must provide an argument table when creating Compliance")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ComplianceContributorCount"] = args["ComplianceContributorCount"],
		["ComplianceType"] = args["ComplianceType"],
	}
	asserts.AssertCompliance(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ConfigRuleComplianceFilters = { ["AccountId"] = true, ["ComplianceType"] = true, ["AwsRegion"] = true, ["ConfigRuleName"] = true, nil }

function asserts.AssertConfigRuleComplianceFilters(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfigRuleComplianceFilters to be of type 'table'")
	if struct["AccountId"] then asserts.AssertAccountId(struct["AccountId"]) end
	if struct["ComplianceType"] then asserts.AssertComplianceType(struct["ComplianceType"]) end
	if struct["AwsRegion"] then asserts.AssertAwsRegion(struct["AwsRegion"]) end
	if struct["ConfigRuleName"] then asserts.AssertConfigRuleName(struct["ConfigRuleName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConfigRuleComplianceFilters[k], "ConfigRuleComplianceFilters contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfigRuleComplianceFilters
-- <p>Filters the compliance results based on account ID, region, compliance type, and rule name.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AccountId [AccountId] <p>The 12-digit account ID of the source account. </p>
-- * ComplianceType [ComplianceType] <p>The rule compliance status.</p> <p>For the <code>ConfigRuleComplianceFilters</code> data type, AWS Config supports only <code>COMPLIANT</code> and <code>NON_COMPLIANT</code>. AWS Config does not support the <code>NOT_APPLICABLE</code> and the <code>INSUFFICIENT_DATA</code> values.</p>
-- * AwsRegion [AwsRegion] <p>The source region where the data is aggregated. </p>
-- * ConfigRuleName [ConfigRuleName] <p>The name of the AWS Config rule.</p>
-- @return ConfigRuleComplianceFilters structure as a key-value pair table
function M.ConfigRuleComplianceFilters(args)
	assert(args, "You must provide an argument table when creating ConfigRuleComplianceFilters")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AccountId"] = args["AccountId"],
		["ComplianceType"] = args["ComplianceType"],
		["AwsRegion"] = args["AwsRegion"],
		["ConfigRuleName"] = args["ConfigRuleName"],
	}
	asserts.AssertConfigRuleComplianceFilters(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AggregateComplianceByConfigRule = { ["AccountId"] = true, ["Compliance"] = true, ["AwsRegion"] = true, ["ConfigRuleName"] = true, nil }

function asserts.AssertAggregateComplianceByConfigRule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AggregateComplianceByConfigRule to be of type 'table'")
	if struct["AccountId"] then asserts.AssertAccountId(struct["AccountId"]) end
	if struct["Compliance"] then asserts.AssertCompliance(struct["Compliance"]) end
	if struct["AwsRegion"] then asserts.AssertAwsRegion(struct["AwsRegion"]) end
	if struct["ConfigRuleName"] then asserts.AssertConfigRuleName(struct["ConfigRuleName"]) end
	for k,_ in pairs(struct) do
		assert(keys.AggregateComplianceByConfigRule[k], "AggregateComplianceByConfigRule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AggregateComplianceByConfigRule
-- <p>Indicates whether an AWS Config rule is compliant based on account ID, region, compliance, and rule name.</p> <p>A rule is compliant if all of the resources that the rule evaluated comply with it. It is noncompliant if any of these resources do not comply.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AccountId [AccountId] <p>The 12-digit account ID of the source account.</p>
-- * Compliance [Compliance] <p>Indicates whether an AWS resource or AWS Config rule is compliant and provides the number of contributors that affect the compliance.</p>
-- * AwsRegion [AwsRegion] <p>The source region from where the data is aggregated.</p>
-- * ConfigRuleName [ConfigRuleName] <p>The name of the AWS Config rule.</p>
-- @return AggregateComplianceByConfigRule structure as a key-value pair table
function M.AggregateComplianceByConfigRule(args)
	assert(args, "You must provide an argument table when creating AggregateComplianceByConfigRule")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AccountId"] = args["AccountId"],
		["Compliance"] = args["Compliance"],
		["AwsRegion"] = args["AwsRegion"],
		["ConfigRuleName"] = args["ConfigRuleName"],
	}
	asserts.AssertAggregateComplianceByConfigRule(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetComplianceDetailsByResourceResponse = { ["EvaluationResults"] = true, ["NextToken"] = true, nil }

function asserts.AssertGetComplianceDetailsByResourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetComplianceDetailsByResourceResponse to be of type 'table'")
	if struct["EvaluationResults"] then asserts.AssertEvaluationResults(struct["EvaluationResults"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetComplianceDetailsByResourceResponse[k], "GetComplianceDetailsByResourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetComplianceDetailsByResourceResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EvaluationResults [EvaluationResults] <p>Indicates whether the specified AWS resource complies each AWS Config rule.</p>
-- * NextToken [String] <p>The string that you use in a subsequent request to get the next page of results in a paginated response.</p>
-- @return GetComplianceDetailsByResourceResponse structure as a key-value pair table
function M.GetComplianceDetailsByResourceResponse(args)
	assert(args, "You must provide an argument table when creating GetComplianceDetailsByResourceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EvaluationResults"] = args["EvaluationResults"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertGetComplianceDetailsByResourceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteConfigurationRecorderRequest = { ["ConfigurationRecorderName"] = true, nil }

function asserts.AssertDeleteConfigurationRecorderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteConfigurationRecorderRequest to be of type 'table'")
	assert(struct["ConfigurationRecorderName"], "Expected key ConfigurationRecorderName to exist in table")
	if struct["ConfigurationRecorderName"] then asserts.AssertRecorderName(struct["ConfigurationRecorderName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteConfigurationRecorderRequest[k], "DeleteConfigurationRecorderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteConfigurationRecorderRequest
-- <p>The request object for the <code>DeleteConfigurationRecorder</code> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConfigurationRecorderName [RecorderName] <p>The name of the configuration recorder to be deleted. You can retrieve the name of your configuration recorder by using the <code>DescribeConfigurationRecorders</code> action.</p>
-- Required key: ConfigurationRecorderName
-- @return DeleteConfigurationRecorderRequest structure as a key-value pair table
function M.DeleteConfigurationRecorderRequest(args)
	assert(args, "You must provide an argument table when creating DeleteConfigurationRecorderRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConfigurationRecorderName"] = args["ConfigurationRecorderName"],
	}
	asserts.AssertDeleteConfigurationRecorderRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ConfigurationRecorderStatus = { ["name"] = true, ["lastErrorMessage"] = true, ["lastStatus"] = true, ["recording"] = true, ["lastStatusChangeTime"] = true, ["lastStartTime"] = true, ["lastErrorCode"] = true, ["lastStopTime"] = true, nil }

function asserts.AssertConfigurationRecorderStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfigurationRecorderStatus to be of type 'table'")
	if struct["name"] then asserts.AssertString(struct["name"]) end
	if struct["lastErrorMessage"] then asserts.AssertString(struct["lastErrorMessage"]) end
	if struct["lastStatus"] then asserts.AssertRecorderStatus(struct["lastStatus"]) end
	if struct["recording"] then asserts.AssertBoolean(struct["recording"]) end
	if struct["lastStatusChangeTime"] then asserts.AssertDate(struct["lastStatusChangeTime"]) end
	if struct["lastStartTime"] then asserts.AssertDate(struct["lastStartTime"]) end
	if struct["lastErrorCode"] then asserts.AssertString(struct["lastErrorCode"]) end
	if struct["lastStopTime"] then asserts.AssertDate(struct["lastStopTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConfigurationRecorderStatus[k], "ConfigurationRecorderStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfigurationRecorderStatus
-- <p>The current status of the configuration recorder.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [String] <p>The name of the configuration recorder.</p>
-- * lastErrorMessage [String] <p>The message indicating that the recording failed due to an error.</p>
-- * lastStatus [RecorderStatus] <p>The last (previous) status of the recorder.</p>
-- * recording [Boolean] <p>Specifies whether or not the recorder is currently recording.</p>
-- * lastStatusChangeTime [Date] <p>The time when the status was last changed.</p>
-- * lastStartTime [Date] <p>The time the recorder was last started.</p>
-- * lastErrorCode [String] <p>The error code indicating that the recording failed.</p>
-- * lastStopTime [Date] <p>The time the recorder was last stopped.</p>
-- @return ConfigurationRecorderStatus structure as a key-value pair table
function M.ConfigurationRecorderStatus(args)
	assert(args, "You must provide an argument table when creating ConfigurationRecorderStatus")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["name"] = args["name"],
		["lastErrorMessage"] = args["lastErrorMessage"],
		["lastStatus"] = args["lastStatus"],
		["recording"] = args["recording"],
		["lastStatusChangeTime"] = args["lastStatusChangeTime"],
		["lastStartTime"] = args["lastStartTime"],
		["lastErrorCode"] = args["lastErrorCode"],
		["lastStopTime"] = args["lastStopTime"],
	}
	asserts.AssertConfigurationRecorderStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeComplianceByResourceResponse = { ["ComplianceByResources"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeComplianceByResourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeComplianceByResourceResponse to be of type 'table'")
	if struct["ComplianceByResources"] then asserts.AssertComplianceByResources(struct["ComplianceByResources"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeComplianceByResourceResponse[k], "DescribeComplianceByResourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeComplianceByResourceResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ComplianceByResources [ComplianceByResources] <p>Indicates whether the specified AWS resource complies with all of the AWS Config rules that evaluate it.</p>
-- * NextToken [NextToken] <p>The string that you use in a subsequent request to get the next page of results in a paginated response.</p>
-- @return DescribeComplianceByResourceResponse structure as a key-value pair table
function M.DescribeComplianceByResourceResponse(args)
	assert(args, "You must provide an argument table when creating DescribeComplianceByResourceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ComplianceByResources"] = args["ComplianceByResources"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeComplianceByResourceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetAggregateConfigRuleComplianceSummaryRequest = { ["NextToken"] = true, ["ConfigurationAggregatorName"] = true, ["Limit"] = true, ["GroupByKey"] = true, ["Filters"] = true, nil }

function asserts.AssertGetAggregateConfigRuleComplianceSummaryRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAggregateConfigRuleComplianceSummaryRequest to be of type 'table'")
	assert(struct["ConfigurationAggregatorName"], "Expected key ConfigurationAggregatorName to exist in table")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["ConfigurationAggregatorName"] then asserts.AssertConfigurationAggregatorName(struct["ConfigurationAggregatorName"]) end
	if struct["Limit"] then asserts.AssertGroupByAPILimit(struct["Limit"]) end
	if struct["GroupByKey"] then asserts.AssertConfigRuleComplianceSummaryGroupKey(struct["GroupByKey"]) end
	if struct["Filters"] then asserts.AssertConfigRuleComplianceSummaryFilters(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetAggregateConfigRuleComplianceSummaryRequest[k], "GetAggregateConfigRuleComplianceSummaryRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAggregateConfigRuleComplianceSummaryRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.</p>
-- * ConfigurationAggregatorName [ConfigurationAggregatorName] <p>The name of the configuration aggregator.</p>
-- * Limit [GroupByAPILimit] <p>The maximum number of evaluation results returned on each page. The default is 1000. You cannot specify a number greater than 1000. If you specify 0, AWS Config uses the default.</p>
-- * GroupByKey [ConfigRuleComplianceSummaryGroupKey] <p>Groups the result based on ACCOUNT_ID or AWS_REGION.</p>
-- * Filters [ConfigRuleComplianceSummaryFilters] <p>Filters the results based on the ConfigRuleComplianceSummaryFilters object.</p>
-- Required key: ConfigurationAggregatorName
-- @return GetAggregateConfigRuleComplianceSummaryRequest structure as a key-value pair table
function M.GetAggregateConfigRuleComplianceSummaryRequest(args)
	assert(args, "You must provide an argument table when creating GetAggregateConfigRuleComplianceSummaryRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["ConfigurationAggregatorName"] = args["ConfigurationAggregatorName"],
		["Limit"] = args["Limit"],
		["GroupByKey"] = args["GroupByKey"],
		["Filters"] = args["Filters"],
	}
	asserts.AssertGetAggregateConfigRuleComplianceSummaryRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListDiscoveredResourcesResponse = { ["nextToken"] = true, ["resourceIdentifiers"] = true, nil }

function asserts.AssertListDiscoveredResourcesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDiscoveredResourcesResponse to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["resourceIdentifiers"] then asserts.AssertResourceIdentifierList(struct["resourceIdentifiers"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDiscoveredResourcesResponse[k], "ListDiscoveredResourcesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDiscoveredResourcesResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>The string that you use in a subsequent request to get the next page of results in a paginated response.</p>
-- * resourceIdentifiers [ResourceIdentifierList] <p>The details that identify a resource that is discovered by AWS Config, including the resource type, ID, and (if available) the custom resource name.</p>
-- @return ListDiscoveredResourcesResponse structure as a key-value pair table
function M.ListDiscoveredResourcesResponse(args)
	assert(args, "You must provide an argument table when creating ListDiscoveredResourcesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["resourceIdentifiers"] = args["resourceIdentifiers"],
	}
	asserts.AssertListDiscoveredResourcesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeConfigurationRecordersRequest = { ["ConfigurationRecorderNames"] = true, nil }

function asserts.AssertDescribeConfigurationRecordersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeConfigurationRecordersRequest to be of type 'table'")
	if struct["ConfigurationRecorderNames"] then asserts.AssertConfigurationRecorderNameList(struct["ConfigurationRecorderNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeConfigurationRecordersRequest[k], "DescribeConfigurationRecordersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeConfigurationRecordersRequest
-- <p>The input for the <a>DescribeConfigurationRecorders</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConfigurationRecorderNames [ConfigurationRecorderNameList] <p>A list of configuration recorder names.</p>
-- @return DescribeConfigurationRecordersRequest structure as a key-value pair table
function M.DescribeConfigurationRecordersRequest(args)
	assert(args, "You must provide an argument table when creating DescribeConfigurationRecordersRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConfigurationRecorderNames"] = args["ConfigurationRecorderNames"],
	}
	asserts.AssertDescribeConfigurationRecordersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeComplianceByConfigRuleRequest = { ["ComplianceTypes"] = true, ["NextToken"] = true, ["ConfigRuleNames"] = true, nil }

function asserts.AssertDescribeComplianceByConfigRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeComplianceByConfigRuleRequest to be of type 'table'")
	if struct["ComplianceTypes"] then asserts.AssertComplianceTypes(struct["ComplianceTypes"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["ConfigRuleNames"] then asserts.AssertConfigRuleNames(struct["ConfigRuleNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeComplianceByConfigRuleRequest[k], "DescribeComplianceByConfigRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeComplianceByConfigRuleRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ComplianceTypes [ComplianceTypes] <p>Filters the results by compliance.</p> <p>The allowed values are <code>COMPLIANT</code>, <code>NON_COMPLIANT</code>, and <code>INSUFFICIENT_DATA</code>.</p>
-- * NextToken [String] <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>
-- * ConfigRuleNames [ConfigRuleNames] <p>Specify one or more AWS Config rule names to filter the results by rule.</p>
-- @return DescribeComplianceByConfigRuleRequest structure as a key-value pair table
function M.DescribeComplianceByConfigRuleRequest(args)
	assert(args, "You must provide an argument table when creating DescribeComplianceByConfigRuleRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ComplianceTypes"] = args["ComplianceTypes"],
		["NextToken"] = args["NextToken"],
		["ConfigRuleNames"] = args["ConfigRuleNames"],
	}
	asserts.AssertDescribeComplianceByConfigRuleRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteEvaluationResultsResponse = { nil }

function asserts.AssertDeleteEvaluationResultsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteEvaluationResultsResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteEvaluationResultsResponse[k], "DeleteEvaluationResultsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteEvaluationResultsResponse
-- <p>The output when you delete the evaluation results for the specified AWS Config rule.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteEvaluationResultsResponse structure as a key-value pair table
function M.DeleteEvaluationResultsResponse(args)
	assert(args, "You must provide an argument table when creating DeleteEvaluationResultsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteEvaluationResultsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeRetentionConfigurationsResponse = { ["NextToken"] = true, ["RetentionConfigurations"] = true, nil }

function asserts.AssertDescribeRetentionConfigurationsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeRetentionConfigurationsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["RetentionConfigurations"] then asserts.AssertRetentionConfigurationList(struct["RetentionConfigurations"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeRetentionConfigurationsResponse[k], "DescribeRetentionConfigurationsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeRetentionConfigurationsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response. </p>
-- * RetentionConfigurations [RetentionConfigurationList] <p>Returns a retention configuration object.</p>
-- @return DescribeRetentionConfigurationsResponse structure as a key-value pair table
function M.DescribeRetentionConfigurationsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeRetentionConfigurationsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["RetentionConfigurations"] = args["RetentionConfigurations"],
	}
	asserts.AssertDescribeRetentionConfigurationsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AggregationAuthorization = { ["AuthorizedAccountId"] = true, ["AggregationAuthorizationArn"] = true, ["CreationTime"] = true, ["AuthorizedAwsRegion"] = true, nil }

function asserts.AssertAggregationAuthorization(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AggregationAuthorization to be of type 'table'")
	if struct["AuthorizedAccountId"] then asserts.AssertAccountId(struct["AuthorizedAccountId"]) end
	if struct["AggregationAuthorizationArn"] then asserts.AssertString(struct["AggregationAuthorizationArn"]) end
	if struct["CreationTime"] then asserts.AssertDate(struct["CreationTime"]) end
	if struct["AuthorizedAwsRegion"] then asserts.AssertAwsRegion(struct["AuthorizedAwsRegion"]) end
	for k,_ in pairs(struct) do
		assert(keys.AggregationAuthorization[k], "AggregationAuthorization contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AggregationAuthorization
-- <p>An object that represents the authorizations granted to aggregator accounts and regions.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AuthorizedAccountId [AccountId] <p>The 12-digit account ID of the account authorized to aggregate data.</p>
-- * AggregationAuthorizationArn [String] <p>The Amazon Resource Name (ARN) of the aggregation object.</p>
-- * CreationTime [Date] <p>The time stamp when the aggregation authorization was created.</p>
-- * AuthorizedAwsRegion [AwsRegion] <p>The region authorized to collect aggregated data.</p>
-- @return AggregationAuthorization structure as a key-value pair table
function M.AggregationAuthorization(args)
	assert(args, "You must provide an argument table when creating AggregationAuthorization")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AuthorizedAccountId"] = args["AuthorizedAccountId"],
		["AggregationAuthorizationArn"] = args["AggregationAuthorizationArn"],
		["CreationTime"] = args["CreationTime"],
		["AuthorizedAwsRegion"] = args["AuthorizedAwsRegion"],
	}
	asserts.AssertAggregationAuthorization(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ComplianceByConfigRule = { ["Compliance"] = true, ["ConfigRuleName"] = true, nil }

function asserts.AssertComplianceByConfigRule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ComplianceByConfigRule to be of type 'table'")
	if struct["Compliance"] then asserts.AssertCompliance(struct["Compliance"]) end
	if struct["ConfigRuleName"] then asserts.AssertStringWithCharLimit64(struct["ConfigRuleName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ComplianceByConfigRule[k], "ComplianceByConfigRule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ComplianceByConfigRule
-- <p>Indicates whether an AWS Config rule is compliant. A rule is compliant if all of the resources that the rule evaluated comply with it. A rule is noncompliant if any of these resources do not comply.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Compliance [Compliance] <p>Indicates whether the AWS Config rule is compliant.</p>
-- * ConfigRuleName [StringWithCharLimit64] <p>The name of the AWS Config rule.</p>
-- @return ComplianceByConfigRule structure as a key-value pair table
function M.ComplianceByConfigRule(args)
	assert(args, "You must provide an argument table when creating ComplianceByConfigRule")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Compliance"] = args["Compliance"],
		["ConfigRuleName"] = args["ConfigRuleName"],
	}
	asserts.AssertComplianceByConfigRule(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDeliveryChannelsResponse = { ["DeliveryChannels"] = true, nil }

function asserts.AssertDescribeDeliveryChannelsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDeliveryChannelsResponse to be of type 'table'")
	if struct["DeliveryChannels"] then asserts.AssertDeliveryChannelList(struct["DeliveryChannels"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDeliveryChannelsResponse[k], "DescribeDeliveryChannelsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDeliveryChannelsResponse
-- <p>The output for the <a>DescribeDeliveryChannels</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeliveryChannels [DeliveryChannelList] <p>A list that contains the descriptions of the specified delivery channel.</p>
-- @return DescribeDeliveryChannelsResponse structure as a key-value pair table
function M.DescribeDeliveryChannelsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeDeliveryChannelsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeliveryChannels"] = args["DeliveryChannels"],
	}
	asserts.AssertDescribeDeliveryChannelsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartConfigRulesEvaluationRequest = { ["ConfigRuleNames"] = true, nil }

function asserts.AssertStartConfigRulesEvaluationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartConfigRulesEvaluationRequest to be of type 'table'")
	if struct["ConfigRuleNames"] then asserts.AssertReevaluateConfigRuleNames(struct["ConfigRuleNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartConfigRulesEvaluationRequest[k], "StartConfigRulesEvaluationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartConfigRulesEvaluationRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConfigRuleNames [ReevaluateConfigRuleNames] <p>The list of names of AWS Config rules that you want to run evaluations for.</p>
-- @return StartConfigRulesEvaluationRequest structure as a key-value pair table
function M.StartConfigRulesEvaluationRequest(args)
	assert(args, "You must provide an argument table when creating StartConfigRulesEvaluationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConfigRuleNames"] = args["ConfigRuleNames"],
	}
	asserts.AssertStartConfigRulesEvaluationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutRetentionConfigurationRequest = { ["RetentionPeriodInDays"] = true, nil }

function asserts.AssertPutRetentionConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutRetentionConfigurationRequest to be of type 'table'")
	assert(struct["RetentionPeriodInDays"], "Expected key RetentionPeriodInDays to exist in table")
	if struct["RetentionPeriodInDays"] then asserts.AssertRetentionPeriodInDays(struct["RetentionPeriodInDays"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutRetentionConfigurationRequest[k], "PutRetentionConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutRetentionConfigurationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RetentionPeriodInDays [RetentionPeriodInDays] <p>Number of days AWS Config stores your historical information.</p> <note> <p>Currently, only applicable to the configuration item history.</p> </note>
-- Required key: RetentionPeriodInDays
-- @return PutRetentionConfigurationRequest structure as a key-value pair table
function M.PutRetentionConfigurationRequest(args)
	assert(args, "You must provide an argument table when creating PutRetentionConfigurationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RetentionPeriodInDays"] = args["RetentionPeriodInDays"],
	}
	asserts.AssertPutRetentionConfigurationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDeliveryChannelStatusRequest = { ["DeliveryChannelNames"] = true, nil }

function asserts.AssertDescribeDeliveryChannelStatusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDeliveryChannelStatusRequest to be of type 'table'")
	if struct["DeliveryChannelNames"] then asserts.AssertDeliveryChannelNameList(struct["DeliveryChannelNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDeliveryChannelStatusRequest[k], "DescribeDeliveryChannelStatusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDeliveryChannelStatusRequest
-- <p>The input for the <a>DeliveryChannelStatus</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeliveryChannelNames [DeliveryChannelNameList] <p>A list of delivery channel names.</p>
-- @return DescribeDeliveryChannelStatusRequest structure as a key-value pair table
function M.DescribeDeliveryChannelStatusRequest(args)
	assert(args, "You must provide an argument table when creating DescribeDeliveryChannelStatusRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeliveryChannelNames"] = args["DeliveryChannelNames"],
	}
	asserts.AssertDescribeDeliveryChannelStatusRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDiscoveredResourceCountsRequest = { ["resourceTypes"] = true, ["nextToken"] = true, ["limit"] = true, nil }

function asserts.AssertGetDiscoveredResourceCountsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDiscoveredResourceCountsRequest to be of type 'table'")
	if struct["resourceTypes"] then asserts.AssertResourceTypes(struct["resourceTypes"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["limit"] then asserts.AssertLimit(struct["limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDiscoveredResourceCountsRequest[k], "GetDiscoveredResourceCountsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDiscoveredResourceCountsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resourceTypes [ResourceTypes] <p>The comma-separated list that specifies the resource types that you want AWS Config to return (for example, <code>"AWS::EC2::Instance"</code>, <code>"AWS::IAM::User"</code>).</p> <p>If a value for <code>resourceTypes</code> is not specified, AWS Config returns all resource types that AWS Config is recording in the region for your account.</p> <note> <p>If the configuration recorder is turned off, AWS Config returns an empty list of <a>ResourceCount</a> objects. If the configuration recorder is not recording a specific resource type (for example, S3 buckets), that resource type is not returned in the list of <a>ResourceCount</a> objects.</p> </note>
-- * nextToken [NextToken] <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>
-- * limit [Limit] <p>The maximum number of <a>ResourceCount</a> objects returned on each page. The default is 100. You cannot specify a number greater than 100. If you specify 0, AWS Config uses the default.</p>
-- @return GetDiscoveredResourceCountsRequest structure as a key-value pair table
function M.GetDiscoveredResourceCountsRequest(args)
	assert(args, "You must provide an argument table when creating GetDiscoveredResourceCountsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["resourceTypes"] = args["resourceTypes"],
		["nextToken"] = args["nextToken"],
		["limit"] = args["limit"],
	}
	asserts.AssertGetDiscoveredResourceCountsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutAggregationAuthorizationResponse = { ["AggregationAuthorization"] = true, nil }

function asserts.AssertPutAggregationAuthorizationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutAggregationAuthorizationResponse to be of type 'table'")
	if struct["AggregationAuthorization"] then asserts.AssertAggregationAuthorization(struct["AggregationAuthorization"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutAggregationAuthorizationResponse[k], "PutAggregationAuthorizationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutAggregationAuthorizationResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AggregationAuthorization [AggregationAuthorization] <p>Returns an AggregationAuthorization object. </p>
-- @return PutAggregationAuthorizationResponse structure as a key-value pair table
function M.PutAggregationAuthorizationResponse(args)
	assert(args, "You must provide an argument table when creating PutAggregationAuthorizationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AggregationAuthorization"] = args["AggregationAuthorization"],
	}
	asserts.AssertPutAggregationAuthorizationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ConfigRuleEvaluationStatus = { ["LastFailedEvaluationTime"] = true, ["LastSuccessfulInvocationTime"] = true, ["FirstEvaluationStarted"] = true, ["LastFailedInvocationTime"] = true, ["ConfigRuleName"] = true, ["ConfigRuleArn"] = true, ["FirstActivatedTime"] = true, ["LastSuccessfulEvaluationTime"] = true, ["LastErrorCode"] = true, ["LastErrorMessage"] = true, ["ConfigRuleId"] = true, nil }

function asserts.AssertConfigRuleEvaluationStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfigRuleEvaluationStatus to be of type 'table'")
	if struct["LastFailedEvaluationTime"] then asserts.AssertDate(struct["LastFailedEvaluationTime"]) end
	if struct["LastSuccessfulInvocationTime"] then asserts.AssertDate(struct["LastSuccessfulInvocationTime"]) end
	if struct["FirstEvaluationStarted"] then asserts.AssertBoolean(struct["FirstEvaluationStarted"]) end
	if struct["LastFailedInvocationTime"] then asserts.AssertDate(struct["LastFailedInvocationTime"]) end
	if struct["ConfigRuleName"] then asserts.AssertStringWithCharLimit64(struct["ConfigRuleName"]) end
	if struct["ConfigRuleArn"] then asserts.AssertString(struct["ConfigRuleArn"]) end
	if struct["FirstActivatedTime"] then asserts.AssertDate(struct["FirstActivatedTime"]) end
	if struct["LastSuccessfulEvaluationTime"] then asserts.AssertDate(struct["LastSuccessfulEvaluationTime"]) end
	if struct["LastErrorCode"] then asserts.AssertString(struct["LastErrorCode"]) end
	if struct["LastErrorMessage"] then asserts.AssertString(struct["LastErrorMessage"]) end
	if struct["ConfigRuleId"] then asserts.AssertString(struct["ConfigRuleId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConfigRuleEvaluationStatus[k], "ConfigRuleEvaluationStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfigRuleEvaluationStatus
-- <p>Status information for your AWS managed Config rules. The status includes information such as the last time the rule ran, the last time it failed, and the related error for the last failure.</p> <p>This action does not return status information about custom AWS Config rules.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LastFailedEvaluationTime [Date] <p>The time that AWS Config last failed to evaluate your AWS resources against the rule.</p>
-- * LastSuccessfulInvocationTime [Date] <p>The time that AWS Config last successfully invoked the AWS Config rule to evaluate your AWS resources.</p>
-- * FirstEvaluationStarted [Boolean] <p>Indicates whether AWS Config has evaluated your resources against the rule at least once.</p> <ul> <li> <p> <code>true</code> - AWS Config has evaluated your AWS resources against the rule at least once.</p> </li> <li> <p> <code>false</code> - AWS Config has not once finished evaluating your AWS resources against the rule.</p> </li> </ul>
-- * LastFailedInvocationTime [Date] <p>The time that AWS Config last failed to invoke the AWS Config rule to evaluate your AWS resources.</p>
-- * ConfigRuleName [StringWithCharLimit64] <p>The name of the AWS Config rule.</p>
-- * ConfigRuleArn [String] <p>The Amazon Resource Name (ARN) of the AWS Config rule.</p>
-- * FirstActivatedTime [Date] <p>The time that you first activated the AWS Config rule.</p>
-- * LastSuccessfulEvaluationTime [Date] <p>The time that AWS Config last successfully evaluated your AWS resources against the rule.</p>
-- * LastErrorCode [String] <p>The error code that AWS Config returned when the rule last failed.</p>
-- * LastErrorMessage [String] <p>The error message that AWS Config returned when the rule last failed.</p>
-- * ConfigRuleId [String] <p>The ID of the AWS Config rule.</p>
-- @return ConfigRuleEvaluationStatus structure as a key-value pair table
function M.ConfigRuleEvaluationStatus(args)
	assert(args, "You must provide an argument table when creating ConfigRuleEvaluationStatus")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LastFailedEvaluationTime"] = args["LastFailedEvaluationTime"],
		["LastSuccessfulInvocationTime"] = args["LastSuccessfulInvocationTime"],
		["FirstEvaluationStarted"] = args["FirstEvaluationStarted"],
		["LastFailedInvocationTime"] = args["LastFailedInvocationTime"],
		["ConfigRuleName"] = args["ConfigRuleName"],
		["ConfigRuleArn"] = args["ConfigRuleArn"],
		["FirstActivatedTime"] = args["FirstActivatedTime"],
		["LastSuccessfulEvaluationTime"] = args["LastSuccessfulEvaluationTime"],
		["LastErrorCode"] = args["LastErrorCode"],
		["LastErrorMessage"] = args["LastErrorMessage"],
		["ConfigRuleId"] = args["ConfigRuleId"],
	}
	asserts.AssertConfigRuleEvaluationStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetAggregateComplianceDetailsByConfigRuleResponse = { ["AggregateEvaluationResults"] = true, ["NextToken"] = true, nil }

function asserts.AssertGetAggregateComplianceDetailsByConfigRuleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAggregateComplianceDetailsByConfigRuleResponse to be of type 'table'")
	if struct["AggregateEvaluationResults"] then asserts.AssertAggregateEvaluationResultList(struct["AggregateEvaluationResults"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetAggregateComplianceDetailsByConfigRuleResponse[k], "GetAggregateComplianceDetailsByConfigRuleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAggregateComplianceDetailsByConfigRuleResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AggregateEvaluationResults [AggregateEvaluationResultList] <p>Returns an AggregateEvaluationResults object.</p>
-- * NextToken [NextToken] <p>The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.</p>
-- @return GetAggregateComplianceDetailsByConfigRuleResponse structure as a key-value pair table
function M.GetAggregateComplianceDetailsByConfigRuleResponse(args)
	assert(args, "You must provide an argument table when creating GetAggregateComplianceDetailsByConfigRuleResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AggregateEvaluationResults"] = args["AggregateEvaluationResults"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertGetAggregateComplianceDetailsByConfigRuleResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutConfigurationAggregatorResponse = { ["ConfigurationAggregator"] = true, nil }

function asserts.AssertPutConfigurationAggregatorResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutConfigurationAggregatorResponse to be of type 'table'")
	if struct["ConfigurationAggregator"] then asserts.AssertConfigurationAggregator(struct["ConfigurationAggregator"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutConfigurationAggregatorResponse[k], "PutConfigurationAggregatorResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutConfigurationAggregatorResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConfigurationAggregator [ConfigurationAggregator] <p>Returns a ConfigurationAggregator object.</p>
-- @return PutConfigurationAggregatorResponse structure as a key-value pair table
function M.PutConfigurationAggregatorResponse(args)
	assert(args, "You must provide an argument table when creating PutConfigurationAggregatorResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConfigurationAggregator"] = args["ConfigurationAggregator"],
	}
	asserts.AssertPutConfigurationAggregatorResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteConfigurationAggregatorRequest = { ["ConfigurationAggregatorName"] = true, nil }

function asserts.AssertDeleteConfigurationAggregatorRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteConfigurationAggregatorRequest to be of type 'table'")
	assert(struct["ConfigurationAggregatorName"], "Expected key ConfigurationAggregatorName to exist in table")
	if struct["ConfigurationAggregatorName"] then asserts.AssertConfigurationAggregatorName(struct["ConfigurationAggregatorName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteConfigurationAggregatorRequest[k], "DeleteConfigurationAggregatorRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteConfigurationAggregatorRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConfigurationAggregatorName [ConfigurationAggregatorName] <p>The name of the configuration aggregator.</p>
-- Required key: ConfigurationAggregatorName
-- @return DeleteConfigurationAggregatorRequest structure as a key-value pair table
function M.DeleteConfigurationAggregatorRequest(args)
	assert(args, "You must provide an argument table when creating DeleteConfigurationAggregatorRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConfigurationAggregatorName"] = args["ConfigurationAggregatorName"],
	}
	asserts.AssertDeleteConfigurationAggregatorRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeliverConfigSnapshotResponse = { ["configSnapshotId"] = true, nil }

function asserts.AssertDeliverConfigSnapshotResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeliverConfigSnapshotResponse to be of type 'table'")
	if struct["configSnapshotId"] then asserts.AssertString(struct["configSnapshotId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeliverConfigSnapshotResponse[k], "DeliverConfigSnapshotResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeliverConfigSnapshotResponse
-- <p>The output for the <a>DeliverConfigSnapshot</a> action, in JSON format.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * configSnapshotId [String] <p>The ID of the snapshot that is being created.</p>
-- @return DeliverConfigSnapshotResponse structure as a key-value pair table
function M.DeliverConfigSnapshotResponse(args)
	assert(args, "You must provide an argument table when creating DeliverConfigSnapshotResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["configSnapshotId"] = args["configSnapshotId"],
	}
	asserts.AssertDeliverConfigSnapshotResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeliveryChannel = { ["s3KeyPrefix"] = true, ["configSnapshotDeliveryProperties"] = true, ["snsTopicARN"] = true, ["name"] = true, ["s3BucketName"] = true, nil }

function asserts.AssertDeliveryChannel(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeliveryChannel to be of type 'table'")
	if struct["s3KeyPrefix"] then asserts.AssertString(struct["s3KeyPrefix"]) end
	if struct["configSnapshotDeliveryProperties"] then asserts.AssertConfigSnapshotDeliveryProperties(struct["configSnapshotDeliveryProperties"]) end
	if struct["snsTopicARN"] then asserts.AssertString(struct["snsTopicARN"]) end
	if struct["name"] then asserts.AssertChannelName(struct["name"]) end
	if struct["s3BucketName"] then asserts.AssertString(struct["s3BucketName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeliveryChannel[k], "DeliveryChannel contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeliveryChannel
-- <p>The channel through which AWS Config delivers notifications and updated configuration states.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * s3KeyPrefix [String] <p>The prefix for the specified Amazon S3 bucket.</p>
-- * configSnapshotDeliveryProperties [ConfigSnapshotDeliveryProperties] <p>The options for how often AWS Config delivers configuration snapshots to the Amazon S3 bucket.</p>
-- * snsTopicARN [String] <p>The Amazon Resource Name (ARN) of the Amazon SNS topic to which AWS Config sends notifications about configuration changes.</p> <p>If you choose a topic from another account, the topic must have policies that grant access permissions to AWS Config. For more information, see <a href="http://docs.aws.amazon.com/config/latest/developerguide/sns-topic-policy.html">Permissions for the Amazon SNS Topic</a> in the AWS Config Developer Guide.</p>
-- * name [ChannelName] <p>The name of the delivery channel. By default, AWS Config assigns the name "default" when creating the delivery channel. To change the delivery channel name, you must use the DeleteDeliveryChannel action to delete your current delivery channel, and then you must use the PutDeliveryChannel command to create a delivery channel that has the desired name.</p>
-- * s3BucketName [String] <p>The name of the Amazon S3 bucket to which AWS Config delivers configuration snapshots and configuration history files.</p> <p>If you specify a bucket that belongs to another AWS account, that bucket must have policies that grant access permissions to AWS Config. For more information, see <a href="http://docs.aws.amazon.com/config/latest/developerguide/s3-bucket-policy.html">Permissions for the Amazon S3 Bucket</a> in the AWS Config Developer Guide.</p>
-- @return DeliveryChannel structure as a key-value pair table
function M.DeliveryChannel(args)
	assert(args, "You must provide an argument table when creating DeliveryChannel")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["s3KeyPrefix"] = args["s3KeyPrefix"],
		["configSnapshotDeliveryProperties"] = args["configSnapshotDeliveryProperties"],
		["snsTopicARN"] = args["snsTopicARN"],
		["name"] = args["name"],
		["s3BucketName"] = args["s3BucketName"],
	}
	asserts.AssertDeliveryChannel(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeComplianceByResourceRequest = { ["ResourceType"] = true, ["ResourceId"] = true, ["NextToken"] = true, ["Limit"] = true, ["ComplianceTypes"] = true, nil }

function asserts.AssertDescribeComplianceByResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeComplianceByResourceRequest to be of type 'table'")
	if struct["ResourceType"] then asserts.AssertStringWithCharLimit256(struct["ResourceType"]) end
	if struct["ResourceId"] then asserts.AssertBaseResourceId(struct["ResourceId"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Limit"] then asserts.AssertLimit(struct["Limit"]) end
	if struct["ComplianceTypes"] then asserts.AssertComplianceTypes(struct["ComplianceTypes"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeComplianceByResourceRequest[k], "DescribeComplianceByResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeComplianceByResourceRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceType [StringWithCharLimit256] <p>The types of AWS resources for which you want compliance information (for example, <code>AWS::EC2::Instance</code>). For this action, you can specify that the resource type is an AWS account by specifying <code>AWS::::Account</code>.</p>
-- * ResourceId [BaseResourceId] <p>The ID of the AWS resource for which you want compliance information. You can specify only one resource ID. If you specify a resource ID, you must also specify a type for <code>ResourceType</code>.</p>
-- * NextToken [NextToken] <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>
-- * Limit [Limit] <p>The maximum number of evaluation results returned on each page. The default is 10. You cannot specify a number greater than 100. If you specify 0, AWS Config uses the default.</p>
-- * ComplianceTypes [ComplianceTypes] <p>Filters the results by compliance.</p> <p>The allowed values are <code>COMPLIANT</code> and <code>NON_COMPLIANT</code>.</p>
-- @return DescribeComplianceByResourceRequest structure as a key-value pair table
function M.DescribeComplianceByResourceRequest(args)
	assert(args, "You must provide an argument table when creating DescribeComplianceByResourceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceType"] = args["ResourceType"],
		["ResourceId"] = args["ResourceId"],
		["NextToken"] = args["NextToken"],
		["Limit"] = args["Limit"],
		["ComplianceTypes"] = args["ComplianceTypes"],
	}
	asserts.AssertDescribeComplianceByResourceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDiscoveredResourceCountsResponse = { ["nextToken"] = true, ["totalDiscoveredResources"] = true, ["resourceCounts"] = true, nil }

function asserts.AssertGetDiscoveredResourceCountsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDiscoveredResourceCountsResponse to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["totalDiscoveredResources"] then asserts.AssertLong(struct["totalDiscoveredResources"]) end
	if struct["resourceCounts"] then asserts.AssertResourceCounts(struct["resourceCounts"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDiscoveredResourceCountsResponse[k], "GetDiscoveredResourceCountsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDiscoveredResourceCountsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>The string that you use in a subsequent request to get the next page of results in a paginated response.</p>
-- * totalDiscoveredResources [Long] <p>The total number of resources that AWS Config is recording in the region for your account. If you specify resource types in the request, AWS Config returns only the total number of resources for those resource types.</p> <p class="title"> <b>Example</b> </p> <ol> <li> <p>AWS Config is recording three resource types in the US East (Ohio) Region for your account: 25 EC2 instances, 20 IAM users, and 15 S3 buckets, for a total of 60 resources.</p> </li> <li> <p>You make a call to the <code>GetDiscoveredResourceCounts</code> action and specify the resource type, <code>"AWS::EC2::Instances"</code>, in the request.</p> </li> <li> <p>AWS Config returns 25 for <code>totalDiscoveredResources</code>.</p> </li> </ol>
-- * resourceCounts [ResourceCounts] <p>The list of <code>ResourceCount</code> objects. Each object is listed in descending order by the number of resources.</p>
-- @return GetDiscoveredResourceCountsResponse structure as a key-value pair table
function M.GetDiscoveredResourceCountsResponse(args)
	assert(args, "You must provide an argument table when creating GetDiscoveredResourceCountsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["totalDiscoveredResources"] = args["totalDiscoveredResources"],
		["resourceCounts"] = args["resourceCounts"],
	}
	asserts.AssertGetDiscoveredResourceCountsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetAggregateConfigRuleComplianceSummaryResponse = { ["NextToken"] = true, ["GroupByKey"] = true, ["AggregateComplianceCounts"] = true, nil }

function asserts.AssertGetAggregateConfigRuleComplianceSummaryResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAggregateConfigRuleComplianceSummaryResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["GroupByKey"] then asserts.AssertStringWithCharLimit256(struct["GroupByKey"]) end
	if struct["AggregateComplianceCounts"] then asserts.AssertAggregateComplianceCountList(struct["AggregateComplianceCounts"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetAggregateConfigRuleComplianceSummaryResponse[k], "GetAggregateConfigRuleComplianceSummaryResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAggregateConfigRuleComplianceSummaryResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.</p>
-- * GroupByKey [StringWithCharLimit256] <p>Groups the result based on ACCOUNT_ID or AWS_REGION.</p>
-- * AggregateComplianceCounts [AggregateComplianceCountList] <p>Returns a list of AggregateComplianceCounts object.</p>
-- @return GetAggregateConfigRuleComplianceSummaryResponse structure as a key-value pair table
function M.GetAggregateConfigRuleComplianceSummaryResponse(args)
	assert(args, "You must provide an argument table when creating GetAggregateConfigRuleComplianceSummaryResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["GroupByKey"] = args["GroupByKey"],
		["AggregateComplianceCounts"] = args["AggregateComplianceCounts"],
	}
	asserts.AssertGetAggregateConfigRuleComplianceSummaryResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchGetResourceConfigRequest = { ["resourceKeys"] = true, nil }

function asserts.AssertBatchGetResourceConfigRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetResourceConfigRequest to be of type 'table'")
	assert(struct["resourceKeys"], "Expected key resourceKeys to exist in table")
	if struct["resourceKeys"] then asserts.AssertResourceKeys(struct["resourceKeys"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchGetResourceConfigRequest[k], "BatchGetResourceConfigRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetResourceConfigRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resourceKeys [ResourceKeys] <p>A list of resource keys to be processed with the current request. Each element in the list consists of the resource type and resource ID.</p>
-- Required key: resourceKeys
-- @return BatchGetResourceConfigRequest structure as a key-value pair table
function M.BatchGetResourceConfigRequest(args)
	assert(args, "You must provide an argument table when creating BatchGetResourceConfigRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["resourceKeys"] = args["resourceKeys"],
	}
	asserts.AssertBatchGetResourceConfigRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ComplianceSummaryByResourceType = { ["ResourceType"] = true, ["ComplianceSummary"] = true, nil }

function asserts.AssertComplianceSummaryByResourceType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ComplianceSummaryByResourceType to be of type 'table'")
	if struct["ResourceType"] then asserts.AssertStringWithCharLimit256(struct["ResourceType"]) end
	if struct["ComplianceSummary"] then asserts.AssertComplianceSummary(struct["ComplianceSummary"]) end
	for k,_ in pairs(struct) do
		assert(keys.ComplianceSummaryByResourceType[k], "ComplianceSummaryByResourceType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ComplianceSummaryByResourceType
-- <p>The number of AWS resources of a specific type that are compliant or noncompliant, up to a maximum of 100 for each.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceType [StringWithCharLimit256] <p>The type of AWS resource.</p>
-- * ComplianceSummary [ComplianceSummary] <p>The number of AWS resources that are compliant or noncompliant, up to a maximum of 100 for each.</p>
-- @return ComplianceSummaryByResourceType structure as a key-value pair table
function M.ComplianceSummaryByResourceType(args)
	assert(args, "You must provide an argument table when creating ComplianceSummaryByResourceType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceType"] = args["ResourceType"],
		["ComplianceSummary"] = args["ComplianceSummary"],
	}
	asserts.AssertComplianceSummaryByResourceType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeConfigurationAggregatorSourcesStatusRequest = { ["Limit"] = true, ["ConfigurationAggregatorName"] = true, ["NextToken"] = true, ["UpdateStatus"] = true, nil }

function asserts.AssertDescribeConfigurationAggregatorSourcesStatusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeConfigurationAggregatorSourcesStatusRequest to be of type 'table'")
	assert(struct["ConfigurationAggregatorName"], "Expected key ConfigurationAggregatorName to exist in table")
	if struct["Limit"] then asserts.AssertLimit(struct["Limit"]) end
	if struct["ConfigurationAggregatorName"] then asserts.AssertConfigurationAggregatorName(struct["ConfigurationAggregatorName"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["UpdateStatus"] then asserts.AssertAggregatedSourceStatusTypeList(struct["UpdateStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeConfigurationAggregatorSourcesStatusRequest[k], "DescribeConfigurationAggregatorSourcesStatusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeConfigurationAggregatorSourcesStatusRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Limit [Limit] <p>The maximum number of AggregatorSourceStatus returned on each page. The default is maximum. If you specify 0, AWS Config uses the default.</p>
-- * ConfigurationAggregatorName [ConfigurationAggregatorName] <p>The name of the configuration aggregator.</p>
-- * NextToken [String] <p>The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.</p>
-- * UpdateStatus [AggregatedSourceStatusTypeList] <p>Filters the status type.</p> <ul> <li> <p>Valid value FAILED indicates errors while moving data.</p> </li> <li> <p>Valid value SUCCEEDED indicates the data was successfully moved.</p> </li> <li> <p>Valid value OUTDATED indicates the data is not the most recent.</p> </li> </ul>
-- Required key: ConfigurationAggregatorName
-- @return DescribeConfigurationAggregatorSourcesStatusRequest structure as a key-value pair table
function M.DescribeConfigurationAggregatorSourcesStatusRequest(args)
	assert(args, "You must provide an argument table when creating DescribeConfigurationAggregatorSourcesStatusRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Limit"] = args["Limit"],
		["ConfigurationAggregatorName"] = args["ConfigurationAggregatorName"],
		["NextToken"] = args["NextToken"],
		["UpdateStatus"] = args["UpdateStatus"],
	}
	asserts.AssertDescribeConfigurationAggregatorSourcesStatusRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteEvaluationResultsRequest = { ["ConfigRuleName"] = true, nil }

function asserts.AssertDeleteEvaluationResultsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteEvaluationResultsRequest to be of type 'table'")
	assert(struct["ConfigRuleName"], "Expected key ConfigRuleName to exist in table")
	if struct["ConfigRuleName"] then asserts.AssertStringWithCharLimit64(struct["ConfigRuleName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteEvaluationResultsRequest[k], "DeleteEvaluationResultsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteEvaluationResultsRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConfigRuleName [StringWithCharLimit64] <p>The name of the AWS Config rule for which you want to delete the evaluation results.</p>
-- Required key: ConfigRuleName
-- @return DeleteEvaluationResultsRequest structure as a key-value pair table
function M.DeleteEvaluationResultsRequest(args)
	assert(args, "You must provide an argument table when creating DeleteEvaluationResultsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConfigRuleName"] = args["ConfigRuleName"],
	}
	asserts.AssertDeleteEvaluationResultsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResourceIdentifier = { ["resourceType"] = true, ["resourceId"] = true, ["resourceDeletionTime"] = true, ["resourceName"] = true, nil }

function asserts.AssertResourceIdentifier(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceIdentifier to be of type 'table'")
	if struct["resourceType"] then asserts.AssertResourceType(struct["resourceType"]) end
	if struct["resourceId"] then asserts.AssertResourceId(struct["resourceId"]) end
	if struct["resourceDeletionTime"] then asserts.AssertResourceDeletionTime(struct["resourceDeletionTime"]) end
	if struct["resourceName"] then asserts.AssertResourceName(struct["resourceName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceIdentifier[k], "ResourceIdentifier contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceIdentifier
-- <p>The details that identify a resource that is discovered by AWS Config, including the resource type, ID, and (if available) the custom resource name.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resourceType [ResourceType] <p>The type of resource.</p>
-- * resourceId [ResourceId] <p>The ID of the resource (for example, <code>sg-xxxxxx</code>).</p>
-- * resourceDeletionTime [ResourceDeletionTime] <p>The time that the resource was deleted.</p>
-- * resourceName [ResourceName] <p>The custom name of the resource (if available).</p>
-- @return ResourceIdentifier structure as a key-value pair table
function M.ResourceIdentifier(args)
	assert(args, "You must provide an argument table when creating ResourceIdentifier")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["resourceType"] = args["resourceType"],
		["resourceId"] = args["resourceId"],
		["resourceDeletionTime"] = args["resourceDeletionTime"],
		["resourceName"] = args["resourceName"],
	}
	asserts.AssertResourceIdentifier(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeConfigRulesRequest = { ["NextToken"] = true, ["ConfigRuleNames"] = true, nil }

function asserts.AssertDescribeConfigRulesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeConfigRulesRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["ConfigRuleNames"] then asserts.AssertConfigRuleNames(struct["ConfigRuleNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeConfigRulesRequest[k], "DescribeConfigRulesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeConfigRulesRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [String] <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>
-- * ConfigRuleNames [ConfigRuleNames] <p>The names of the AWS Config rules for which you want details. If you do not specify any names, AWS Config returns details for all your rules.</p>
-- @return DescribeConfigRulesRequest structure as a key-value pair table
function M.DescribeConfigRulesRequest(args)
	assert(args, "You must provide an argument table when creating DescribeConfigRulesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["ConfigRuleNames"] = args["ConfigRuleNames"],
	}
	asserts.AssertDescribeConfigRulesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeConfigurationAggregatorSourcesStatusResponse = { ["AggregatedSourceStatusList"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeConfigurationAggregatorSourcesStatusResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeConfigurationAggregatorSourcesStatusResponse to be of type 'table'")
	if struct["AggregatedSourceStatusList"] then asserts.AssertAggregatedSourceStatusList(struct["AggregatedSourceStatusList"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeConfigurationAggregatorSourcesStatusResponse[k], "DescribeConfigurationAggregatorSourcesStatusResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeConfigurationAggregatorSourcesStatusResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AggregatedSourceStatusList [AggregatedSourceStatusList] <p>Returns an AggregatedSourceStatus object. </p>
-- * NextToken [String] <p>The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.</p>
-- @return DescribeConfigurationAggregatorSourcesStatusResponse structure as a key-value pair table
function M.DescribeConfigurationAggregatorSourcesStatusResponse(args)
	assert(args, "You must provide an argument table when creating DescribeConfigurationAggregatorSourcesStatusResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AggregatedSourceStatusList"] = args["AggregatedSourceStatusList"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeConfigurationAggregatorSourcesStatusResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ComplianceContributorCount = { ["CappedCount"] = true, ["CapExceeded"] = true, nil }

function asserts.AssertComplianceContributorCount(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ComplianceContributorCount to be of type 'table'")
	if struct["CappedCount"] then asserts.AssertInteger(struct["CappedCount"]) end
	if struct["CapExceeded"] then asserts.AssertBoolean(struct["CapExceeded"]) end
	for k,_ in pairs(struct) do
		assert(keys.ComplianceContributorCount[k], "ComplianceContributorCount contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ComplianceContributorCount
-- <p>The number of AWS resources or AWS Config rules responsible for the current compliance of the item, up to a maximum number.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CappedCount [Integer] <p>The number of AWS resources or AWS Config rules responsible for the current compliance of the item.</p>
-- * CapExceeded [Boolean] <p>Indicates whether the maximum count is reached.</p>
-- @return ComplianceContributorCount structure as a key-value pair table
function M.ComplianceContributorCount(args)
	assert(args, "You must provide an argument table when creating ComplianceContributorCount")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CappedCount"] = args["CappedCount"],
		["CapExceeded"] = args["CapExceeded"],
	}
	asserts.AssertComplianceContributorCount(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutConfigRuleRequest = { ["ConfigRule"] = true, nil }

function asserts.AssertPutConfigRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutConfigRuleRequest to be of type 'table'")
	assert(struct["ConfigRule"], "Expected key ConfigRule to exist in table")
	if struct["ConfigRule"] then asserts.AssertConfigRule(struct["ConfigRule"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutConfigRuleRequest[k], "PutConfigRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutConfigRuleRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConfigRule [ConfigRule] <p>The rule that you want to add to your account.</p>
-- Required key: ConfigRule
-- @return PutConfigRuleRequest structure as a key-value pair table
function M.PutConfigRuleRequest(args)
	assert(args, "You must provide an argument table when creating PutConfigRuleRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConfigRule"] = args["ConfigRule"],
	}
	asserts.AssertPutConfigRuleRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutRetentionConfigurationResponse = { ["RetentionConfiguration"] = true, nil }

function asserts.AssertPutRetentionConfigurationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutRetentionConfigurationResponse to be of type 'table'")
	if struct["RetentionConfiguration"] then asserts.AssertRetentionConfiguration(struct["RetentionConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutRetentionConfigurationResponse[k], "PutRetentionConfigurationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutRetentionConfigurationResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RetentionConfiguration [RetentionConfiguration] <p>Returns a retention configuration object.</p>
-- @return PutRetentionConfigurationResponse structure as a key-value pair table
function M.PutRetentionConfigurationResponse(args)
	assert(args, "You must provide an argument table when creating PutRetentionConfigurationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RetentionConfiguration"] = args["RetentionConfiguration"],
	}
	asserts.AssertPutRetentionConfigurationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SourceDetail = { ["EventSource"] = true, ["MessageType"] = true, ["MaximumExecutionFrequency"] = true, nil }

function asserts.AssertSourceDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SourceDetail to be of type 'table'")
	if struct["EventSource"] then asserts.AssertEventSource(struct["EventSource"]) end
	if struct["MessageType"] then asserts.AssertMessageType(struct["MessageType"]) end
	if struct["MaximumExecutionFrequency"] then asserts.AssertMaximumExecutionFrequency(struct["MaximumExecutionFrequency"]) end
	for k,_ in pairs(struct) do
		assert(keys.SourceDetail[k], "SourceDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SourceDetail
-- <p>Provides the source and the message types that trigger AWS Config to evaluate your AWS resources against a rule. It also provides the frequency with which you want AWS Config to run evaluations for the rule if the trigger type is periodic. You can specify the parameter values for <code>SourceDetail</code> only for custom rules. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EventSource [EventSource] <p>The source of the event, such as an AWS service, that triggers AWS Config to evaluate your AWS resources.</p>
-- * MessageType [MessageType] <p>The type of notification that triggers AWS Config to run an evaluation for a rule. You can specify the following notification types:</p> <ul> <li> <p> <code>ConfigurationItemChangeNotification</code> - Triggers an evaluation when AWS Config delivers a configuration item as a result of a resource change.</p> </li> <li> <p> <code>OversizedConfigurationItemChangeNotification</code> - Triggers an evaluation when AWS Config delivers an oversized configuration item. AWS Config may generate this notification type when a resource changes and the notification exceeds the maximum size allowed by Amazon SNS.</p> </li> <li> <p> <code>ScheduledNotification</code> - Triggers a periodic evaluation at the frequency specified for <code>MaximumExecutionFrequency</code>.</p> </li> <li> <p> <code>ConfigurationSnapshotDeliveryCompleted</code> - Triggers a periodic evaluation when AWS Config delivers a configuration snapshot.</p> </li> </ul> <p>If you want your custom rule to be triggered by configuration changes, specify two SourceDetail objects, one for <code>ConfigurationItemChangeNotification</code> and one for <code>OversizedConfigurationItemChangeNotification</code>.</p>
-- * MaximumExecutionFrequency [MaximumExecutionFrequency] <p>The frequency at which you want AWS Config to run evaluations for a custom rule with a periodic trigger. If you specify a value for <code>MaximumExecutionFrequency</code>, then <code>MessageType</code> must use the <code>ScheduledNotification</code> value.</p> <note> <p>By default, rules with a periodic trigger are evaluated every 24 hours. To change the frequency, specify a valid value for the <code>MaximumExecutionFrequency</code> parameter.</p> <p>Based on the valid value you choose, AWS Config runs evaluations once for each valid value. For example, if you choose <code>Three_Hours</code>, AWS Config runs evaluations once every three hours. In this case, <code>Three_Hours</code> is the frequency of this rule. </p> </note>
-- @return SourceDetail structure as a key-value pair table
function M.SourceDetail(args)
	assert(args, "You must provide an argument table when creating SourceDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EventSource"] = args["EventSource"],
		["MessageType"] = args["MessageType"],
		["MaximumExecutionFrequency"] = args["MaximumExecutionFrequency"],
	}
	asserts.AssertSourceDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AggregateEvaluationResult = { ["ComplianceType"] = true, ["EvaluationResultIdentifier"] = true, ["ConfigRuleInvokedTime"] = true, ["AwsRegion"] = true, ["ResultRecordedTime"] = true, ["Annotation"] = true, ["AccountId"] = true, nil }

function asserts.AssertAggregateEvaluationResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AggregateEvaluationResult to be of type 'table'")
	if struct["ComplianceType"] then asserts.AssertComplianceType(struct["ComplianceType"]) end
	if struct["EvaluationResultIdentifier"] then asserts.AssertEvaluationResultIdentifier(struct["EvaluationResultIdentifier"]) end
	if struct["ConfigRuleInvokedTime"] then asserts.AssertDate(struct["ConfigRuleInvokedTime"]) end
	if struct["AwsRegion"] then asserts.AssertAwsRegion(struct["AwsRegion"]) end
	if struct["ResultRecordedTime"] then asserts.AssertDate(struct["ResultRecordedTime"]) end
	if struct["Annotation"] then asserts.AssertStringWithCharLimit256(struct["Annotation"]) end
	if struct["AccountId"] then asserts.AssertAccountId(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AggregateEvaluationResult[k], "AggregateEvaluationResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AggregateEvaluationResult
-- <p>The details of an AWS Config evaluation for an account ID and region in an aggregator. Provides the AWS resource that was evaluated, the compliance of the resource, related time stamps, and supplementary information. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ComplianceType [ComplianceType] <p>The resource compliance status.</p> <p>For the <code>AggregationEvaluationResult</code> data type, AWS Config supports only the <code>COMPLIANT</code> and <code>NON_COMPLIANT</code>. AWS Config does not support the <code>NOT_APPLICABLE</code> and <code>INSUFFICIENT_DATA</code> value.</p>
-- * EvaluationResultIdentifier [EvaluationResultIdentifier] <p>Uniquely identifies the evaluation result.</p>
-- * ConfigRuleInvokedTime [Date] <p>The time when the AWS Config rule evaluated the AWS resource.</p>
-- * AwsRegion [AwsRegion] <p>The source region from where the data is aggregated.</p>
-- * ResultRecordedTime [Date] <p>The time when AWS Config recorded the aggregate evaluation result.</p>
-- * Annotation [StringWithCharLimit256] <p>Supplementary information about how the agrregate evaluation determined the compliance.</p>
-- * AccountId [AccountId] <p>The 12-digit account ID of the source account.</p>
-- @return AggregateEvaluationResult structure as a key-value pair table
function M.AggregateEvaluationResult(args)
	assert(args, "You must provide an argument table when creating AggregateEvaluationResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ComplianceType"] = args["ComplianceType"],
		["EvaluationResultIdentifier"] = args["EvaluationResultIdentifier"],
		["ConfigRuleInvokedTime"] = args["ConfigRuleInvokedTime"],
		["AwsRegion"] = args["AwsRegion"],
		["ResultRecordedTime"] = args["ResultRecordedTime"],
		["Annotation"] = args["Annotation"],
		["AccountId"] = args["AccountId"],
	}
	asserts.AssertAggregateEvaluationResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AggregateComplianceCount = { ["GroupName"] = true, ["ComplianceSummary"] = true, nil }

function asserts.AssertAggregateComplianceCount(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AggregateComplianceCount to be of type 'table'")
	if struct["GroupName"] then asserts.AssertStringWithCharLimit256(struct["GroupName"]) end
	if struct["ComplianceSummary"] then asserts.AssertComplianceSummary(struct["ComplianceSummary"]) end
	for k,_ in pairs(struct) do
		assert(keys.AggregateComplianceCount[k], "AggregateComplianceCount contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AggregateComplianceCount
-- <p>Returns the number of compliant and noncompliant rules for one or more accounts and regions in an aggregator.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GroupName [StringWithCharLimit256] <p>The 12-digit account ID or region based on the GroupByKey value.</p>
-- * ComplianceSummary [ComplianceSummary] <p>The number of compliant and noncompliant AWS Config rules.</p>
-- @return AggregateComplianceCount structure as a key-value pair table
function M.AggregateComplianceCount(args)
	assert(args, "You must provide an argument table when creating AggregateComplianceCount")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GroupName"] = args["GroupName"],
		["ComplianceSummary"] = args["ComplianceSummary"],
	}
	asserts.AssertAggregateComplianceCount(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeletePendingAggregationRequestRequest = { ["RequesterAccountId"] = true, ["RequesterAwsRegion"] = true, nil }

function asserts.AssertDeletePendingAggregationRequestRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePendingAggregationRequestRequest to be of type 'table'")
	assert(struct["RequesterAccountId"], "Expected key RequesterAccountId to exist in table")
	assert(struct["RequesterAwsRegion"], "Expected key RequesterAwsRegion to exist in table")
	if struct["RequesterAccountId"] then asserts.AssertAccountId(struct["RequesterAccountId"]) end
	if struct["RequesterAwsRegion"] then asserts.AssertAwsRegion(struct["RequesterAwsRegion"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeletePendingAggregationRequestRequest[k], "DeletePendingAggregationRequestRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePendingAggregationRequestRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RequesterAccountId [AccountId] <p>The 12-digit account ID of the account requesting to aggregate data.</p>
-- * RequesterAwsRegion [AwsRegion] <p>The region requesting to aggregate data.</p>
-- Required key: RequesterAccountId
-- Required key: RequesterAwsRegion
-- @return DeletePendingAggregationRequestRequest structure as a key-value pair table
function M.DeletePendingAggregationRequestRequest(args)
	assert(args, "You must provide an argument table when creating DeletePendingAggregationRequestRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RequesterAccountId"] = args["RequesterAccountId"],
		["RequesterAwsRegion"] = args["RequesterAwsRegion"],
	}
	asserts.AssertDeletePendingAggregationRequestRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ConfigSnapshotDeliveryProperties = { ["deliveryFrequency"] = true, nil }

function asserts.AssertConfigSnapshotDeliveryProperties(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfigSnapshotDeliveryProperties to be of type 'table'")
	if struct["deliveryFrequency"] then asserts.AssertMaximumExecutionFrequency(struct["deliveryFrequency"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConfigSnapshotDeliveryProperties[k], "ConfigSnapshotDeliveryProperties contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfigSnapshotDeliveryProperties
-- <p>Provides options for how often AWS Config delivers configuration snapshots to the Amazon S3 bucket in your delivery channel.</p> <note> <p>If you want to create a rule that triggers evaluations for your resources when AWS Config delivers the configuration snapshot, see the following:</p> </note> <p>The frequency for a rule that triggers evaluations for your resources when AWS Config delivers the configuration snapshot is set by one of two values, depending on which is less frequent:</p> <ul> <li> <p>The value for the <code>deliveryFrequency</code> parameter within the delivery channel configuration, which sets how often AWS Config delivers configuration snapshots. This value also sets how often AWS Config invokes evaluations for AWS Config rules.</p> </li> <li> <p>The value for the <code>MaximumExecutionFrequency</code> parameter, which sets the maximum frequency with which AWS Config invokes evaluations for the rule. For more information, see <a>ConfigRule</a>.</p> </li> </ul> <p>If the <code>deliveryFrequency</code> value is less frequent than the <code>MaximumExecutionFrequency</code> value for a rule, AWS Config invokes the rule only as often as the <code>deliveryFrequency</code> value.</p> <ol> <li> <p>For example, you want your rule to run evaluations when AWS Config delivers the configuration snapshot.</p> </li> <li> <p>You specify the <code>MaximumExecutionFrequency</code> value for <code>Six_Hours</code>. </p> </li> <li> <p>You then specify the delivery channel <code>deliveryFrequency</code> value for <code>TwentyFour_Hours</code>.</p> </li> <li> <p>Because the value for <code>deliveryFrequency</code> is less frequent than <code>MaximumExecutionFrequency</code>, AWS Config invokes evaluations for the rule every 24 hours. </p> </li> </ol> <p>You should set the <code>MaximumExecutionFrequency</code> value to be at least as frequent as the <code>deliveryFrequency</code> value. You can view the <code>deliveryFrequency</code> value by using the <code>DescribeDeliveryChannnels</code> action.</p> <p>To update the <code>deliveryFrequency</code> with which AWS Config delivers your configuration snapshots, use the <code>PutDeliveryChannel</code> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * deliveryFrequency [MaximumExecutionFrequency] <p>The frequency with which AWS Config delivers configuration snapshots.</p>
-- @return ConfigSnapshotDeliveryProperties structure as a key-value pair table
function M.ConfigSnapshotDeliveryProperties(args)
	assert(args, "You must provide an argument table when creating ConfigSnapshotDeliveryProperties")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["deliveryFrequency"] = args["deliveryFrequency"],
	}
	asserts.AssertConfigSnapshotDeliveryProperties(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EvaluationResultQualifier = { ["ResourceType"] = true, ["ResourceId"] = true, ["ConfigRuleName"] = true, nil }

function asserts.AssertEvaluationResultQualifier(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EvaluationResultQualifier to be of type 'table'")
	if struct["ResourceType"] then asserts.AssertStringWithCharLimit256(struct["ResourceType"]) end
	if struct["ResourceId"] then asserts.AssertBaseResourceId(struct["ResourceId"]) end
	if struct["ConfigRuleName"] then asserts.AssertStringWithCharLimit64(struct["ConfigRuleName"]) end
	for k,_ in pairs(struct) do
		assert(keys.EvaluationResultQualifier[k], "EvaluationResultQualifier contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EvaluationResultQualifier
-- <p>Identifies an AWS Config rule that evaluated an AWS resource, and provides the type and ID of the resource that the rule evaluated.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceType [StringWithCharLimit256] <p>The type of AWS resource that was evaluated.</p>
-- * ResourceId [BaseResourceId] <p>The ID of the evaluated AWS resource.</p>
-- * ConfigRuleName [StringWithCharLimit64] <p>The name of the AWS Config rule that was used in the evaluation.</p>
-- @return EvaluationResultQualifier structure as a key-value pair table
function M.EvaluationResultQualifier(args)
	assert(args, "You must provide an argument table when creating EvaluationResultQualifier")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceType"] = args["ResourceType"],
		["ResourceId"] = args["ResourceId"],
		["ConfigRuleName"] = args["ConfigRuleName"],
	}
	asserts.AssertEvaluationResultQualifier(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Evaluation = { ["OrderingTimestamp"] = true, ["ComplianceResourceId"] = true, ["ComplianceResourceType"] = true, ["Annotation"] = true, ["ComplianceType"] = true, nil }

function asserts.AssertEvaluation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Evaluation to be of type 'table'")
	assert(struct["ComplianceResourceType"], "Expected key ComplianceResourceType to exist in table")
	assert(struct["ComplianceResourceId"], "Expected key ComplianceResourceId to exist in table")
	assert(struct["ComplianceType"], "Expected key ComplianceType to exist in table")
	assert(struct["OrderingTimestamp"], "Expected key OrderingTimestamp to exist in table")
	if struct["OrderingTimestamp"] then asserts.AssertOrderingTimestamp(struct["OrderingTimestamp"]) end
	if struct["ComplianceResourceId"] then asserts.AssertBaseResourceId(struct["ComplianceResourceId"]) end
	if struct["ComplianceResourceType"] then asserts.AssertStringWithCharLimit256(struct["ComplianceResourceType"]) end
	if struct["Annotation"] then asserts.AssertStringWithCharLimit256(struct["Annotation"]) end
	if struct["ComplianceType"] then asserts.AssertComplianceType(struct["ComplianceType"]) end
	for k,_ in pairs(struct) do
		assert(keys.Evaluation[k], "Evaluation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Evaluation
-- <p>Identifies an AWS resource and indicates whether it complies with the AWS Config rule that it was evaluated against.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OrderingTimestamp [OrderingTimestamp] <p>The time of the event in AWS Config that triggered the evaluation. For event-based evaluations, the time indicates when AWS Config created the configuration item that triggered the evaluation. For periodic evaluations, the time indicates when AWS Config triggered the evaluation at the frequency that you specified (for example, every 24 hours).</p>
-- * ComplianceResourceId [BaseResourceId] <p>The ID of the AWS resource that was evaluated.</p>
-- * ComplianceResourceType [StringWithCharLimit256] <p>The type of AWS resource that was evaluated.</p>
-- * Annotation [StringWithCharLimit256] <p>Supplementary information about how the evaluation determined the compliance.</p>
-- * ComplianceType [ComplianceType] <p>Indicates whether the AWS resource complies with the AWS Config rule that it was evaluated against.</p> <p>For the <code>Evaluation</code> data type, AWS Config supports only the <code>COMPLIANT</code>, <code>NON_COMPLIANT</code>, and <code>NOT_APPLICABLE</code> values. AWS Config does not support the <code>INSUFFICIENT_DATA</code> value for this data type.</p> <p>Similarly, AWS Config does not accept <code>INSUFFICIENT_DATA</code> as the value for <code>ComplianceType</code> from a <code>PutEvaluations</code> request. For example, an AWS Lambda function for a custom AWS Config rule cannot pass an <code>INSUFFICIENT_DATA</code> value to AWS Config.</p>
-- Required key: ComplianceResourceType
-- Required key: ComplianceResourceId
-- Required key: ComplianceType
-- Required key: OrderingTimestamp
-- @return Evaluation structure as a key-value pair table
function M.Evaluation(args)
	assert(args, "You must provide an argument table when creating Evaluation")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OrderingTimestamp"] = args["OrderingTimestamp"],
		["ComplianceResourceId"] = args["ComplianceResourceId"],
		["ComplianceResourceType"] = args["ComplianceResourceType"],
		["Annotation"] = args["Annotation"],
		["ComplianceType"] = args["ComplianceType"],
	}
	asserts.AssertEvaluation(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetComplianceSummaryByConfigRuleResponse = { ["ComplianceSummary"] = true, nil }

function asserts.AssertGetComplianceSummaryByConfigRuleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetComplianceSummaryByConfigRuleResponse to be of type 'table'")
	if struct["ComplianceSummary"] then asserts.AssertComplianceSummary(struct["ComplianceSummary"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetComplianceSummaryByConfigRuleResponse[k], "GetComplianceSummaryByConfigRuleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetComplianceSummaryByConfigRuleResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ComplianceSummary [ComplianceSummary] <p>The number of AWS Config rules that are compliant and the number that are noncompliant, up to a maximum of 25 for each.</p>
-- @return GetComplianceSummaryByConfigRuleResponse structure as a key-value pair table
function M.GetComplianceSummaryByConfigRuleResponse(args)
	assert(args, "You must provide an argument table when creating GetComplianceSummaryByConfigRuleResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ComplianceSummary"] = args["ComplianceSummary"],
	}
	asserts.AssertGetComplianceSummaryByConfigRuleResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteDeliveryChannelRequest = { ["DeliveryChannelName"] = true, nil }

function asserts.AssertDeleteDeliveryChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDeliveryChannelRequest to be of type 'table'")
	assert(struct["DeliveryChannelName"], "Expected key DeliveryChannelName to exist in table")
	if struct["DeliveryChannelName"] then asserts.AssertChannelName(struct["DeliveryChannelName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDeliveryChannelRequest[k], "DeleteDeliveryChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDeliveryChannelRequest
-- <p>The input for the <a>DeleteDeliveryChannel</a> action. The action accepts the following data, in JSON format. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeliveryChannelName [ChannelName] <p>The name of the delivery channel to delete.</p>
-- Required key: DeliveryChannelName
-- @return DeleteDeliveryChannelRequest structure as a key-value pair table
function M.DeleteDeliveryChannelRequest(args)
	assert(args, "You must provide an argument table when creating DeleteDeliveryChannelRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeliveryChannelName"] = args["DeliveryChannelName"],
	}
	asserts.AssertDeleteDeliveryChannelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AccountAggregationSource = { ["AllAwsRegions"] = true, ["AccountIds"] = true, ["AwsRegions"] = true, nil }

function asserts.AssertAccountAggregationSource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccountAggregationSource to be of type 'table'")
	assert(struct["AccountIds"], "Expected key AccountIds to exist in table")
	if struct["AllAwsRegions"] then asserts.AssertBoolean(struct["AllAwsRegions"]) end
	if struct["AccountIds"] then asserts.AssertAccountAggregationSourceAccountList(struct["AccountIds"]) end
	if struct["AwsRegions"] then asserts.AssertAggregatorRegionList(struct["AwsRegions"]) end
	for k,_ in pairs(struct) do
		assert(keys.AccountAggregationSource[k], "AccountAggregationSource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccountAggregationSource
-- <p>A collection of accounts and regions.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AllAwsRegions [Boolean] <p>If true, aggregate existing AWS Config regions and future regions.</p>
-- * AccountIds [AccountAggregationSourceAccountList] <p>The 12-digit account ID of the account being aggregated. </p>
-- * AwsRegions [AggregatorRegionList] <p>The source regions being aggregated.</p>
-- Required key: AccountIds
-- @return AccountAggregationSource structure as a key-value pair table
function M.AccountAggregationSource(args)
	assert(args, "You must provide an argument table when creating AccountAggregationSource")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AllAwsRegions"] = args["AllAwsRegions"],
		["AccountIds"] = args["AccountIds"],
		["AwsRegions"] = args["AwsRegions"],
	}
	asserts.AssertAccountAggregationSource(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BaseConfigurationItem = { ["configurationItemCaptureTime"] = true, ["resourceCreationTime"] = true, ["availabilityZone"] = true, ["resourceType"] = true, ["resourceId"] = true, ["configurationStateId"] = true, ["awsRegion"] = true, ["version"] = true, ["configurationItemStatus"] = true, ["supplementaryConfiguration"] = true, ["resourceName"] = true, ["configuration"] = true, ["arn"] = true, ["accountId"] = true, nil }

function asserts.AssertBaseConfigurationItem(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BaseConfigurationItem to be of type 'table'")
	if struct["configurationItemCaptureTime"] then asserts.AssertConfigurationItemCaptureTime(struct["configurationItemCaptureTime"]) end
	if struct["resourceCreationTime"] then asserts.AssertResourceCreationTime(struct["resourceCreationTime"]) end
	if struct["availabilityZone"] then asserts.AssertAvailabilityZone(struct["availabilityZone"]) end
	if struct["resourceType"] then asserts.AssertResourceType(struct["resourceType"]) end
	if struct["resourceId"] then asserts.AssertResourceId(struct["resourceId"]) end
	if struct["configurationStateId"] then asserts.AssertConfigurationStateId(struct["configurationStateId"]) end
	if struct["awsRegion"] then asserts.AssertAwsRegion(struct["awsRegion"]) end
	if struct["version"] then asserts.AssertVersion(struct["version"]) end
	if struct["configurationItemStatus"] then asserts.AssertConfigurationItemStatus(struct["configurationItemStatus"]) end
	if struct["supplementaryConfiguration"] then asserts.AssertSupplementaryConfiguration(struct["supplementaryConfiguration"]) end
	if struct["resourceName"] then asserts.AssertResourceName(struct["resourceName"]) end
	if struct["configuration"] then asserts.AssertConfiguration(struct["configuration"]) end
	if struct["arn"] then asserts.AssertARN(struct["arn"]) end
	if struct["accountId"] then asserts.AssertAccountId(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.BaseConfigurationItem[k], "BaseConfigurationItem contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BaseConfigurationItem
-- <p>The detailed configuration of a specified resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * configurationItemCaptureTime [ConfigurationItemCaptureTime] <p>The time when the configuration recording was initiated.</p>
-- * resourceCreationTime [ResourceCreationTime] <p>The time stamp when the resource was created.</p>
-- * availabilityZone [AvailabilityZone] <p>The Availability Zone associated with the resource.</p>
-- * resourceType [ResourceType] <p>The type of AWS resource.</p>
-- * resourceId [ResourceId] <p>The ID of the resource (for example., sg-xxxxxx).</p>
-- * configurationStateId [ConfigurationStateId] <p>An identifier that indicates the ordering of the configuration items of a resource.</p>
-- * awsRegion [AwsRegion] <p>The region where the resource resides.</p>
-- * version [Version] <p>The version number of the resource configuration.</p>
-- * configurationItemStatus [ConfigurationItemStatus] <p>The configuration item status.</p>
-- * supplementaryConfiguration [SupplementaryConfiguration] <p>Configuration attributes that AWS Config returns for certain resource types to supplement the information returned for the configuration parameter.</p>
-- * resourceName [ResourceName] <p>The custom name of the resource, if available.</p>
-- * configuration [Configuration] <p>The description of the resource configuration.</p>
-- * arn [ARN] <p>The Amazon Resource Name (ARN) of the resource.</p>
-- * accountId [AccountId] <p>The 12 digit AWS account ID associated with the resource.</p>
-- @return BaseConfigurationItem structure as a key-value pair table
function M.BaseConfigurationItem(args)
	assert(args, "You must provide an argument table when creating BaseConfigurationItem")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["configurationItemCaptureTime"] = args["configurationItemCaptureTime"],
		["resourceCreationTime"] = args["resourceCreationTime"],
		["availabilityZone"] = args["availabilityZone"],
		["resourceType"] = args["resourceType"],
		["resourceId"] = args["resourceId"],
		["configurationStateId"] = args["configurationStateId"],
		["awsRegion"] = args["awsRegion"],
		["version"] = args["version"],
		["configurationItemStatus"] = args["configurationItemStatus"],
		["supplementaryConfiguration"] = args["supplementaryConfiguration"],
		["resourceName"] = args["resourceName"],
		["configuration"] = args["configuration"],
		["arn"] = args["arn"],
		["accountId"] = args["accountId"],
	}
	asserts.AssertBaseConfigurationItem(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribePendingAggregationRequestsRequest = { ["NextToken"] = true, ["Limit"] = true, nil }

function asserts.AssertDescribePendingAggregationRequestsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribePendingAggregationRequestsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["Limit"] then asserts.AssertDescribePendingAggregationRequestsLimit(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribePendingAggregationRequestsRequest[k], "DescribePendingAggregationRequestsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribePendingAggregationRequestsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [String] <p>The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.</p>
-- * Limit [DescribePendingAggregationRequestsLimit] <p>The maximum number of evaluation results returned on each page. The default is maximum. If you specify 0, AWS Config uses the default.</p>
-- @return DescribePendingAggregationRequestsRequest structure as a key-value pair table
function M.DescribePendingAggregationRequestsRequest(args)
	assert(args, "You must provide an argument table when creating DescribePendingAggregationRequestsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Limit"] = args["Limit"],
	}
	asserts.AssertDescribePendingAggregationRequestsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeConfigurationRecordersResponse = { ["ConfigurationRecorders"] = true, nil }

function asserts.AssertDescribeConfigurationRecordersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeConfigurationRecordersResponse to be of type 'table'")
	if struct["ConfigurationRecorders"] then asserts.AssertConfigurationRecorderList(struct["ConfigurationRecorders"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeConfigurationRecordersResponse[k], "DescribeConfigurationRecordersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeConfigurationRecordersResponse
-- <p>The output for the <a>DescribeConfigurationRecorders</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConfigurationRecorders [ConfigurationRecorderList] <p>A list that contains the descriptions of the specified configuration recorders.</p>
-- @return DescribeConfigurationRecordersResponse structure as a key-value pair table
function M.DescribeConfigurationRecordersResponse(args)
	assert(args, "You must provide an argument table when creating DescribeConfigurationRecordersResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConfigurationRecorders"] = args["ConfigurationRecorders"],
	}
	asserts.AssertDescribeConfigurationRecordersResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AggregatedSourceStatus = { ["LastUpdateStatus"] = true, ["SourceType"] = true, ["LastUpdateTime"] = true, ["SourceId"] = true, ["AwsRegion"] = true, ["LastErrorCode"] = true, ["LastErrorMessage"] = true, nil }

function asserts.AssertAggregatedSourceStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AggregatedSourceStatus to be of type 'table'")
	if struct["LastUpdateStatus"] then asserts.AssertAggregatedSourceStatusType(struct["LastUpdateStatus"]) end
	if struct["SourceType"] then asserts.AssertAggregatedSourceType(struct["SourceType"]) end
	if struct["LastUpdateTime"] then asserts.AssertDate(struct["LastUpdateTime"]) end
	if struct["SourceId"] then asserts.AssertString(struct["SourceId"]) end
	if struct["AwsRegion"] then asserts.AssertAwsRegion(struct["AwsRegion"]) end
	if struct["LastErrorCode"] then asserts.AssertString(struct["LastErrorCode"]) end
	if struct["LastErrorMessage"] then asserts.AssertString(struct["LastErrorMessage"]) end
	for k,_ in pairs(struct) do
		assert(keys.AggregatedSourceStatus[k], "AggregatedSourceStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AggregatedSourceStatus
-- <p>The current sync status between the source and the aggregator account.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LastUpdateStatus [AggregatedSourceStatusType] <p>Filters the last updated status type.</p> <ul> <li> <p>Valid value FAILED indicates errors while moving data.</p> </li> <li> <p>Valid value SUCCEEDED indicates the data was successfully moved.</p> </li> <li> <p>Valid value OUTDATED indicates the data is not the most recent.</p> </li> </ul>
-- * SourceType [AggregatedSourceType] <p>The source account or an organization.</p>
-- * LastUpdateTime [Date] <p>The time of the last update.</p>
-- * SourceId [String] <p>The source account ID or an organization.</p>
-- * AwsRegion [AwsRegion] <p>The region authorized to collect aggregated data.</p>
-- * LastErrorCode [String] <p>The error code that AWS Config returned when the source account aggregation last failed.</p>
-- * LastErrorMessage [String] <p>The message indicating that the source account aggregation failed due to an error.</p>
-- @return AggregatedSourceStatus structure as a key-value pair table
function M.AggregatedSourceStatus(args)
	assert(args, "You must provide an argument table when creating AggregatedSourceStatus")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LastUpdateStatus"] = args["LastUpdateStatus"],
		["SourceType"] = args["SourceType"],
		["LastUpdateTime"] = args["LastUpdateTime"],
		["SourceId"] = args["SourceId"],
		["AwsRegion"] = args["AwsRegion"],
		["LastErrorCode"] = args["LastErrorCode"],
		["LastErrorMessage"] = args["LastErrorMessage"],
	}
	asserts.AssertAggregatedSourceStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeConfigRuleEvaluationStatusResponse = { ["NextToken"] = true, ["ConfigRulesEvaluationStatus"] = true, nil }

function asserts.AssertDescribeConfigRuleEvaluationStatusResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeConfigRuleEvaluationStatusResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["ConfigRulesEvaluationStatus"] then asserts.AssertConfigRuleEvaluationStatusList(struct["ConfigRulesEvaluationStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeConfigRuleEvaluationStatusResponse[k], "DescribeConfigRuleEvaluationStatusResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeConfigRuleEvaluationStatusResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [String] <p>The string that you use in a subsequent request to get the next page of results in a paginated response.</p>
-- * ConfigRulesEvaluationStatus [ConfigRuleEvaluationStatusList] <p>Status information about your AWS managed Config rules.</p>
-- @return DescribeConfigRuleEvaluationStatusResponse structure as a key-value pair table
function M.DescribeConfigRuleEvaluationStatusResponse(args)
	assert(args, "You must provide an argument table when creating DescribeConfigRuleEvaluationStatusResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["ConfigRulesEvaluationStatus"] = args["ConfigRulesEvaluationStatus"],
	}
	asserts.AssertDescribeConfigRuleEvaluationStatusResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ComplianceSummary = { ["NonCompliantResourceCount"] = true, ["ComplianceSummaryTimestamp"] = true, ["CompliantResourceCount"] = true, nil }

function asserts.AssertComplianceSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ComplianceSummary to be of type 'table'")
	if struct["NonCompliantResourceCount"] then asserts.AssertComplianceContributorCount(struct["NonCompliantResourceCount"]) end
	if struct["ComplianceSummaryTimestamp"] then asserts.AssertDate(struct["ComplianceSummaryTimestamp"]) end
	if struct["CompliantResourceCount"] then asserts.AssertComplianceContributorCount(struct["CompliantResourceCount"]) end
	for k,_ in pairs(struct) do
		assert(keys.ComplianceSummary[k], "ComplianceSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ComplianceSummary
-- <p>The number of AWS Config rules or AWS resources that are compliant and noncompliant.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NonCompliantResourceCount [ComplianceContributorCount] <p>The number of AWS Config rules or AWS resources that are noncompliant, up to a maximum of 25 for rules and 100 for resources.</p>
-- * ComplianceSummaryTimestamp [Date] <p>The time that AWS Config created the compliance summary.</p>
-- * CompliantResourceCount [ComplianceContributorCount] <p>The number of AWS Config rules or AWS resources that are compliant, up to a maximum of 25 for rules and 100 for resources.</p>
-- @return ComplianceSummary structure as a key-value pair table
function M.ComplianceSummary(args)
	assert(args, "You must provide an argument table when creating ComplianceSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NonCompliantResourceCount"] = args["NonCompliantResourceCount"],
		["ComplianceSummaryTimestamp"] = args["ComplianceSummaryTimestamp"],
		["CompliantResourceCount"] = args["CompliantResourceCount"],
	}
	asserts.AssertComplianceSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteRetentionConfigurationRequest = { ["RetentionConfigurationName"] = true, nil }

function asserts.AssertDeleteRetentionConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRetentionConfigurationRequest to be of type 'table'")
	assert(struct["RetentionConfigurationName"], "Expected key RetentionConfigurationName to exist in table")
	if struct["RetentionConfigurationName"] then asserts.AssertRetentionConfigurationName(struct["RetentionConfigurationName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteRetentionConfigurationRequest[k], "DeleteRetentionConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRetentionConfigurationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RetentionConfigurationName [RetentionConfigurationName] <p>The name of the retention configuration to delete.</p>
-- Required key: RetentionConfigurationName
-- @return DeleteRetentionConfigurationRequest structure as a key-value pair table
function M.DeleteRetentionConfigurationRequest(args)
	assert(args, "You must provide an argument table when creating DeleteRetentionConfigurationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RetentionConfigurationName"] = args["RetentionConfigurationName"],
	}
	asserts.AssertDeleteRetentionConfigurationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteConfigRuleRequest = { ["ConfigRuleName"] = true, nil }

function asserts.AssertDeleteConfigRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteConfigRuleRequest to be of type 'table'")
	assert(struct["ConfigRuleName"], "Expected key ConfigRuleName to exist in table")
	if struct["ConfigRuleName"] then asserts.AssertStringWithCharLimit64(struct["ConfigRuleName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteConfigRuleRequest[k], "DeleteConfigRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteConfigRuleRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConfigRuleName [StringWithCharLimit64] <p>The name of the AWS Config rule that you want to delete.</p>
-- Required key: ConfigRuleName
-- @return DeleteConfigRuleRequest structure as a key-value pair table
function M.DeleteConfigRuleRequest(args)
	assert(args, "You must provide an argument table when creating DeleteConfigRuleRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConfigRuleName"] = args["ConfigRuleName"],
	}
	asserts.AssertDeleteConfigRuleRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetComplianceDetailsByConfigRuleRequest = { ["NextToken"] = true, ["ComplianceTypes"] = true, ["Limit"] = true, ["ConfigRuleName"] = true, nil }

function asserts.AssertGetComplianceDetailsByConfigRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetComplianceDetailsByConfigRuleRequest to be of type 'table'")
	assert(struct["ConfigRuleName"], "Expected key ConfigRuleName to exist in table")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["ComplianceTypes"] then asserts.AssertComplianceTypes(struct["ComplianceTypes"]) end
	if struct["Limit"] then asserts.AssertLimit(struct["Limit"]) end
	if struct["ConfigRuleName"] then asserts.AssertStringWithCharLimit64(struct["ConfigRuleName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetComplianceDetailsByConfigRuleRequest[k], "GetComplianceDetailsByConfigRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetComplianceDetailsByConfigRuleRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>
-- * ComplianceTypes [ComplianceTypes] <p>Filters the results by compliance.</p> <p>The allowed values are <code>COMPLIANT</code>, <code>NON_COMPLIANT</code>, and <code>NOT_APPLICABLE</code>.</p>
-- * Limit [Limit] <p>The maximum number of evaluation results returned on each page. The default is 10. You cannot specify a number greater than 100. If you specify 0, AWS Config uses the default.</p>
-- * ConfigRuleName [StringWithCharLimit64] <p>The name of the AWS Config rule for which you want compliance information.</p>
-- Required key: ConfigRuleName
-- @return GetComplianceDetailsByConfigRuleRequest structure as a key-value pair table
function M.GetComplianceDetailsByConfigRuleRequest(args)
	assert(args, "You must provide an argument table when creating GetComplianceDetailsByConfigRuleRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["ComplianceTypes"] = args["ComplianceTypes"],
		["Limit"] = args["Limit"],
		["ConfigRuleName"] = args["ConfigRuleName"],
	}
	asserts.AssertGetComplianceDetailsByConfigRuleRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopConfigurationRecorderRequest = { ["ConfigurationRecorderName"] = true, nil }

function asserts.AssertStopConfigurationRecorderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopConfigurationRecorderRequest to be of type 'table'")
	assert(struct["ConfigurationRecorderName"], "Expected key ConfigurationRecorderName to exist in table")
	if struct["ConfigurationRecorderName"] then asserts.AssertRecorderName(struct["ConfigurationRecorderName"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopConfigurationRecorderRequest[k], "StopConfigurationRecorderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopConfigurationRecorderRequest
-- <p>The input for the <a>StopConfigurationRecorder</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConfigurationRecorderName [RecorderName] <p>The name of the recorder object that records each configuration change made to the resources.</p>
-- Required key: ConfigurationRecorderName
-- @return StopConfigurationRecorderRequest structure as a key-value pair table
function M.StopConfigurationRecorderRequest(args)
	assert(args, "You must provide an argument table when creating StopConfigurationRecorderRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConfigurationRecorderName"] = args["ConfigurationRecorderName"],
	}
	asserts.AssertStopConfigurationRecorderRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetResourceConfigHistoryRequest = { ["resourceType"] = true, ["resourceId"] = true, ["laterTime"] = true, ["chronologicalOrder"] = true, ["limit"] = true, ["nextToken"] = true, ["earlierTime"] = true, nil }

function asserts.AssertGetResourceConfigHistoryRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetResourceConfigHistoryRequest to be of type 'table'")
	assert(struct["resourceType"], "Expected key resourceType to exist in table")
	assert(struct["resourceId"], "Expected key resourceId to exist in table")
	if struct["resourceType"] then asserts.AssertResourceType(struct["resourceType"]) end
	if struct["resourceId"] then asserts.AssertResourceId(struct["resourceId"]) end
	if struct["laterTime"] then asserts.AssertLaterTime(struct["laterTime"]) end
	if struct["chronologicalOrder"] then asserts.AssertChronologicalOrder(struct["chronologicalOrder"]) end
	if struct["limit"] then asserts.AssertLimit(struct["limit"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["earlierTime"] then asserts.AssertEarlierTime(struct["earlierTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetResourceConfigHistoryRequest[k], "GetResourceConfigHistoryRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetResourceConfigHistoryRequest
-- <p>The input for the <a>GetResourceConfigHistory</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resourceType [ResourceType] <p>The resource type.</p>
-- * resourceId [ResourceId] <p>The ID of the resource (for example., <code>sg-xxxxxx</code>).</p>
-- * laterTime [LaterTime] <p>The time stamp that indicates a later time. If not specified, current time is taken.</p>
-- * chronologicalOrder [ChronologicalOrder] <p>The chronological order for configuration items listed. By default, the results are listed in reverse chronological order.</p>
-- * limit [Limit] <p>The maximum number of configuration items returned on each page. The default is 10. You cannot specify a number greater than 100. If you specify 0, AWS Config uses the default.</p>
-- * nextToken [NextToken] <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>
-- * earlierTime [EarlierTime] <p>The time stamp that indicates an earlier time. If not specified, the action returns paginated results that contain configuration items that start when the first configuration item was recorded.</p>
-- Required key: resourceType
-- Required key: resourceId
-- @return GetResourceConfigHistoryRequest structure as a key-value pair table
function M.GetResourceConfigHistoryRequest(args)
	assert(args, "You must provide an argument table when creating GetResourceConfigHistoryRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["resourceType"] = args["resourceType"],
		["resourceId"] = args["resourceId"],
		["laterTime"] = args["laterTime"],
		["chronologicalOrder"] = args["chronologicalOrder"],
		["limit"] = args["limit"],
		["nextToken"] = args["nextToken"],
		["earlierTime"] = args["earlierTime"],
	}
	asserts.AssertGetResourceConfigHistoryRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ConfigExportDeliveryInfo = { ["lastSuccessfulTime"] = true, ["lastStatus"] = true, ["lastAttemptTime"] = true, ["nextDeliveryTime"] = true, ["lastErrorCode"] = true, ["lastErrorMessage"] = true, nil }

function asserts.AssertConfigExportDeliveryInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfigExportDeliveryInfo to be of type 'table'")
	if struct["lastSuccessfulTime"] then asserts.AssertDate(struct["lastSuccessfulTime"]) end
	if struct["lastStatus"] then asserts.AssertDeliveryStatus(struct["lastStatus"]) end
	if struct["lastAttemptTime"] then asserts.AssertDate(struct["lastAttemptTime"]) end
	if struct["nextDeliveryTime"] then asserts.AssertDate(struct["nextDeliveryTime"]) end
	if struct["lastErrorCode"] then asserts.AssertString(struct["lastErrorCode"]) end
	if struct["lastErrorMessage"] then asserts.AssertString(struct["lastErrorMessage"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConfigExportDeliveryInfo[k], "ConfigExportDeliveryInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfigExportDeliveryInfo
-- <p>Provides status of the delivery of the snapshot or the configuration history to the specified Amazon S3 bucket. Also provides the status of notifications about the Amazon S3 delivery to the specified Amazon SNS topic.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * lastSuccessfulTime [Date] <p>The time of the last successful delivery.</p>
-- * lastStatus [DeliveryStatus] <p>Status of the last attempted delivery.</p>
-- * lastAttemptTime [Date] <p>The time of the last attempted delivery.</p>
-- * nextDeliveryTime [Date] <p>The time that the next delivery occurs.</p>
-- * lastErrorCode [String] <p>The error code from the last attempted delivery.</p>
-- * lastErrorMessage [String] <p>The error message from the last attempted delivery.</p>
-- @return ConfigExportDeliveryInfo structure as a key-value pair table
function M.ConfigExportDeliveryInfo(args)
	assert(args, "You must provide an argument table when creating ConfigExportDeliveryInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["lastSuccessfulTime"] = args["lastSuccessfulTime"],
		["lastStatus"] = args["lastStatus"],
		["lastAttemptTime"] = args["lastAttemptTime"],
		["nextDeliveryTime"] = args["nextDeliveryTime"],
		["lastErrorCode"] = args["lastErrorCode"],
		["lastErrorMessage"] = args["lastErrorMessage"],
	}
	asserts.AssertConfigExportDeliveryInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Scope = { ["TagKey"] = true, ["ComplianceResourceId"] = true, ["ComplianceResourceTypes"] = true, ["TagValue"] = true, nil }

function asserts.AssertScope(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Scope to be of type 'table'")
	if struct["TagKey"] then asserts.AssertStringWithCharLimit128(struct["TagKey"]) end
	if struct["ComplianceResourceId"] then asserts.AssertBaseResourceId(struct["ComplianceResourceId"]) end
	if struct["ComplianceResourceTypes"] then asserts.AssertComplianceResourceTypes(struct["ComplianceResourceTypes"]) end
	if struct["TagValue"] then asserts.AssertStringWithCharLimit256(struct["TagValue"]) end
	for k,_ in pairs(struct) do
		assert(keys.Scope[k], "Scope contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Scope
-- <p>Defines which resources trigger an evaluation for an AWS Config rule. The scope can include one or more resource types, a combination of a tag key and value, or a combination of one resource type and one resource ID. Specify a scope to constrain which resources trigger an evaluation for a rule. Otherwise, evaluations for the rule are triggered when any resource in your recording group changes in configuration.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TagKey [StringWithCharLimit128] <p>The tag key that is applied to only those AWS resources that you want to trigger an evaluation for the rule.</p>
-- * ComplianceResourceId [BaseResourceId] <p>The ID of the only AWS resource that you want to trigger an evaluation for the rule. If you specify a resource ID, you must specify one resource type for <code>ComplianceResourceTypes</code>.</p>
-- * ComplianceResourceTypes [ComplianceResourceTypes] <p>The resource types of only those AWS resources that you want to trigger an evaluation for the rule. You can only specify one type if you also specify a resource ID for <code>ComplianceResourceId</code>.</p>
-- * TagValue [StringWithCharLimit256] <p>The tag value applied to only those AWS resources that you want to trigger an evaluation for the rule. If you specify a value for <code>TagValue</code>, you must also specify a value for <code>TagKey</code>.</p>
-- @return Scope structure as a key-value pair table
function M.Scope(args)
	assert(args, "You must provide an argument table when creating Scope")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TagKey"] = args["TagKey"],
		["ComplianceResourceId"] = args["ComplianceResourceId"],
		["ComplianceResourceTypes"] = args["ComplianceResourceTypes"],
		["TagValue"] = args["TagValue"],
	}
	asserts.AssertScope(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ConfigRuleComplianceSummaryFilters = { ["AwsRegion"] = true, ["AccountId"] = true, nil }

function asserts.AssertConfigRuleComplianceSummaryFilters(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfigRuleComplianceSummaryFilters to be of type 'table'")
	if struct["AwsRegion"] then asserts.AssertAwsRegion(struct["AwsRegion"]) end
	if struct["AccountId"] then asserts.AssertAccountId(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConfigRuleComplianceSummaryFilters[k], "ConfigRuleComplianceSummaryFilters contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfigRuleComplianceSummaryFilters
-- <p>Filters the results based on the account IDs and regions.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AwsRegion [AwsRegion] <p>The source region where the data is aggregated.</p>
-- * AccountId [AccountId] <p>The 12-digit account ID of the source account.</p>
-- @return ConfigRuleComplianceSummaryFilters structure as a key-value pair table
function M.ConfigRuleComplianceSummaryFilters(args)
	assert(args, "You must provide an argument table when creating ConfigRuleComplianceSummaryFilters")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AwsRegion"] = args["AwsRegion"],
		["AccountId"] = args["AccountId"],
	}
	asserts.AssertConfigRuleComplianceSummaryFilters(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Source = { ["Owner"] = true, ["SourceIdentifier"] = true, ["SourceDetails"] = true, nil }

function asserts.AssertSource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Source to be of type 'table'")
	assert(struct["Owner"], "Expected key Owner to exist in table")
	assert(struct["SourceIdentifier"], "Expected key SourceIdentifier to exist in table")
	if struct["Owner"] then asserts.AssertOwner(struct["Owner"]) end
	if struct["SourceIdentifier"] then asserts.AssertStringWithCharLimit256(struct["SourceIdentifier"]) end
	if struct["SourceDetails"] then asserts.AssertSourceDetails(struct["SourceDetails"]) end
	for k,_ in pairs(struct) do
		assert(keys.Source[k], "Source contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Source
-- <p>Provides the AWS Config rule owner (AWS or customer), the rule identifier, and the events that trigger the evaluation of your AWS resources.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Owner [Owner] <p>Indicates whether AWS or the customer owns and manages the AWS Config rule.</p>
-- * SourceIdentifier [StringWithCharLimit256] <p>For AWS Config managed rules, a predefined identifier from a list. For example, <code>IAM_PASSWORD_POLICY</code> is a managed rule. To reference a managed rule, see <a href="http://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html">Using AWS Managed Config Rules</a>.</p> <p>For custom rules, the identifier is the Amazon Resource Name (ARN) of the rule's AWS Lambda function, such as <code>arn:aws:lambda:us-east-2:123456789012:function:custom_rule_name</code>.</p>
-- * SourceDetails [SourceDetails] <p>Provides the source and type of the event that causes AWS Config to evaluate your AWS resources.</p>
-- Required key: Owner
-- Required key: SourceIdentifier
-- @return Source structure as a key-value pair table
function M.Source(args)
	assert(args, "You must provide an argument table when creating Source")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Owner"] = args["Owner"],
		["SourceIdentifier"] = args["SourceIdentifier"],
		["SourceDetails"] = args["SourceDetails"],
	}
	asserts.AssertSource(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribePendingAggregationRequestsResponse = { ["PendingAggregationRequests"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribePendingAggregationRequestsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribePendingAggregationRequestsResponse to be of type 'table'")
	if struct["PendingAggregationRequests"] then asserts.AssertPendingAggregationRequestList(struct["PendingAggregationRequests"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribePendingAggregationRequestsResponse[k], "DescribePendingAggregationRequestsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribePendingAggregationRequestsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PendingAggregationRequests [PendingAggregationRequestList] <p>Returns a PendingAggregationRequests object.</p>
-- * NextToken [String] <p>The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.</p>
-- @return DescribePendingAggregationRequestsResponse structure as a key-value pair table
function M.DescribePendingAggregationRequestsResponse(args)
	assert(args, "You must provide an argument table when creating DescribePendingAggregationRequestsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PendingAggregationRequests"] = args["PendingAggregationRequests"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribePendingAggregationRequestsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResourceCount = { ["resourceType"] = true, ["count"] = true, nil }

function asserts.AssertResourceCount(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceCount to be of type 'table'")
	if struct["resourceType"] then asserts.AssertResourceType(struct["resourceType"]) end
	if struct["count"] then asserts.AssertLong(struct["count"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceCount[k], "ResourceCount contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceCount
-- <p>An object that contains the resource type and the number of resources.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resourceType [ResourceType] <p>The resource type (for example, <code>"AWS::EC2::Instance"</code>).</p>
-- * count [Long] <p>The number of resources.</p>
-- @return ResourceCount structure as a key-value pair table
function M.ResourceCount(args)
	assert(args, "You must provide an argument table when creating ResourceCount")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["resourceType"] = args["resourceType"],
		["count"] = args["count"],
	}
	asserts.AssertResourceCount(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ComplianceByResource = { ["ResourceType"] = true, ["ResourceId"] = true, ["Compliance"] = true, nil }

function asserts.AssertComplianceByResource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ComplianceByResource to be of type 'table'")
	if struct["ResourceType"] then asserts.AssertStringWithCharLimit256(struct["ResourceType"]) end
	if struct["ResourceId"] then asserts.AssertBaseResourceId(struct["ResourceId"]) end
	if struct["Compliance"] then asserts.AssertCompliance(struct["Compliance"]) end
	for k,_ in pairs(struct) do
		assert(keys.ComplianceByResource[k], "ComplianceByResource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ComplianceByResource
-- <p>Indicates whether an AWS resource that is evaluated according to one or more AWS Config rules is compliant. A resource is compliant if it complies with all of the rules that evaluate it. A resource is noncompliant if it does not comply with one or more of these rules.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceType [StringWithCharLimit256] <p>The type of the AWS resource that was evaluated.</p>
-- * ResourceId [BaseResourceId] <p>The ID of the AWS resource that was evaluated.</p>
-- * Compliance [Compliance] <p>Indicates whether the AWS resource complies with all of the AWS Config rules that evaluated it.</p>
-- @return ComplianceByResource structure as a key-value pair table
function M.ComplianceByResource(args)
	assert(args, "You must provide an argument table when creating ComplianceByResource")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceType"] = args["ResourceType"],
		["ResourceId"] = args["ResourceId"],
		["Compliance"] = args["Compliance"],
	}
	asserts.AssertComplianceByResource(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeRetentionConfigurationsRequest = { ["RetentionConfigurationNames"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeRetentionConfigurationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeRetentionConfigurationsRequest to be of type 'table'")
	if struct["RetentionConfigurationNames"] then asserts.AssertRetentionConfigurationNameList(struct["RetentionConfigurationNames"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeRetentionConfigurationsRequest[k], "DescribeRetentionConfigurationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeRetentionConfigurationsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RetentionConfigurationNames [RetentionConfigurationNameList] <p>A list of names of retention configurations for which you want details. If you do not specify a name, AWS Config returns details for all the retention configurations for that account.</p> <note> <p>Currently, AWS Config supports only one retention configuration per region in your account.</p> </note>
-- * NextToken [NextToken] <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response. </p>
-- @return DescribeRetentionConfigurationsRequest structure as a key-value pair table
function M.DescribeRetentionConfigurationsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeRetentionConfigurationsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RetentionConfigurationNames"] = args["RetentionConfigurationNames"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeRetentionConfigurationsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EvaluationResult = { ["ComplianceType"] = true, ["EvaluationResultIdentifier"] = true, ["ConfigRuleInvokedTime"] = true, ["ResultToken"] = true, ["ResultRecordedTime"] = true, ["Annotation"] = true, nil }

function asserts.AssertEvaluationResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EvaluationResult to be of type 'table'")
	if struct["ComplianceType"] then asserts.AssertComplianceType(struct["ComplianceType"]) end
	if struct["EvaluationResultIdentifier"] then asserts.AssertEvaluationResultIdentifier(struct["EvaluationResultIdentifier"]) end
	if struct["ConfigRuleInvokedTime"] then asserts.AssertDate(struct["ConfigRuleInvokedTime"]) end
	if struct["ResultToken"] then asserts.AssertString(struct["ResultToken"]) end
	if struct["ResultRecordedTime"] then asserts.AssertDate(struct["ResultRecordedTime"]) end
	if struct["Annotation"] then asserts.AssertStringWithCharLimit256(struct["Annotation"]) end
	for k,_ in pairs(struct) do
		assert(keys.EvaluationResult[k], "EvaluationResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EvaluationResult
-- <p>The details of an AWS Config evaluation. Provides the AWS resource that was evaluated, the compliance of the resource, related time stamps, and supplementary information.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ComplianceType [ComplianceType] <p>Indicates whether the AWS resource complies with the AWS Config rule that evaluated it.</p> <p>For the <code>EvaluationResult</code> data type, AWS Config supports only the <code>COMPLIANT</code>, <code>NON_COMPLIANT</code>, and <code>NOT_APPLICABLE</code> values. AWS Config does not support the <code>INSUFFICIENT_DATA</code> value for the <code>EvaluationResult</code> data type.</p>
-- * EvaluationResultIdentifier [EvaluationResultIdentifier] <p>Uniquely identifies the evaluation result.</p>
-- * ConfigRuleInvokedTime [Date] <p>The time when the AWS Config rule evaluated the AWS resource.</p>
-- * ResultToken [String] <p>An encrypted token that associates an evaluation with an AWS Config rule. The token identifies the rule, the AWS resource being evaluated, and the event that triggered the evaluation.</p>
-- * ResultRecordedTime [Date] <p>The time when AWS Config recorded the evaluation result.</p>
-- * Annotation [StringWithCharLimit256] <p>Supplementary information about how the evaluation determined the compliance.</p>
-- @return EvaluationResult structure as a key-value pair table
function M.EvaluationResult(args)
	assert(args, "You must provide an argument table when creating EvaluationResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ComplianceType"] = args["ComplianceType"],
		["EvaluationResultIdentifier"] = args["EvaluationResultIdentifier"],
		["ConfigRuleInvokedTime"] = args["ConfigRuleInvokedTime"],
		["ResultToken"] = args["ResultToken"],
		["ResultRecordedTime"] = args["ResultRecordedTime"],
		["Annotation"] = args["Annotation"],
	}
	asserts.AssertEvaluationResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteAggregationAuthorizationRequest = { ["AuthorizedAccountId"] = true, ["AuthorizedAwsRegion"] = true, nil }

function asserts.AssertDeleteAggregationAuthorizationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteAggregationAuthorizationRequest to be of type 'table'")
	assert(struct["AuthorizedAccountId"], "Expected key AuthorizedAccountId to exist in table")
	assert(struct["AuthorizedAwsRegion"], "Expected key AuthorizedAwsRegion to exist in table")
	if struct["AuthorizedAccountId"] then asserts.AssertAccountId(struct["AuthorizedAccountId"]) end
	if struct["AuthorizedAwsRegion"] then asserts.AssertAwsRegion(struct["AuthorizedAwsRegion"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteAggregationAuthorizationRequest[k], "DeleteAggregationAuthorizationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteAggregationAuthorizationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AuthorizedAccountId [AccountId] <p>The 12-digit account ID of the account authorized to aggregate data.</p>
-- * AuthorizedAwsRegion [AwsRegion] <p>The region authorized to collect aggregated data.</p>
-- Required key: AuthorizedAccountId
-- Required key: AuthorizedAwsRegion
-- @return DeleteAggregationAuthorizationRequest structure as a key-value pair table
function M.DeleteAggregationAuthorizationRequest(args)
	assert(args, "You must provide an argument table when creating DeleteAggregationAuthorizationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AuthorizedAccountId"] = args["AuthorizedAccountId"],
		["AuthorizedAwsRegion"] = args["AuthorizedAwsRegion"],
	}
	asserts.AssertDeleteAggregationAuthorizationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ConfigurationItem = { ["configurationItemCaptureTime"] = true, ["resourceCreationTime"] = true, ["availabilityZone"] = true, ["awsRegion"] = true, ["tags"] = true, ["resourceType"] = true, ["resourceId"] = true, ["configurationStateId"] = true, ["relatedEvents"] = true, ["relationships"] = true, ["arn"] = true, ["version"] = true, ["configurationItemMD5Hash"] = true, ["supplementaryConfiguration"] = true, ["resourceName"] = true, ["configuration"] = true, ["configurationItemStatus"] = true, ["accountId"] = true, nil }

function asserts.AssertConfigurationItem(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfigurationItem to be of type 'table'")
	if struct["configurationItemCaptureTime"] then asserts.AssertConfigurationItemCaptureTime(struct["configurationItemCaptureTime"]) end
	if struct["resourceCreationTime"] then asserts.AssertResourceCreationTime(struct["resourceCreationTime"]) end
	if struct["availabilityZone"] then asserts.AssertAvailabilityZone(struct["availabilityZone"]) end
	if struct["awsRegion"] then asserts.AssertAwsRegion(struct["awsRegion"]) end
	if struct["tags"] then asserts.AssertTags(struct["tags"]) end
	if struct["resourceType"] then asserts.AssertResourceType(struct["resourceType"]) end
	if struct["resourceId"] then asserts.AssertResourceId(struct["resourceId"]) end
	if struct["configurationStateId"] then asserts.AssertConfigurationStateId(struct["configurationStateId"]) end
	if struct["relatedEvents"] then asserts.AssertRelatedEventList(struct["relatedEvents"]) end
	if struct["relationships"] then asserts.AssertRelationshipList(struct["relationships"]) end
	if struct["arn"] then asserts.AssertARN(struct["arn"]) end
	if struct["version"] then asserts.AssertVersion(struct["version"]) end
	if struct["configurationItemMD5Hash"] then asserts.AssertConfigurationItemMD5Hash(struct["configurationItemMD5Hash"]) end
	if struct["supplementaryConfiguration"] then asserts.AssertSupplementaryConfiguration(struct["supplementaryConfiguration"]) end
	if struct["resourceName"] then asserts.AssertResourceName(struct["resourceName"]) end
	if struct["configuration"] then asserts.AssertConfiguration(struct["configuration"]) end
	if struct["configurationItemStatus"] then asserts.AssertConfigurationItemStatus(struct["configurationItemStatus"]) end
	if struct["accountId"] then asserts.AssertAccountId(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConfigurationItem[k], "ConfigurationItem contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfigurationItem
-- <p>A list that contains detailed configurations of a specified resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * configurationItemCaptureTime [ConfigurationItemCaptureTime] <p>The time when the configuration recording was initiated.</p>
-- * resourceCreationTime [ResourceCreationTime] <p>The time stamp when the resource was created.</p>
-- * availabilityZone [AvailabilityZone] <p>The Availability Zone associated with the resource.</p>
-- * awsRegion [AwsRegion] <p>The region where the resource resides.</p>
-- * tags [Tags] <p>A mapping of key value tags associated with the resource.</p>
-- * resourceType [ResourceType] <p>The type of AWS resource.</p>
-- * resourceId [ResourceId] <p>The ID of the resource (for example, <code>sg-xxxxxx</code>).</p>
-- * configurationStateId [ConfigurationStateId] <p>An identifier that indicates the ordering of the configuration items of a resource.</p>
-- * relatedEvents [RelatedEventList] <p>A list of CloudTrail event IDs.</p> <p>A populated field indicates that the current configuration was initiated by the events recorded in the CloudTrail log. For more information about CloudTrail, see <a href="http://docs.aws.amazon.com/awscloudtrail/latest/userguide/what_is_cloud_trail_top_level.html">What Is AWS CloudTrail</a>.</p> <p>An empty field indicates that the current configuration was not initiated by any event.</p>
-- * relationships [RelationshipList] <p>A list of related AWS resources.</p>
-- * arn [ARN] <p>The Amazon Resource Name (ARN) of the resource.</p>
-- * version [Version] <p>The version number of the resource configuration.</p>
-- * configurationItemMD5Hash [ConfigurationItemMD5Hash] <p>Unique MD5 hash that represents the configuration item's state.</p> <p>You can use MD5 hash to compare the states of two or more configuration items that are associated with the same resource.</p>
-- * supplementaryConfiguration [SupplementaryConfiguration] <p>Configuration attributes that AWS Config returns for certain resource types to supplement the information returned for the <code>configuration</code> parameter.</p>
-- * resourceName [ResourceName] <p>The custom name of the resource, if available.</p>
-- * configuration [Configuration] <p>The description of the resource configuration.</p>
-- * configurationItemStatus [ConfigurationItemStatus] <p>The configuration item status.</p>
-- * accountId [AccountId] <p>The 12-digit AWS account ID associated with the resource.</p>
-- @return ConfigurationItem structure as a key-value pair table
function M.ConfigurationItem(args)
	assert(args, "You must provide an argument table when creating ConfigurationItem")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["configurationItemCaptureTime"] = args["configurationItemCaptureTime"],
		["resourceCreationTime"] = args["resourceCreationTime"],
		["availabilityZone"] = args["availabilityZone"],
		["awsRegion"] = args["awsRegion"],
		["tags"] = args["tags"],
		["resourceType"] = args["resourceType"],
		["resourceId"] = args["resourceId"],
		["configurationStateId"] = args["configurationStateId"],
		["relatedEvents"] = args["relatedEvents"],
		["relationships"] = args["relationships"],
		["arn"] = args["arn"],
		["version"] = args["version"],
		["configurationItemMD5Hash"] = args["configurationItemMD5Hash"],
		["supplementaryConfiguration"] = args["supplementaryConfiguration"],
		["resourceName"] = args["resourceName"],
		["configuration"] = args["configuration"],
		["configurationItemStatus"] = args["configurationItemStatus"],
		["accountId"] = args["accountId"],
	}
	asserts.AssertConfigurationItem(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeConfigRuleEvaluationStatusRequest = { ["NextToken"] = true, ["Limit"] = true, ["ConfigRuleNames"] = true, nil }

function asserts.AssertDescribeConfigRuleEvaluationStatusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeConfigRuleEvaluationStatusRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["Limit"] then asserts.AssertRuleLimit(struct["Limit"]) end
	if struct["ConfigRuleNames"] then asserts.AssertConfigRuleNames(struct["ConfigRuleNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeConfigRuleEvaluationStatusRequest[k], "DescribeConfigRuleEvaluationStatusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeConfigRuleEvaluationStatusRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [String] <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>
-- * Limit [RuleLimit] <p>The number of rule evaluation results that you want returned.</p> <p>This parameter is required if the rule limit for your account is more than the default of 50 rules.</p> <p>For information about requesting a rule limit increase, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_config">AWS Config Limits</a> in the <i>AWS General Reference Guide</i>.</p>
-- * ConfigRuleNames [ConfigRuleNames] <p>The name of the AWS managed Config rules for which you want status information. If you do not specify any names, AWS Config returns status information for all AWS managed Config rules that you use.</p>
-- @return DescribeConfigRuleEvaluationStatusRequest structure as a key-value pair table
function M.DescribeConfigRuleEvaluationStatusRequest(args)
	assert(args, "You must provide an argument table when creating DescribeConfigRuleEvaluationStatusRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Limit"] = args["Limit"],
		["ConfigRuleNames"] = args["ConfigRuleNames"],
	}
	asserts.AssertDescribeConfigRuleEvaluationStatusRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetComplianceDetailsByConfigRuleResponse = { ["EvaluationResults"] = true, ["NextToken"] = true, nil }

function asserts.AssertGetComplianceDetailsByConfigRuleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetComplianceDetailsByConfigRuleResponse to be of type 'table'")
	if struct["EvaluationResults"] then asserts.AssertEvaluationResults(struct["EvaluationResults"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetComplianceDetailsByConfigRuleResponse[k], "GetComplianceDetailsByConfigRuleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetComplianceDetailsByConfigRuleResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EvaluationResults [EvaluationResults] <p>Indicates whether the AWS resource complies with the specified AWS Config rule.</p>
-- * NextToken [NextToken] <p>The string that you use in a subsequent request to get the next page of results in a paginated response.</p>
-- @return GetComplianceDetailsByConfigRuleResponse structure as a key-value pair table
function M.GetComplianceDetailsByConfigRuleResponse(args)
	assert(args, "You must provide an argument table when creating GetComplianceDetailsByConfigRuleResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EvaluationResults"] = args["EvaluationResults"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertGetComplianceDetailsByConfigRuleResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDeliveryChannelsRequest = { ["DeliveryChannelNames"] = true, nil }

function asserts.AssertDescribeDeliveryChannelsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDeliveryChannelsRequest to be of type 'table'")
	if struct["DeliveryChannelNames"] then asserts.AssertDeliveryChannelNameList(struct["DeliveryChannelNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDeliveryChannelsRequest[k], "DescribeDeliveryChannelsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDeliveryChannelsRequest
-- <p>The input for the <a>DescribeDeliveryChannels</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeliveryChannelNames [DeliveryChannelNameList] <p>A list of delivery channel names.</p>
-- @return DescribeDeliveryChannelsRequest structure as a key-value pair table
function M.DescribeDeliveryChannelsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeDeliveryChannelsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeliveryChannelNames"] = args["DeliveryChannelNames"],
	}
	asserts.AssertDescribeDeliveryChannelsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutConfigurationAggregatorRequest = { ["ConfigurationAggregatorName"] = true, ["AccountAggregationSources"] = true, ["OrganizationAggregationSource"] = true, nil }

function asserts.AssertPutConfigurationAggregatorRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutConfigurationAggregatorRequest to be of type 'table'")
	assert(struct["ConfigurationAggregatorName"], "Expected key ConfigurationAggregatorName to exist in table")
	if struct["ConfigurationAggregatorName"] then asserts.AssertConfigurationAggregatorName(struct["ConfigurationAggregatorName"]) end
	if struct["AccountAggregationSources"] then asserts.AssertAccountAggregationSourceList(struct["AccountAggregationSources"]) end
	if struct["OrganizationAggregationSource"] then asserts.AssertOrganizationAggregationSource(struct["OrganizationAggregationSource"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutConfigurationAggregatorRequest[k], "PutConfigurationAggregatorRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutConfigurationAggregatorRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConfigurationAggregatorName [ConfigurationAggregatorName] <p>The name of the configuration aggregator.</p>
-- * AccountAggregationSources [AccountAggregationSourceList] <p>A list of AccountAggregationSource object. </p>
-- * OrganizationAggregationSource [OrganizationAggregationSource] <p>An OrganizationAggregationSource object.</p>
-- Required key: ConfigurationAggregatorName
-- @return PutConfigurationAggregatorRequest structure as a key-value pair table
function M.PutConfigurationAggregatorRequest(args)
	assert(args, "You must provide an argument table when creating PutConfigurationAggregatorRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConfigurationAggregatorName"] = args["ConfigurationAggregatorName"],
		["AccountAggregationSources"] = args["AccountAggregationSources"],
		["OrganizationAggregationSource"] = args["OrganizationAggregationSource"],
	}
	asserts.AssertPutConfigurationAggregatorRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ConfigStreamDeliveryInfo = { ["lastStatusChangeTime"] = true, ["lastErrorCode"] = true, ["lastStatus"] = true, ["lastErrorMessage"] = true, nil }

function asserts.AssertConfigStreamDeliveryInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfigStreamDeliveryInfo to be of type 'table'")
	if struct["lastStatusChangeTime"] then asserts.AssertDate(struct["lastStatusChangeTime"]) end
	if struct["lastErrorCode"] then asserts.AssertString(struct["lastErrorCode"]) end
	if struct["lastStatus"] then asserts.AssertDeliveryStatus(struct["lastStatus"]) end
	if struct["lastErrorMessage"] then asserts.AssertString(struct["lastErrorMessage"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConfigStreamDeliveryInfo[k], "ConfigStreamDeliveryInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfigStreamDeliveryInfo
-- <p>A list that contains the status of the delivery of the configuration stream notification to the Amazon SNS topic.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * lastStatusChangeTime [Date] <p>The time from the last status change.</p>
-- * lastErrorCode [String] <p>The error code from the last attempted delivery.</p>
-- * lastStatus [DeliveryStatus] <p>Status of the last attempted delivery.</p> <p> <b>Note</b> Providing an SNS topic on a <a href="http://docs.aws.amazon.com/config/latest/APIReference/API_DeliveryChannel.html">DeliveryChannel</a> for AWS Config is optional. If the SNS delivery is turned off, the last status will be <b>Not_Applicable</b>.</p>
-- * lastErrorMessage [String] <p>The error message from the last attempted delivery.</p>
-- @return ConfigStreamDeliveryInfo structure as a key-value pair table
function M.ConfigStreamDeliveryInfo(args)
	assert(args, "You must provide an argument table when creating ConfigStreamDeliveryInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["lastStatusChangeTime"] = args["lastStatusChangeTime"],
		["lastErrorCode"] = args["lastErrorCode"],
		["lastStatus"] = args["lastStatus"],
		["lastErrorMessage"] = args["lastErrorMessage"],
	}
	asserts.AssertConfigStreamDeliveryInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetAggregateComplianceDetailsByConfigRuleRequest = { ["ComplianceType"] = true, ["ConfigRuleName"] = true, ["AwsRegion"] = true, ["ConfigurationAggregatorName"] = true, ["Limit"] = true, ["NextToken"] = true, ["AccountId"] = true, nil }

function asserts.AssertGetAggregateComplianceDetailsByConfigRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAggregateComplianceDetailsByConfigRuleRequest to be of type 'table'")
	assert(struct["ConfigurationAggregatorName"], "Expected key ConfigurationAggregatorName to exist in table")
	assert(struct["ConfigRuleName"], "Expected key ConfigRuleName to exist in table")
	assert(struct["AccountId"], "Expected key AccountId to exist in table")
	assert(struct["AwsRegion"], "Expected key AwsRegion to exist in table")
	if struct["ComplianceType"] then asserts.AssertComplianceType(struct["ComplianceType"]) end
	if struct["ConfigRuleName"] then asserts.AssertConfigRuleName(struct["ConfigRuleName"]) end
	if struct["AwsRegion"] then asserts.AssertAwsRegion(struct["AwsRegion"]) end
	if struct["ConfigurationAggregatorName"] then asserts.AssertConfigurationAggregatorName(struct["ConfigurationAggregatorName"]) end
	if struct["Limit"] then asserts.AssertLimit(struct["Limit"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["AccountId"] then asserts.AssertAccountId(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetAggregateComplianceDetailsByConfigRuleRequest[k], "GetAggregateComplianceDetailsByConfigRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAggregateComplianceDetailsByConfigRuleRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ComplianceType [ComplianceType] <p>The resource compliance status.</p> <note> <p>For the <code>GetAggregateComplianceDetailsByConfigRuleRequest</code> data type, AWS Config supports only the <code>COMPLIANT</code> and <code>NON_COMPLIANT</code>. AWS Config does not support the <code>NOT_APPLICABLE</code> and <code>INSUFFICIENT_DATA</code> values.</p> </note>
-- * ConfigRuleName [ConfigRuleName] <p>The name of the AWS Config rule for which you want compliance information.</p>
-- * AwsRegion [AwsRegion] <p>The source region from where the data is aggregated.</p>
-- * ConfigurationAggregatorName [ConfigurationAggregatorName] <p>The name of the configuration aggregator.</p>
-- * Limit [Limit] <p>The maximum number of evaluation results returned on each page. The default is 50. You cannot specify a number greater than 100. If you specify 0, AWS Config uses the default.</p>
-- * NextToken [NextToken] <p>The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.</p>
-- * AccountId [AccountId] <p>The 12-digit account ID of the source account.</p>
-- Required key: ConfigurationAggregatorName
-- Required key: ConfigRuleName
-- Required key: AccountId
-- Required key: AwsRegion
-- @return GetAggregateComplianceDetailsByConfigRuleRequest structure as a key-value pair table
function M.GetAggregateComplianceDetailsByConfigRuleRequest(args)
	assert(args, "You must provide an argument table when creating GetAggregateComplianceDetailsByConfigRuleRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ComplianceType"] = args["ComplianceType"],
		["ConfigRuleName"] = args["ConfigRuleName"],
		["AwsRegion"] = args["AwsRegion"],
		["ConfigurationAggregatorName"] = args["ConfigurationAggregatorName"],
		["Limit"] = args["Limit"],
		["NextToken"] = args["NextToken"],
		["AccountId"] = args["AccountId"],
	}
	asserts.AssertGetAggregateComplianceDetailsByConfigRuleRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeConfigurationAggregatorsResponse = { ["ConfigurationAggregators"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeConfigurationAggregatorsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeConfigurationAggregatorsResponse to be of type 'table'")
	if struct["ConfigurationAggregators"] then asserts.AssertConfigurationAggregatorList(struct["ConfigurationAggregators"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeConfigurationAggregatorsResponse[k], "DescribeConfigurationAggregatorsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeConfigurationAggregatorsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConfigurationAggregators [ConfigurationAggregatorList] <p>Returns a ConfigurationAggregators object.</p>
-- * NextToken [String] <p>The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.</p>
-- @return DescribeConfigurationAggregatorsResponse structure as a key-value pair table
function M.DescribeConfigurationAggregatorsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeConfigurationAggregatorsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConfigurationAggregators"] = args["ConfigurationAggregators"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeConfigurationAggregatorsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutDeliveryChannelRequest = { ["DeliveryChannel"] = true, nil }

function asserts.AssertPutDeliveryChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutDeliveryChannelRequest to be of type 'table'")
	assert(struct["DeliveryChannel"], "Expected key DeliveryChannel to exist in table")
	if struct["DeliveryChannel"] then asserts.AssertDeliveryChannel(struct["DeliveryChannel"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutDeliveryChannelRequest[k], "PutDeliveryChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutDeliveryChannelRequest
-- <p>The input for the <a>PutDeliveryChannel</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeliveryChannel [DeliveryChannel] <p>The configuration delivery channel object that delivers the configuration information to an Amazon S3 bucket and to an Amazon SNS topic.</p>
-- Required key: DeliveryChannel
-- @return PutDeliveryChannelRequest structure as a key-value pair table
function M.PutDeliveryChannelRequest(args)
	assert(args, "You must provide an argument table when creating PutDeliveryChannelRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeliveryChannel"] = args["DeliveryChannel"],
	}
	asserts.AssertPutDeliveryChannelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeAggregateComplianceByConfigRulesRequest = { ["NextToken"] = true, ["ConfigurationAggregatorName"] = true, ["Limit"] = true, ["Filters"] = true, nil }

function asserts.AssertDescribeAggregateComplianceByConfigRulesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAggregateComplianceByConfigRulesRequest to be of type 'table'")
	assert(struct["ConfigurationAggregatorName"], "Expected key ConfigurationAggregatorName to exist in table")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["ConfigurationAggregatorName"] then asserts.AssertConfigurationAggregatorName(struct["ConfigurationAggregatorName"]) end
	if struct["Limit"] then asserts.AssertGroupByAPILimit(struct["Limit"]) end
	if struct["Filters"] then asserts.AssertConfigRuleComplianceFilters(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAggregateComplianceByConfigRulesRequest[k], "DescribeAggregateComplianceByConfigRulesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAggregateComplianceByConfigRulesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.</p>
-- * ConfigurationAggregatorName [ConfigurationAggregatorName] <p>The name of the configuration aggregator.</p>
-- * Limit [GroupByAPILimit] <p>The maximum number of evaluation results returned on each page. The default is maximum. If you specify 0, AWS Config uses the default.</p>
-- * Filters [ConfigRuleComplianceFilters] <p>Filters the results by ConfigRuleComplianceFilters object. </p>
-- Required key: ConfigurationAggregatorName
-- @return DescribeAggregateComplianceByConfigRulesRequest structure as a key-value pair table
function M.DescribeAggregateComplianceByConfigRulesRequest(args)
	assert(args, "You must provide an argument table when creating DescribeAggregateComplianceByConfigRulesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["ConfigurationAggregatorName"] = args["ConfigurationAggregatorName"],
		["Limit"] = args["Limit"],
		["Filters"] = args["Filters"],
	}
	asserts.AssertDescribeAggregateComplianceByConfigRulesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListDiscoveredResourcesRequest = { ["resourceType"] = true, ["resourceIds"] = true, ["limit"] = true, ["includeDeletedResources"] = true, ["resourceName"] = true, ["nextToken"] = true, nil }

function asserts.AssertListDiscoveredResourcesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDiscoveredResourcesRequest to be of type 'table'")
	assert(struct["resourceType"], "Expected key resourceType to exist in table")
	if struct["resourceType"] then asserts.AssertResourceType(struct["resourceType"]) end
	if struct["resourceIds"] then asserts.AssertResourceIdList(struct["resourceIds"]) end
	if struct["limit"] then asserts.AssertLimit(struct["limit"]) end
	if struct["includeDeletedResources"] then asserts.AssertBoolean(struct["includeDeletedResources"]) end
	if struct["resourceName"] then asserts.AssertResourceName(struct["resourceName"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDiscoveredResourcesRequest[k], "ListDiscoveredResourcesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDiscoveredResourcesRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resourceType [ResourceType] <p>The type of resources that you want AWS Config to list in the response.</p>
-- * resourceIds [ResourceIdList] <p>The IDs of only those resources that you want AWS Config to list in the response. If you do not specify this parameter, AWS Config lists all resources of the specified type that it has discovered.</p>
-- * limit [Limit] <p>The maximum number of resource identifiers returned on each page. The default is 100. You cannot specify a number greater than 100. If you specify 0, AWS Config uses the default.</p>
-- * includeDeletedResources [Boolean] <p>Specifies whether AWS Config includes deleted resources in the results. By default, deleted resources are not included.</p>
-- * resourceName [ResourceName] <p>The custom name of only those resources that you want AWS Config to list in the response. If you do not specify this parameter, AWS Config lists all resources of the specified type that it has discovered.</p>
-- * nextToken [NextToken] <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>
-- Required key: resourceType
-- @return ListDiscoveredResourcesRequest structure as a key-value pair table
function M.ListDiscoveredResourcesRequest(args)
	assert(args, "You must provide an argument table when creating ListDiscoveredResourcesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["resourceType"] = args["resourceType"],
		["resourceIds"] = args["resourceIds"],
		["limit"] = args["limit"],
		["includeDeletedResources"] = args["includeDeletedResources"],
		["resourceName"] = args["resourceName"],
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertListDiscoveredResourcesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeConfigRulesResponse = { ["ConfigRules"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeConfigRulesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeConfigRulesResponse to be of type 'table'")
	if struct["ConfigRules"] then asserts.AssertConfigRules(struct["ConfigRules"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeConfigRulesResponse[k], "DescribeConfigRulesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeConfigRulesResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConfigRules [ConfigRules] <p>The details about your AWS Config rules.</p>
-- * NextToken [String] <p>The string that you use in a subsequent request to get the next page of results in a paginated response.</p>
-- @return DescribeConfigRulesResponse structure as a key-value pair table
function M.DescribeConfigRulesResponse(args)
	assert(args, "You must provide an argument table when creating DescribeConfigRulesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConfigRules"] = args["ConfigRules"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeConfigRulesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetComplianceSummaryByResourceTypeRequest = { ["ResourceTypes"] = true, nil }

function asserts.AssertGetComplianceSummaryByResourceTypeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetComplianceSummaryByResourceTypeRequest to be of type 'table'")
	if struct["ResourceTypes"] then asserts.AssertResourceTypes(struct["ResourceTypes"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetComplianceSummaryByResourceTypeRequest[k], "GetComplianceSummaryByResourceTypeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetComplianceSummaryByResourceTypeRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceTypes [ResourceTypes] <p>Specify one or more resource types to get the number of resources that are compliant and the number that are noncompliant for each resource type.</p> <p>For this request, you can specify an AWS resource type such as <code>AWS::EC2::Instance</code>. You can specify that the resource type is an AWS account by specifying <code>AWS::::Account</code>.</p>
-- @return GetComplianceSummaryByResourceTypeRequest structure as a key-value pair table
function M.GetComplianceSummaryByResourceTypeRequest(args)
	assert(args, "You must provide an argument table when creating GetComplianceSummaryByResourceTypeRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceTypes"] = args["ResourceTypes"],
	}
	asserts.AssertGetComplianceSummaryByResourceTypeRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetComplianceDetailsByResourceRequest = { ["ResourceType"] = true, ["ResourceId"] = true, ["NextToken"] = true, ["ComplianceTypes"] = true, nil }

function asserts.AssertGetComplianceDetailsByResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetComplianceDetailsByResourceRequest to be of type 'table'")
	assert(struct["ResourceType"], "Expected key ResourceType to exist in table")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	if struct["ResourceType"] then asserts.AssertStringWithCharLimit256(struct["ResourceType"]) end
	if struct["ResourceId"] then asserts.AssertBaseResourceId(struct["ResourceId"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["ComplianceTypes"] then asserts.AssertComplianceTypes(struct["ComplianceTypes"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetComplianceDetailsByResourceRequest[k], "GetComplianceDetailsByResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetComplianceDetailsByResourceRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceType [StringWithCharLimit256] <p>The type of the AWS resource for which you want compliance information.</p>
-- * ResourceId [BaseResourceId] <p>The ID of the AWS resource for which you want compliance information.</p>
-- * NextToken [String] <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>
-- * ComplianceTypes [ComplianceTypes] <p>Filters the results by compliance.</p> <p>The allowed values are <code>COMPLIANT</code>, <code>NON_COMPLIANT</code>, and <code>NOT_APPLICABLE</code>.</p>
-- Required key: ResourceType
-- Required key: ResourceId
-- @return GetComplianceDetailsByResourceRequest structure as a key-value pair table
function M.GetComplianceDetailsByResourceRequest(args)
	assert(args, "You must provide an argument table when creating GetComplianceDetailsByResourceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceType"] = args["ResourceType"],
		["ResourceId"] = args["ResourceId"],
		["NextToken"] = args["NextToken"],
		["ComplianceTypes"] = args["ComplianceTypes"],
	}
	asserts.AssertGetComplianceDetailsByResourceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ConfigRule = { ["ConfigRuleState"] = true, ["Description"] = true, ["ConfigRuleName"] = true, ["ConfigRuleArn"] = true, ["MaximumExecutionFrequency"] = true, ["Source"] = true, ["CreatedBy"] = true, ["InputParameters"] = true, ["Scope"] = true, ["ConfigRuleId"] = true, nil }

function asserts.AssertConfigRule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfigRule to be of type 'table'")
	assert(struct["Source"], "Expected key Source to exist in table")
	if struct["ConfigRuleState"] then asserts.AssertConfigRuleState(struct["ConfigRuleState"]) end
	if struct["Description"] then asserts.AssertEmptiableStringWithCharLimit256(struct["Description"]) end
	if struct["ConfigRuleName"] then asserts.AssertStringWithCharLimit64(struct["ConfigRuleName"]) end
	if struct["ConfigRuleArn"] then asserts.AssertString(struct["ConfigRuleArn"]) end
	if struct["MaximumExecutionFrequency"] then asserts.AssertMaximumExecutionFrequency(struct["MaximumExecutionFrequency"]) end
	if struct["Source"] then asserts.AssertSource(struct["Source"]) end
	if struct["CreatedBy"] then asserts.AssertStringWithCharLimit256(struct["CreatedBy"]) end
	if struct["InputParameters"] then asserts.AssertStringWithCharLimit1024(struct["InputParameters"]) end
	if struct["Scope"] then asserts.AssertScope(struct["Scope"]) end
	if struct["ConfigRuleId"] then asserts.AssertString(struct["ConfigRuleId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConfigRule[k], "ConfigRule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfigRule
-- <p>An AWS Config rule represents an AWS Lambda function that you create for a custom rule or a predefined function for an AWS managed rule. The function evaluates configuration items to assess whether your AWS resources comply with your desired configurations. This function can run when AWS Config detects a configuration change to an AWS resource and at a periodic frequency that you choose (for example, every 24 hours).</p> <note> <p>You can use the AWS CLI and AWS SDKs if you want to create a rule that triggers evaluations for your resources when AWS Config delivers the configuration snapshot. For more information, see <a>ConfigSnapshotDeliveryProperties</a>.</p> </note> <p>For more information about developing and using AWS Config rules, see <a href="http://docs.aws.amazon.com/config/latest/developerguide/evaluate-config.html">Evaluating AWS Resource Configurations with AWS Config</a> in the <i>AWS Config Developer Guide</i>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConfigRuleState [ConfigRuleState] <p>Indicates whether the AWS Config rule is active or is currently being deleted by AWS Config. It can also indicate the evaluation status for the AWS Config rule.</p> <p>AWS Config sets the state of the rule to <code>EVALUATING</code> temporarily after you use the <code>StartConfigRulesEvaluation</code> request to evaluate your resources against the AWS Config rule.</p> <p>AWS Config sets the state of the rule to <code>DELETING_RESULTS</code> temporarily after you use the <code>DeleteEvaluationResults</code> request to delete the current evaluation results for the AWS Config rule.</p> <p>AWS Config temporarily sets the state of a rule to <code>DELETING</code> after you use the <code>DeleteConfigRule</code> request to delete the rule. After AWS Config deletes the rule, the rule and all of its evaluations are erased and are no longer available.</p>
-- * Description [EmptiableStringWithCharLimit256] <p>The description that you provide for the AWS Config rule.</p>
-- * ConfigRuleName [StringWithCharLimit64] <p>The name that you assign to the AWS Config rule. The name is required if you are adding a new rule.</p>
-- * ConfigRuleArn [String] <p>The Amazon Resource Name (ARN) of the AWS Config rule.</p>
-- * MaximumExecutionFrequency [MaximumExecutionFrequency] <p>The maximum frequency with which AWS Config runs evaluations for a rule. You can specify a value for <code>MaximumExecutionFrequency</code> when:</p> <ul> <li> <p>You are using an AWS managed rule that is triggered at a periodic frequency.</p> </li> <li> <p>Your custom rule is triggered when AWS Config delivers the configuration snapshot. For more information, see <a>ConfigSnapshotDeliveryProperties</a>.</p> </li> </ul> <note> <p>By default, rules with a periodic trigger are evaluated every 24 hours. To change the frequency, specify a valid value for the <code>MaximumExecutionFrequency</code> parameter.</p> </note>
-- * Source [Source] <p>Provides the rule owner (AWS or customer), the rule identifier, and the notifications that cause the function to evaluate your AWS resources.</p>
-- * CreatedBy [StringWithCharLimit256] <p>Service principal name of the service that created the rule.</p> <note> <p>The field is populated only if the service linked rule is created by a service. The field is empty if you create your own rule.</p> </note>
-- * InputParameters [StringWithCharLimit1024] <p>A string, in JSON format, that is passed to the AWS Config rule Lambda function.</p>
-- * Scope [Scope] <p>Defines which resources can trigger an evaluation for the rule. The scope can include one or more resource types, a combination of one resource type and one resource ID, or a combination of a tag key and value. Specify a scope to constrain the resources that can trigger an evaluation for the rule. If you do not specify a scope, evaluations are triggered when any resource in the recording group changes.</p>
-- * ConfigRuleId [String] <p>The ID of the AWS Config rule.</p>
-- Required key: Source
-- @return ConfigRule structure as a key-value pair table
function M.ConfigRule(args)
	assert(args, "You must provide an argument table when creating ConfigRule")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConfigRuleState"] = args["ConfigRuleState"],
		["Description"] = args["Description"],
		["ConfigRuleName"] = args["ConfigRuleName"],
		["ConfigRuleArn"] = args["ConfigRuleArn"],
		["MaximumExecutionFrequency"] = args["MaximumExecutionFrequency"],
		["Source"] = args["Source"],
		["CreatedBy"] = args["CreatedBy"],
		["InputParameters"] = args["InputParameters"],
		["Scope"] = args["Scope"],
		["ConfigRuleId"] = args["ConfigRuleId"],
	}
	asserts.AssertConfigRule(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RetentionConfiguration = { ["RetentionPeriodInDays"] = true, ["Name"] = true, nil }

function asserts.AssertRetentionConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RetentionConfiguration to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["RetentionPeriodInDays"], "Expected key RetentionPeriodInDays to exist in table")
	if struct["RetentionPeriodInDays"] then asserts.AssertRetentionPeriodInDays(struct["RetentionPeriodInDays"]) end
	if struct["Name"] then asserts.AssertRetentionConfigurationName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.RetentionConfiguration[k], "RetentionConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RetentionConfiguration
-- <p>An object with the name of the retention configuration and the retention period in days. The object stores the configuration for data retention in AWS Config.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RetentionPeriodInDays [RetentionPeriodInDays] <p>Number of days AWS Config stores your historical information.</p> <note> <p>Currently, only applicable to the configuration item history.</p> </note>
-- * Name [RetentionConfigurationName] <p>The name of the retention configuration object.</p>
-- Required key: Name
-- Required key: RetentionPeriodInDays
-- @return RetentionConfiguration structure as a key-value pair table
function M.RetentionConfiguration(args)
	assert(args, "You must provide an argument table when creating RetentionConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RetentionPeriodInDays"] = args["RetentionPeriodInDays"],
		["Name"] = args["Name"],
	}
	asserts.AssertRetentionConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeliveryChannelStatus = { ["configStreamDeliveryInfo"] = true, ["configHistoryDeliveryInfo"] = true, ["configSnapshotDeliveryInfo"] = true, ["name"] = true, nil }

function asserts.AssertDeliveryChannelStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeliveryChannelStatus to be of type 'table'")
	if struct["configStreamDeliveryInfo"] then asserts.AssertConfigStreamDeliveryInfo(struct["configStreamDeliveryInfo"]) end
	if struct["configHistoryDeliveryInfo"] then asserts.AssertConfigExportDeliveryInfo(struct["configHistoryDeliveryInfo"]) end
	if struct["configSnapshotDeliveryInfo"] then asserts.AssertConfigExportDeliveryInfo(struct["configSnapshotDeliveryInfo"]) end
	if struct["name"] then asserts.AssertString(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeliveryChannelStatus[k], "DeliveryChannelStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeliveryChannelStatus
-- <p>The status of a specified delivery channel.</p> <p>Valid values: <code>Success</code> | <code>Failure</code> </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * configStreamDeliveryInfo [ConfigStreamDeliveryInfo] <p>A list containing the status of the delivery of the configuration stream notification to the specified Amazon SNS topic.</p>
-- * configHistoryDeliveryInfo [ConfigExportDeliveryInfo] <p>A list that contains the status of the delivery of the configuration history to the specified Amazon S3 bucket.</p>
-- * configSnapshotDeliveryInfo [ConfigExportDeliveryInfo] <p>A list containing the status of the delivery of the snapshot to the specified Amazon S3 bucket.</p>
-- * name [String] <p>The name of the delivery channel.</p>
-- @return DeliveryChannelStatus structure as a key-value pair table
function M.DeliveryChannelStatus(args)
	assert(args, "You must provide an argument table when creating DeliveryChannelStatus")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["configStreamDeliveryInfo"] = args["configStreamDeliveryInfo"],
		["configHistoryDeliveryInfo"] = args["configHistoryDeliveryInfo"],
		["configSnapshotDeliveryInfo"] = args["configSnapshotDeliveryInfo"],
		["name"] = args["name"],
	}
	asserts.AssertDeliveryChannelStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutEvaluationsRequest = { ["ResultToken"] = true, ["Evaluations"] = true, ["TestMode"] = true, nil }

function asserts.AssertPutEvaluationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutEvaluationsRequest to be of type 'table'")
	assert(struct["ResultToken"], "Expected key ResultToken to exist in table")
	if struct["ResultToken"] then asserts.AssertString(struct["ResultToken"]) end
	if struct["Evaluations"] then asserts.AssertEvaluations(struct["Evaluations"]) end
	if struct["TestMode"] then asserts.AssertBoolean(struct["TestMode"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutEvaluationsRequest[k], "PutEvaluationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutEvaluationsRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResultToken [String] <p>An encrypted token that associates an evaluation with an AWS Config rule. Identifies the rule and the event that triggered the evaluation.</p>
-- * Evaluations [Evaluations] <p>The assessments that the AWS Lambda function performs. Each evaluation identifies an AWS resource and indicates whether it complies with the AWS Config rule that invokes the AWS Lambda function.</p>
-- * TestMode [Boolean] <p>Use this parameter to specify a test run for <code>PutEvaluations</code>. You can verify whether your AWS Lambda function will deliver evaluation results to AWS Config. No updates occur to your existing evaluations, and evaluation results are not sent to AWS Config.</p> <note> <p>When <code>TestMode</code> is <code>true</code>, <code>PutEvaluations</code> doesn't require a valid value for the <code>ResultToken</code> parameter, but the value cannot be null.</p> </note>
-- Required key: ResultToken
-- @return PutEvaluationsRequest structure as a key-value pair table
function M.PutEvaluationsRequest(args)
	assert(args, "You must provide an argument table when creating PutEvaluationsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResultToken"] = args["ResultToken"],
		["Evaluations"] = args["Evaluations"],
		["TestMode"] = args["TestMode"],
	}
	asserts.AssertPutEvaluationsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Relationship = { ["resourceType"] = true, ["resourceId"] = true, ["relationshipName"] = true, ["resourceName"] = true, nil }

function asserts.AssertRelationship(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Relationship to be of type 'table'")
	if struct["resourceType"] then asserts.AssertResourceType(struct["resourceType"]) end
	if struct["resourceId"] then asserts.AssertResourceId(struct["resourceId"]) end
	if struct["relationshipName"] then asserts.AssertRelationshipName(struct["relationshipName"]) end
	if struct["resourceName"] then asserts.AssertResourceName(struct["resourceName"]) end
	for k,_ in pairs(struct) do
		assert(keys.Relationship[k], "Relationship contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Relationship
-- <p>The relationship of the related resource to the main resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resourceType [ResourceType] <p>The resource type of the related resource.</p>
-- * resourceId [ResourceId] <p>The ID of the related resource (for example, <code>sg-xxxxxx</code>).</p>
-- * relationshipName [RelationshipName] <p>The type of relationship with the related resource.</p>
-- * resourceName [ResourceName] <p>The custom name of the related resource, if available.</p>
-- @return Relationship structure as a key-value pair table
function M.Relationship(args)
	assert(args, "You must provide an argument table when creating Relationship")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["resourceType"] = args["resourceType"],
		["resourceId"] = args["resourceId"],
		["relationshipName"] = args["relationshipName"],
		["resourceName"] = args["resourceName"],
	}
	asserts.AssertRelationship(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ConfigurationAggregator = { ["AccountAggregationSources"] = true, ["LastUpdatedTime"] = true, ["CreationTime"] = true, ["ConfigurationAggregatorName"] = true, ["OrganizationAggregationSource"] = true, ["ConfigurationAggregatorArn"] = true, nil }

function asserts.AssertConfigurationAggregator(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfigurationAggregator to be of type 'table'")
	if struct["AccountAggregationSources"] then asserts.AssertAccountAggregationSourceList(struct["AccountAggregationSources"]) end
	if struct["LastUpdatedTime"] then asserts.AssertDate(struct["LastUpdatedTime"]) end
	if struct["CreationTime"] then asserts.AssertDate(struct["CreationTime"]) end
	if struct["ConfigurationAggregatorName"] then asserts.AssertConfigurationAggregatorName(struct["ConfigurationAggregatorName"]) end
	if struct["OrganizationAggregationSource"] then asserts.AssertOrganizationAggregationSource(struct["OrganizationAggregationSource"]) end
	if struct["ConfigurationAggregatorArn"] then asserts.AssertConfigurationAggregatorArn(struct["ConfigurationAggregatorArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConfigurationAggregator[k], "ConfigurationAggregator contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfigurationAggregator
-- <p>The details about the configuration aggregator, including information about source accounts, regions, and metadata of the aggregator. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AccountAggregationSources [AccountAggregationSourceList] <p>Provides a list of source accounts and regions to be aggregated.</p>
-- * LastUpdatedTime [Date] <p>The time of the last update.</p>
-- * CreationTime [Date] <p>The time stamp when the configuration aggregator was created.</p>
-- * ConfigurationAggregatorName [ConfigurationAggregatorName] <p>The name of the aggregator.</p>
-- * OrganizationAggregationSource [OrganizationAggregationSource] <p>Provides an organization and list of regions to be aggregated.</p>
-- * ConfigurationAggregatorArn [ConfigurationAggregatorArn] <p>The Amazon Resource Name (ARN) of the aggregator.</p>
-- @return ConfigurationAggregator structure as a key-value pair table
function M.ConfigurationAggregator(args)
	assert(args, "You must provide an argument table when creating ConfigurationAggregator")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AccountAggregationSources"] = args["AccountAggregationSources"],
		["LastUpdatedTime"] = args["LastUpdatedTime"],
		["CreationTime"] = args["CreationTime"],
		["ConfigurationAggregatorName"] = args["ConfigurationAggregatorName"],
		["OrganizationAggregationSource"] = args["OrganizationAggregationSource"],
		["ConfigurationAggregatorArn"] = args["ConfigurationAggregatorArn"],
	}
	asserts.AssertConfigurationAggregator(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeAggregationAuthorizationsResponse = { ["AggregationAuthorizations"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeAggregationAuthorizationsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAggregationAuthorizationsResponse to be of type 'table'")
	if struct["AggregationAuthorizations"] then asserts.AssertAggregationAuthorizationList(struct["AggregationAuthorizations"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAggregationAuthorizationsResponse[k], "DescribeAggregationAuthorizationsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAggregationAuthorizationsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AggregationAuthorizations [AggregationAuthorizationList] <p>Returns a list of authorizations granted to various aggregator accounts and regions.</p>
-- * NextToken [String] <p>The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.</p>
-- @return DescribeAggregationAuthorizationsResponse structure as a key-value pair table
function M.DescribeAggregationAuthorizationsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeAggregationAuthorizationsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AggregationAuthorizations"] = args["AggregationAuthorizations"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeAggregationAuthorizationsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RecordingGroup = { ["allSupported"] = true, ["resourceTypes"] = true, ["includeGlobalResourceTypes"] = true, nil }

function asserts.AssertRecordingGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RecordingGroup to be of type 'table'")
	if struct["allSupported"] then asserts.AssertAllSupported(struct["allSupported"]) end
	if struct["resourceTypes"] then asserts.AssertResourceTypeList(struct["resourceTypes"]) end
	if struct["includeGlobalResourceTypes"] then asserts.AssertIncludeGlobalResourceTypes(struct["includeGlobalResourceTypes"]) end
	for k,_ in pairs(struct) do
		assert(keys.RecordingGroup[k], "RecordingGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RecordingGroup
-- <p>Specifies the types of AWS resource for which AWS Config records configuration changes.</p> <p>In the recording group, you specify whether all supported types or specific types of resources are recorded.</p> <p>By default, AWS Config records configuration changes for all supported types of regional resources that AWS Config discovers in the region in which it is running. Regional resources are tied to a region and can be used only in that region. Examples of regional resources are EC2 instances and EBS volumes.</p> <p>You can also have AWS Config record configuration changes for supported types of global resources (for example, IAM resources). Global resources are not tied to an individual region and can be used in all regions.</p> <important> <p>The configuration details for any global resource are the same in all regions. If you customize AWS Config in multiple regions to record global resources, it will create multiple configuration items each time a global resource changes: one configuration item for each region. These configuration items will contain identical data. To prevent duplicate configuration items, you should consider customizing AWS Config in only one region to record global resources, unless you want the configuration items to be available in multiple regions.</p> </important> <p>If you don't want AWS Config to record all resources, you can specify which types of resources it will record with the <code>resourceTypes</code> parameter.</p> <p>For a list of supported resource types, see <a href="http://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources">Supported Resource Types</a>.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/config/latest/developerguide/select-resources.html">Selecting Which Resources AWS Config Records</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * allSupported [AllSupported] <p>Specifies whether AWS Config records configuration changes for every supported type of regional resource.</p> <p>If you set this option to <code>true</code>, when AWS Config adds support for a new type of regional resource, it starts recording resources of that type automatically.</p> <p>If you set this option to <code>true</code>, you cannot enumerate a list of <code>resourceTypes</code>.</p>
-- * resourceTypes [ResourceTypeList] <p>A comma-separated list that specifies the types of AWS resources for which AWS Config records configuration changes (for example, <code>AWS::EC2::Instance</code> or <code>AWS::CloudTrail::Trail</code>).</p> <p>Before you can set this option to <code>true</code>, you must set the <code>allSupported</code> option to <code>false</code>.</p> <p>If you set this option to <code>true</code>, when AWS Config adds support for a new type of resource, it will not record resources of that type unless you manually add that type to your recording group.</p> <p>For a list of valid <code>resourceTypes</code> values, see the <b>resourceType Value</b> column in <a href="http://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources">Supported AWS Resource Types</a>.</p>
-- * includeGlobalResourceTypes [IncludeGlobalResourceTypes] <p>Specifies whether AWS Config includes all supported types of global resources (for example, IAM resources) with the resources that it records.</p> <p>Before you can set this option to <code>true</code>, you must set the <code>allSupported</code> option to <code>true</code>.</p> <p>If you set this option to <code>true</code>, when AWS Config adds support for a new type of global resource, it starts recording resources of that type automatically.</p> <p>The configuration details for any global resource are the same in all regions. To prevent duplicate configuration items, you should consider customizing AWS Config in only one region to record global resources.</p>
-- @return RecordingGroup structure as a key-value pair table
function M.RecordingGroup(args)
	assert(args, "You must provide an argument table when creating RecordingGroup")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["allSupported"] = args["allSupported"],
		["resourceTypes"] = args["resourceTypes"],
		["includeGlobalResourceTypes"] = args["includeGlobalResourceTypes"],
	}
	asserts.AssertRecordingGroup(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeConfigurationRecorderStatusRequest = { ["ConfigurationRecorderNames"] = true, nil }

function asserts.AssertDescribeConfigurationRecorderStatusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeConfigurationRecorderStatusRequest to be of type 'table'")
	if struct["ConfigurationRecorderNames"] then asserts.AssertConfigurationRecorderNameList(struct["ConfigurationRecorderNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeConfigurationRecorderStatusRequest[k], "DescribeConfigurationRecorderStatusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeConfigurationRecorderStatusRequest
-- <p>The input for the <a>DescribeConfigurationRecorderStatus</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConfigurationRecorderNames [ConfigurationRecorderNameList] <p>The name(s) of the configuration recorder. If the name is not specified, the action returns the current status of all the configuration recorders associated with the account.</p>
-- @return DescribeConfigurationRecorderStatusRequest structure as a key-value pair table
function M.DescribeConfigurationRecorderStatusRequest(args)
	assert(args, "You must provide an argument table when creating DescribeConfigurationRecorderStatusRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConfigurationRecorderNames"] = args["ConfigurationRecorderNames"],
	}
	asserts.AssertDescribeConfigurationRecorderStatusRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PendingAggregationRequest = { ["RequesterAccountId"] = true, ["RequesterAwsRegion"] = true, nil }

function asserts.AssertPendingAggregationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PendingAggregationRequest to be of type 'table'")
	if struct["RequesterAccountId"] then asserts.AssertAccountId(struct["RequesterAccountId"]) end
	if struct["RequesterAwsRegion"] then asserts.AssertAwsRegion(struct["RequesterAwsRegion"]) end
	for k,_ in pairs(struct) do
		assert(keys.PendingAggregationRequest[k], "PendingAggregationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PendingAggregationRequest
-- <p>An object that represents the account ID and region of an aggregator account that is requesting authorization but is not yet authorized.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RequesterAccountId [AccountId] <p>The 12-digit account ID of the account requesting to aggregate data.</p>
-- * RequesterAwsRegion [AwsRegion] <p>The region requesting to aggregate data. </p>
-- @return PendingAggregationRequest structure as a key-value pair table
function M.PendingAggregationRequest(args)
	assert(args, "You must provide an argument table when creating PendingAggregationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RequesterAccountId"] = args["RequesterAccountId"],
		["RequesterAwsRegion"] = args["RequesterAwsRegion"],
	}
	asserts.AssertPendingAggregationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EvaluationResultIdentifier = { ["OrderingTimestamp"] = true, ["EvaluationResultQualifier"] = true, nil }

function asserts.AssertEvaluationResultIdentifier(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EvaluationResultIdentifier to be of type 'table'")
	if struct["OrderingTimestamp"] then asserts.AssertDate(struct["OrderingTimestamp"]) end
	if struct["EvaluationResultQualifier"] then asserts.AssertEvaluationResultQualifier(struct["EvaluationResultQualifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.EvaluationResultIdentifier[k], "EvaluationResultIdentifier contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EvaluationResultIdentifier
-- <p>Uniquely identifies an evaluation result.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OrderingTimestamp [Date] <p>The time of the event that triggered the evaluation of your AWS resources. The time can indicate when AWS Config delivered a configuration item change notification, or it can indicate when AWS Config delivered the configuration snapshot, depending on which event triggered the evaluation.</p>
-- * EvaluationResultQualifier [EvaluationResultQualifier] <p>Identifies an AWS Config rule used to evaluate an AWS resource, and provides the type and ID of the evaluated resource.</p>
-- @return EvaluationResultIdentifier structure as a key-value pair table
function M.EvaluationResultIdentifier(args)
	assert(args, "You must provide an argument table when creating EvaluationResultIdentifier")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OrderingTimestamp"] = args["OrderingTimestamp"],
		["EvaluationResultQualifier"] = args["EvaluationResultQualifier"],
	}
	asserts.AssertEvaluationResultIdentifier(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertStringWithCharLimit64(str)
	assert(str)
	assert(type(str) == "string", "Expected StringWithCharLimit64 to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.StringWithCharLimit64(str)
	asserts.AssertStringWithCharLimit64(str)
	return str
end

function asserts.AssertMaximumExecutionFrequency(str)
	assert(str)
	assert(type(str) == "string", "Expected MaximumExecutionFrequency to be of type 'string'")
end

--  
function M.MaximumExecutionFrequency(str)
	asserts.AssertMaximumExecutionFrequency(str)
	return str
end

function asserts.AssertAggregatedSourceType(str)
	assert(str)
	assert(type(str) == "string", "Expected AggregatedSourceType to be of type 'string'")
end

--  
function M.AggregatedSourceType(str)
	asserts.AssertAggregatedSourceType(str)
	return str
end

function asserts.AssertMessageType(str)
	assert(str)
	assert(type(str) == "string", "Expected MessageType to be of type 'string'")
end

--  
function M.MessageType(str)
	asserts.AssertMessageType(str)
	return str
end

function asserts.AssertAccountId(str)
	assert(str)
	assert(type(str) == "string", "Expected AccountId to be of type 'string'")
end

--  
function M.AccountId(str)
	asserts.AssertAccountId(str)
	return str
end

function asserts.AssertSupplementaryConfigurationValue(str)
	assert(str)
	assert(type(str) == "string", "Expected SupplementaryConfigurationValue to be of type 'string'")
end

--  
function M.SupplementaryConfigurationValue(str)
	asserts.AssertSupplementaryConfigurationValue(str)
	return str
end

function asserts.AssertValue(str)
	assert(str)
	assert(type(str) == "string", "Expected Value to be of type 'string'")
end

--  
function M.Value(str)
	asserts.AssertValue(str)
	return str
end

function asserts.AssertDeliveryStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected DeliveryStatus to be of type 'string'")
end

--  
function M.DeliveryStatus(str)
	asserts.AssertDeliveryStatus(str)
	return str
end

function asserts.AssertConfigurationItemStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ConfigurationItemStatus to be of type 'string'")
end

--  
function M.ConfigurationItemStatus(str)
	asserts.AssertConfigurationItemStatus(str)
	return str
end

function asserts.AssertConfigRuleState(str)
	assert(str)
	assert(type(str) == "string", "Expected ConfigRuleState to be of type 'string'")
end

--  
function M.ConfigRuleState(str)
	asserts.AssertConfigRuleState(str)
	return str
end

function asserts.AssertBaseResourceId(str)
	assert(str)
	assert(type(str) == "string", "Expected BaseResourceId to be of type 'string'")
	assert(#str <= 768, "Expected string to be max 768 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.BaseResourceId(str)
	asserts.AssertBaseResourceId(str)
	return str
end

function asserts.AssertConfigurationAggregatorArn(str)
	assert(str)
	assert(type(str) == "string", "Expected ConfigurationAggregatorArn to be of type 'string'")
end

--  
function M.ConfigurationAggregatorArn(str)
	asserts.AssertConfigurationAggregatorArn(str)
	return str
end

function asserts.AssertEmptiableStringWithCharLimit256(str)
	assert(str)
	assert(type(str) == "string", "Expected EmptiableStringWithCharLimit256 to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.EmptiableStringWithCharLimit256(str)
	asserts.AssertEmptiableStringWithCharLimit256(str)
	return str
end

function asserts.AssertVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected Version to be of type 'string'")
end

--  
function M.Version(str)
	asserts.AssertVersion(str)
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

function asserts.AssertString(str)
	assert(str)
	assert(type(str) == "string", "Expected String to be of type 'string'")
end

--  
function M.String(str)
	asserts.AssertString(str)
	return str
end

function asserts.AssertSupplementaryConfigurationName(str)
	assert(str)
	assert(type(str) == "string", "Expected SupplementaryConfigurationName to be of type 'string'")
end

--  
function M.SupplementaryConfigurationName(str)
	asserts.AssertSupplementaryConfigurationName(str)
	return str
end

function asserts.AssertConfiguration(str)
	assert(str)
	assert(type(str) == "string", "Expected Configuration to be of type 'string'")
end

--  
function M.Configuration(str)
	asserts.AssertConfiguration(str)
	return str
end

function asserts.AssertRecorderStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected RecorderStatus to be of type 'string'")
end

--  
function M.RecorderStatus(str)
	asserts.AssertRecorderStatus(str)
	return str
end

function asserts.AssertConfigurationStateId(str)
	assert(str)
	assert(type(str) == "string", "Expected ConfigurationStateId to be of type 'string'")
end

--  
function M.ConfigurationStateId(str)
	asserts.AssertConfigurationStateId(str)
	return str
end

function asserts.AssertRecorderName(str)
	assert(str)
	assert(type(str) == "string", "Expected RecorderName to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RecorderName(str)
	asserts.AssertRecorderName(str)
	return str
end

function asserts.AssertConfigurationAggregatorName(str)
	assert(str)
	assert(type(str) == "string", "Expected ConfigurationAggregatorName to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ConfigurationAggregatorName(str)
	asserts.AssertConfigurationAggregatorName(str)
	return str
end

function asserts.AssertAvailabilityZone(str)
	assert(str)
	assert(type(str) == "string", "Expected AvailabilityZone to be of type 'string'")
end

--  
function M.AvailabilityZone(str)
	asserts.AssertAvailabilityZone(str)
	return str
end

function asserts.AssertAggregatedSourceStatusType(str)
	assert(str)
	assert(type(str) == "string", "Expected AggregatedSourceStatusType to be of type 'string'")
end

--  
function M.AggregatedSourceStatusType(str)
	asserts.AssertAggregatedSourceStatusType(str)
	return str
end

function asserts.AssertStringWithCharLimit1024(str)
	assert(str)
	assert(type(str) == "string", "Expected StringWithCharLimit1024 to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.StringWithCharLimit1024(str)
	asserts.AssertStringWithCharLimit1024(str)
	return str
end

function asserts.AssertOwner(str)
	assert(str)
	assert(type(str) == "string", "Expected Owner to be of type 'string'")
end

--  
function M.Owner(str)
	asserts.AssertOwner(str)
	return str
end

function asserts.AssertConfigRuleName(str)
	assert(str)
	assert(type(str) == "string", "Expected ConfigRuleName to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ConfigRuleName(str)
	asserts.AssertConfigRuleName(str)
	return str
end

function asserts.AssertStringWithCharLimit128(str)
	assert(str)
	assert(type(str) == "string", "Expected StringWithCharLimit128 to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.StringWithCharLimit128(str)
	asserts.AssertStringWithCharLimit128(str)
	return str
end

function asserts.AssertRetentionConfigurationName(str)
	assert(str)
	assert(type(str) == "string", "Expected RetentionConfigurationName to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RetentionConfigurationName(str)
	asserts.AssertRetentionConfigurationName(str)
	return str
end

function asserts.AssertChronologicalOrder(str)
	assert(str)
	assert(type(str) == "string", "Expected ChronologicalOrder to be of type 'string'")
end

--  
function M.ChronologicalOrder(str)
	asserts.AssertChronologicalOrder(str)
	return str
end

function asserts.AssertConfigRuleComplianceSummaryGroupKey(str)
	assert(str)
	assert(type(str) == "string", "Expected ConfigRuleComplianceSummaryGroupKey to be of type 'string'")
end

--  
function M.ConfigRuleComplianceSummaryGroupKey(str)
	asserts.AssertConfigRuleComplianceSummaryGroupKey(str)
	return str
end

function asserts.AssertConfigurationItemMD5Hash(str)
	assert(str)
	assert(type(str) == "string", "Expected ConfigurationItemMD5Hash to be of type 'string'")
end

--  
function M.ConfigurationItemMD5Hash(str)
	asserts.AssertConfigurationItemMD5Hash(str)
	return str
end

function asserts.AssertRelatedEvent(str)
	assert(str)
	assert(type(str) == "string", "Expected RelatedEvent to be of type 'string'")
end

--  
function M.RelatedEvent(str)
	asserts.AssertRelatedEvent(str)
	return str
end

function asserts.AssertAwsRegion(str)
	assert(str)
	assert(type(str) == "string", "Expected AwsRegion to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AwsRegion(str)
	asserts.AssertAwsRegion(str)
	return str
end

function asserts.AssertRelationshipName(str)
	assert(str)
	assert(type(str) == "string", "Expected RelationshipName to be of type 'string'")
end

--  
function M.RelationshipName(str)
	asserts.AssertRelationshipName(str)
	return str
end

function asserts.AssertComplianceType(str)
	assert(str)
	assert(type(str) == "string", "Expected ComplianceType to be of type 'string'")
end

--  
function M.ComplianceType(str)
	asserts.AssertComplianceType(str)
	return str
end

function asserts.AssertResourceId(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceId to be of type 'string'")
	assert(#str <= 768, "Expected string to be max 768 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ResourceId(str)
	asserts.AssertResourceId(str)
	return str
end

function asserts.AssertEventSource(str)
	assert(str)
	assert(type(str) == "string", "Expected EventSource to be of type 'string'")
end

--  
function M.EventSource(str)
	asserts.AssertEventSource(str)
	return str
end

function asserts.AssertResourceName(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceName to be of type 'string'")
end

--  
function M.ResourceName(str)
	asserts.AssertResourceName(str)
	return str
end

function asserts.AssertName(str)
	assert(str)
	assert(type(str) == "string", "Expected Name to be of type 'string'")
end

--  
function M.Name(str)
	asserts.AssertName(str)
	return str
end

function asserts.AssertResourceType(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceType to be of type 'string'")
end

--  
function M.ResourceType(str)
	asserts.AssertResourceType(str)
	return str
end

function asserts.AssertStringWithCharLimit256(str)
	assert(str)
	assert(type(str) == "string", "Expected StringWithCharLimit256 to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.StringWithCharLimit256(str)
	asserts.AssertStringWithCharLimit256(str)
	return str
end

function asserts.AssertChannelName(str)
	assert(str)
	assert(type(str) == "string", "Expected ChannelName to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ChannelName(str)
	asserts.AssertChannelName(str)
	return str
end

function asserts.AssertARN(str)
	assert(str)
	assert(type(str) == "string", "Expected ARN to be of type 'string'")
end

--  
function M.ARN(str)
	asserts.AssertARN(str)
	return str
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

function asserts.AssertRuleLimit(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected RuleLimit to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 50, "Expected integer to be max 50")
end

function M.RuleLimit(integer)
	asserts.AssertRuleLimit(integer)
	return integer
end

function asserts.AssertRetentionPeriodInDays(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected RetentionPeriodInDays to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 2557, "Expected integer to be max 2557")
	assert(integer >= 30, "Expected integer to be min 30")
end

function M.RetentionPeriodInDays(integer)
	asserts.AssertRetentionPeriodInDays(integer)
	return integer
end

function asserts.AssertLimit(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Limit to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
end

function M.Limit(integer)
	asserts.AssertLimit(integer)
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

function asserts.AssertGroupByAPILimit(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected GroupByAPILimit to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1000, "Expected integer to be max 1000")
end

function M.GroupByAPILimit(integer)
	asserts.AssertGroupByAPILimit(integer)
	return integer
end

function asserts.AssertDescribePendingAggregationRequestsLimit(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected DescribePendingAggregationRequestsLimit to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 20, "Expected integer to be max 20")
end

function M.DescribePendingAggregationRequestsLimit(integer)
	asserts.AssertDescribePendingAggregationRequestsLimit(integer)
	return integer
end

function asserts.AssertAllSupported(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected AllSupported to be of type 'boolean'")
end

function M.AllSupported(boolean)
	asserts.AssertAllSupported(boolean)
	return boolean
end

function asserts.AssertIncludeGlobalResourceTypes(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected IncludeGlobalResourceTypes to be of type 'boolean'")
end

function M.IncludeGlobalResourceTypes(boolean)
	asserts.AssertIncludeGlobalResourceTypes(boolean)
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

function asserts.AssertTags(map)
	assert(map)
	assert(type(map) == "table", "Expected Tags to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertName(k)
		asserts.AssertValue(v)
	end
end

function M.Tags(map)
	asserts.AssertTags(map)
	return map
end

function asserts.AssertSupplementaryConfiguration(map)
	assert(map)
	assert(type(map) == "table", "Expected SupplementaryConfiguration to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertSupplementaryConfigurationName(k)
		asserts.AssertSupplementaryConfigurationValue(v)
	end
end

function M.SupplementaryConfiguration(map)
	asserts.AssertSupplementaryConfiguration(map)
	return map
end

function asserts.AssertResourceCreationTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected ResourceCreationTime to be of type 'string'")
end

function M.ResourceCreationTime(timestamp)
	asserts.AssertResourceCreationTime(timestamp)
	return timestamp
end

function asserts.AssertResourceDeletionTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected ResourceDeletionTime to be of type 'string'")
end

function M.ResourceDeletionTime(timestamp)
	asserts.AssertResourceDeletionTime(timestamp)
	return timestamp
end

function asserts.AssertDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Date to be of type 'string'")
end

function M.Date(timestamp)
	asserts.AssertDate(timestamp)
	return timestamp
end

function asserts.AssertLaterTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected LaterTime to be of type 'string'")
end

function M.LaterTime(timestamp)
	asserts.AssertLaterTime(timestamp)
	return timestamp
end

function asserts.AssertOrderingTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected OrderingTimestamp to be of type 'string'")
end

function M.OrderingTimestamp(timestamp)
	asserts.AssertOrderingTimestamp(timestamp)
	return timestamp
end

function asserts.AssertEarlierTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected EarlierTime to be of type 'string'")
end

function M.EarlierTime(timestamp)
	asserts.AssertEarlierTime(timestamp)
	return timestamp
end

function asserts.AssertConfigurationItemCaptureTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected ConfigurationItemCaptureTime to be of type 'string'")
end

function M.ConfigurationItemCaptureTime(timestamp)
	asserts.AssertConfigurationItemCaptureTime(timestamp)
	return timestamp
end

function asserts.AssertEvaluationResults(list)
	assert(list)
	assert(type(list) == "table", "Expected EvaluationResults to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEvaluationResult(v)
	end
end

--  
-- List of EvaluationResult objects
function M.EvaluationResults(list)
	asserts.AssertEvaluationResults(list)
	return list
end

function asserts.AssertDeliveryChannelStatusList(list)
	assert(list)
	assert(type(list) == "table", "Expected DeliveryChannelStatusList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDeliveryChannelStatus(v)
	end
end

--  
-- List of DeliveryChannelStatus objects
function M.DeliveryChannelStatusList(list)
	asserts.AssertDeliveryChannelStatusList(list)
	return list
end

function asserts.AssertAggregateComplianceCountList(list)
	assert(list)
	assert(type(list) == "table", "Expected AggregateComplianceCountList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAggregateComplianceCount(v)
	end
end

--  
-- List of AggregateComplianceCount objects
function M.AggregateComplianceCountList(list)
	asserts.AssertAggregateComplianceCountList(list)
	return list
end

function asserts.AssertResourceKeys(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceKeys to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertResourceKey(v)
	end
end

--  
-- List of ResourceKey objects
function M.ResourceKeys(list)
	asserts.AssertResourceKeys(list)
	return list
end

function asserts.AssertRelationshipList(list)
	assert(list)
	assert(type(list) == "table", "Expected RelationshipList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRelationship(v)
	end
end

--  
-- List of Relationship objects
function M.RelationshipList(list)
	asserts.AssertRelationshipList(list)
	return list
end

function asserts.AssertConfigurationAggregatorList(list)
	assert(list)
	assert(type(list) == "table", "Expected ConfigurationAggregatorList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertConfigurationAggregator(v)
	end
end

--  
-- List of ConfigurationAggregator objects
function M.ConfigurationAggregatorList(list)
	asserts.AssertConfigurationAggregatorList(list)
	return list
end

function asserts.AssertComplianceByConfigRules(list)
	assert(list)
	assert(type(list) == "table", "Expected ComplianceByConfigRules to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertComplianceByConfigRule(v)
	end
end

--  
-- List of ComplianceByConfigRule objects
function M.ComplianceByConfigRules(list)
	asserts.AssertComplianceByConfigRules(list)
	return list
end

function asserts.AssertAggregationAuthorizationList(list)
	assert(list)
	assert(type(list) == "table", "Expected AggregationAuthorizationList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAggregationAuthorization(v)
	end
end

--  
-- List of AggregationAuthorization objects
function M.AggregationAuthorizationList(list)
	asserts.AssertAggregationAuthorizationList(list)
	return list
end

function asserts.AssertConfigurationAggregatorNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected ConfigurationAggregatorNameList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	for _,v in ipairs(list) do
		asserts.AssertConfigurationAggregatorName(v)
	end
end

--  
-- List of ConfigurationAggregatorName objects
function M.ConfigurationAggregatorNameList(list)
	asserts.AssertConfigurationAggregatorNameList(list)
	return list
end

function asserts.AssertResourceIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceIdList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertResourceId(v)
	end
end

--  
-- List of ResourceId objects
function M.ResourceIdList(list)
	asserts.AssertResourceIdList(list)
	return list
end

function asserts.AssertDeliveryChannelList(list)
	assert(list)
	assert(type(list) == "table", "Expected DeliveryChannelList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDeliveryChannel(v)
	end
end

--  
-- List of DeliveryChannel objects
function M.DeliveryChannelList(list)
	asserts.AssertDeliveryChannelList(list)
	return list
end

function asserts.AssertConfigurationItemList(list)
	assert(list)
	assert(type(list) == "table", "Expected ConfigurationItemList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertConfigurationItem(v)
	end
end

--  
-- List of ConfigurationItem objects
function M.ConfigurationItemList(list)
	asserts.AssertConfigurationItemList(list)
	return list
end

function asserts.AssertAggregatedSourceStatusTypeList(list)
	assert(list)
	assert(type(list) == "table", "Expected AggregatedSourceStatusTypeList to be of type ''table")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertAggregatedSourceStatusType(v)
	end
end

--  
-- List of AggregatedSourceStatusType objects
function M.AggregatedSourceStatusTypeList(list)
	asserts.AssertAggregatedSourceStatusTypeList(list)
	return list
end

function asserts.AssertResourceTypes(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceTypes to be of type ''table")
	assert(#list <= 20, "Expected list to be contain 20 elements")
	for _,v in ipairs(list) do
		asserts.AssertStringWithCharLimit256(v)
	end
end

--  
-- List of StringWithCharLimit256 objects
function M.ResourceTypes(list)
	asserts.AssertResourceTypes(list)
	return list
end

function asserts.AssertEvaluations(list)
	assert(list)
	assert(type(list) == "table", "Expected Evaluations to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	for _,v in ipairs(list) do
		asserts.AssertEvaluation(v)
	end
end

--  
-- List of Evaluation objects
function M.Evaluations(list)
	asserts.AssertEvaluations(list)
	return list
end

function asserts.AssertComplianceByResources(list)
	assert(list)
	assert(type(list) == "table", "Expected ComplianceByResources to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertComplianceByResource(v)
	end
end

--  
-- List of ComplianceByResource objects
function M.ComplianceByResources(list)
	asserts.AssertComplianceByResources(list)
	return list
end

function asserts.AssertResourceCounts(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceCounts to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertResourceCount(v)
	end
end

--  
-- List of ResourceCount objects
function M.ResourceCounts(list)
	asserts.AssertResourceCounts(list)
	return list
end

function asserts.AssertAggregatedSourceStatusList(list)
	assert(list)
	assert(type(list) == "table", "Expected AggregatedSourceStatusList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAggregatedSourceStatus(v)
	end
end

--  
-- List of AggregatedSourceStatus objects
function M.AggregatedSourceStatusList(list)
	asserts.AssertAggregatedSourceStatusList(list)
	return list
end

function asserts.AssertConfigRuleEvaluationStatusList(list)
	assert(list)
	assert(type(list) == "table", "Expected ConfigRuleEvaluationStatusList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertConfigRuleEvaluationStatus(v)
	end
end

--  
-- List of ConfigRuleEvaluationStatus objects
function M.ConfigRuleEvaluationStatusList(list)
	asserts.AssertConfigRuleEvaluationStatusList(list)
	return list
end

function asserts.AssertComplianceResourceTypes(list)
	assert(list)
	assert(type(list) == "table", "Expected ComplianceResourceTypes to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	for _,v in ipairs(list) do
		asserts.AssertStringWithCharLimit256(v)
	end
end

--  
-- List of StringWithCharLimit256 objects
function M.ComplianceResourceTypes(list)
	asserts.AssertComplianceResourceTypes(list)
	return list
end

function asserts.AssertComplianceSummariesByResourceType(list)
	assert(list)
	assert(type(list) == "table", "Expected ComplianceSummariesByResourceType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertComplianceSummaryByResourceType(v)
	end
end

--  
-- List of ComplianceSummaryByResourceType objects
function M.ComplianceSummariesByResourceType(list)
	asserts.AssertComplianceSummariesByResourceType(list)
	return list
end

function asserts.AssertRetentionConfigurationNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected RetentionConfigurationNameList to be of type ''table")
	assert(#list <= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertRetentionConfigurationName(v)
	end
end

--  
-- List of RetentionConfigurationName objects
function M.RetentionConfigurationNameList(list)
	asserts.AssertRetentionConfigurationNameList(list)
	return list
end

function asserts.AssertConfigRules(list)
	assert(list)
	assert(type(list) == "table", "Expected ConfigRules to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertConfigRule(v)
	end
end

--  
-- List of ConfigRule objects
function M.ConfigRules(list)
	asserts.AssertConfigRules(list)
	return list
end

function asserts.AssertAggregateComplianceByConfigRuleList(list)
	assert(list)
	assert(type(list) == "table", "Expected AggregateComplianceByConfigRuleList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAggregateComplianceByConfigRule(v)
	end
end

--  
-- List of AggregateComplianceByConfigRule objects
function M.AggregateComplianceByConfigRuleList(list)
	asserts.AssertAggregateComplianceByConfigRuleList(list)
	return list
end

function asserts.AssertRelatedEventList(list)
	assert(list)
	assert(type(list) == "table", "Expected RelatedEventList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRelatedEvent(v)
	end
end

--  
-- List of RelatedEvent objects
function M.RelatedEventList(list)
	asserts.AssertRelatedEventList(list)
	return list
end

function asserts.AssertConfigurationRecorderStatusList(list)
	assert(list)
	assert(type(list) == "table", "Expected ConfigurationRecorderStatusList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertConfigurationRecorderStatus(v)
	end
end

--  
-- List of ConfigurationRecorderStatus objects
function M.ConfigurationRecorderStatusList(list)
	asserts.AssertConfigurationRecorderStatusList(list)
	return list
end

function asserts.AssertPendingAggregationRequestList(list)
	assert(list)
	assert(type(list) == "table", "Expected PendingAggregationRequestList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPendingAggregationRequest(v)
	end
end

--  
-- List of PendingAggregationRequest objects
function M.PendingAggregationRequestList(list)
	asserts.AssertPendingAggregationRequestList(list)
	return list
end

function asserts.AssertReevaluateConfigRuleNames(list)
	assert(list)
	assert(type(list) == "table", "Expected ReevaluateConfigRuleNames to be of type ''table")
	assert(#list <= 25, "Expected list to be contain 25 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertStringWithCharLimit64(v)
	end
end

--  
-- List of StringWithCharLimit64 objects
function M.ReevaluateConfigRuleNames(list)
	asserts.AssertReevaluateConfigRuleNames(list)
	return list
end

function asserts.AssertBaseConfigurationItems(list)
	assert(list)
	assert(type(list) == "table", "Expected BaseConfigurationItems to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBaseConfigurationItem(v)
	end
end

--  
-- List of BaseConfigurationItem objects
function M.BaseConfigurationItems(list)
	asserts.AssertBaseConfigurationItems(list)
	return list
end

function asserts.AssertRetentionConfigurationList(list)
	assert(list)
	assert(type(list) == "table", "Expected RetentionConfigurationList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRetentionConfiguration(v)
	end
end

--  
-- List of RetentionConfiguration objects
function M.RetentionConfigurationList(list)
	asserts.AssertRetentionConfigurationList(list)
	return list
end

function asserts.AssertConfigurationRecorderList(list)
	assert(list)
	assert(type(list) == "table", "Expected ConfigurationRecorderList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertConfigurationRecorder(v)
	end
end

--  
-- List of ConfigurationRecorder objects
function M.ConfigurationRecorderList(list)
	asserts.AssertConfigurationRecorderList(list)
	return list
end

function asserts.AssertSourceDetails(list)
	assert(list)
	assert(type(list) == "table", "Expected SourceDetails to be of type ''table")
	assert(#list <= 25, "Expected list to be contain 25 elements")
	for _,v in ipairs(list) do
		asserts.AssertSourceDetail(v)
	end
end

--  
-- List of SourceDetail objects
function M.SourceDetails(list)
	asserts.AssertSourceDetails(list)
	return list
end

function asserts.AssertAccountAggregationSourceAccountList(list)
	assert(list)
	assert(type(list) == "table", "Expected AccountAggregationSourceAccountList to be of type ''table")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertAccountId(v)
	end
end

--  
-- List of AccountId objects
function M.AccountAggregationSourceAccountList(list)
	asserts.AssertAccountAggregationSourceAccountList(list)
	return list
end

function asserts.AssertComplianceTypes(list)
	assert(list)
	assert(type(list) == "table", "Expected ComplianceTypes to be of type ''table")
	assert(#list <= 3, "Expected list to be contain 3 elements")
	for _,v in ipairs(list) do
		asserts.AssertComplianceType(v)
	end
end

--  
-- List of ComplianceType objects
function M.ComplianceTypes(list)
	asserts.AssertComplianceTypes(list)
	return list
end

function asserts.AssertDeliveryChannelNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected DeliveryChannelNameList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertChannelName(v)
	end
end

--  
-- List of ChannelName objects
function M.DeliveryChannelNameList(list)
	asserts.AssertDeliveryChannelNameList(list)
	return list
end

function asserts.AssertAggregatorRegionList(list)
	assert(list)
	assert(type(list) == "table", "Expected AggregatorRegionList to be of type ''table")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.AggregatorRegionList(list)
	asserts.AssertAggregatorRegionList(list)
	return list
end

function asserts.AssertConfigRuleNames(list)
	assert(list)
	assert(type(list) == "table", "Expected ConfigRuleNames to be of type ''table")
	assert(#list <= 25, "Expected list to be contain 25 elements")
	for _,v in ipairs(list) do
		asserts.AssertStringWithCharLimit64(v)
	end
end

--  
-- List of StringWithCharLimit64 objects
function M.ConfigRuleNames(list)
	asserts.AssertConfigRuleNames(list)
	return list
end

function asserts.AssertResourceIdentifierList(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceIdentifierList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertResourceIdentifier(v)
	end
end

--  
-- List of ResourceIdentifier objects
function M.ResourceIdentifierList(list)
	asserts.AssertResourceIdentifierList(list)
	return list
end

function asserts.AssertResourceTypeList(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceTypeList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertResourceType(v)
	end
end

--  
-- List of ResourceType objects
function M.ResourceTypeList(list)
	asserts.AssertResourceTypeList(list)
	return list
end

function asserts.AssertAggregateEvaluationResultList(list)
	assert(list)
	assert(type(list) == "table", "Expected AggregateEvaluationResultList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAggregateEvaluationResult(v)
	end
end

--  
-- List of AggregateEvaluationResult objects
function M.AggregateEvaluationResultList(list)
	asserts.AssertAggregateEvaluationResultList(list)
	return list
end

function asserts.AssertAccountAggregationSourceList(list)
	assert(list)
	assert(type(list) == "table", "Expected AccountAggregationSourceList to be of type ''table")
	assert(#list <= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertAccountAggregationSource(v)
	end
end

--  
-- List of AccountAggregationSource objects
function M.AccountAggregationSourceList(list)
	asserts.AssertAccountAggregationSourceList(list)
	return list
end

function asserts.AssertConfigurationRecorderNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected ConfigurationRecorderNameList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRecorderName(v)
	end
end

--  
-- List of RecorderName objects
function M.ConfigurationRecorderNameList(list)
	asserts.AssertConfigurationRecorderNameList(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "config.amazonaws.com"
		end
	end
	local ss = { "config" }
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
--- Call StopConfigurationRecorder asynchronously, invoking a callback when done
-- @param StopConfigurationRecorderRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StopConfigurationRecorderAsync(StopConfigurationRecorderRequest, cb)
	assert(StopConfigurationRecorderRequest, "You must provide a StopConfigurationRecorderRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.StopConfigurationRecorder",
	}
	for header,value in pairs(StopConfigurationRecorderRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StopConfigurationRecorderRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StopConfigurationRecorder synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StopConfigurationRecorderRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StopConfigurationRecorderSync(StopConfigurationRecorderRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StopConfigurationRecorderAsync(StopConfigurationRecorderRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetComplianceDetailsByResource asynchronously, invoking a callback when done
-- @param GetComplianceDetailsByResourceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetComplianceDetailsByResourceAsync(GetComplianceDetailsByResourceRequest, cb)
	assert(GetComplianceDetailsByResourceRequest, "You must provide a GetComplianceDetailsByResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.GetComplianceDetailsByResource",
	}
	for header,value in pairs(GetComplianceDetailsByResourceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetComplianceDetailsByResourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetComplianceDetailsByResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetComplianceDetailsByResourceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetComplianceDetailsByResourceSync(GetComplianceDetailsByResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetComplianceDetailsByResourceAsync(GetComplianceDetailsByResourceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListDiscoveredResources asynchronously, invoking a callback when done
-- @param ListDiscoveredResourcesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListDiscoveredResourcesAsync(ListDiscoveredResourcesRequest, cb)
	assert(ListDiscoveredResourcesRequest, "You must provide a ListDiscoveredResourcesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.ListDiscoveredResources",
	}
	for header,value in pairs(ListDiscoveredResourcesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListDiscoveredResourcesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListDiscoveredResources synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListDiscoveredResourcesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListDiscoveredResourcesSync(ListDiscoveredResourcesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListDiscoveredResourcesAsync(ListDiscoveredResourcesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDeliveryChannel asynchronously, invoking a callback when done
-- @param DeleteDeliveryChannelRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteDeliveryChannelAsync(DeleteDeliveryChannelRequest, cb)
	assert(DeleteDeliveryChannelRequest, "You must provide a DeleteDeliveryChannelRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.DeleteDeliveryChannel",
	}
	for header,value in pairs(DeleteDeliveryChannelRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteDeliveryChannelRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteDeliveryChannel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteDeliveryChannelRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteDeliveryChannelSync(DeleteDeliveryChannelRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDeliveryChannelAsync(DeleteDeliveryChannelRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteAggregationAuthorization asynchronously, invoking a callback when done
-- @param DeleteAggregationAuthorizationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteAggregationAuthorizationAsync(DeleteAggregationAuthorizationRequest, cb)
	assert(DeleteAggregationAuthorizationRequest, "You must provide a DeleteAggregationAuthorizationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.DeleteAggregationAuthorization",
	}
	for header,value in pairs(DeleteAggregationAuthorizationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteAggregationAuthorizationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteAggregationAuthorization synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteAggregationAuthorizationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteAggregationAuthorizationSync(DeleteAggregationAuthorizationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteAggregationAuthorizationAsync(DeleteAggregationAuthorizationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetAggregateConfigRuleComplianceSummary asynchronously, invoking a callback when done
-- @param GetAggregateConfigRuleComplianceSummaryRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetAggregateConfigRuleComplianceSummaryAsync(GetAggregateConfigRuleComplianceSummaryRequest, cb)
	assert(GetAggregateConfigRuleComplianceSummaryRequest, "You must provide a GetAggregateConfigRuleComplianceSummaryRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.GetAggregateConfigRuleComplianceSummary",
	}
	for header,value in pairs(GetAggregateConfigRuleComplianceSummaryRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetAggregateConfigRuleComplianceSummaryRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetAggregateConfigRuleComplianceSummary synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetAggregateConfigRuleComplianceSummaryRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetAggregateConfigRuleComplianceSummarySync(GetAggregateConfigRuleComplianceSummaryRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetAggregateConfigRuleComplianceSummaryAsync(GetAggregateConfigRuleComplianceSummaryRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteConfigurationAggregator asynchronously, invoking a callback when done
-- @param DeleteConfigurationAggregatorRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteConfigurationAggregatorAsync(DeleteConfigurationAggregatorRequest, cb)
	assert(DeleteConfigurationAggregatorRequest, "You must provide a DeleteConfigurationAggregatorRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.DeleteConfigurationAggregator",
	}
	for header,value in pairs(DeleteConfigurationAggregatorRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteConfigurationAggregatorRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteConfigurationAggregator synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteConfigurationAggregatorRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteConfigurationAggregatorSync(DeleteConfigurationAggregatorRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteConfigurationAggregatorAsync(DeleteConfigurationAggregatorRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteRetentionConfiguration asynchronously, invoking a callback when done
-- @param DeleteRetentionConfigurationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteRetentionConfigurationAsync(DeleteRetentionConfigurationRequest, cb)
	assert(DeleteRetentionConfigurationRequest, "You must provide a DeleteRetentionConfigurationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.DeleteRetentionConfiguration",
	}
	for header,value in pairs(DeleteRetentionConfigurationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteRetentionConfigurationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteRetentionConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteRetentionConfigurationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteRetentionConfigurationSync(DeleteRetentionConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteRetentionConfigurationAsync(DeleteRetentionConfigurationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutEvaluations asynchronously, invoking a callback when done
-- @param PutEvaluationsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutEvaluationsAsync(PutEvaluationsRequest, cb)
	assert(PutEvaluationsRequest, "You must provide a PutEvaluationsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.PutEvaluations",
	}
	for header,value in pairs(PutEvaluationsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutEvaluationsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutEvaluations synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutEvaluationsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutEvaluationsSync(PutEvaluationsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutEvaluationsAsync(PutEvaluationsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteConfigRule asynchronously, invoking a callback when done
-- @param DeleteConfigRuleRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteConfigRuleAsync(DeleteConfigRuleRequest, cb)
	assert(DeleteConfigRuleRequest, "You must provide a DeleteConfigRuleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.DeleteConfigRule",
	}
	for header,value in pairs(DeleteConfigRuleRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteConfigRuleRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteConfigRule synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteConfigRuleRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteConfigRuleSync(DeleteConfigRuleRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteConfigRuleAsync(DeleteConfigRuleRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeConfigurationRecorders asynchronously, invoking a callback when done
-- @param DescribeConfigurationRecordersRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeConfigurationRecordersAsync(DescribeConfigurationRecordersRequest, cb)
	assert(DescribeConfigurationRecordersRequest, "You must provide a DescribeConfigurationRecordersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.DescribeConfigurationRecorders",
	}
	for header,value in pairs(DescribeConfigurationRecordersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeConfigurationRecordersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeConfigurationRecorders synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeConfigurationRecordersRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeConfigurationRecordersSync(DescribeConfigurationRecordersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeConfigurationRecordersAsync(DescribeConfigurationRecordersRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeAggregationAuthorizations asynchronously, invoking a callback when done
-- @param DescribeAggregationAuthorizationsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeAggregationAuthorizationsAsync(DescribeAggregationAuthorizationsRequest, cb)
	assert(DescribeAggregationAuthorizationsRequest, "You must provide a DescribeAggregationAuthorizationsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.DescribeAggregationAuthorizations",
	}
	for header,value in pairs(DescribeAggregationAuthorizationsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeAggregationAuthorizationsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeAggregationAuthorizations synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeAggregationAuthorizationsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeAggregationAuthorizationsSync(DescribeAggregationAuthorizationsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeAggregationAuthorizationsAsync(DescribeAggregationAuthorizationsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutConfigurationRecorder asynchronously, invoking a callback when done
-- @param PutConfigurationRecorderRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutConfigurationRecorderAsync(PutConfigurationRecorderRequest, cb)
	assert(PutConfigurationRecorderRequest, "You must provide a PutConfigurationRecorderRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.PutConfigurationRecorder",
	}
	for header,value in pairs(PutConfigurationRecorderRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutConfigurationRecorderRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutConfigurationRecorder synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutConfigurationRecorderRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutConfigurationRecorderSync(PutConfigurationRecorderRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutConfigurationRecorderAsync(PutConfigurationRecorderRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeConfigurationRecorderStatus asynchronously, invoking a callback when done
-- @param DescribeConfigurationRecorderStatusRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeConfigurationRecorderStatusAsync(DescribeConfigurationRecorderStatusRequest, cb)
	assert(DescribeConfigurationRecorderStatusRequest, "You must provide a DescribeConfigurationRecorderStatusRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.DescribeConfigurationRecorderStatus",
	}
	for header,value in pairs(DescribeConfigurationRecorderStatusRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeConfigurationRecorderStatusRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeConfigurationRecorderStatus synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeConfigurationRecorderStatusRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeConfigurationRecorderStatusSync(DescribeConfigurationRecorderStatusRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeConfigurationRecorderStatusAsync(DescribeConfigurationRecorderStatusRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetComplianceDetailsByConfigRule asynchronously, invoking a callback when done
-- @param GetComplianceDetailsByConfigRuleRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetComplianceDetailsByConfigRuleAsync(GetComplianceDetailsByConfigRuleRequest, cb)
	assert(GetComplianceDetailsByConfigRuleRequest, "You must provide a GetComplianceDetailsByConfigRuleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.GetComplianceDetailsByConfigRule",
	}
	for header,value in pairs(GetComplianceDetailsByConfigRuleRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetComplianceDetailsByConfigRuleRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetComplianceDetailsByConfigRule synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetComplianceDetailsByConfigRuleRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetComplianceDetailsByConfigRuleSync(GetComplianceDetailsByConfigRuleRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetComplianceDetailsByConfigRuleAsync(GetComplianceDetailsByConfigRuleRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDeliveryChannelStatus asynchronously, invoking a callback when done
-- @param DescribeDeliveryChannelStatusRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeDeliveryChannelStatusAsync(DescribeDeliveryChannelStatusRequest, cb)
	assert(DescribeDeliveryChannelStatusRequest, "You must provide a DescribeDeliveryChannelStatusRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.DescribeDeliveryChannelStatus",
	}
	for header,value in pairs(DescribeDeliveryChannelStatusRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeDeliveryChannelStatusRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeDeliveryChannelStatus synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeDeliveryChannelStatusRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeDeliveryChannelStatusSync(DescribeDeliveryChannelStatusRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDeliveryChannelStatusAsync(DescribeDeliveryChannelStatusRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeliverConfigSnapshot asynchronously, invoking a callback when done
-- @param DeliverConfigSnapshotRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeliverConfigSnapshotAsync(DeliverConfigSnapshotRequest, cb)
	assert(DeliverConfigSnapshotRequest, "You must provide a DeliverConfigSnapshotRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.DeliverConfigSnapshot",
	}
	for header,value in pairs(DeliverConfigSnapshotRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeliverConfigSnapshotRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeliverConfigSnapshot synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeliverConfigSnapshotRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeliverConfigSnapshotSync(DeliverConfigSnapshotRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeliverConfigSnapshotAsync(DeliverConfigSnapshotRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StartConfigRulesEvaluation asynchronously, invoking a callback when done
-- @param StartConfigRulesEvaluationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StartConfigRulesEvaluationAsync(StartConfigRulesEvaluationRequest, cb)
	assert(StartConfigRulesEvaluationRequest, "You must provide a StartConfigRulesEvaluationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.StartConfigRulesEvaluation",
	}
	for header,value in pairs(StartConfigRulesEvaluationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StartConfigRulesEvaluationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartConfigRulesEvaluation synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartConfigRulesEvaluationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StartConfigRulesEvaluationSync(StartConfigRulesEvaluationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartConfigRulesEvaluationAsync(StartConfigRulesEvaluationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetComplianceSummaryByConfigRule asynchronously, invoking a callback when done
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetComplianceSummaryByConfigRuleAsync(cb)
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.GetComplianceSummaryByConfigRule",
	}


	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", {}, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetComplianceSummaryByConfigRule synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @return response
-- @return error_type
-- @return error_message
function M.GetComplianceSummaryByConfigRuleSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetComplianceSummaryByConfigRuleAsync(function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StartConfigurationRecorder asynchronously, invoking a callback when done
-- @param StartConfigurationRecorderRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StartConfigurationRecorderAsync(StartConfigurationRecorderRequest, cb)
	assert(StartConfigurationRecorderRequest, "You must provide a StartConfigurationRecorderRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.StartConfigurationRecorder",
	}
	for header,value in pairs(StartConfigurationRecorderRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StartConfigurationRecorderRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartConfigurationRecorder synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartConfigurationRecorderRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StartConfigurationRecorderSync(StartConfigurationRecorderRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartConfigurationRecorderAsync(StartConfigurationRecorderRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeletePendingAggregationRequest asynchronously, invoking a callback when done
-- @param DeletePendingAggregationRequestRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeletePendingAggregationRequestAsync(DeletePendingAggregationRequestRequest, cb)
	assert(DeletePendingAggregationRequestRequest, "You must provide a DeletePendingAggregationRequestRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.DeletePendingAggregationRequest",
	}
	for header,value in pairs(DeletePendingAggregationRequestRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeletePendingAggregationRequestRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeletePendingAggregationRequest synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeletePendingAggregationRequestRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeletePendingAggregationRequestSync(DeletePendingAggregationRequestRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeletePendingAggregationRequestAsync(DeletePendingAggregationRequestRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDiscoveredResourceCounts asynchronously, invoking a callback when done
-- @param GetDiscoveredResourceCountsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetDiscoveredResourceCountsAsync(GetDiscoveredResourceCountsRequest, cb)
	assert(GetDiscoveredResourceCountsRequest, "You must provide a GetDiscoveredResourceCountsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.GetDiscoveredResourceCounts",
	}
	for header,value in pairs(GetDiscoveredResourceCountsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetDiscoveredResourceCountsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDiscoveredResourceCounts synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDiscoveredResourceCountsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetDiscoveredResourceCountsSync(GetDiscoveredResourceCountsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDiscoveredResourceCountsAsync(GetDiscoveredResourceCountsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call BatchGetResourceConfig asynchronously, invoking a callback when done
-- @param BatchGetResourceConfigRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.BatchGetResourceConfigAsync(BatchGetResourceConfigRequest, cb)
	assert(BatchGetResourceConfigRequest, "You must provide a BatchGetResourceConfigRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.BatchGetResourceConfig",
	}
	for header,value in pairs(BatchGetResourceConfigRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", BatchGetResourceConfigRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call BatchGetResourceConfig synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param BatchGetResourceConfigRequest
-- @return response
-- @return error_type
-- @return error_message
function M.BatchGetResourceConfigSync(BatchGetResourceConfigRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.BatchGetResourceConfigAsync(BatchGetResourceConfigRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeComplianceByResource asynchronously, invoking a callback when done
-- @param DescribeComplianceByResourceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeComplianceByResourceAsync(DescribeComplianceByResourceRequest, cb)
	assert(DescribeComplianceByResourceRequest, "You must provide a DescribeComplianceByResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.DescribeComplianceByResource",
	}
	for header,value in pairs(DescribeComplianceByResourceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeComplianceByResourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeComplianceByResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeComplianceByResourceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeComplianceByResourceSync(DescribeComplianceByResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeComplianceByResourceAsync(DescribeComplianceByResourceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetResourceConfigHistory asynchronously, invoking a callback when done
-- @param GetResourceConfigHistoryRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetResourceConfigHistoryAsync(GetResourceConfigHistoryRequest, cb)
	assert(GetResourceConfigHistoryRequest, "You must provide a GetResourceConfigHistoryRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.GetResourceConfigHistory",
	}
	for header,value in pairs(GetResourceConfigHistoryRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetResourceConfigHistoryRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetResourceConfigHistory synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetResourceConfigHistoryRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetResourceConfigHistorySync(GetResourceConfigHistoryRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetResourceConfigHistoryAsync(GetResourceConfigHistoryRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeConfigurationAggregatorSourcesStatus asynchronously, invoking a callback when done
-- @param DescribeConfigurationAggregatorSourcesStatusRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeConfigurationAggregatorSourcesStatusAsync(DescribeConfigurationAggregatorSourcesStatusRequest, cb)
	assert(DescribeConfigurationAggregatorSourcesStatusRequest, "You must provide a DescribeConfigurationAggregatorSourcesStatusRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.DescribeConfigurationAggregatorSourcesStatus",
	}
	for header,value in pairs(DescribeConfigurationAggregatorSourcesStatusRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeConfigurationAggregatorSourcesStatusRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeConfigurationAggregatorSourcesStatus synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeConfigurationAggregatorSourcesStatusRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeConfigurationAggregatorSourcesStatusSync(DescribeConfigurationAggregatorSourcesStatusRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeConfigurationAggregatorSourcesStatusAsync(DescribeConfigurationAggregatorSourcesStatusRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutAggregationAuthorization asynchronously, invoking a callback when done
-- @param PutAggregationAuthorizationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutAggregationAuthorizationAsync(PutAggregationAuthorizationRequest, cb)
	assert(PutAggregationAuthorizationRequest, "You must provide a PutAggregationAuthorizationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.PutAggregationAuthorization",
	}
	for header,value in pairs(PutAggregationAuthorizationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutAggregationAuthorizationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutAggregationAuthorization synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutAggregationAuthorizationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutAggregationAuthorizationSync(PutAggregationAuthorizationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutAggregationAuthorizationAsync(PutAggregationAuthorizationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeConfigRuleEvaluationStatus asynchronously, invoking a callback when done
-- @param DescribeConfigRuleEvaluationStatusRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeConfigRuleEvaluationStatusAsync(DescribeConfigRuleEvaluationStatusRequest, cb)
	assert(DescribeConfigRuleEvaluationStatusRequest, "You must provide a DescribeConfigRuleEvaluationStatusRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.DescribeConfigRuleEvaluationStatus",
	}
	for header,value in pairs(DescribeConfigRuleEvaluationStatusRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeConfigRuleEvaluationStatusRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeConfigRuleEvaluationStatus synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeConfigRuleEvaluationStatusRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeConfigRuleEvaluationStatusSync(DescribeConfigRuleEvaluationStatusRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeConfigRuleEvaluationStatusAsync(DescribeConfigRuleEvaluationStatusRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutRetentionConfiguration asynchronously, invoking a callback when done
-- @param PutRetentionConfigurationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutRetentionConfigurationAsync(PutRetentionConfigurationRequest, cb)
	assert(PutRetentionConfigurationRequest, "You must provide a PutRetentionConfigurationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.PutRetentionConfiguration",
	}
	for header,value in pairs(PutRetentionConfigurationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutRetentionConfigurationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutRetentionConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutRetentionConfigurationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutRetentionConfigurationSync(PutRetentionConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutRetentionConfigurationAsync(PutRetentionConfigurationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDeliveryChannels asynchronously, invoking a callback when done
-- @param DescribeDeliveryChannelsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeDeliveryChannelsAsync(DescribeDeliveryChannelsRequest, cb)
	assert(DescribeDeliveryChannelsRequest, "You must provide a DescribeDeliveryChannelsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.DescribeDeliveryChannels",
	}
	for header,value in pairs(DescribeDeliveryChannelsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeDeliveryChannelsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeDeliveryChannels synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeDeliveryChannelsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeDeliveryChannelsSync(DescribeDeliveryChannelsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDeliveryChannelsAsync(DescribeDeliveryChannelsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetComplianceSummaryByResourceType asynchronously, invoking a callback when done
-- @param GetComplianceSummaryByResourceTypeRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetComplianceSummaryByResourceTypeAsync(GetComplianceSummaryByResourceTypeRequest, cb)
	assert(GetComplianceSummaryByResourceTypeRequest, "You must provide a GetComplianceSummaryByResourceTypeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.GetComplianceSummaryByResourceType",
	}
	for header,value in pairs(GetComplianceSummaryByResourceTypeRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetComplianceSummaryByResourceTypeRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetComplianceSummaryByResourceType synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetComplianceSummaryByResourceTypeRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetComplianceSummaryByResourceTypeSync(GetComplianceSummaryByResourceTypeRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetComplianceSummaryByResourceTypeAsync(GetComplianceSummaryByResourceTypeRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetAggregateComplianceDetailsByConfigRule asynchronously, invoking a callback when done
-- @param GetAggregateComplianceDetailsByConfigRuleRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetAggregateComplianceDetailsByConfigRuleAsync(GetAggregateComplianceDetailsByConfigRuleRequest, cb)
	assert(GetAggregateComplianceDetailsByConfigRuleRequest, "You must provide a GetAggregateComplianceDetailsByConfigRuleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.GetAggregateComplianceDetailsByConfigRule",
	}
	for header,value in pairs(GetAggregateComplianceDetailsByConfigRuleRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetAggregateComplianceDetailsByConfigRuleRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetAggregateComplianceDetailsByConfigRule synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetAggregateComplianceDetailsByConfigRuleRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetAggregateComplianceDetailsByConfigRuleSync(GetAggregateComplianceDetailsByConfigRuleRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetAggregateComplianceDetailsByConfigRuleAsync(GetAggregateComplianceDetailsByConfigRuleRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribePendingAggregationRequests asynchronously, invoking a callback when done
-- @param DescribePendingAggregationRequestsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribePendingAggregationRequestsAsync(DescribePendingAggregationRequestsRequest, cb)
	assert(DescribePendingAggregationRequestsRequest, "You must provide a DescribePendingAggregationRequestsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.DescribePendingAggregationRequests",
	}
	for header,value in pairs(DescribePendingAggregationRequestsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribePendingAggregationRequestsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribePendingAggregationRequests synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribePendingAggregationRequestsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribePendingAggregationRequestsSync(DescribePendingAggregationRequestsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribePendingAggregationRequestsAsync(DescribePendingAggregationRequestsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeConfigRules asynchronously, invoking a callback when done
-- @param DescribeConfigRulesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeConfigRulesAsync(DescribeConfigRulesRequest, cb)
	assert(DescribeConfigRulesRequest, "You must provide a DescribeConfigRulesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.DescribeConfigRules",
	}
	for header,value in pairs(DescribeConfigRulesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeConfigRulesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeConfigRules synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeConfigRulesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeConfigRulesSync(DescribeConfigRulesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeConfigRulesAsync(DescribeConfigRulesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeAggregateComplianceByConfigRules asynchronously, invoking a callback when done
-- @param DescribeAggregateComplianceByConfigRulesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeAggregateComplianceByConfigRulesAsync(DescribeAggregateComplianceByConfigRulesRequest, cb)
	assert(DescribeAggregateComplianceByConfigRulesRequest, "You must provide a DescribeAggregateComplianceByConfigRulesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.DescribeAggregateComplianceByConfigRules",
	}
	for header,value in pairs(DescribeAggregateComplianceByConfigRulesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeAggregateComplianceByConfigRulesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeAggregateComplianceByConfigRules synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeAggregateComplianceByConfigRulesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeAggregateComplianceByConfigRulesSync(DescribeAggregateComplianceByConfigRulesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeAggregateComplianceByConfigRulesAsync(DescribeAggregateComplianceByConfigRulesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutConfigRule asynchronously, invoking a callback when done
-- @param PutConfigRuleRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutConfigRuleAsync(PutConfigRuleRequest, cb)
	assert(PutConfigRuleRequest, "You must provide a PutConfigRuleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.PutConfigRule",
	}
	for header,value in pairs(PutConfigRuleRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutConfigRuleRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutConfigRule synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutConfigRuleRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutConfigRuleSync(PutConfigRuleRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutConfigRuleAsync(PutConfigRuleRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteEvaluationResults asynchronously, invoking a callback when done
-- @param DeleteEvaluationResultsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteEvaluationResultsAsync(DeleteEvaluationResultsRequest, cb)
	assert(DeleteEvaluationResultsRequest, "You must provide a DeleteEvaluationResultsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.DeleteEvaluationResults",
	}
	for header,value in pairs(DeleteEvaluationResultsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteEvaluationResultsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteEvaluationResults synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteEvaluationResultsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteEvaluationResultsSync(DeleteEvaluationResultsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteEvaluationResultsAsync(DeleteEvaluationResultsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeComplianceByConfigRule asynchronously, invoking a callback when done
-- @param DescribeComplianceByConfigRuleRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeComplianceByConfigRuleAsync(DescribeComplianceByConfigRuleRequest, cb)
	assert(DescribeComplianceByConfigRuleRequest, "You must provide a DescribeComplianceByConfigRuleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.DescribeComplianceByConfigRule",
	}
	for header,value in pairs(DescribeComplianceByConfigRuleRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeComplianceByConfigRuleRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeComplianceByConfigRule synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeComplianceByConfigRuleRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeComplianceByConfigRuleSync(DescribeComplianceByConfigRuleRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeComplianceByConfigRuleAsync(DescribeComplianceByConfigRuleRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeConfigurationAggregators asynchronously, invoking a callback when done
-- @param DescribeConfigurationAggregatorsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeConfigurationAggregatorsAsync(DescribeConfigurationAggregatorsRequest, cb)
	assert(DescribeConfigurationAggregatorsRequest, "You must provide a DescribeConfigurationAggregatorsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.DescribeConfigurationAggregators",
	}
	for header,value in pairs(DescribeConfigurationAggregatorsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeConfigurationAggregatorsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeConfigurationAggregators synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeConfigurationAggregatorsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeConfigurationAggregatorsSync(DescribeConfigurationAggregatorsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeConfigurationAggregatorsAsync(DescribeConfigurationAggregatorsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutDeliveryChannel asynchronously, invoking a callback when done
-- @param PutDeliveryChannelRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutDeliveryChannelAsync(PutDeliveryChannelRequest, cb)
	assert(PutDeliveryChannelRequest, "You must provide a PutDeliveryChannelRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.PutDeliveryChannel",
	}
	for header,value in pairs(PutDeliveryChannelRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutDeliveryChannelRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutDeliveryChannel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutDeliveryChannelRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutDeliveryChannelSync(PutDeliveryChannelRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutDeliveryChannelAsync(PutDeliveryChannelRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeRetentionConfigurations asynchronously, invoking a callback when done
-- @param DescribeRetentionConfigurationsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeRetentionConfigurationsAsync(DescribeRetentionConfigurationsRequest, cb)
	assert(DescribeRetentionConfigurationsRequest, "You must provide a DescribeRetentionConfigurationsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.DescribeRetentionConfigurations",
	}
	for header,value in pairs(DescribeRetentionConfigurationsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeRetentionConfigurationsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeRetentionConfigurations synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeRetentionConfigurationsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeRetentionConfigurationsSync(DescribeRetentionConfigurationsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeRetentionConfigurationsAsync(DescribeRetentionConfigurationsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutConfigurationAggregator asynchronously, invoking a callback when done
-- @param PutConfigurationAggregatorRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutConfigurationAggregatorAsync(PutConfigurationAggregatorRequest, cb)
	assert(PutConfigurationAggregatorRequest, "You must provide a PutConfigurationAggregatorRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.PutConfigurationAggregator",
	}
	for header,value in pairs(PutConfigurationAggregatorRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutConfigurationAggregatorRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutConfigurationAggregator synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutConfigurationAggregatorRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutConfigurationAggregatorSync(PutConfigurationAggregatorRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutConfigurationAggregatorAsync(PutConfigurationAggregatorRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteConfigurationRecorder asynchronously, invoking a callback when done
-- @param DeleteConfigurationRecorderRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteConfigurationRecorderAsync(DeleteConfigurationRecorderRequest, cb)
	assert(DeleteConfigurationRecorderRequest, "You must provide a DeleteConfigurationRecorderRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.DeleteConfigurationRecorder",
	}
	for header,value in pairs(DeleteConfigurationRecorderRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteConfigurationRecorderRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteConfigurationRecorder synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteConfigurationRecorderRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteConfigurationRecorderSync(DeleteConfigurationRecorderRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteConfigurationRecorderAsync(DeleteConfigurationRecorderRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
