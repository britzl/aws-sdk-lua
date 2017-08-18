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

keys.NoSuchBucketException = { nil }

function asserts.AssertNoSuchBucketException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoSuchBucketException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.NoSuchBucketException[k], "NoSuchBucketException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoSuchBucketException
-- <p>The specified Amazon S3 bucket does not exist.</p>
function M.NoSuchBucketException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating NoSuchBucketException")
	local t = { 
	}
	asserts.AssertNoSuchBucketException(t)
	return t
end

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
-- @param _ConfigurationRecorder [ConfigurationRecorder] <p>The configuration recorder object that records each configuration change made to the resources.</p>
-- Required parameter: ConfigurationRecorder
function M.PutConfigurationRecorderRequest(_ConfigurationRecorder, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutConfigurationRecorderRequest")
	local t = { 
		["ConfigurationRecorder"] = _ConfigurationRecorder,
	}
	asserts.AssertPutConfigurationRecorderRequest(t)
	return t
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
-- @param _ConfigurationRecorderName [RecorderName] <p>The name of the recorder object that records each configuration change made to the resources.</p>
-- Required parameter: ConfigurationRecorderName
function M.StartConfigurationRecorderRequest(_ConfigurationRecorderName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartConfigurationRecorderRequest")
	local t = { 
		["ConfigurationRecorderName"] = _ConfigurationRecorderName,
	}
	asserts.AssertStartConfigurationRecorderRequest(t)
	return t
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
-- @param _ComplianceByConfigRules [ComplianceByConfigRules] <p>Indicates whether each of the specified AWS Config rules is compliant.</p>
-- @param _NextToken [String] <p>The string that you use in a subsequent request to get the next page of results in a paginated response.</p>
function M.DescribeComplianceByConfigRuleResponse(_ComplianceByConfigRules, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeComplianceByConfigRuleResponse")
	local t = { 
		["ComplianceByConfigRules"] = _ComplianceByConfigRules,
		["NextToken"] = _NextToken,
	}
	asserts.AssertDescribeComplianceByConfigRuleResponse(t)
	return t
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
-- @param _FailedEvaluations [Evaluations] <p>Requests that failed because of a client or server error.</p>
function M.PutEvaluationsResponse(_FailedEvaluations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutEvaluationsResponse")
	local t = { 
		["FailedEvaluations"] = _FailedEvaluations,
	}
	asserts.AssertPutEvaluationsResponse(t)
	return t
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
-- <p>The output when you start the evaluation for the specified Config rule.</p>
function M.StartConfigRulesEvaluationResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartConfigRulesEvaluationResponse")
	local t = { 
	}
	asserts.AssertStartConfigRulesEvaluationResponse(t)
	return t
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
-- @param _recordingGroup [RecordingGroup] <p>Specifies the types of AWS resource for which AWS Config records configuration changes.</p>
-- @param _roleARN [String] <p>Amazon Resource Name (ARN) of the IAM role used to describe the AWS resources associated with the account.</p>
-- @param _name [RecorderName] <p>The name of the recorder. By default, AWS Config automatically assigns the name "default" when creating the configuration recorder. You cannot change the assigned name.</p>
function M.ConfigurationRecorder(_recordingGroup, _roleARN, _name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConfigurationRecorder")
	local t = { 
		["recordingGroup"] = _recordingGroup,
		["roleARN"] = _roleARN,
		["name"] = _name,
	}
	asserts.AssertConfigurationRecorder(t)
	return t
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
-- @param _ComplianceSummariesByResourceType [ComplianceSummariesByResourceType] <p>The number of resources that are compliant and the number that are noncompliant. If one or more resource types were provided with the request, the numbers are returned for each resource type. The maximum number returned is 100.</p>
function M.GetComplianceSummaryByResourceTypeResponse(_ComplianceSummariesByResourceType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetComplianceSummaryByResourceTypeResponse")
	local t = { 
		["ComplianceSummariesByResourceType"] = _ComplianceSummariesByResourceType,
	}
	asserts.AssertGetComplianceSummaryByResourceTypeResponse(t)
	return t
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
-- @param _ConfigRuleName [StringWithCharLimit64] <p>The name of the Config rule for which you want to delete the evaluation results.</p>
-- Required parameter: ConfigRuleName
function M.DeleteEvaluationResultsRequest(_ConfigRuleName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteEvaluationResultsRequest")
	local t = { 
		["ConfigRuleName"] = _ConfigRuleName,
	}
	asserts.AssertDeleteEvaluationResultsRequest(t)
	return t
end

keys.InvalidConfigurationRecorderNameException = { nil }

function asserts.AssertInvalidConfigurationRecorderNameException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidConfigurationRecorderNameException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidConfigurationRecorderNameException[k], "InvalidConfigurationRecorderNameException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidConfigurationRecorderNameException
-- <p>You have provided a configuration recorder name that is not valid.</p>
function M.InvalidConfigurationRecorderNameException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidConfigurationRecorderNameException")
	local t = { 
	}
	asserts.AssertInvalidConfigurationRecorderNameException(t)
	return t
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
-- @param _deliveryChannelName [ChannelName] <p>The name of the delivery channel through which the snapshot is delivered.</p>
-- Required parameter: deliveryChannelName
function M.DeliverConfigSnapshotRequest(_deliveryChannelName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeliverConfigSnapshotRequest")
	local t = { 
		["deliveryChannelName"] = _deliveryChannelName,
	}
	asserts.AssertDeliverConfigSnapshotRequest(t)
	return t
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
-- @param _DeliveryChannelsStatus [DeliveryChannelStatusList] <p>A list that contains the status of a specified delivery channel.</p>
function M.DescribeDeliveryChannelStatusResponse(_DeliveryChannelsStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDeliveryChannelStatusResponse")
	local t = { 
		["DeliveryChannelsStatus"] = _DeliveryChannelsStatus,
	}
	asserts.AssertDescribeDeliveryChannelStatusResponse(t)
	return t
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
-- @param _ComplianceContributorCount [ComplianceContributorCount] <p>The number of AWS resources or AWS Config rules that cause a result of <code>NON_COMPLIANT</code>, up to a maximum number.</p>
-- @param _ComplianceType [ComplianceType] <p>Indicates whether an AWS resource or AWS Config rule is compliant.</p> <p>A resource is compliant if it complies with all of the AWS Config rules that evaluate it, and it is noncompliant if it does not comply with one or more of these rules.</p> <p>A rule is compliant if all of the resources that the rule evaluates comply with it, and it is noncompliant if any of these resources do not comply.</p> <p>AWS Config returns the <code>INSUFFICIENT_DATA</code> value when no evaluation results are available for the AWS resource or Config rule.</p> <p>For the <code>Compliance</code> data type, AWS Config supports only <code>COMPLIANT</code>, <code>NON_COMPLIANT</code>, and <code>INSUFFICIENT_DATA</code> values. AWS Config does not support the <code>NOT_APPLICABLE</code> value for the <code>Compliance</code> data type.</p>
function M.Compliance(_ComplianceContributorCount, _ComplianceType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Compliance")
	local t = { 
		["ComplianceContributorCount"] = _ComplianceContributorCount,
		["ComplianceType"] = _ComplianceType,
	}
	asserts.AssertCompliance(t)
	return t
end

keys.MaxNumberOfConfigRulesExceededException = { nil }

function asserts.AssertMaxNumberOfConfigRulesExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MaxNumberOfConfigRulesExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.MaxNumberOfConfigRulesExceededException[k], "MaxNumberOfConfigRulesExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MaxNumberOfConfigRulesExceededException
-- <p>Failed to add the AWS Config rule because the account already contains the maximum number of 50 rules. Consider deleting any deactivated rules before adding new rules.</p>
function M.MaxNumberOfConfigRulesExceededException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating MaxNumberOfConfigRulesExceededException")
	local t = { 
	}
	asserts.AssertMaxNumberOfConfigRulesExceededException(t)
	return t
end

keys.NoSuchDeliveryChannelException = { nil }

function asserts.AssertNoSuchDeliveryChannelException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoSuchDeliveryChannelException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.NoSuchDeliveryChannelException[k], "NoSuchDeliveryChannelException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoSuchDeliveryChannelException
-- <p>You have specified a delivery channel that does not exist.</p>
function M.NoSuchDeliveryChannelException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating NoSuchDeliveryChannelException")
	local t = { 
	}
	asserts.AssertNoSuchDeliveryChannelException(t)
	return t
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
-- @param _EvaluationResults [EvaluationResults] <p>Indicates whether the specified AWS resource complies each AWS Config rule.</p>
-- @param _NextToken [String] <p>The string that you use in a subsequent request to get the next page of results in a paginated response.</p>
function M.GetComplianceDetailsByResourceResponse(_EvaluationResults, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetComplianceDetailsByResourceResponse")
	local t = { 
		["EvaluationResults"] = _EvaluationResults,
		["NextToken"] = _NextToken,
	}
	asserts.AssertGetComplianceDetailsByResourceResponse(t)
	return t
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
-- @param _ConfigurationRecorderName [RecorderName] <p>The name of the configuration recorder to be deleted. You can retrieve the name of your configuration recorder by using the <code>DescribeConfigurationRecorders</code> action.</p>
-- Required parameter: ConfigurationRecorderName
function M.DeleteConfigurationRecorderRequest(_ConfigurationRecorderName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteConfigurationRecorderRequest")
	local t = { 
		["ConfigurationRecorderName"] = _ConfigurationRecorderName,
	}
	asserts.AssertDeleteConfigurationRecorderRequest(t)
	return t
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
-- <p>The output for the <a>DescribeConfigurationRecorderStatus</a> action in JSON format.</p>
-- @param _ConfigurationRecordersStatus [ConfigurationRecorderStatusList] <p>A list that contains status of the specified recorders.</p>
function M.DescribeConfigurationRecorderStatusResponse(_ConfigurationRecordersStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeConfigurationRecorderStatusResponse")
	local t = { 
		["ConfigurationRecordersStatus"] = _ConfigurationRecordersStatus,
	}
	asserts.AssertDescribeConfigurationRecorderStatusResponse(t)
	return t
end

keys.LastDeliveryChannelDeleteFailedException = { nil }

function asserts.AssertLastDeliveryChannelDeleteFailedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LastDeliveryChannelDeleteFailedException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.LastDeliveryChannelDeleteFailedException[k], "LastDeliveryChannelDeleteFailedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LastDeliveryChannelDeleteFailedException
-- <p>You cannot delete the delivery channel you specified because the configuration recorder is running.</p>
function M.LastDeliveryChannelDeleteFailedException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating LastDeliveryChannelDeleteFailedException")
	local t = { 
	}
	asserts.AssertLastDeliveryChannelDeleteFailedException(t)
	return t
end

keys.InvalidResultTokenException = { nil }

function asserts.AssertInvalidResultTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidResultTokenException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidResultTokenException[k], "InvalidResultTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidResultTokenException
-- <p>The specified <code>ResultToken</code> is invalid.</p>
function M.InvalidResultTokenException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidResultTokenException")
	local t = { 
	}
	asserts.AssertInvalidResultTokenException(t)
	return t
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
-- @param _ComplianceByResources [ComplianceByResources] <p>Indicates whether the specified AWS resource complies with all of the AWS Config rules that evaluate it.</p>
-- @param _NextToken [NextToken] <p>The string that you use in a subsequent request to get the next page of results in a paginated response.</p>
function M.DescribeComplianceByResourceResponse(_ComplianceByResources, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeComplianceByResourceResponse")
	local t = { 
		["ComplianceByResources"] = _ComplianceByResources,
		["NextToken"] = _NextToken,
	}
	asserts.AssertDescribeComplianceByResourceResponse(t)
	return t
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
-- @param _DeliveryChannels [DeliveryChannelList] <p>A list that contains the descriptions of the specified delivery channel.</p>
function M.DescribeDeliveryChannelsResponse(_DeliveryChannels, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDeliveryChannelsResponse")
	local t = { 
		["DeliveryChannels"] = _DeliveryChannels,
	}
	asserts.AssertDescribeDeliveryChannelsResponse(t)
	return t
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
-- @param _nextToken [NextToken] <p>The string that you use in a subsequent request to get the next page of results in a paginated response.</p>
-- @param _resourceIdentifiers [ResourceIdentifierList] <p>The details that identify a resource that is discovered by AWS Config, including the resource type, ID, and (if available) the custom resource name.</p>
function M.ListDiscoveredResourcesResponse(_nextToken, _resourceIdentifiers, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDiscoveredResourcesResponse")
	local t = { 
		["nextToken"] = _nextToken,
		["resourceIdentifiers"] = _resourceIdentifiers,
	}
	asserts.AssertListDiscoveredResourcesResponse(t)
	return t
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
-- @param _ConfigurationRecorderNames [ConfigurationRecorderNameList] <p>A list of configuration recorder names.</p>
function M.DescribeConfigurationRecordersRequest(_ConfigurationRecorderNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeConfigurationRecordersRequest")
	local t = { 
		["ConfigurationRecorderNames"] = _ConfigurationRecorderNames,
	}
	asserts.AssertDescribeConfigurationRecordersRequest(t)
	return t
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
-- @param _DeliveryChannelNames [DeliveryChannelNameList] <p>A list of delivery channel names.</p>
function M.DescribeDeliveryChannelStatusRequest(_DeliveryChannelNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDeliveryChannelStatusRequest")
	local t = { 
		["DeliveryChannelNames"] = _DeliveryChannelNames,
	}
	asserts.AssertDescribeDeliveryChannelStatusRequest(t)
	return t
end

keys.NoAvailableDeliveryChannelException = { nil }

function asserts.AssertNoAvailableDeliveryChannelException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoAvailableDeliveryChannelException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.NoAvailableDeliveryChannelException[k], "NoAvailableDeliveryChannelException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoAvailableDeliveryChannelException
-- <p>There is no delivery channel available to record configurations.</p>
function M.NoAvailableDeliveryChannelException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating NoAvailableDeliveryChannelException")
	local t = { 
	}
	asserts.AssertNoAvailableDeliveryChannelException(t)
	return t
end

keys.MaxNumberOfConfigurationRecordersExceededException = { nil }

function asserts.AssertMaxNumberOfConfigurationRecordersExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MaxNumberOfConfigurationRecordersExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.MaxNumberOfConfigurationRecordersExceededException[k], "MaxNumberOfConfigurationRecordersExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MaxNumberOfConfigurationRecordersExceededException
-- <p>You have reached the limit on the number of recorders you can create.</p>
function M.MaxNumberOfConfigurationRecordersExceededException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating MaxNumberOfConfigurationRecordersExceededException")
	local t = { 
	}
	asserts.AssertMaxNumberOfConfigurationRecordersExceededException(t)
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
-- <p>This exception is thrown if an evaluation is in progress or if you call the <a>StartConfigRulesEvaluation</a> API more than once per minute.</p>
function M.LimitExceededException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
	}
	asserts.AssertLimitExceededException(t)
	return t
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
-- <p>The output when you delete the evaluation results for the specified Config rule.</p>
function M.DeleteEvaluationResultsResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteEvaluationResultsResponse")
	local t = { 
	}
	asserts.AssertDeleteEvaluationResultsResponse(t)
	return t
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
-- @param _Owner [Owner] <p>Indicates whether AWS or the customer owns and manages the AWS Config rule.</p>
-- @param _SourceIdentifier [StringWithCharLimit256] <p>For AWS Config managed rules, a predefined identifier from a list. For example, <code>IAM_PASSWORD_POLICY</code> is a managed rule. To reference a managed rule, see <a href="http://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html">Using AWS Managed Config Rules</a>.</p> <p>For custom rules, the identifier is the Amazon Resource Name (ARN) of the rule's AWS Lambda function, such as <code>arn:aws:lambda:us-east-1:123456789012:function:custom_rule_name</code>.</p>
-- @param _SourceDetails [SourceDetails] <p>Provides the source and type of the event that causes AWS Config to evaluate your AWS resources.</p>
-- Required parameter: Owner
-- Required parameter: SourceIdentifier
function M.Source(_Owner, _SourceIdentifier, _SourceDetails, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Source")
	local t = { 
		["Owner"] = _Owner,
		["SourceIdentifier"] = _SourceIdentifier,
		["SourceDetails"] = _SourceDetails,
	}
	asserts.AssertSource(t)
	return t
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
-- <p>Indicates whether an AWS Config rule is compliant. A rule is compliant if all of the resources that the rule evaluated comply with it, and it is noncompliant if any of these resources do not comply.</p>
-- @param _Compliance [Compliance] <p>Indicates whether the AWS Config rule is compliant.</p>
-- @param _ConfigRuleName [StringWithCharLimit64] <p>The name of the AWS Config rule.</p>
function M.ComplianceByConfigRule(_Compliance, _ConfigRuleName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ComplianceByConfigRule")
	local t = { 
		["Compliance"] = _Compliance,
		["ConfigRuleName"] = _ConfigRuleName,
	}
	asserts.AssertComplianceByConfigRule(t)
	return t
end

keys.InvalidDeliveryChannelNameException = { nil }

function asserts.AssertInvalidDeliveryChannelNameException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDeliveryChannelNameException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidDeliveryChannelNameException[k], "InvalidDeliveryChannelNameException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDeliveryChannelNameException
-- <p>The specified delivery channel name is not valid.</p>
function M.InvalidDeliveryChannelNameException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidDeliveryChannelNameException")
	local t = { 
	}
	asserts.AssertInvalidDeliveryChannelNameException(t)
	return t
end

keys.InvalidNextTokenException = { nil }

function asserts.AssertInvalidNextTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidNextTokenException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidNextTokenException[k], "InvalidNextTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidNextTokenException
-- <p>The specified next token is invalid. Specify the <code>NextToken</code> string that was returned in the previous response to get the next page of results.</p>
function M.InvalidNextTokenException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidNextTokenException")
	local t = { 
	}
	asserts.AssertInvalidNextTokenException(t)
	return t
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
-- @param _ConfigRuleNames [ReevaluateConfigRuleNames] <p>The list of names of Config rules that you want to run evaluations for.</p>
function M.StartConfigRulesEvaluationRequest(_ConfigRuleNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartConfigRulesEvaluationRequest")
	local t = { 
		["ConfigRuleNames"] = _ConfigRuleNames,
	}
	asserts.AssertStartConfigRulesEvaluationRequest(t)
	return t
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
-- <p>Status information for your AWS managed Config rules. The status includes information such as the last time the rule ran, the last time it failed, and the related error for the last failure.</p> <p>This action does not return status information about custom Config rules.</p>
-- @param _LastFailedEvaluationTime [Date] <p>The time that AWS Config last failed to evaluate your AWS resources against the rule.</p>
-- @param _LastSuccessfulInvocationTime [Date] <p>The time that AWS Config last successfully invoked the AWS Config rule to evaluate your AWS resources.</p>
-- @param _FirstEvaluationStarted [Boolean] <p>Indicates whether AWS Config has evaluated your resources against the rule at least once.</p> <ul> <li> <p> <code>true</code> - AWS Config has evaluated your AWS resources against the rule at least once.</p> </li> <li> <p> <code>false</code> - AWS Config has not once finished evaluating your AWS resources against the rule.</p> </li> </ul>
-- @param _LastFailedInvocationTime [Date] <p>The time that AWS Config last failed to invoke the AWS Config rule to evaluate your AWS resources.</p>
-- @param _ConfigRuleName [StringWithCharLimit64] <p>The name of the AWS Config rule.</p>
-- @param _ConfigRuleArn [String] <p>The Amazon Resource Name (ARN) of the AWS Config rule.</p>
-- @param _FirstActivatedTime [Date] <p>The time that you first activated the AWS Config rule.</p>
-- @param _LastSuccessfulEvaluationTime [Date] <p>The time that AWS Config last successfully evaluated your AWS resources against the rule.</p>
-- @param _LastErrorCode [String] <p>The error code that AWS Config returned when the rule last failed.</p>
-- @param _LastErrorMessage [String] <p>The error message that AWS Config returned when the rule last failed.</p>
-- @param _ConfigRuleId [String] <p>The ID of the AWS Config rule.</p>
function M.ConfigRuleEvaluationStatus(_LastFailedEvaluationTime, _LastSuccessfulInvocationTime, _FirstEvaluationStarted, _LastFailedInvocationTime, _ConfigRuleName, _ConfigRuleArn, _FirstActivatedTime, _LastSuccessfulEvaluationTime, _LastErrorCode, _LastErrorMessage, _ConfigRuleId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConfigRuleEvaluationStatus")
	local t = { 
		["LastFailedEvaluationTime"] = _LastFailedEvaluationTime,
		["LastSuccessfulInvocationTime"] = _LastSuccessfulInvocationTime,
		["FirstEvaluationStarted"] = _FirstEvaluationStarted,
		["LastFailedInvocationTime"] = _LastFailedInvocationTime,
		["ConfigRuleName"] = _ConfigRuleName,
		["ConfigRuleArn"] = _ConfigRuleArn,
		["FirstActivatedTime"] = _FirstActivatedTime,
		["LastSuccessfulEvaluationTime"] = _LastSuccessfulEvaluationTime,
		["LastErrorCode"] = _LastErrorCode,
		["LastErrorMessage"] = _LastErrorMessage,
		["ConfigRuleId"] = _ConfigRuleId,
	}
	asserts.AssertConfigRuleEvaluationStatus(t)
	return t
end

keys.NoSuchConfigurationRecorderException = { nil }

function asserts.AssertNoSuchConfigurationRecorderException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoSuchConfigurationRecorderException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.NoSuchConfigurationRecorderException[k], "NoSuchConfigurationRecorderException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoSuchConfigurationRecorderException
-- <p>You have specified a configuration recorder that does not exist.</p>
function M.NoSuchConfigurationRecorderException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating NoSuchConfigurationRecorderException")
	local t = { 
	}
	asserts.AssertNoSuchConfigurationRecorderException(t)
	return t
end

keys.NoRunningConfigurationRecorderException = { nil }

function asserts.AssertNoRunningConfigurationRecorderException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoRunningConfigurationRecorderException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.NoRunningConfigurationRecorderException[k], "NoRunningConfigurationRecorderException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoRunningConfigurationRecorderException
-- <p>There is no configuration recorder running.</p>
function M.NoRunningConfigurationRecorderException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating NoRunningConfigurationRecorderException")
	local t = { 
	}
	asserts.AssertNoRunningConfigurationRecorderException(t)
	return t
end

keys.InsufficientPermissionsException = { nil }

function asserts.AssertInsufficientPermissionsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InsufficientPermissionsException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InsufficientPermissionsException[k], "InsufficientPermissionsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InsufficientPermissionsException
-- <p>Indicates one of the following errors:</p> <ul> <li> <p>The rule cannot be created because the IAM role assigned to AWS Config lacks permissions to perform the config:Put* action.</p> </li> <li> <p>The AWS Lambda function cannot be invoked. Check the function ARN, and check the function's permissions.</p> </li> </ul>
function M.InsufficientPermissionsException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InsufficientPermissionsException")
	local t = { 
	}
	asserts.AssertInsufficientPermissionsException(t)
	return t
end

keys.ResourceNotDiscoveredException = { nil }

function asserts.AssertResourceNotDiscoveredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotDiscoveredException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ResourceNotDiscoveredException[k], "ResourceNotDiscoveredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotDiscoveredException
-- <p>You have specified a resource that is either unknown or has not been discovered.</p>
function M.ResourceNotDiscoveredException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotDiscoveredException")
	local t = { 
	}
	asserts.AssertResourceNotDiscoveredException(t)
	return t
end

keys.InvalidS3KeyPrefixException = { nil }

function asserts.AssertInvalidS3KeyPrefixException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidS3KeyPrefixException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidS3KeyPrefixException[k], "InvalidS3KeyPrefixException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidS3KeyPrefixException
-- <p>The specified Amazon S3 key prefix is not valid.</p>
function M.InvalidS3KeyPrefixException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidS3KeyPrefixException")
	local t = { 
	}
	asserts.AssertInvalidS3KeyPrefixException(t)
	return t
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
-- <p>The output for the <a>DeliverConfigSnapshot</a> action in JSON format.</p>
-- @param _configSnapshotId [String] <p>The ID of the snapshot that is being created.</p>
function M.DeliverConfigSnapshotResponse(_configSnapshotId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeliverConfigSnapshotResponse")
	local t = { 
		["configSnapshotId"] = _configSnapshotId,
	}
	asserts.AssertDeliverConfigSnapshotResponse(t)
	return t
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
-- @param _s3KeyPrefix [String] <p>The prefix for the specified Amazon S3 bucket.</p>
-- @param _configSnapshotDeliveryProperties [ConfigSnapshotDeliveryProperties] <p>The options for how often AWS Config delivers configuration snapshots to the Amazon S3 bucket.</p>
-- @param _snsTopicARN [String] <p>The Amazon Resource Name (ARN) of the Amazon SNS topic to which AWS Config sends notifications about configuration changes.</p> <p>If you choose a topic from another account, the topic must have policies that grant access permissions to AWS Config. For more information, see <a href="http://docs.aws.amazon.com/config/latest/developerguide/sns-topic-policy.html">Permissions for the Amazon SNS Topic</a> in the AWS Config Developer Guide.</p>
-- @param _name [ChannelName] <p>The name of the delivery channel. By default, AWS Config assigns the name "default" when creating the delivery channel. To change the delivery channel name, you must use the DeleteDeliveryChannel action to delete your current delivery channel, and then you must use the PutDeliveryChannel command to create a delivery channel that has the desired name.</p>
-- @param _s3BucketName [String] <p>The name of the Amazon S3 bucket to which AWS Config delivers configuration snapshots and configuration history files.</p> <p>If you specify a bucket that belongs to another AWS account, that bucket must have policies that grant access permissions to AWS Config. For more information, see <a href="http://docs.aws.amazon.com/config/latest/developerguide/s3-bucket-policy.html">Permissions for the Amazon S3 Bucket</a> in the AWS Config Developer Guide.</p>
function M.DeliveryChannel(_s3KeyPrefix, _configSnapshotDeliveryProperties, _snsTopicARN, _name, _s3BucketName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeliveryChannel")
	local t = { 
		["s3KeyPrefix"] = _s3KeyPrefix,
		["configSnapshotDeliveryProperties"] = _configSnapshotDeliveryProperties,
		["snsTopicARN"] = _snsTopicARN,
		["name"] = _name,
		["s3BucketName"] = _s3BucketName,
	}
	asserts.AssertDeliveryChannel(t)
	return t
end

keys.DescribeComplianceByResourceRequest = { ["ResourceType"] = true, ["ResourceId"] = true, ["NextToken"] = true, ["Limit"] = true, ["ComplianceTypes"] = true, nil }

function asserts.AssertDescribeComplianceByResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeComplianceByResourceRequest to be of type 'table'")
	if struct["ResourceType"] then asserts.AssertStringWithCharLimit256(struct["ResourceType"]) end
	if struct["ResourceId"] then asserts.AssertStringWithCharLimit256(struct["ResourceId"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Limit"] then asserts.AssertLimit(struct["Limit"]) end
	if struct["ComplianceTypes"] then asserts.AssertComplianceTypes(struct["ComplianceTypes"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeComplianceByResourceRequest[k], "DescribeComplianceByResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeComplianceByResourceRequest
-- <p/>
-- @param _ResourceType [StringWithCharLimit256] <p>The types of AWS resources for which you want compliance information; for example, <code>AWS::EC2::Instance</code>. For this action, you can specify that the resource type is an AWS account by specifying <code>AWS::::Account</code>.</p>
-- @param _ResourceId [StringWithCharLimit256] <p>The ID of the AWS resource for which you want compliance information. You can specify only one resource ID. If you specify a resource ID, you must also specify a type for <code>ResourceType</code>.</p>
-- @param _NextToken [NextToken] <p>The <code>NextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>
-- @param _Limit [Limit] <p>The maximum number of evaluation results returned on each page. The default is 10. You cannot specify a limit greater than 100. If you specify 0, AWS Config uses the default.</p>
-- @param _ComplianceTypes [ComplianceTypes] <p>Filters the results by compliance.</p> <p>The allowed values are <code>COMPLIANT</code>, <code>NON_COMPLIANT</code>, and <code>INSUFFICIENT_DATA</code>.</p>
function M.DescribeComplianceByResourceRequest(_ResourceType, _ResourceId, _NextToken, _Limit, _ComplianceTypes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeComplianceByResourceRequest")
	local t = { 
		["ResourceType"] = _ResourceType,
		["ResourceId"] = _ResourceId,
		["NextToken"] = _NextToken,
		["Limit"] = _Limit,
		["ComplianceTypes"] = _ComplianceTypes,
	}
	asserts.AssertDescribeComplianceByResourceRequest(t)
	return t
end

keys.InvalidTimeRangeException = { nil }

function asserts.AssertInvalidTimeRangeException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidTimeRangeException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidTimeRangeException[k], "InvalidTimeRangeException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidTimeRangeException
-- <p>The specified time range is not valid. The earlier time is not chronologically before the later time.</p>
function M.InvalidTimeRangeException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidTimeRangeException")
	local t = { 
	}
	asserts.AssertInvalidTimeRangeException(t)
	return t
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
-- <p>The number of AWS resources of a specific type that are compliant or noncompliant, up to a maximum of 100 for each compliance.</p>
-- @param _ResourceType [StringWithCharLimit256] <p>The type of AWS resource.</p>
-- @param _ComplianceSummary [ComplianceSummary] <p>The number of AWS resources that are compliant or noncompliant, up to a maximum of 100 for each compliance.</p>
function M.ComplianceSummaryByResourceType(_ResourceType, _ComplianceSummary, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ComplianceSummaryByResourceType")
	local t = { 
		["ResourceType"] = _ResourceType,
		["ComplianceSummary"] = _ComplianceSummary,
	}
	asserts.AssertComplianceSummaryByResourceType(t)
	return t
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
-- @param _resourceType [ResourceType] <p>The type of resource.</p>
-- @param _resourceId [ResourceId] <p>The ID of the resource (for example., <code>sg-xxxxxx</code>).</p>
-- @param _resourceDeletionTime [ResourceDeletionTime] <p>The time that the resource was deleted.</p>
-- @param _resourceName [ResourceName] <p>The custom name of the resource (if available).</p>
function M.ResourceIdentifier(_resourceType, _resourceId, _resourceDeletionTime, _resourceName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceIdentifier")
	local t = { 
		["resourceType"] = _resourceType,
		["resourceId"] = _resourceId,
		["resourceDeletionTime"] = _resourceDeletionTime,
		["resourceName"] = _resourceName,
	}
	asserts.AssertResourceIdentifier(t)
	return t
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
-- @param _NextToken [String] <p>The <code>NextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>
-- @param _ConfigRuleNames [ConfigRuleNames] <p>The names of the AWS Config rules for which you want details. If you do not specify any names, AWS Config returns details for all your rules.</p>
function M.DescribeConfigRulesRequest(_NextToken, _ConfigRuleNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeConfigRulesRequest")
	local t = { 
		["NextToken"] = _NextToken,
		["ConfigRuleNames"] = _ConfigRuleNames,
	}
	asserts.AssertDescribeConfigRulesRequest(t)
	return t
end

keys.NoSuchConfigRuleException = { nil }

function asserts.AssertNoSuchConfigRuleException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoSuchConfigRuleException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.NoSuchConfigRuleException[k], "NoSuchConfigRuleException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoSuchConfigRuleException
-- <p>One or more AWS Config rules in the request are invalid. Verify that the rule names are correct and try again.</p>
function M.NoSuchConfigRuleException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating NoSuchConfigRuleException")
	local t = { 
	}
	asserts.AssertNoSuchConfigRuleException(t)
	return t
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
-- @param _CappedCount [Integer] <p>The number of AWS resources or AWS Config rules responsible for the current compliance of the item.</p>
-- @param _CapExceeded [Boolean] <p>Indicates whether the maximum count is reached.</p>
function M.ComplianceContributorCount(_CappedCount, _CapExceeded, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ComplianceContributorCount")
	local t = { 
		["CappedCount"] = _CappedCount,
		["CapExceeded"] = _CapExceeded,
	}
	asserts.AssertComplianceContributorCount(t)
	return t
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
-- @param _ConfigRule [ConfigRule] <p>The rule that you want to add to your account.</p>
-- Required parameter: ConfigRule
function M.PutConfigRuleRequest(_ConfigRule, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutConfigRuleRequest")
	local t = { 
		["ConfigRule"] = _ConfigRule,
	}
	asserts.AssertPutConfigRuleRequest(t)
	return t
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
-- @param _EventSource [EventSource] <p>The source of the event, such as an AWS service, that triggers AWS Config to evaluate your AWS resources.</p>
-- @param _MessageType [MessageType] <p>The type of notification that triggers AWS Config to run an evaluation for a rule. You can specify the following notification types:</p> <ul> <li> <p> <code>ConfigurationItemChangeNotification</code> - Triggers an evaluation when AWS Config delivers a configuration item as a result of a resource change.</p> </li> <li> <p> <code>OversizedConfigurationItemChangeNotification</code> - Triggers an evaluation when AWS Config delivers an oversized configuration item. AWS Config may generate this notification type when a resource changes and the notification exceeds the maximum size allowed by Amazon SNS.</p> </li> <li> <p> <code>ScheduledNotification</code> - Triggers a periodic evaluation at the frequency specified for <code>MaximumExecutionFrequency</code>.</p> </li> <li> <p> <code>ConfigurationSnapshotDeliveryCompleted</code> - Triggers a periodic evaluation when AWS Config delivers a configuration snapshot.</p> </li> </ul> <p>If you want your custom rule to be triggered by configuration changes, specify both <code>ConfigurationItemChangeNotification</code> and <code>OversizedConfigurationItemChangeNotification</code>. </p>
-- @param _MaximumExecutionFrequency [MaximumExecutionFrequency] <p>The frequency that you want AWS Config to run evaluations for a custom rule with a periodic trigger. If you specify a value for <code>MaximumExecutionFrequency</code>, then <code>MessageType</code> must use the <code>ScheduledNotification</code> value.</p> <note> <p>By default, rules with a periodic trigger are evaluated every 24 hours. To change the frequency, specify a valid value for the <code>MaximumExecutionFrequency</code> parameter.</p> </note>
function M.SourceDetail(_EventSource, _MessageType, _MaximumExecutionFrequency, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SourceDetail")
	local t = { 
		["EventSource"] = _EventSource,
		["MessageType"] = _MessageType,
		["MaximumExecutionFrequency"] = _MaximumExecutionFrequency,
	}
	asserts.AssertSourceDetail(t)
	return t
end

keys.NoAvailableConfigurationRecorderException = { nil }

function asserts.AssertNoAvailableConfigurationRecorderException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoAvailableConfigurationRecorderException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.NoAvailableConfigurationRecorderException[k], "NoAvailableConfigurationRecorderException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoAvailableConfigurationRecorderException
-- <p>There are no configuration recorders available to provide the role needed to describe your resources. Create a configuration recorder.</p>
function M.NoAvailableConfigurationRecorderException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating NoAvailableConfigurationRecorderException")
	local t = { 
	}
	asserts.AssertNoAvailableConfigurationRecorderException(t)
	return t
end

keys.InvalidLimitException = { nil }

function asserts.AssertInvalidLimitException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidLimitException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidLimitException[k], "InvalidLimitException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidLimitException
-- <p>The specified limit is outside the allowable range.</p>
function M.InvalidLimitException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidLimitException")
	local t = { 
	}
	asserts.AssertInvalidLimitException(t)
	return t
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
-- <p>Provides options for how often AWS Config delivers configuration snapshots to the Amazon S3 bucket in your delivery channel.</p> <note> <p>If you want to create a rule that triggers evaluations for your resources when AWS Config delivers the configuration snapshot, see the following:</p> </note> <p>The frequency for a rule that triggers evaluations for your resources when AWS Config delivers the configuration snapshot is set by one of two values, depending on which is less frequent:</p> <ul> <li> <p>The value for the <code>deliveryFrequency</code> parameter within the delivery channel configuration, which sets how often AWS Config delivers configuration snapshots. This value also sets how often AWS Config invokes evaluations for Config rules.</p> </li> <li> <p>The value for the <code>MaximumExecutionFrequency</code> parameter, which sets the maximum frequency with which AWS Config invokes evaluations for the rule. For more information, see <a>ConfigRule</a>.</p> </li> </ul> <p>If the <code>deliveryFrequency</code> value is less frequent than the <code>MaximumExecutionFrequency</code> value for a rule, AWS Config invokes the rule only as often as the <code>deliveryFrequency</code> value.</p> <ol> <li> <p>For example, you want your rule to run evaluations when AWS Config delivers the configuration snapshot.</p> </li> <li> <p>You specify the <code>MaximumExecutionFrequency</code> value for <code>Six_Hours</code>. </p> </li> <li> <p>You then specify the delivery channel <code>deliveryFrequency</code> value for <code>TwentyFour_Hours</code>.</p> </li> <li> <p>Because the value for <code>deliveryFrequency</code> is less frequent than <code>MaximumExecutionFrequency</code>, AWS Config invokes evaluations for the rule every 24 hours. </p> </li> </ol> <p>You should set the <code>MaximumExecutionFrequency</code> value to be at least as frequent as the <code>deliveryFrequency</code> value. You can view the <code>deliveryFrequency</code> value by using the <code>DescribeDeliveryChannnels</code> action.</p> <p>To update the <code>deliveryFrequency</code> with which AWS Config delivers your configuration snapshots, use the <code>PutDeliveryChannel</code> action.</p>
-- @param _deliveryFrequency [MaximumExecutionFrequency] <p>The frequency with which AWS Config delivers configuration snapshots.</p>
function M.ConfigSnapshotDeliveryProperties(_deliveryFrequency, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConfigSnapshotDeliveryProperties")
	local t = { 
		["deliveryFrequency"] = _deliveryFrequency,
	}
	asserts.AssertConfigSnapshotDeliveryProperties(t)
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
-- <p>The requested action is not valid.</p>
function M.ValidationException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ValidationException")
	local t = { 
	}
	asserts.AssertValidationException(t)
	return t
end

keys.EvaluationResultQualifier = { ["ResourceType"] = true, ["ResourceId"] = true, ["ConfigRuleName"] = true, nil }

function asserts.AssertEvaluationResultQualifier(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EvaluationResultQualifier to be of type 'table'")
	if struct["ResourceType"] then asserts.AssertStringWithCharLimit256(struct["ResourceType"]) end
	if struct["ResourceId"] then asserts.AssertStringWithCharLimit256(struct["ResourceId"]) end
	if struct["ConfigRuleName"] then asserts.AssertStringWithCharLimit64(struct["ConfigRuleName"]) end
	for k,_ in pairs(struct) do
		assert(keys.EvaluationResultQualifier[k], "EvaluationResultQualifier contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EvaluationResultQualifier
-- <p>Identifies an AWS Config rule that evaluated an AWS resource, and provides the type and ID of the resource that the rule evaluated.</p>
-- @param _ResourceType [StringWithCharLimit256] <p>The type of AWS resource that was evaluated.</p>
-- @param _ResourceId [StringWithCharLimit256] <p>The ID of the evaluated AWS resource.</p>
-- @param _ConfigRuleName [StringWithCharLimit64] <p>The name of the AWS Config rule that was used in the evaluation.</p>
function M.EvaluationResultQualifier(_ResourceType, _ResourceId, _ConfigRuleName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EvaluationResultQualifier")
	local t = { 
		["ResourceType"] = _ResourceType,
		["ResourceId"] = _ResourceId,
		["ConfigRuleName"] = _ConfigRuleName,
	}
	asserts.AssertEvaluationResultQualifier(t)
	return t
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
-- @param _ComplianceTypes [ComplianceTypes] <p>Filters the results by compliance.</p> <p>The allowed values are <code>COMPLIANT</code>, <code>NON_COMPLIANT</code>, and <code>INSUFFICIENT_DATA</code>.</p>
-- @param _NextToken [String] <p>The <code>NextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>
-- @param _ConfigRuleNames [ConfigRuleNames] <p>Specify one or more AWS Config rule names to filter the results by rule.</p>
function M.DescribeComplianceByConfigRuleRequest(_ComplianceTypes, _NextToken, _ConfigRuleNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeComplianceByConfigRuleRequest")
	local t = { 
		["ComplianceTypes"] = _ComplianceTypes,
		["NextToken"] = _NextToken,
		["ConfigRuleNames"] = _ConfigRuleNames,
	}
	asserts.AssertDescribeComplianceByConfigRuleRequest(t)
	return t
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
	if struct["ComplianceResourceId"] then asserts.AssertStringWithCharLimit256(struct["ComplianceResourceId"]) end
	if struct["ComplianceResourceType"] then asserts.AssertStringWithCharLimit256(struct["ComplianceResourceType"]) end
	if struct["Annotation"] then asserts.AssertStringWithCharLimit256(struct["Annotation"]) end
	if struct["ComplianceType"] then asserts.AssertComplianceType(struct["ComplianceType"]) end
	for k,_ in pairs(struct) do
		assert(keys.Evaluation[k], "Evaluation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Evaluation
-- <p>Identifies an AWS resource and indicates whether it complies with the AWS Config rule that it was evaluated against.</p>
-- @param _OrderingTimestamp [OrderingTimestamp] <p>The time of the event in AWS Config that triggered the evaluation. For event-based evaluations, the time indicates when AWS Config created the configuration item that triggered the evaluation. For periodic evaluations, the time indicates when AWS Config triggered the evaluation at the frequency that you specified (for example, every 24 hours).</p>
-- @param _ComplianceResourceId [StringWithCharLimit256] <p>The ID of the AWS resource that was evaluated.</p>
-- @param _ComplianceResourceType [StringWithCharLimit256] <p>The type of AWS resource that was evaluated.</p>
-- @param _Annotation [StringWithCharLimit256] <p>Supplementary information about how the evaluation determined the compliance.</p>
-- @param _ComplianceType [ComplianceType] <p>Indicates whether the AWS resource complies with the AWS Config rule that it was evaluated against.</p> <p>For the <code>Evaluation</code> data type, AWS Config supports only the <code>COMPLIANT</code>, <code>NON_COMPLIANT</code>, and <code>NOT_APPLICABLE</code> values. AWS Config does not support the <code>INSUFFICIENT_DATA</code> value for this data type.</p> <p>Similarly, AWS Config does not accept <code>INSUFFICIENT_DATA</code> as the value for <code>ComplianceType</code> from a <code>PutEvaluations</code> request. For example, an AWS Lambda function for a custom Config rule cannot pass an <code>INSUFFICIENT_DATA</code> value to AWS Config.</p>
-- Required parameter: ComplianceResourceType
-- Required parameter: ComplianceResourceId
-- Required parameter: ComplianceType
-- Required parameter: OrderingTimestamp
function M.Evaluation(_OrderingTimestamp, _ComplianceResourceId, _ComplianceResourceType, _Annotation, _ComplianceType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Evaluation")
	local t = { 
		["OrderingTimestamp"] = _OrderingTimestamp,
		["ComplianceResourceId"] = _ComplianceResourceId,
		["ComplianceResourceType"] = _ComplianceResourceType,
		["Annotation"] = _Annotation,
		["ComplianceType"] = _ComplianceType,
	}
	asserts.AssertEvaluation(t)
	return t
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
-- <p>The input for the <a>DeleteDeliveryChannel</a> action. The action accepts the following data in JSON format. </p>
-- @param _DeliveryChannelName [ChannelName] <p>The name of the delivery channel to delete.</p>
-- Required parameter: DeliveryChannelName
function M.DeleteDeliveryChannelRequest(_DeliveryChannelName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDeliveryChannelRequest")
	local t = { 
		["DeliveryChannelName"] = _DeliveryChannelName,
	}
	asserts.AssertDeleteDeliveryChannelRequest(t)
	return t
end

keys.InsufficientDeliveryPolicyException = { nil }

function asserts.AssertInsufficientDeliveryPolicyException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InsufficientDeliveryPolicyException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InsufficientDeliveryPolicyException[k], "InsufficientDeliveryPolicyException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InsufficientDeliveryPolicyException
-- <p>Your Amazon S3 bucket policy does not permit AWS Config to write to it.</p>
function M.InsufficientDeliveryPolicyException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InsufficientDeliveryPolicyException")
	local t = { 
	}
	asserts.AssertInsufficientDeliveryPolicyException(t)
	return t
end

keys.ResourceInUseException = { nil }

function asserts.AssertResourceInUseException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceInUseException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ResourceInUseException[k], "ResourceInUseException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceInUseException
-- <p>The rule is currently being deleted or the rule is deleting your evaluation results. Try your request again later.</p>
function M.ResourceInUseException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceInUseException")
	local t = { 
	}
	asserts.AssertResourceInUseException(t)
	return t
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
-- @param _ConfigurationRecorders [ConfigurationRecorderList] <p>A list that contains the descriptions of the specified configuration recorders.</p>
function M.DescribeConfigurationRecordersResponse(_ConfigurationRecorders, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeConfigurationRecordersResponse")
	local t = { 
		["ConfigurationRecorders"] = _ConfigurationRecorders,
	}
	asserts.AssertDescribeConfigurationRecordersResponse(t)
	return t
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
-- @param _NextToken [String] <p>The string that you use in a subsequent request to get the next page of results in a paginated response.</p>
-- @param _ConfigRulesEvaluationStatus [ConfigRuleEvaluationStatusList] <p>Status information about your AWS managed Config rules.</p>
function M.DescribeConfigRuleEvaluationStatusResponse(_NextToken, _ConfigRulesEvaluationStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeConfigRuleEvaluationStatusResponse")
	local t = { 
		["NextToken"] = _NextToken,
		["ConfigRulesEvaluationStatus"] = _ConfigRulesEvaluationStatus,
	}
	asserts.AssertDescribeConfigRuleEvaluationStatusResponse(t)
	return t
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
-- @param _NonCompliantResourceCount [ComplianceContributorCount] <p>The number of AWS Config rules or AWS resources that are noncompliant, up to a maximum of 25 for rules and 100 for resources.</p>
-- @param _ComplianceSummaryTimestamp [Date] <p>The time that AWS Config created the compliance summary.</p>
-- @param _CompliantResourceCount [ComplianceContributorCount] <p>The number of AWS Config rules or AWS resources that are compliant, up to a maximum of 25 for rules and 100 for resources.</p>
function M.ComplianceSummary(_NonCompliantResourceCount, _ComplianceSummaryTimestamp, _CompliantResourceCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ComplianceSummary")
	local t = { 
		["NonCompliantResourceCount"] = _NonCompliantResourceCount,
		["ComplianceSummaryTimestamp"] = _ComplianceSummaryTimestamp,
		["CompliantResourceCount"] = _CompliantResourceCount,
	}
	asserts.AssertComplianceSummary(t)
	return t
end

keys.InvalidRecordingGroupException = { nil }

function asserts.AssertInvalidRecordingGroupException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRecordingGroupException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidRecordingGroupException[k], "InvalidRecordingGroupException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRecordingGroupException
-- <p>AWS Config throws an exception if the recording group does not contain a valid list of resource types. Invalid values could also be incorrectly formatted.</p>
function M.InvalidRecordingGroupException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidRecordingGroupException")
	local t = { 
	}
	asserts.AssertInvalidRecordingGroupException(t)
	return t
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
-- @param _ConfigRuleName [StringWithCharLimit64] <p>The name of the AWS Config rule that you want to delete.</p>
-- Required parameter: ConfigRuleName
function M.DeleteConfigRuleRequest(_ConfigRuleName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteConfigRuleRequest")
	local t = { 
		["ConfigRuleName"] = _ConfigRuleName,
	}
	asserts.AssertDeleteConfigRuleRequest(t)
	return t
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
-- @param _NextToken [NextToken] <p>The <code>NextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>
-- @param _ComplianceTypes [ComplianceTypes] <p>Filters the results by compliance.</p> <p>The allowed values are <code>COMPLIANT</code>, <code>NON_COMPLIANT</code>, and <code>NOT_APPLICABLE</code>.</p>
-- @param _Limit [Limit] <p>The maximum number of evaluation results returned on each page. The default is 10. You cannot specify a limit greater than 100. If you specify 0, AWS Config uses the default.</p>
-- @param _ConfigRuleName [StringWithCharLimit64] <p>The name of the AWS Config rule for which you want compliance information.</p>
-- Required parameter: ConfigRuleName
function M.GetComplianceDetailsByConfigRuleRequest(_NextToken, _ComplianceTypes, _Limit, _ConfigRuleName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetComplianceDetailsByConfigRuleRequest")
	local t = { 
		["NextToken"] = _NextToken,
		["ComplianceTypes"] = _ComplianceTypes,
		["Limit"] = _Limit,
		["ConfigRuleName"] = _ConfigRuleName,
	}
	asserts.AssertGetComplianceDetailsByConfigRuleRequest(t)
	return t
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
-- @param _ConfigurationRecorderName [RecorderName] <p>The name of the recorder object that records each configuration change made to the resources.</p>
-- Required parameter: ConfigurationRecorderName
function M.StopConfigurationRecorderRequest(_ConfigurationRecorderName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopConfigurationRecorderRequest")
	local t = { 
		["ConfigurationRecorderName"] = _ConfigurationRecorderName,
	}
	asserts.AssertStopConfigurationRecorderRequest(t)
	return t
end

keys.InvalidParameterValueException = { nil }

function asserts.AssertInvalidParameterValueException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterValueException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidParameterValueException[k], "InvalidParameterValueException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterValueException
-- <p>One or more of the specified parameters are invalid. Verify that your parameters are valid and try again.</p>
function M.InvalidParameterValueException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidParameterValueException")
	local t = { 
	}
	asserts.AssertInvalidParameterValueException(t)
	return t
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
-- @param _resourceType [ResourceType] <p>The resource type.</p>
-- @param _resourceId [ResourceId] <p>The ID of the resource (for example., <code>sg-xxxxxx</code>).</p>
-- @param _laterTime [LaterTime] <p>The time stamp that indicates a later time. If not specified, current time is taken.</p>
-- @param _chronologicalOrder [ChronologicalOrder] <p>The chronological order for configuration items listed. By default the results are listed in reverse chronological order.</p>
-- @param _limit [Limit] <p>The maximum number of configuration items returned on each page. The default is 10. You cannot specify a limit greater than 100. If you specify 0, AWS Config uses the default.</p>
-- @param _nextToken [NextToken] <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>
-- @param _earlierTime [EarlierTime] <p>The time stamp that indicates an earlier time. If not specified, the action returns paginated results that contain configuration items that start from when the first configuration item was recorded.</p>
-- Required parameter: resourceType
-- Required parameter: resourceId
function M.GetResourceConfigHistoryRequest(_resourceType, _resourceId, _laterTime, _chronologicalOrder, _limit, _nextToken, _earlierTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetResourceConfigHistoryRequest")
	local t = { 
		["resourceType"] = _resourceType,
		["resourceId"] = _resourceId,
		["laterTime"] = _laterTime,
		["chronologicalOrder"] = _chronologicalOrder,
		["limit"] = _limit,
		["nextToken"] = _nextToken,
		["earlierTime"] = _earlierTime,
	}
	asserts.AssertGetResourceConfigHistoryRequest(t)
	return t
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
-- @param _name [String] <p>The name of the configuration recorder.</p>
-- @param _lastErrorMessage [String] <p>The message indicating that the recording failed due to an error.</p>
-- @param _lastStatus [RecorderStatus] <p>The last (previous) status of the recorder.</p>
-- @param _recording [Boolean] <p>Specifies whether the recorder is currently recording or not.</p>
-- @param _lastStatusChangeTime [Date] <p>The time when the status was last changed.</p>
-- @param _lastStartTime [Date] <p>The time the recorder was last started.</p>
-- @param _lastErrorCode [String] <p>The error code indicating that the recording failed.</p>
-- @param _lastStopTime [Date] <p>The time the recorder was last stopped.</p>
function M.ConfigurationRecorderStatus(_name, _lastErrorMessage, _lastStatus, _recording, _lastStatusChangeTime, _lastStartTime, _lastErrorCode, _lastStopTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConfigurationRecorderStatus")
	local t = { 
		["name"] = _name,
		["lastErrorMessage"] = _lastErrorMessage,
		["lastStatus"] = _lastStatus,
		["recording"] = _recording,
		["lastStatusChangeTime"] = _lastStatusChangeTime,
		["lastStartTime"] = _lastStartTime,
		["lastErrorCode"] = _lastErrorCode,
		["lastStopTime"] = _lastStopTime,
	}
	asserts.AssertConfigurationRecorderStatus(t)
	return t
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
-- <p>A list that contains the status of the delivery of either the snapshot or the configuration history to the specified Amazon S3 bucket.</p>
-- @param _lastSuccessfulTime [Date] <p>The time of the last successful delivery.</p>
-- @param _lastStatus [DeliveryStatus] <p>Status of the last attempted delivery.</p>
-- @param _lastAttemptTime [Date] <p>The time of the last attempted delivery.</p>
-- @param _nextDeliveryTime [Date] <p>The time that the next delivery occurs.</p>
-- @param _lastErrorCode [String] <p>The error code from the last attempted delivery.</p>
-- @param _lastErrorMessage [String] <p>The error message from the last attempted delivery.</p>
function M.ConfigExportDeliveryInfo(_lastSuccessfulTime, _lastStatus, _lastAttemptTime, _nextDeliveryTime, _lastErrorCode, _lastErrorMessage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConfigExportDeliveryInfo")
	local t = { 
		["lastSuccessfulTime"] = _lastSuccessfulTime,
		["lastStatus"] = _lastStatus,
		["lastAttemptTime"] = _lastAttemptTime,
		["nextDeliveryTime"] = _nextDeliveryTime,
		["lastErrorCode"] = _lastErrorCode,
		["lastErrorMessage"] = _lastErrorMessage,
	}
	asserts.AssertConfigExportDeliveryInfo(t)
	return t
end

keys.Scope = { ["TagKey"] = true, ["ComplianceResourceId"] = true, ["ComplianceResourceTypes"] = true, ["TagValue"] = true, nil }

function asserts.AssertScope(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Scope to be of type 'table'")
	if struct["TagKey"] then asserts.AssertStringWithCharLimit128(struct["TagKey"]) end
	if struct["ComplianceResourceId"] then asserts.AssertStringWithCharLimit256(struct["ComplianceResourceId"]) end
	if struct["ComplianceResourceTypes"] then asserts.AssertComplianceResourceTypes(struct["ComplianceResourceTypes"]) end
	if struct["TagValue"] then asserts.AssertStringWithCharLimit256(struct["TagValue"]) end
	for k,_ in pairs(struct) do
		assert(keys.Scope[k], "Scope contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Scope
-- <p>Defines which resources trigger an evaluation for an AWS Config rule. The scope can include one or more resource types, a combination of a tag key and value, or a combination of one resource type and one resource ID. Specify a scope to constrain which resources trigger an evaluation for a rule. Otherwise, evaluations for the rule are triggered when any resource in your recording group changes in configuration.</p>
-- @param _TagKey [StringWithCharLimit128] <p>The tag key that is applied to only those AWS resources that you want you want to trigger an evaluation for the rule.</p>
-- @param _ComplianceResourceId [StringWithCharLimit256] <p>The IDs of the only AWS resource that you want to trigger an evaluation for the rule. If you specify a resource ID, you must specify one resource type for <code>ComplianceResourceTypes</code>.</p>
-- @param _ComplianceResourceTypes [ComplianceResourceTypes] <p>The resource types of only those AWS resources that you want to trigger an evaluation for the rule. You can only specify one type if you also specify a resource ID for <code>ComplianceResourceId</code>.</p>
-- @param _TagValue [StringWithCharLimit256] <p>The tag value applied to only those AWS resources that you want to trigger an evaluation for the rule. If you specify a value for <code>TagValue</code>, you must also specify a value for <code>TagKey</code>.</p>
function M.Scope(_TagKey, _ComplianceResourceId, _ComplianceResourceTypes, _TagValue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Scope")
	local t = { 
		["TagKey"] = _TagKey,
		["ComplianceResourceId"] = _ComplianceResourceId,
		["ComplianceResourceTypes"] = _ComplianceResourceTypes,
		["TagValue"] = _TagValue,
	}
	asserts.AssertScope(t)
	return t
end

keys.InvalidSNSTopicARNException = { nil }

function asserts.AssertInvalidSNSTopicARNException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidSNSTopicARNException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidSNSTopicARNException[k], "InvalidSNSTopicARNException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidSNSTopicARNException
-- <p>The specified Amazon SNS topic does not exist.</p>
function M.InvalidSNSTopicARNException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidSNSTopicARNException")
	local t = { 
	}
	asserts.AssertInvalidSNSTopicARNException(t)
	return t
end

keys.MaxNumberOfDeliveryChannelsExceededException = { nil }

function asserts.AssertMaxNumberOfDeliveryChannelsExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MaxNumberOfDeliveryChannelsExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.MaxNumberOfDeliveryChannelsExceededException[k], "MaxNumberOfDeliveryChannelsExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MaxNumberOfDeliveryChannelsExceededException
-- <p>You have reached the limit on the number of delivery channels you can create.</p>
function M.MaxNumberOfDeliveryChannelsExceededException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating MaxNumberOfDeliveryChannelsExceededException")
	local t = { 
	}
	asserts.AssertMaxNumberOfDeliveryChannelsExceededException(t)
	return t
end

keys.ComplianceByResource = { ["ResourceType"] = true, ["ResourceId"] = true, ["Compliance"] = true, nil }

function asserts.AssertComplianceByResource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ComplianceByResource to be of type 'table'")
	if struct["ResourceType"] then asserts.AssertStringWithCharLimit256(struct["ResourceType"]) end
	if struct["ResourceId"] then asserts.AssertStringWithCharLimit256(struct["ResourceId"]) end
	if struct["Compliance"] then asserts.AssertCompliance(struct["Compliance"]) end
	for k,_ in pairs(struct) do
		assert(keys.ComplianceByResource[k], "ComplianceByResource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ComplianceByResource
-- <p>Indicates whether an AWS resource that is evaluated according to one or more AWS Config rules is compliant. A resource is compliant if it complies with all of the rules that evaluate it, and it is noncompliant if it does not comply with one or more of these rules.</p>
-- @param _ResourceType [StringWithCharLimit256] <p>The type of the AWS resource that was evaluated.</p>
-- @param _ResourceId [StringWithCharLimit256] <p>The ID of the AWS resource that was evaluated.</p>
-- @param _Compliance [Compliance] <p>Indicates whether the AWS resource complies with all of the AWS Config rules that evaluated it.</p>
function M.ComplianceByResource(_ResourceType, _ResourceId, _Compliance, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ComplianceByResource")
	local t = { 
		["ResourceType"] = _ResourceType,
		["ResourceId"] = _ResourceId,
		["Compliance"] = _Compliance,
	}
	asserts.AssertComplianceByResource(t)
	return t
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
-- <p>The details of an AWS Config evaluation. Provides the AWS resource that was evaluated, the compliance of the resource, related timestamps, and supplementary information.</p>
-- @param _ComplianceType [ComplianceType] <p>Indicates whether the AWS resource complies with the AWS Config rule that evaluated it.</p> <p>For the <code>EvaluationResult</code> data type, AWS Config supports only the <code>COMPLIANT</code>, <code>NON_COMPLIANT</code>, and <code>NOT_APPLICABLE</code> values. AWS Config does not support the <code>INSUFFICIENT_DATA</code> value for the <code>EvaluationResult</code> data type.</p>
-- @param _EvaluationResultIdentifier [EvaluationResultIdentifier] <p>Uniquely identifies the evaluation result.</p>
-- @param _ConfigRuleInvokedTime [Date] <p>The time when the AWS Config rule evaluated the AWS resource.</p>
-- @param _ResultToken [String] <p>An encrypted token that associates an evaluation with an AWS Config rule. The token identifies the rule, the AWS resource being evaluated, and the event that triggered the evaluation.</p>
-- @param _ResultRecordedTime [Date] <p>The time when AWS Config recorded the evaluation result.</p>
-- @param _Annotation [StringWithCharLimit256] <p>Supplementary information about how the evaluation determined the compliance.</p>
function M.EvaluationResult(_ComplianceType, _EvaluationResultIdentifier, _ConfigRuleInvokedTime, _ResultToken, _ResultRecordedTime, _Annotation, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EvaluationResult")
	local t = { 
		["ComplianceType"] = _ComplianceType,
		["EvaluationResultIdentifier"] = _EvaluationResultIdentifier,
		["ConfigRuleInvokedTime"] = _ConfigRuleInvokedTime,
		["ResultToken"] = _ResultToken,
		["ResultRecordedTime"] = _ResultRecordedTime,
		["Annotation"] = _Annotation,
	}
	asserts.AssertEvaluationResult(t)
	return t
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
-- @param _ComplianceSummary [ComplianceSummary] <p>The number of AWS Config rules that are compliant and the number that are noncompliant, up to a maximum of 25 for each.</p>
function M.GetComplianceSummaryByConfigRuleResponse(_ComplianceSummary, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetComplianceSummaryByConfigRuleResponse")
	local t = { 
		["ComplianceSummary"] = _ComplianceSummary,
	}
	asserts.AssertGetComplianceSummaryByConfigRuleResponse(t)
	return t
end

keys.InvalidRoleException = { nil }

function asserts.AssertInvalidRoleException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRoleException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidRoleException[k], "InvalidRoleException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRoleException
-- <p>You have provided a null or empty role ARN.</p>
function M.InvalidRoleException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidRoleException")
	local t = { 
	}
	asserts.AssertInvalidRoleException(t)
	return t
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
-- @param _configurationItemCaptureTime [ConfigurationItemCaptureTime] <p>The time when the configuration recording was initiated.</p>
-- @param _resourceCreationTime [ResourceCreationTime] <p>The time stamp when the resource was created.</p>
-- @param _availabilityZone [AvailabilityZone] <p>The Availability Zone associated with the resource.</p>
-- @param _awsRegion [AwsRegion] <p>The region where the resource resides.</p>
-- @param _tags [Tags] <p>A mapping of key value tags associated with the resource.</p>
-- @param _resourceType [ResourceType] <p>The type of AWS resource.</p>
-- @param _resourceId [ResourceId] <p>The ID of the resource (for example., <code>sg-xxxxxx</code>).</p>
-- @param _configurationStateId [ConfigurationStateId] <p>An identifier that indicates the ordering of the configuration items of a resource.</p>
-- @param _relatedEvents [RelatedEventList] <p>A list of CloudTrail event IDs.</p> <p>A populated field indicates that the current configuration was initiated by the events recorded in the CloudTrail log. For more information about CloudTrail, see <a href="http://docs.aws.amazon.com/awscloudtrail/latest/userguide/what_is_cloud_trail_top_level.html">What is AWS CloudTrail?</a>.</p> <p>An empty field indicates that the current configuration was not initiated by any event.</p>
-- @param _relationships [RelationshipList] <p>A list of related AWS resources.</p>
-- @param _arn [ARN] <p>The Amazon Resource Name (ARN) of the resource.</p>
-- @param _version [Version] <p>The version number of the resource configuration.</p>
-- @param _configurationItemMD5Hash [ConfigurationItemMD5Hash] <p>Unique MD5 hash that represents the configuration item's state.</p> <p>You can use MD5 hash to compare the states of two or more configuration items that are associated with the same resource.</p>
-- @param _supplementaryConfiguration [SupplementaryConfiguration] <p>Configuration attributes that AWS Config returns for certain resource types to supplement the information returned for the <code>configuration</code> parameter.</p>
-- @param _resourceName [ResourceName] <p>The custom name of the resource, if available.</p>
-- @param _configuration [Configuration] <p>The description of the resource configuration.</p>
-- @param _configurationItemStatus [ConfigurationItemStatus] <p>The configuration item status.</p>
-- @param _accountId [AccountId] <p>The 12 digit AWS account ID associated with the resource.</p>
function M.ConfigurationItem(_configurationItemCaptureTime, _resourceCreationTime, _availabilityZone, _awsRegion, _tags, _resourceType, _resourceId, _configurationStateId, _relatedEvents, _relationships, _arn, _version, _configurationItemMD5Hash, _supplementaryConfiguration, _resourceName, _configuration, _configurationItemStatus, _accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConfigurationItem")
	local t = { 
		["configurationItemCaptureTime"] = _configurationItemCaptureTime,
		["resourceCreationTime"] = _resourceCreationTime,
		["availabilityZone"] = _availabilityZone,
		["awsRegion"] = _awsRegion,
		["tags"] = _tags,
		["resourceType"] = _resourceType,
		["resourceId"] = _resourceId,
		["configurationStateId"] = _configurationStateId,
		["relatedEvents"] = _relatedEvents,
		["relationships"] = _relationships,
		["arn"] = _arn,
		["version"] = _version,
		["configurationItemMD5Hash"] = _configurationItemMD5Hash,
		["supplementaryConfiguration"] = _supplementaryConfiguration,
		["resourceName"] = _resourceName,
		["configuration"] = _configuration,
		["configurationItemStatus"] = _configurationItemStatus,
		["accountId"] = _accountId,
	}
	asserts.AssertConfigurationItem(t)
	return t
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
-- @param _NextToken [String] <p>The <code>NextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>
-- @param _Limit [RuleLimit] <p>The number of rule evaluation results that you want returned.</p> <p>This parameter is required if the rule limit for your account is more than the default of 50 rules.</p> <p>For more information about requesting a rule limit increase, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_config">AWS Config Limits</a> in the <i>AWS General Reference Guide</i>.</p>
-- @param _ConfigRuleNames [ConfigRuleNames] <p>The name of the AWS managed Config rules for which you want status information. If you do not specify any names, AWS Config returns status information for all AWS managed Config rules that you use.</p>
function M.DescribeConfigRuleEvaluationStatusRequest(_NextToken, _Limit, _ConfigRuleNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeConfigRuleEvaluationStatusRequest")
	local t = { 
		["NextToken"] = _NextToken,
		["Limit"] = _Limit,
		["ConfigRuleNames"] = _ConfigRuleNames,
	}
	asserts.AssertDescribeConfigRuleEvaluationStatusRequest(t)
	return t
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
-- @param _EvaluationResults [EvaluationResults] <p>Indicates whether the AWS resource complies with the specified AWS Config rule.</p>
-- @param _NextToken [NextToken] <p>The string that you use in a subsequent request to get the next page of results in a paginated response.</p>
function M.GetComplianceDetailsByConfigRuleResponse(_EvaluationResults, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetComplianceDetailsByConfigRuleResponse")
	local t = { 
		["EvaluationResults"] = _EvaluationResults,
		["NextToken"] = _NextToken,
	}
	asserts.AssertGetComplianceDetailsByConfigRuleResponse(t)
	return t
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
-- @param _DeliveryChannelNames [DeliveryChannelNameList] <p>A list of delivery channel names.</p>
function M.DescribeDeliveryChannelsRequest(_DeliveryChannelNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDeliveryChannelsRequest")
	local t = { 
		["DeliveryChannelNames"] = _DeliveryChannelNames,
	}
	asserts.AssertDescribeDeliveryChannelsRequest(t)
	return t
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
-- @param _lastStatusChangeTime [Date] <p>The time from the last status change.</p>
-- @param _lastErrorCode [String] <p>The error code from the last attempted delivery.</p>
-- @param _lastStatus [DeliveryStatus] <p>Status of the last attempted delivery.</p> <p> <b>Note</b> Providing an SNS topic on a <a href="http://docs.aws.amazon.com/config/latest/APIReference/API_DeliveryChannel.html">DeliveryChannel</a> for AWS Config is optional. If the SNS delivery is turned off, the last status will be <b>Not_Applicable</b>.</p>
-- @param _lastErrorMessage [String] <p>The error message from the last attempted delivery.</p>
function M.ConfigStreamDeliveryInfo(_lastStatusChangeTime, _lastErrorCode, _lastStatus, _lastErrorMessage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConfigStreamDeliveryInfo")
	local t = { 
		["lastStatusChangeTime"] = _lastStatusChangeTime,
		["lastErrorCode"] = _lastErrorCode,
		["lastStatus"] = _lastStatus,
		["lastErrorMessage"] = _lastErrorMessage,
	}
	asserts.AssertConfigStreamDeliveryInfo(t)
	return t
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
-- <p>Specifies the types of AWS resource for which AWS Config records configuration changes.</p> <p>In the recording group, you specify whether all supported types or specific types of resources are recorded.</p> <p>By default, AWS Config records configuration changes for all supported types of regional resources that AWS Config discovers in the region in which it is running. Regional resources are tied to a region and can be used only in that region. Examples of regional resources are EC2 instances and EBS volumes.</p> <p>You can also have AWS Config record configuration changes for supported types of global resources (for example, IAM resources). Global resources are not tied to an individual region and can be used in all regions.</p> <important> <p>The configuration details for any global resource are the same in all regions. If you customize AWS Config in multiple regions to record global resources, it will create multiple configuration items each time a global resource changes: one configuration item for each region. These configuration items will contain identical data. To prevent duplicate configuration items, you should consider customizing AWS Config in only one region to record global resources, unless you want the configuration items to be available in multiple regions.</p> </important> <p>If you don't want AWS Config to record all resources, you can specify which types of resources it will record with the <code>resourceTypes</code> parameter.</p> <p>For a list of supported resource types, see <a href="http://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources">Supported resource types</a>.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/config/latest/developerguide/select-resources.html">Selecting Which Resources AWS Config Records</a>.</p>
-- @param _allSupported [AllSupported] <p>Specifies whether AWS Config records configuration changes for every supported type of regional resource.</p> <p>If you set this option to <code>true</code>, when AWS Config adds support for a new type of regional resource, it automatically starts recording resources of that type.</p> <p>If you set this option to <code>true</code>, you cannot enumerate a list of <code>resourceTypes</code>.</p>
-- @param _resourceTypes [ResourceTypeList] <p>A comma-separated list that specifies the types of AWS resources for which AWS Config records configuration changes (for example, <code>AWS::EC2::Instance</code> or <code>AWS::CloudTrail::Trail</code>).</p> <p>Before you can set this option to <code>true</code>, you must set the <code>allSupported</code> option to <code>false</code>.</p> <p>If you set this option to <code>true</code>, when AWS Config adds support for a new type of resource, it will not record resources of that type unless you manually add that type to your recording group.</p> <p>For a list of valid <code>resourceTypes</code> values, see the <b>resourceType Value</b> column in <a href="http://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources">Supported AWS Resource Types</a>.</p>
-- @param _includeGlobalResourceTypes [IncludeGlobalResourceTypes] <p>Specifies whether AWS Config includes all supported types of global resources (for example, IAM resources) with the resources that it records.</p> <p>Before you can set this option to <code>true</code>, you must set the <code>allSupported</code> option to <code>true</code>.</p> <p>If you set this option to <code>true</code>, when AWS Config adds support for a new type of global resource, it automatically starts recording resources of that type.</p> <p>The configuration details for any global resource are the same in all regions. To prevent duplicate configuration items, you should consider customizing AWS Config in only one region to record global resources.</p>
function M.RecordingGroup(_allSupported, _resourceTypes, _includeGlobalResourceTypes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RecordingGroup")
	local t = { 
		["allSupported"] = _allSupported,
		["resourceTypes"] = _resourceTypes,
		["includeGlobalResourceTypes"] = _includeGlobalResourceTypes,
	}
	asserts.AssertRecordingGroup(t)
	return t
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
-- @param _OrderingTimestamp [Date] <p>The time of the event that triggered the evaluation of your AWS resources. The time can indicate when AWS Config delivered a configuration item change notification, or it can indicate when AWS Config delivered the configuration snapshot, depending on which event triggered the evaluation.</p>
-- @param _EvaluationResultQualifier [EvaluationResultQualifier] <p>Identifies an AWS Config rule used to evaluate an AWS resource, and provides the type and ID of the evaluated resource.</p>
function M.EvaluationResultIdentifier(_OrderingTimestamp, _EvaluationResultQualifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EvaluationResultIdentifier")
	local t = { 
		["OrderingTimestamp"] = _OrderingTimestamp,
		["EvaluationResultQualifier"] = _EvaluationResultQualifier,
	}
	asserts.AssertEvaluationResultIdentifier(t)
	return t
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
-- @param _configurationItems [ConfigurationItemList] <p>A list that contains the configuration history of one or more resources.</p>
-- @param _nextToken [NextToken] <p>The string that you use in a subsequent request to get the next page of results in a paginated response.</p>
function M.GetResourceConfigHistoryResponse(_configurationItems, _nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetResourceConfigHistoryResponse")
	local t = { 
		["configurationItems"] = _configurationItems,
		["nextToken"] = _nextToken,
	}
	asserts.AssertGetResourceConfigHistoryResponse(t)
	return t
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
-- @param _resourceType [ResourceType] <p>The type of resources that you want AWS Config to list in the response.</p>
-- @param _resourceIds [ResourceIdList] <p>The IDs of only those resources that you want AWS Config to list in the response. If you do not specify this parameter, AWS Config lists all resources of the specified type that it has discovered.</p>
-- @param _limit [Limit] <p>The maximum number of resource identifiers returned on each page. The default is 100. You cannot specify a limit greater than 100. If you specify 0, AWS Config uses the default.</p>
-- @param _includeDeletedResources [Boolean] <p>Specifies whether AWS Config includes deleted resources in the results. By default, deleted resources are not included.</p>
-- @param _resourceName [ResourceName] <p>The custom name of only those resources that you want AWS Config to list in the response. If you do not specify this parameter, AWS Config lists all resources of the specified type that it has discovered.</p>
-- @param _nextToken [NextToken] <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>
-- Required parameter: resourceType
function M.ListDiscoveredResourcesRequest(_resourceType, _resourceIds, _limit, _includeDeletedResources, _resourceName, _nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDiscoveredResourcesRequest")
	local t = { 
		["resourceType"] = _resourceType,
		["resourceIds"] = _resourceIds,
		["limit"] = _limit,
		["includeDeletedResources"] = _includeDeletedResources,
		["resourceName"] = _resourceName,
		["nextToken"] = _nextToken,
	}
	asserts.AssertListDiscoveredResourcesRequest(t)
	return t
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
-- @param _ConfigRules [ConfigRules] <p>The details about your AWS Config rules.</p>
-- @param _NextToken [String] <p>The string that you use in a subsequent request to get the next page of results in a paginated response.</p>
function M.DescribeConfigRulesResponse(_ConfigRules, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeConfigRulesResponse")
	local t = { 
		["ConfigRules"] = _ConfigRules,
		["NextToken"] = _NextToken,
	}
	asserts.AssertDescribeConfigRulesResponse(t)
	return t
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
-- @param _ResourceTypes [ResourceTypes] <p>Specify one or more resource types to get the number of resources that are compliant and the number that are noncompliant for each resource type.</p> <p>For this request, you can specify an AWS resource type such as <code>AWS::EC2::Instance</code>, and you can specify that the resource type is an AWS account by specifying <code>AWS::::Account</code>.</p>
function M.GetComplianceSummaryByResourceTypeRequest(_ResourceTypes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetComplianceSummaryByResourceTypeRequest")
	local t = { 
		["ResourceTypes"] = _ResourceTypes,
	}
	asserts.AssertGetComplianceSummaryByResourceTypeRequest(t)
	return t
end

keys.GetComplianceDetailsByResourceRequest = { ["ResourceType"] = true, ["ResourceId"] = true, ["NextToken"] = true, ["ComplianceTypes"] = true, nil }

function asserts.AssertGetComplianceDetailsByResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetComplianceDetailsByResourceRequest to be of type 'table'")
	assert(struct["ResourceType"], "Expected key ResourceType to exist in table")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	if struct["ResourceType"] then asserts.AssertStringWithCharLimit256(struct["ResourceType"]) end
	if struct["ResourceId"] then asserts.AssertStringWithCharLimit256(struct["ResourceId"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["ComplianceTypes"] then asserts.AssertComplianceTypes(struct["ComplianceTypes"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetComplianceDetailsByResourceRequest[k], "GetComplianceDetailsByResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetComplianceDetailsByResourceRequest
-- <p/>
-- @param _ResourceType [StringWithCharLimit256] <p>The type of the AWS resource for which you want compliance information.</p>
-- @param _ResourceId [StringWithCharLimit256] <p>The ID of the AWS resource for which you want compliance information.</p>
-- @param _NextToken [String] <p>The <code>NextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>
-- @param _ComplianceTypes [ComplianceTypes] <p>Filters the results by compliance.</p> <p>The allowed values are <code>COMPLIANT</code>, <code>NON_COMPLIANT</code>, and <code>NOT_APPLICABLE</code>.</p>
-- Required parameter: ResourceType
-- Required parameter: ResourceId
function M.GetComplianceDetailsByResourceRequest(_ResourceType, _ResourceId, _NextToken, _ComplianceTypes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetComplianceDetailsByResourceRequest")
	local t = { 
		["ResourceType"] = _ResourceType,
		["ResourceId"] = _ResourceId,
		["NextToken"] = _NextToken,
		["ComplianceTypes"] = _ComplianceTypes,
	}
	asserts.AssertGetComplianceDetailsByResourceRequest(t)
	return t
end

keys.ConfigRule = { ["ConfigRuleState"] = true, ["Description"] = true, ["ConfigRuleName"] = true, ["ConfigRuleArn"] = true, ["MaximumExecutionFrequency"] = true, ["Source"] = true, ["InputParameters"] = true, ["Scope"] = true, ["ConfigRuleId"] = true, nil }

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
	if struct["InputParameters"] then asserts.AssertStringWithCharLimit1024(struct["InputParameters"]) end
	if struct["Scope"] then asserts.AssertScope(struct["Scope"]) end
	if struct["ConfigRuleId"] then asserts.AssertString(struct["ConfigRuleId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConfigRule[k], "ConfigRule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfigRule
-- <p>An AWS Config rule represents an AWS Lambda function that you create for a custom rule or a predefined function for an AWS managed rule. The function evaluates configuration items to assess whether your AWS resources comply with your desired configurations. This function can run when AWS Config detects a configuration change to an AWS resource and at a periodic frequency that you choose (for example, every 24 hours).</p> <note> <p>You can use the AWS CLI and AWS SDKs if you want to create a rule that triggers evaluations for your resources when AWS Config delivers the configuration snapshot. For more information, see <a>ConfigSnapshotDeliveryProperties</a>.</p> </note> <p>For more information about developing and using AWS Config rules, see <a href="http://docs.aws.amazon.com/config/latest/developerguide/evaluate-config.html">Evaluating AWS Resource Configurations with AWS Config</a> in the <i>AWS Config Developer Guide</i>.</p>
-- @param _ConfigRuleState [ConfigRuleState] <p>Indicates whether the AWS Config rule is active or is currently being deleted by AWS Config. It can also indicate the evaluation status for the Config rule.</p> <p>AWS Config sets the state of the rule to <code>EVALUATING</code> temporarily after you use the <code>StartConfigRulesEvaluation</code> request to evaluate your resources against the Config rule.</p> <p>AWS Config sets the state of the rule to <code>DELETING_RESULTS</code> temporarily after you use the <code>DeleteEvaluationResults</code> request to delete the current evaluation results for the Config rule.</p> <p>AWS Config sets the state of a rule to <code>DELETING</code> temporarily after you use the <code>DeleteConfigRule</code> request to delete the rule. After AWS Config deletes the rule, the rule and all of its evaluations are erased and are no longer available.</p>
-- @param _Description [EmptiableStringWithCharLimit256] <p>The description that you provide for the AWS Config rule.</p>
-- @param _ConfigRuleName [StringWithCharLimit64] <p>The name that you assign to the AWS Config rule. The name is required if you are adding a new rule.</p>
-- @param _ConfigRuleArn [String] <p>The Amazon Resource Name (ARN) of the AWS Config rule.</p>
-- @param _MaximumExecutionFrequency [MaximumExecutionFrequency] <p>The maximum frequency with which AWS Config runs evaluations for a rule. You can specify a value for <code>MaximumExecutionFrequency</code> when:</p> <ul> <li> <p>You are using an AWS managed rule that is triggered at a periodic frequency.</p> </li> <li> <p>Your custom rule is triggered when AWS Config delivers the configuration snapshot. For more information, see <a>ConfigSnapshotDeliveryProperties</a>.</p> </li> </ul> <note> <p>By default, rules with a periodic trigger are evaluated every 24 hours. To change the frequency, specify a valid value for the <code>MaximumExecutionFrequency</code> parameter.</p> </note>
-- @param _Source [Source] <p>Provides the rule owner (AWS or customer), the rule identifier, and the notifications that cause the function to evaluate your AWS resources.</p>
-- @param _InputParameters [StringWithCharLimit1024] <p>A string in JSON format that is passed to the AWS Config rule Lambda function.</p>
-- @param _Scope [Scope] <p>Defines which resources can trigger an evaluation for the rule. The scope can include one or more resource types, a combination of one resource type and one resource ID, or a combination of a tag key and value. Specify a scope to constrain the resources that can trigger an evaluation for the rule. If you do not specify a scope, evaluations are triggered when any resource in the recording group changes.</p>
-- @param _ConfigRuleId [String] <p>The ID of the AWS Config rule.</p>
-- Required parameter: Source
function M.ConfigRule(_ConfigRuleState, _Description, _ConfigRuleName, _ConfigRuleArn, _MaximumExecutionFrequency, _Source, _InputParameters, _Scope, _ConfigRuleId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConfigRule")
	local t = { 
		["ConfigRuleState"] = _ConfigRuleState,
		["Description"] = _Description,
		["ConfigRuleName"] = _ConfigRuleName,
		["ConfigRuleArn"] = _ConfigRuleArn,
		["MaximumExecutionFrequency"] = _MaximumExecutionFrequency,
		["Source"] = _Source,
		["InputParameters"] = _InputParameters,
		["Scope"] = _Scope,
		["ConfigRuleId"] = _ConfigRuleId,
	}
	asserts.AssertConfigRule(t)
	return t
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
-- @param _configStreamDeliveryInfo [ConfigStreamDeliveryInfo] <p>A list containing the status of the delivery of the configuration stream notification to the specified Amazon SNS topic.</p>
-- @param _configHistoryDeliveryInfo [ConfigExportDeliveryInfo] <p>A list that contains the status of the delivery of the configuration history to the specified Amazon S3 bucket.</p>
-- @param _configSnapshotDeliveryInfo [ConfigExportDeliveryInfo] <p>A list containing the status of the delivery of the snapshot to the specified Amazon S3 bucket.</p>
-- @param _name [String] <p>The name of the delivery channel.</p>
function M.DeliveryChannelStatus(_configStreamDeliveryInfo, _configHistoryDeliveryInfo, _configSnapshotDeliveryInfo, _name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeliveryChannelStatus")
	local t = { 
		["configStreamDeliveryInfo"] = _configStreamDeliveryInfo,
		["configHistoryDeliveryInfo"] = _configHistoryDeliveryInfo,
		["configSnapshotDeliveryInfo"] = _configSnapshotDeliveryInfo,
		["name"] = _name,
	}
	asserts.AssertDeliveryChannelStatus(t)
	return t
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
-- @param _ResultToken [String] <p>An encrypted token that associates an evaluation with an AWS Config rule. Identifies the rule and the event that triggered the evaluation</p>
-- @param _Evaluations [Evaluations] <p>The assessments that the AWS Lambda function performs. Each evaluation identifies an AWS resource and indicates whether it complies with the AWS Config rule that invokes the AWS Lambda function.</p>
-- @param _TestMode [Boolean] <p>Use this parameter to specify a test run for <code>PutEvaluations</code>. You can verify whether your AWS Lambda function will deliver evaluation results to AWS Config. No updates occur to your existing evaluations, and evaluation results are not sent to AWS Config.</p> <note> <p>When <code>TestMode</code> is <code>true</code>, <code>PutEvaluations</code> doesn't require a valid value for the <code>ResultToken</code> parameter, but the value cannot be null.</p> </note>
-- Required parameter: ResultToken
function M.PutEvaluationsRequest(_ResultToken, _Evaluations, _TestMode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutEvaluationsRequest")
	local t = { 
		["ResultToken"] = _ResultToken,
		["Evaluations"] = _Evaluations,
		["TestMode"] = _TestMode,
	}
	asserts.AssertPutEvaluationsRequest(t)
	return t
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
-- @param _resourceType [ResourceType] <p>The resource type of the related resource.</p>
-- @param _resourceId [ResourceId] <p>The ID of the related resource (for example, <code>sg-xxxxxx</code>).</p>
-- @param _relationshipName [RelationshipName] <p>The type of relationship with the related resource.</p>
-- @param _resourceName [ResourceName] <p>The custom name of the related resource, if available.</p>
function M.Relationship(_resourceType, _resourceId, _relationshipName, _resourceName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Relationship")
	local t = { 
		["resourceType"] = _resourceType,
		["resourceId"] = _resourceId,
		["relationshipName"] = _relationshipName,
		["resourceName"] = _resourceName,
	}
	asserts.AssertRelationship(t)
	return t
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
-- @param _DeliveryChannel [DeliveryChannel] <p>The configuration delivery channel object that delivers the configuration information to an Amazon S3 bucket, and to an Amazon SNS topic.</p>
-- Required parameter: DeliveryChannel
function M.PutDeliveryChannelRequest(_DeliveryChannel, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutDeliveryChannelRequest")
	local t = { 
		["DeliveryChannel"] = _DeliveryChannel,
	}
	asserts.AssertPutDeliveryChannelRequest(t)
	return t
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
-- @param _ConfigurationRecorderNames [ConfigurationRecorderNameList] <p>The name(s) of the configuration recorder. If the name is not specified, the action returns the current status of all the configuration recorders associated with the account.</p>
function M.DescribeConfigurationRecorderStatusRequest(_ConfigurationRecorderNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeConfigurationRecorderStatusRequest")
	local t = { 
		["ConfigurationRecorderNames"] = _ConfigurationRecorderNames,
	}
	asserts.AssertDescribeConfigurationRecorderStatusRequest(t)
	return t
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

function asserts.AssertMessageType(str)
	assert(str)
	assert(type(str) == "string", "Expected MessageType to be of type 'string'")
end

--  
function M.MessageType(str)
	asserts.AssertMessageType(str)
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

function asserts.AssertAvailabilityZone(str)
	assert(str)
	assert(type(str) == "string", "Expected AvailabilityZone to be of type 'string'")
end

--  
function M.AvailabilityZone(str)
	asserts.AssertAvailabilityZone(str)
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

function asserts.AssertChronologicalOrder(str)
	assert(str)
	assert(type(str) == "string", "Expected ChronologicalOrder to be of type 'string'")
end

--  
function M.ChronologicalOrder(str)
	asserts.AssertChronologicalOrder(str)
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

function asserts.AssertAwsRegion(str)
	assert(str)
	assert(type(str) == "string", "Expected AwsRegion to be of type 'string'")
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
end

--  
function M.ResourceId(str)
	asserts.AssertResourceId(str)
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

function asserts.AssertOwner(str)
	assert(str)
	assert(type(str) == "string", "Expected Owner to be of type 'string'")
end

--  
function M.Owner(str)
	asserts.AssertOwner(str)
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

function asserts.AssertInteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Integer to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Integer(integer)
	asserts.AssertInteger(integer)
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
local scheme_mapper = require "aws-sdk.core.scheme_mapper"
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
	settings.uri = scheme_mapper.from_string(config.scheme) .. "://" .. settings.endpoint
end


--
-- OPERATIONS
--
--- Call StopConfigurationRecorder asynchronously, invoking a callback when done
-- @param StopConfigurationRecorderRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StopConfigurationRecorderAsync(StopConfigurationRecorderRequest, cb)
	assert(StopConfigurationRecorderRequest, "You must provide a StopConfigurationRecorderRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.StopConfigurationRecorder",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.StopConfigurationRecorderSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StopConfigurationRecorderAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetComplianceDetailsByResource asynchronously, invoking a callback when done
-- @param GetComplianceDetailsByResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetComplianceDetailsByResourceAsync(GetComplianceDetailsByResourceRequest, cb)
	assert(GetComplianceDetailsByResourceRequest, "You must provide a GetComplianceDetailsByResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.GetComplianceDetailsByResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.GetComplianceDetailsByResourceSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetComplianceDetailsByResourceAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListDiscoveredResources asynchronously, invoking a callback when done
-- @param ListDiscoveredResourcesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListDiscoveredResourcesAsync(ListDiscoveredResourcesRequest, cb)
	assert(ListDiscoveredResourcesRequest, "You must provide a ListDiscoveredResourcesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.ListDiscoveredResources",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ListDiscoveredResourcesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListDiscoveredResourcesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDeliveryChannel asynchronously, invoking a callback when done
-- @param DeleteDeliveryChannelRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDeliveryChannelAsync(DeleteDeliveryChannelRequest, cb)
	assert(DeleteDeliveryChannelRequest, "You must provide a DeleteDeliveryChannelRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.DeleteDeliveryChannel",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DeleteDeliveryChannelSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDeliveryChannelAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PutEvaluations asynchronously, invoking a callback when done
-- @param PutEvaluationsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutEvaluationsAsync(PutEvaluationsRequest, cb)
	assert(PutEvaluationsRequest, "You must provide a PutEvaluationsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.PutEvaluations",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.PutEvaluationsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutEvaluationsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteConfigRule asynchronously, invoking a callback when done
-- @param DeleteConfigRuleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteConfigRuleAsync(DeleteConfigRuleRequest, cb)
	assert(DeleteConfigRuleRequest, "You must provide a DeleteConfigRuleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.DeleteConfigRule",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DeleteConfigRuleSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteConfigRuleAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeConfigurationRecorders asynchronously, invoking a callback when done
-- @param DescribeConfigurationRecordersRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeConfigurationRecordersAsync(DescribeConfigurationRecordersRequest, cb)
	assert(DescribeConfigurationRecordersRequest, "You must provide a DescribeConfigurationRecordersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.DescribeConfigurationRecorders",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DescribeConfigurationRecordersSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeConfigurationRecordersAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PutConfigurationRecorder asynchronously, invoking a callback when done
-- @param PutConfigurationRecorderRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutConfigurationRecorderAsync(PutConfigurationRecorderRequest, cb)
	assert(PutConfigurationRecorderRequest, "You must provide a PutConfigurationRecorderRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.PutConfigurationRecorder",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.PutConfigurationRecorderSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutConfigurationRecorderAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeConfigurationRecorderStatus asynchronously, invoking a callback when done
-- @param DescribeConfigurationRecorderStatusRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeConfigurationRecorderStatusAsync(DescribeConfigurationRecorderStatusRequest, cb)
	assert(DescribeConfigurationRecorderStatusRequest, "You must provide a DescribeConfigurationRecorderStatusRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.DescribeConfigurationRecorderStatus",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DescribeConfigurationRecorderStatusSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeConfigurationRecorderStatusAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetComplianceDetailsByConfigRule asynchronously, invoking a callback when done
-- @param GetComplianceDetailsByConfigRuleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetComplianceDetailsByConfigRuleAsync(GetComplianceDetailsByConfigRuleRequest, cb)
	assert(GetComplianceDetailsByConfigRuleRequest, "You must provide a GetComplianceDetailsByConfigRuleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.GetComplianceDetailsByConfigRule",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.GetComplianceDetailsByConfigRuleSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetComplianceDetailsByConfigRuleAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDeliveryChannelStatus asynchronously, invoking a callback when done
-- @param DescribeDeliveryChannelStatusRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDeliveryChannelStatusAsync(DescribeDeliveryChannelStatusRequest, cb)
	assert(DescribeDeliveryChannelStatusRequest, "You must provide a DescribeDeliveryChannelStatusRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.DescribeDeliveryChannelStatus",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DescribeDeliveryChannelStatusSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDeliveryChannelStatusAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeliverConfigSnapshot asynchronously, invoking a callback when done
-- @param DeliverConfigSnapshotRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeliverConfigSnapshotAsync(DeliverConfigSnapshotRequest, cb)
	assert(DeliverConfigSnapshotRequest, "You must provide a DeliverConfigSnapshotRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.DeliverConfigSnapshot",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DeliverConfigSnapshotSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeliverConfigSnapshotAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call StartConfigRulesEvaluation asynchronously, invoking a callback when done
-- @param StartConfigRulesEvaluationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StartConfigRulesEvaluationAsync(StartConfigRulesEvaluationRequest, cb)
	assert(StartConfigRulesEvaluationRequest, "You must provide a StartConfigRulesEvaluationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.StartConfigRulesEvaluation",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.StartConfigRulesEvaluationSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartConfigRulesEvaluationAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetComplianceSummaryByConfigRule asynchronously, invoking a callback when done
-- @param cb Callback function accepting two args: response, error_message
function M.GetComplianceSummaryByConfigRuleAsync(cb)
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.GetComplianceSummaryByConfigRule",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", {}, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetComplianceSummaryByConfigRule synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @return response
-- @return error_message
function M.GetComplianceSummaryByConfigRuleSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetComplianceSummaryByConfigRuleAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call StartConfigurationRecorder asynchronously, invoking a callback when done
-- @param StartConfigurationRecorderRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StartConfigurationRecorderAsync(StartConfigurationRecorderRequest, cb)
	assert(StartConfigurationRecorderRequest, "You must provide a StartConfigurationRecorderRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.StartConfigurationRecorder",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.StartConfigurationRecorderSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartConfigurationRecorderAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeComplianceByResource asynchronously, invoking a callback when done
-- @param DescribeComplianceByResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeComplianceByResourceAsync(DescribeComplianceByResourceRequest, cb)
	assert(DescribeComplianceByResourceRequest, "You must provide a DescribeComplianceByResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.DescribeComplianceByResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DescribeComplianceByResourceSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeComplianceByResourceAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetResourceConfigHistory asynchronously, invoking a callback when done
-- @param GetResourceConfigHistoryRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetResourceConfigHistoryAsync(GetResourceConfigHistoryRequest, cb)
	assert(GetResourceConfigHistoryRequest, "You must provide a GetResourceConfigHistoryRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.GetResourceConfigHistory",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.GetResourceConfigHistorySync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetResourceConfigHistoryAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeConfigRuleEvaluationStatus asynchronously, invoking a callback when done
-- @param DescribeConfigRuleEvaluationStatusRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeConfigRuleEvaluationStatusAsync(DescribeConfigRuleEvaluationStatusRequest, cb)
	assert(DescribeConfigRuleEvaluationStatusRequest, "You must provide a DescribeConfigRuleEvaluationStatusRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.DescribeConfigRuleEvaluationStatus",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DescribeConfigRuleEvaluationStatusSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeConfigRuleEvaluationStatusAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDeliveryChannels asynchronously, invoking a callback when done
-- @param DescribeDeliveryChannelsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDeliveryChannelsAsync(DescribeDeliveryChannelsRequest, cb)
	assert(DescribeDeliveryChannelsRequest, "You must provide a DescribeDeliveryChannelsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.DescribeDeliveryChannels",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DescribeDeliveryChannelsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDeliveryChannelsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetComplianceSummaryByResourceType asynchronously, invoking a callback when done
-- @param GetComplianceSummaryByResourceTypeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetComplianceSummaryByResourceTypeAsync(GetComplianceSummaryByResourceTypeRequest, cb)
	assert(GetComplianceSummaryByResourceTypeRequest, "You must provide a GetComplianceSummaryByResourceTypeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.GetComplianceSummaryByResourceType",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.GetComplianceSummaryByResourceTypeSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetComplianceSummaryByResourceTypeAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeConfigRules asynchronously, invoking a callback when done
-- @param DescribeConfigRulesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeConfigRulesAsync(DescribeConfigRulesRequest, cb)
	assert(DescribeConfigRulesRequest, "You must provide a DescribeConfigRulesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.DescribeConfigRules",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DescribeConfigRulesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeConfigRulesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PutConfigRule asynchronously, invoking a callback when done
-- @param PutConfigRuleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutConfigRuleAsync(PutConfigRuleRequest, cb)
	assert(PutConfigRuleRequest, "You must provide a PutConfigRuleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.PutConfigRule",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.PutConfigRuleSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutConfigRuleAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteEvaluationResults asynchronously, invoking a callback when done
-- @param DeleteEvaluationResultsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteEvaluationResultsAsync(DeleteEvaluationResultsRequest, cb)
	assert(DeleteEvaluationResultsRequest, "You must provide a DeleteEvaluationResultsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.DeleteEvaluationResults",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DeleteEvaluationResultsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteEvaluationResultsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeComplianceByConfigRule asynchronously, invoking a callback when done
-- @param DescribeComplianceByConfigRuleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeComplianceByConfigRuleAsync(DescribeComplianceByConfigRuleRequest, cb)
	assert(DescribeComplianceByConfigRuleRequest, "You must provide a DescribeComplianceByConfigRuleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.DescribeComplianceByConfigRule",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DescribeComplianceByConfigRuleSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeComplianceByConfigRuleAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PutDeliveryChannel asynchronously, invoking a callback when done
-- @param PutDeliveryChannelRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutDeliveryChannelAsync(PutDeliveryChannelRequest, cb)
	assert(PutDeliveryChannelRequest, "You must provide a PutDeliveryChannelRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.PutDeliveryChannel",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.PutDeliveryChannelSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutDeliveryChannelAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteConfigurationRecorder asynchronously, invoking a callback when done
-- @param DeleteConfigurationRecorderRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteConfigurationRecorderAsync(DeleteConfigurationRecorderRequest, cb)
	assert(DeleteConfigurationRecorderRequest, "You must provide a DeleteConfigurationRecorderRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StarlingDoveService.DeleteConfigurationRecorder",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DeleteConfigurationRecorderSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteConfigurationRecorderAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
