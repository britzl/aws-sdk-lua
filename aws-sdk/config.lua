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

local NoSuchBucketException_keys = { nil }

function M.AssertNoSuchBucketException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoSuchBucketException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(NoSuchBucketException_keys[k], "NoSuchBucketException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoSuchBucketException
-- &lt;p&gt;The specified Amazon S3 bucket does not exist.&lt;/p&gt;
function M.NoSuchBucketException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating NoSuchBucketException")
	local t = { 
	}
	M.AssertNoSuchBucketException(t)
	return t
end

local PutConfigurationRecorderRequest_keys = { "ConfigurationRecorder" = true, nil }

function M.AssertPutConfigurationRecorderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutConfigurationRecorderRequest to be of type 'table'")
	assert(struct["ConfigurationRecorder"], "Expected key ConfigurationRecorder to exist in table")
	if struct["ConfigurationRecorder"] then M.AssertConfigurationRecorder(struct["ConfigurationRecorder"]) end
	for k,_ in pairs(struct) do
		assert(PutConfigurationRecorderRequest_keys[k], "PutConfigurationRecorderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutConfigurationRecorderRequest
-- &lt;p&gt;The input for the &lt;a&gt;PutConfigurationRecorder&lt;/a&gt; action.&lt;/p&gt;
-- @param ConfigurationRecorder [ConfigurationRecorder] &lt;p&gt;The configuration recorder object that records each configuration change made to the resources.&lt;/p&gt;
-- Required parameter: ConfigurationRecorder
function M.PutConfigurationRecorderRequest(ConfigurationRecorder, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutConfigurationRecorderRequest")
	local t = { 
		["ConfigurationRecorder"] = ConfigurationRecorder,
	}
	M.AssertPutConfigurationRecorderRequest(t)
	return t
end

local StartConfigurationRecorderRequest_keys = { "ConfigurationRecorderName" = true, nil }

function M.AssertStartConfigurationRecorderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartConfigurationRecorderRequest to be of type 'table'")
	assert(struct["ConfigurationRecorderName"], "Expected key ConfigurationRecorderName to exist in table")
	if struct["ConfigurationRecorderName"] then M.AssertRecorderName(struct["ConfigurationRecorderName"]) end
	for k,_ in pairs(struct) do
		assert(StartConfigurationRecorderRequest_keys[k], "StartConfigurationRecorderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartConfigurationRecorderRequest
-- &lt;p&gt;The input for the &lt;a&gt;StartConfigurationRecorder&lt;/a&gt; action.&lt;/p&gt;
-- @param ConfigurationRecorderName [RecorderName] &lt;p&gt;The name of the recorder object that records each configuration change made to the resources.&lt;/p&gt;
-- Required parameter: ConfigurationRecorderName
function M.StartConfigurationRecorderRequest(ConfigurationRecorderName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartConfigurationRecorderRequest")
	local t = { 
		["ConfigurationRecorderName"] = ConfigurationRecorderName,
	}
	M.AssertStartConfigurationRecorderRequest(t)
	return t
end

local DescribeComplianceByConfigRuleResponse_keys = { "ComplianceByConfigRules" = true, "NextToken" = true, nil }

function M.AssertDescribeComplianceByConfigRuleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeComplianceByConfigRuleResponse to be of type 'table'")
	if struct["ComplianceByConfigRules"] then M.AssertComplianceByConfigRules(struct["ComplianceByConfigRules"]) end
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(DescribeComplianceByConfigRuleResponse_keys[k], "DescribeComplianceByConfigRuleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeComplianceByConfigRuleResponse
-- &lt;p/&gt;
-- @param ComplianceByConfigRules [ComplianceByConfigRules] &lt;p&gt;Indicates whether each of the specified AWS Config rules is compliant.&lt;/p&gt;
-- @param NextToken [String] &lt;p&gt;The string that you use in a subsequent request to get the next page of results in a paginated response.&lt;/p&gt;
function M.DescribeComplianceByConfigRuleResponse(ComplianceByConfigRules, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeComplianceByConfigRuleResponse")
	local t = { 
		["ComplianceByConfigRules"] = ComplianceByConfigRules,
		["NextToken"] = NextToken,
	}
	M.AssertDescribeComplianceByConfigRuleResponse(t)
	return t
end

local PutEvaluationsResponse_keys = { "FailedEvaluations" = true, nil }

function M.AssertPutEvaluationsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutEvaluationsResponse to be of type 'table'")
	if struct["FailedEvaluations"] then M.AssertEvaluations(struct["FailedEvaluations"]) end
	for k,_ in pairs(struct) do
		assert(PutEvaluationsResponse_keys[k], "PutEvaluationsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutEvaluationsResponse
-- &lt;p/&gt;
-- @param FailedEvaluations [Evaluations] &lt;p&gt;Requests that failed because of a client or server error.&lt;/p&gt;
function M.PutEvaluationsResponse(FailedEvaluations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutEvaluationsResponse")
	local t = { 
		["FailedEvaluations"] = FailedEvaluations,
	}
	M.AssertPutEvaluationsResponse(t)
	return t
end

local StartConfigRulesEvaluationResponse_keys = { nil }

function M.AssertStartConfigRulesEvaluationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartConfigRulesEvaluationResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(StartConfigRulesEvaluationResponse_keys[k], "StartConfigRulesEvaluationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartConfigRulesEvaluationResponse
-- &lt;p&gt;The output when you start the evaluation for the specified Config rule.&lt;/p&gt;
function M.StartConfigRulesEvaluationResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartConfigRulesEvaluationResponse")
	local t = { 
	}
	M.AssertStartConfigRulesEvaluationResponse(t)
	return t
end

local ConfigurationRecorder_keys = { "recordingGroup" = true, "roleARN" = true, "name" = true, nil }

function M.AssertConfigurationRecorder(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfigurationRecorder to be of type 'table'")
	if struct["recordingGroup"] then M.AssertRecordingGroup(struct["recordingGroup"]) end
	if struct["roleARN"] then M.AssertString(struct["roleARN"]) end
	if struct["name"] then M.AssertRecorderName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(ConfigurationRecorder_keys[k], "ConfigurationRecorder contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfigurationRecorder
-- &lt;p&gt;An object that represents the recording of configuration changes of an AWS resource.&lt;/p&gt;
-- @param recordingGroup [RecordingGroup] &lt;p&gt;Specifies the types of AWS resource for which AWS Config records configuration changes.&lt;/p&gt;
-- @param roleARN [String] &lt;p&gt;Amazon Resource Name (ARN) of the IAM role used to describe the AWS resources associated with the account.&lt;/p&gt;
-- @param name [RecorderName] &lt;p&gt;The name of the recorder. By default, AWS Config automatically assigns the name &quot;default&quot; when creating the configuration recorder. You cannot change the assigned name.&lt;/p&gt;
function M.ConfigurationRecorder(recordingGroup, roleARN, name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConfigurationRecorder")
	local t = { 
		["recordingGroup"] = recordingGroup,
		["roleARN"] = roleARN,
		["name"] = name,
	}
	M.AssertConfigurationRecorder(t)
	return t
end

local GetComplianceSummaryByResourceTypeResponse_keys = { "ComplianceSummariesByResourceType" = true, nil }

function M.AssertGetComplianceSummaryByResourceTypeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetComplianceSummaryByResourceTypeResponse to be of type 'table'")
	if struct["ComplianceSummariesByResourceType"] then M.AssertComplianceSummariesByResourceType(struct["ComplianceSummariesByResourceType"]) end
	for k,_ in pairs(struct) do
		assert(GetComplianceSummaryByResourceTypeResponse_keys[k], "GetComplianceSummaryByResourceTypeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetComplianceSummaryByResourceTypeResponse
-- &lt;p/&gt;
-- @param ComplianceSummariesByResourceType [ComplianceSummariesByResourceType] &lt;p&gt;The number of resources that are compliant and the number that are noncompliant. If one or more resource types were provided with the request, the numbers are returned for each resource type. The maximum number returned is 100.&lt;/p&gt;
function M.GetComplianceSummaryByResourceTypeResponse(ComplianceSummariesByResourceType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetComplianceSummaryByResourceTypeResponse")
	local t = { 
		["ComplianceSummariesByResourceType"] = ComplianceSummariesByResourceType,
	}
	M.AssertGetComplianceSummaryByResourceTypeResponse(t)
	return t
end

local DeleteEvaluationResultsRequest_keys = { "ConfigRuleName" = true, nil }

function M.AssertDeleteEvaluationResultsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteEvaluationResultsRequest to be of type 'table'")
	assert(struct["ConfigRuleName"], "Expected key ConfigRuleName to exist in table")
	if struct["ConfigRuleName"] then M.AssertStringWithCharLimit64(struct["ConfigRuleName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteEvaluationResultsRequest_keys[k], "DeleteEvaluationResultsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteEvaluationResultsRequest
-- &lt;p/&gt;
-- @param ConfigRuleName [StringWithCharLimit64] &lt;p&gt;The name of the Config rule for which you want to delete the evaluation results.&lt;/p&gt;
-- Required parameter: ConfigRuleName
function M.DeleteEvaluationResultsRequest(ConfigRuleName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteEvaluationResultsRequest")
	local t = { 
		["ConfigRuleName"] = ConfigRuleName,
	}
	M.AssertDeleteEvaluationResultsRequest(t)
	return t
end

local InvalidConfigurationRecorderNameException_keys = { nil }

function M.AssertInvalidConfigurationRecorderNameException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidConfigurationRecorderNameException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidConfigurationRecorderNameException_keys[k], "InvalidConfigurationRecorderNameException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidConfigurationRecorderNameException
-- &lt;p&gt;You have provided a configuration recorder name that is not valid.&lt;/p&gt;
function M.InvalidConfigurationRecorderNameException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidConfigurationRecorderNameException")
	local t = { 
	}
	M.AssertInvalidConfigurationRecorderNameException(t)
	return t
end

local DeliverConfigSnapshotRequest_keys = { "deliveryChannelName" = true, nil }

function M.AssertDeliverConfigSnapshotRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeliverConfigSnapshotRequest to be of type 'table'")
	assert(struct["deliveryChannelName"], "Expected key deliveryChannelName to exist in table")
	if struct["deliveryChannelName"] then M.AssertChannelName(struct["deliveryChannelName"]) end
	for k,_ in pairs(struct) do
		assert(DeliverConfigSnapshotRequest_keys[k], "DeliverConfigSnapshotRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeliverConfigSnapshotRequest
-- &lt;p&gt;The input for the &lt;a&gt;DeliverConfigSnapshot&lt;/a&gt; action.&lt;/p&gt;
-- @param deliveryChannelName [ChannelName] &lt;p&gt;The name of the delivery channel through which the snapshot is delivered.&lt;/p&gt;
-- Required parameter: deliveryChannelName
function M.DeliverConfigSnapshotRequest(deliveryChannelName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeliverConfigSnapshotRequest")
	local t = { 
		["deliveryChannelName"] = deliveryChannelName,
	}
	M.AssertDeliverConfigSnapshotRequest(t)
	return t
end

local DescribeDeliveryChannelStatusResponse_keys = { "DeliveryChannelsStatus" = true, nil }

function M.AssertDescribeDeliveryChannelStatusResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDeliveryChannelStatusResponse to be of type 'table'")
	if struct["DeliveryChannelsStatus"] then M.AssertDeliveryChannelStatusList(struct["DeliveryChannelsStatus"]) end
	for k,_ in pairs(struct) do
		assert(DescribeDeliveryChannelStatusResponse_keys[k], "DescribeDeliveryChannelStatusResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDeliveryChannelStatusResponse
-- &lt;p&gt;The output for the &lt;a&gt;DescribeDeliveryChannelStatus&lt;/a&gt; action.&lt;/p&gt;
-- @param DeliveryChannelsStatus [DeliveryChannelStatusList] &lt;p&gt;A list that contains the status of a specified delivery channel.&lt;/p&gt;
function M.DescribeDeliveryChannelStatusResponse(DeliveryChannelsStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDeliveryChannelStatusResponse")
	local t = { 
		["DeliveryChannelsStatus"] = DeliveryChannelsStatus,
	}
	M.AssertDescribeDeliveryChannelStatusResponse(t)
	return t
end

local Compliance_keys = { "ComplianceContributorCount" = true, "ComplianceType" = true, nil }

function M.AssertCompliance(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Compliance to be of type 'table'")
	if struct["ComplianceContributorCount"] then M.AssertComplianceContributorCount(struct["ComplianceContributorCount"]) end
	if struct["ComplianceType"] then M.AssertComplianceType(struct["ComplianceType"]) end
	for k,_ in pairs(struct) do
		assert(Compliance_keys[k], "Compliance contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Compliance
-- &lt;p&gt;Indicates whether an AWS resource or AWS Config rule is compliant and provides the number of contributors that affect the compliance.&lt;/p&gt;
-- @param ComplianceContributorCount [ComplianceContributorCount] &lt;p&gt;The number of AWS resources or AWS Config rules that cause a result of &lt;code&gt;NON_COMPLIANT&lt;/code&gt;, up to a maximum number.&lt;/p&gt;
-- @param ComplianceType [ComplianceType] &lt;p&gt;Indicates whether an AWS resource or AWS Config rule is compliant.&lt;/p&gt; &lt;p&gt;A resource is compliant if it complies with all of the AWS Config rules that evaluate it, and it is noncompliant if it does not comply with one or more of these rules.&lt;/p&gt; &lt;p&gt;A rule is compliant if all of the resources that the rule evaluates comply with it, and it is noncompliant if any of these resources do not comply.&lt;/p&gt; &lt;p&gt;AWS Config returns the &lt;code&gt;INSUFFICIENT_DATA&lt;/code&gt; value when no evaluation results are available for the AWS resource or Config rule.&lt;/p&gt; &lt;p&gt;For the &lt;code&gt;Compliance&lt;/code&gt; data type, AWS Config supports only &lt;code&gt;COMPLIANT&lt;/code&gt;, &lt;code&gt;NON_COMPLIANT&lt;/code&gt;, and &lt;code&gt;INSUFFICIENT_DATA&lt;/code&gt; values. AWS Config does not support the &lt;code&gt;NOT_APPLICABLE&lt;/code&gt; value for the &lt;code&gt;Compliance&lt;/code&gt; data type.&lt;/p&gt;
function M.Compliance(ComplianceContributorCount, ComplianceType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Compliance")
	local t = { 
		["ComplianceContributorCount"] = ComplianceContributorCount,
		["ComplianceType"] = ComplianceType,
	}
	M.AssertCompliance(t)
	return t
end

local MaxNumberOfConfigRulesExceededException_keys = { nil }

function M.AssertMaxNumberOfConfigRulesExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MaxNumberOfConfigRulesExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(MaxNumberOfConfigRulesExceededException_keys[k], "MaxNumberOfConfigRulesExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MaxNumberOfConfigRulesExceededException
-- &lt;p&gt;Failed to add the AWS Config rule because the account already contains the maximum number of 50 rules. Consider deleting any deactivated rules before adding new rules.&lt;/p&gt;
function M.MaxNumberOfConfigRulesExceededException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating MaxNumberOfConfigRulesExceededException")
	local t = { 
	}
	M.AssertMaxNumberOfConfigRulesExceededException(t)
	return t
end

local NoSuchDeliveryChannelException_keys = { nil }

function M.AssertNoSuchDeliveryChannelException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoSuchDeliveryChannelException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(NoSuchDeliveryChannelException_keys[k], "NoSuchDeliveryChannelException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoSuchDeliveryChannelException
-- &lt;p&gt;You have specified a delivery channel that does not exist.&lt;/p&gt;
function M.NoSuchDeliveryChannelException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating NoSuchDeliveryChannelException")
	local t = { 
	}
	M.AssertNoSuchDeliveryChannelException(t)
	return t
end

local GetComplianceDetailsByResourceResponse_keys = { "EvaluationResults" = true, "NextToken" = true, nil }

function M.AssertGetComplianceDetailsByResourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetComplianceDetailsByResourceResponse to be of type 'table'")
	if struct["EvaluationResults"] then M.AssertEvaluationResults(struct["EvaluationResults"]) end
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(GetComplianceDetailsByResourceResponse_keys[k], "GetComplianceDetailsByResourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetComplianceDetailsByResourceResponse
-- &lt;p/&gt;
-- @param EvaluationResults [EvaluationResults] &lt;p&gt;Indicates whether the specified AWS resource complies each AWS Config rule.&lt;/p&gt;
-- @param NextToken [String] &lt;p&gt;The string that you use in a subsequent request to get the next page of results in a paginated response.&lt;/p&gt;
function M.GetComplianceDetailsByResourceResponse(EvaluationResults, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetComplianceDetailsByResourceResponse")
	local t = { 
		["EvaluationResults"] = EvaluationResults,
		["NextToken"] = NextToken,
	}
	M.AssertGetComplianceDetailsByResourceResponse(t)
	return t
end

local DeleteConfigurationRecorderRequest_keys = { "ConfigurationRecorderName" = true, nil }

function M.AssertDeleteConfigurationRecorderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteConfigurationRecorderRequest to be of type 'table'")
	assert(struct["ConfigurationRecorderName"], "Expected key ConfigurationRecorderName to exist in table")
	if struct["ConfigurationRecorderName"] then M.AssertRecorderName(struct["ConfigurationRecorderName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteConfigurationRecorderRequest_keys[k], "DeleteConfigurationRecorderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteConfigurationRecorderRequest
-- &lt;p&gt;The request object for the &lt;code&gt;DeleteConfigurationRecorder&lt;/code&gt; action.&lt;/p&gt;
-- @param ConfigurationRecorderName [RecorderName] &lt;p&gt;The name of the configuration recorder to be deleted. You can retrieve the name of your configuration recorder by using the &lt;code&gt;DescribeConfigurationRecorders&lt;/code&gt; action.&lt;/p&gt;
-- Required parameter: ConfigurationRecorderName
function M.DeleteConfigurationRecorderRequest(ConfigurationRecorderName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteConfigurationRecorderRequest")
	local t = { 
		["ConfigurationRecorderName"] = ConfigurationRecorderName,
	}
	M.AssertDeleteConfigurationRecorderRequest(t)
	return t
end

local DescribeConfigurationRecorderStatusResponse_keys = { "ConfigurationRecordersStatus" = true, nil }

function M.AssertDescribeConfigurationRecorderStatusResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeConfigurationRecorderStatusResponse to be of type 'table'")
	if struct["ConfigurationRecordersStatus"] then M.AssertConfigurationRecorderStatusList(struct["ConfigurationRecordersStatus"]) end
	for k,_ in pairs(struct) do
		assert(DescribeConfigurationRecorderStatusResponse_keys[k], "DescribeConfigurationRecorderStatusResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeConfigurationRecorderStatusResponse
-- &lt;p&gt;The output for the &lt;a&gt;DescribeConfigurationRecorderStatus&lt;/a&gt; action in JSON format.&lt;/p&gt;
-- @param ConfigurationRecordersStatus [ConfigurationRecorderStatusList] &lt;p&gt;A list that contains status of the specified recorders.&lt;/p&gt;
function M.DescribeConfigurationRecorderStatusResponse(ConfigurationRecordersStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeConfigurationRecorderStatusResponse")
	local t = { 
		["ConfigurationRecordersStatus"] = ConfigurationRecordersStatus,
	}
	M.AssertDescribeConfigurationRecorderStatusResponse(t)
	return t
end

local LastDeliveryChannelDeleteFailedException_keys = { nil }

function M.AssertLastDeliveryChannelDeleteFailedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LastDeliveryChannelDeleteFailedException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(LastDeliveryChannelDeleteFailedException_keys[k], "LastDeliveryChannelDeleteFailedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LastDeliveryChannelDeleteFailedException
-- &lt;p&gt;You cannot delete the delivery channel you specified because the configuration recorder is running.&lt;/p&gt;
function M.LastDeliveryChannelDeleteFailedException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating LastDeliveryChannelDeleteFailedException")
	local t = { 
	}
	M.AssertLastDeliveryChannelDeleteFailedException(t)
	return t
end

local InvalidResultTokenException_keys = { nil }

function M.AssertInvalidResultTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidResultTokenException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidResultTokenException_keys[k], "InvalidResultTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidResultTokenException
-- &lt;p&gt;The specified &lt;code&gt;ResultToken&lt;/code&gt; is invalid.&lt;/p&gt;
function M.InvalidResultTokenException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidResultTokenException")
	local t = { 
	}
	M.AssertInvalidResultTokenException(t)
	return t
end

local DescribeComplianceByResourceResponse_keys = { "ComplianceByResources" = true, "NextToken" = true, nil }

function M.AssertDescribeComplianceByResourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeComplianceByResourceResponse to be of type 'table'")
	if struct["ComplianceByResources"] then M.AssertComplianceByResources(struct["ComplianceByResources"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(DescribeComplianceByResourceResponse_keys[k], "DescribeComplianceByResourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeComplianceByResourceResponse
-- &lt;p/&gt;
-- @param ComplianceByResources [ComplianceByResources] &lt;p&gt;Indicates whether the specified AWS resource complies with all of the AWS Config rules that evaluate it.&lt;/p&gt;
-- @param NextToken [NextToken] &lt;p&gt;The string that you use in a subsequent request to get the next page of results in a paginated response.&lt;/p&gt;
function M.DescribeComplianceByResourceResponse(ComplianceByResources, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeComplianceByResourceResponse")
	local t = { 
		["ComplianceByResources"] = ComplianceByResources,
		["NextToken"] = NextToken,
	}
	M.AssertDescribeComplianceByResourceResponse(t)
	return t
end

local DescribeDeliveryChannelsResponse_keys = { "DeliveryChannels" = true, nil }

function M.AssertDescribeDeliveryChannelsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDeliveryChannelsResponse to be of type 'table'")
	if struct["DeliveryChannels"] then M.AssertDeliveryChannelList(struct["DeliveryChannels"]) end
	for k,_ in pairs(struct) do
		assert(DescribeDeliveryChannelsResponse_keys[k], "DescribeDeliveryChannelsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDeliveryChannelsResponse
-- &lt;p&gt;The output for the &lt;a&gt;DescribeDeliveryChannels&lt;/a&gt; action.&lt;/p&gt;
-- @param DeliveryChannels [DeliveryChannelList] &lt;p&gt;A list that contains the descriptions of the specified delivery channel.&lt;/p&gt;
function M.DescribeDeliveryChannelsResponse(DeliveryChannels, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDeliveryChannelsResponse")
	local t = { 
		["DeliveryChannels"] = DeliveryChannels,
	}
	M.AssertDescribeDeliveryChannelsResponse(t)
	return t
end

local ListDiscoveredResourcesResponse_keys = { "nextToken" = true, "resourceIdentifiers" = true, nil }

function M.AssertListDiscoveredResourcesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDiscoveredResourcesResponse to be of type 'table'")
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["resourceIdentifiers"] then M.AssertResourceIdentifierList(struct["resourceIdentifiers"]) end
	for k,_ in pairs(struct) do
		assert(ListDiscoveredResourcesResponse_keys[k], "ListDiscoveredResourcesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDiscoveredResourcesResponse
-- &lt;p/&gt;
-- @param nextToken [NextToken] &lt;p&gt;The string that you use in a subsequent request to get the next page of results in a paginated response.&lt;/p&gt;
-- @param resourceIdentifiers [ResourceIdentifierList] &lt;p&gt;The details that identify a resource that is discovered by AWS Config, including the resource type, ID, and (if available) the custom resource name.&lt;/p&gt;
function M.ListDiscoveredResourcesResponse(nextToken, resourceIdentifiers, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDiscoveredResourcesResponse")
	local t = { 
		["nextToken"] = nextToken,
		["resourceIdentifiers"] = resourceIdentifiers,
	}
	M.AssertListDiscoveredResourcesResponse(t)
	return t
end

local DescribeConfigurationRecordersRequest_keys = { "ConfigurationRecorderNames" = true, nil }

function M.AssertDescribeConfigurationRecordersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeConfigurationRecordersRequest to be of type 'table'")
	if struct["ConfigurationRecorderNames"] then M.AssertConfigurationRecorderNameList(struct["ConfigurationRecorderNames"]) end
	for k,_ in pairs(struct) do
		assert(DescribeConfigurationRecordersRequest_keys[k], "DescribeConfigurationRecordersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeConfigurationRecordersRequest
-- &lt;p&gt;The input for the &lt;a&gt;DescribeConfigurationRecorders&lt;/a&gt; action.&lt;/p&gt;
-- @param ConfigurationRecorderNames [ConfigurationRecorderNameList] &lt;p&gt;A list of configuration recorder names.&lt;/p&gt;
function M.DescribeConfigurationRecordersRequest(ConfigurationRecorderNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeConfigurationRecordersRequest")
	local t = { 
		["ConfigurationRecorderNames"] = ConfigurationRecorderNames,
	}
	M.AssertDescribeConfigurationRecordersRequest(t)
	return t
end

local DescribeDeliveryChannelStatusRequest_keys = { "DeliveryChannelNames" = true, nil }

function M.AssertDescribeDeliveryChannelStatusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDeliveryChannelStatusRequest to be of type 'table'")
	if struct["DeliveryChannelNames"] then M.AssertDeliveryChannelNameList(struct["DeliveryChannelNames"]) end
	for k,_ in pairs(struct) do
		assert(DescribeDeliveryChannelStatusRequest_keys[k], "DescribeDeliveryChannelStatusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDeliveryChannelStatusRequest
-- &lt;p&gt;The input for the &lt;a&gt;DeliveryChannelStatus&lt;/a&gt; action.&lt;/p&gt;
-- @param DeliveryChannelNames [DeliveryChannelNameList] &lt;p&gt;A list of delivery channel names.&lt;/p&gt;
function M.DescribeDeliveryChannelStatusRequest(DeliveryChannelNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDeliveryChannelStatusRequest")
	local t = { 
		["DeliveryChannelNames"] = DeliveryChannelNames,
	}
	M.AssertDescribeDeliveryChannelStatusRequest(t)
	return t
end

local NoAvailableDeliveryChannelException_keys = { nil }

function M.AssertNoAvailableDeliveryChannelException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoAvailableDeliveryChannelException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(NoAvailableDeliveryChannelException_keys[k], "NoAvailableDeliveryChannelException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoAvailableDeliveryChannelException
-- &lt;p&gt;There is no delivery channel available to record configurations.&lt;/p&gt;
function M.NoAvailableDeliveryChannelException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating NoAvailableDeliveryChannelException")
	local t = { 
	}
	M.AssertNoAvailableDeliveryChannelException(t)
	return t
end

local MaxNumberOfConfigurationRecordersExceededException_keys = { nil }

function M.AssertMaxNumberOfConfigurationRecordersExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MaxNumberOfConfigurationRecordersExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(MaxNumberOfConfigurationRecordersExceededException_keys[k], "MaxNumberOfConfigurationRecordersExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MaxNumberOfConfigurationRecordersExceededException
-- &lt;p&gt;You have reached the limit on the number of recorders you can create.&lt;/p&gt;
function M.MaxNumberOfConfigurationRecordersExceededException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating MaxNumberOfConfigurationRecordersExceededException")
	local t = { 
	}
	M.AssertMaxNumberOfConfigurationRecordersExceededException(t)
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
-- &lt;p&gt;This exception is thrown if an evaluation is in progress or if you call the &lt;a&gt;StartConfigRulesEvaluation&lt;/a&gt; API more than once per minute.&lt;/p&gt;
function M.LimitExceededException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
	}
	M.AssertLimitExceededException(t)
	return t
end

local DeleteEvaluationResultsResponse_keys = { nil }

function M.AssertDeleteEvaluationResultsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteEvaluationResultsResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteEvaluationResultsResponse_keys[k], "DeleteEvaluationResultsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteEvaluationResultsResponse
-- &lt;p&gt;The output when you delete the evaluation results for the specified Config rule.&lt;/p&gt;
function M.DeleteEvaluationResultsResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteEvaluationResultsResponse")
	local t = { 
	}
	M.AssertDeleteEvaluationResultsResponse(t)
	return t
end

local Source_keys = { "Owner" = true, "SourceIdentifier" = true, "SourceDetails" = true, nil }

function M.AssertSource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Source to be of type 'table'")
	assert(struct["Owner"], "Expected key Owner to exist in table")
	assert(struct["SourceIdentifier"], "Expected key SourceIdentifier to exist in table")
	if struct["Owner"] then M.AssertOwner(struct["Owner"]) end
	if struct["SourceIdentifier"] then M.AssertStringWithCharLimit256(struct["SourceIdentifier"]) end
	if struct["SourceDetails"] then M.AssertSourceDetails(struct["SourceDetails"]) end
	for k,_ in pairs(struct) do
		assert(Source_keys[k], "Source contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Source
-- &lt;p&gt;Provides the AWS Config rule owner (AWS or customer), the rule identifier, and the events that trigger the evaluation of your AWS resources.&lt;/p&gt;
-- @param Owner [Owner] &lt;p&gt;Indicates whether AWS or the customer owns and manages the AWS Config rule.&lt;/p&gt;
-- @param SourceIdentifier [StringWithCharLimit256] &lt;p&gt;For AWS Config managed rules, a predefined identifier from a list. For example, &lt;code&gt;IAM_PASSWORD_POLICY&lt;/code&gt; is a managed rule. To reference a managed rule, see &lt;a href=&quot;http://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html&quot;&gt;Using AWS Managed Config Rules&lt;/a&gt;.&lt;/p&gt; &lt;p&gt;For custom rules, the identifier is the Amazon Resource Name (ARN) of the rule's AWS Lambda function, such as &lt;code&gt;arn:aws:lambda:us-east-1:123456789012:function:custom_rule_name&lt;/code&gt;.&lt;/p&gt;
-- @param SourceDetails [SourceDetails] &lt;p&gt;Provides the source and type of the event that causes AWS Config to evaluate your AWS resources.&lt;/p&gt;
-- Required parameter: Owner
-- Required parameter: SourceIdentifier
function M.Source(Owner, SourceIdentifier, SourceDetails, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Source")
	local t = { 
		["Owner"] = Owner,
		["SourceIdentifier"] = SourceIdentifier,
		["SourceDetails"] = SourceDetails,
	}
	M.AssertSource(t)
	return t
end

local ComplianceByConfigRule_keys = { "Compliance" = true, "ConfigRuleName" = true, nil }

function M.AssertComplianceByConfigRule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ComplianceByConfigRule to be of type 'table'")
	if struct["Compliance"] then M.AssertCompliance(struct["Compliance"]) end
	if struct["ConfigRuleName"] then M.AssertStringWithCharLimit64(struct["ConfigRuleName"]) end
	for k,_ in pairs(struct) do
		assert(ComplianceByConfigRule_keys[k], "ComplianceByConfigRule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ComplianceByConfigRule
-- &lt;p&gt;Indicates whether an AWS Config rule is compliant. A rule is compliant if all of the resources that the rule evaluated comply with it, and it is noncompliant if any of these resources do not comply.&lt;/p&gt;
-- @param Compliance [Compliance] &lt;p&gt;Indicates whether the AWS Config rule is compliant.&lt;/p&gt;
-- @param ConfigRuleName [StringWithCharLimit64] &lt;p&gt;The name of the AWS Config rule.&lt;/p&gt;
function M.ComplianceByConfigRule(Compliance, ConfigRuleName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ComplianceByConfigRule")
	local t = { 
		["Compliance"] = Compliance,
		["ConfigRuleName"] = ConfigRuleName,
	}
	M.AssertComplianceByConfigRule(t)
	return t
end

local InvalidDeliveryChannelNameException_keys = { nil }

function M.AssertInvalidDeliveryChannelNameException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDeliveryChannelNameException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidDeliveryChannelNameException_keys[k], "InvalidDeliveryChannelNameException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDeliveryChannelNameException
-- &lt;p&gt;The specified delivery channel name is not valid.&lt;/p&gt;
function M.InvalidDeliveryChannelNameException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidDeliveryChannelNameException")
	local t = { 
	}
	M.AssertInvalidDeliveryChannelNameException(t)
	return t
end

local InvalidNextTokenException_keys = { nil }

function M.AssertInvalidNextTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidNextTokenException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidNextTokenException_keys[k], "InvalidNextTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidNextTokenException
-- &lt;p&gt;The specified next token is invalid. Specify the &lt;code&gt;NextToken&lt;/code&gt; string that was returned in the previous response to get the next page of results.&lt;/p&gt;
function M.InvalidNextTokenException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidNextTokenException")
	local t = { 
	}
	M.AssertInvalidNextTokenException(t)
	return t
end

local StartConfigRulesEvaluationRequest_keys = { "ConfigRuleNames" = true, nil }

function M.AssertStartConfigRulesEvaluationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartConfigRulesEvaluationRequest to be of type 'table'")
	if struct["ConfigRuleNames"] then M.AssertReevaluateConfigRuleNames(struct["ConfigRuleNames"]) end
	for k,_ in pairs(struct) do
		assert(StartConfigRulesEvaluationRequest_keys[k], "StartConfigRulesEvaluationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartConfigRulesEvaluationRequest
-- &lt;p/&gt;
-- @param ConfigRuleNames [ReevaluateConfigRuleNames] &lt;p&gt;The list of names of Config rules that you want to run evaluations for.&lt;/p&gt;
function M.StartConfigRulesEvaluationRequest(ConfigRuleNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartConfigRulesEvaluationRequest")
	local t = { 
		["ConfigRuleNames"] = ConfigRuleNames,
	}
	M.AssertStartConfigRulesEvaluationRequest(t)
	return t
end

local ConfigRuleEvaluationStatus_keys = { "LastFailedEvaluationTime" = true, "LastSuccessfulInvocationTime" = true, "FirstEvaluationStarted" = true, "LastFailedInvocationTime" = true, "ConfigRuleName" = true, "ConfigRuleArn" = true, "FirstActivatedTime" = true, "LastSuccessfulEvaluationTime" = true, "LastErrorCode" = true, "LastErrorMessage" = true, "ConfigRuleId" = true, nil }

function M.AssertConfigRuleEvaluationStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfigRuleEvaluationStatus to be of type 'table'")
	if struct["LastFailedEvaluationTime"] then M.AssertDate(struct["LastFailedEvaluationTime"]) end
	if struct["LastSuccessfulInvocationTime"] then M.AssertDate(struct["LastSuccessfulInvocationTime"]) end
	if struct["FirstEvaluationStarted"] then M.AssertBoolean(struct["FirstEvaluationStarted"]) end
	if struct["LastFailedInvocationTime"] then M.AssertDate(struct["LastFailedInvocationTime"]) end
	if struct["ConfigRuleName"] then M.AssertStringWithCharLimit64(struct["ConfigRuleName"]) end
	if struct["ConfigRuleArn"] then M.AssertString(struct["ConfigRuleArn"]) end
	if struct["FirstActivatedTime"] then M.AssertDate(struct["FirstActivatedTime"]) end
	if struct["LastSuccessfulEvaluationTime"] then M.AssertDate(struct["LastSuccessfulEvaluationTime"]) end
	if struct["LastErrorCode"] then M.AssertString(struct["LastErrorCode"]) end
	if struct["LastErrorMessage"] then M.AssertString(struct["LastErrorMessage"]) end
	if struct["ConfigRuleId"] then M.AssertString(struct["ConfigRuleId"]) end
	for k,_ in pairs(struct) do
		assert(ConfigRuleEvaluationStatus_keys[k], "ConfigRuleEvaluationStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfigRuleEvaluationStatus
-- &lt;p&gt;Status information for your AWS managed Config rules. The status includes information such as the last time the rule ran, the last time it failed, and the related error for the last failure.&lt;/p&gt; &lt;p&gt;This action does not return status information about custom Config rules.&lt;/p&gt;
-- @param LastFailedEvaluationTime [Date] &lt;p&gt;The time that AWS Config last failed to evaluate your AWS resources against the rule.&lt;/p&gt;
-- @param LastSuccessfulInvocationTime [Date] &lt;p&gt;The time that AWS Config last successfully invoked the AWS Config rule to evaluate your AWS resources.&lt;/p&gt;
-- @param FirstEvaluationStarted [Boolean] &lt;p&gt;Indicates whether AWS Config has evaluated your resources against the rule at least once.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;true&lt;/code&gt; - AWS Config has evaluated your AWS resources against the rule at least once.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;false&lt;/code&gt; - AWS Config has not once finished evaluating your AWS resources against the rule.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param LastFailedInvocationTime [Date] &lt;p&gt;The time that AWS Config last failed to invoke the AWS Config rule to evaluate your AWS resources.&lt;/p&gt;
-- @param ConfigRuleName [StringWithCharLimit64] &lt;p&gt;The name of the AWS Config rule.&lt;/p&gt;
-- @param ConfigRuleArn [String] &lt;p&gt;The Amazon Resource Name (ARN) of the AWS Config rule.&lt;/p&gt;
-- @param FirstActivatedTime [Date] &lt;p&gt;The time that you first activated the AWS Config rule.&lt;/p&gt;
-- @param LastSuccessfulEvaluationTime [Date] &lt;p&gt;The time that AWS Config last successfully evaluated your AWS resources against the rule.&lt;/p&gt;
-- @param LastErrorCode [String] &lt;p&gt;The error code that AWS Config returned when the rule last failed.&lt;/p&gt;
-- @param LastErrorMessage [String] &lt;p&gt;The error message that AWS Config returned when the rule last failed.&lt;/p&gt;
-- @param ConfigRuleId [String] &lt;p&gt;The ID of the AWS Config rule.&lt;/p&gt;
function M.ConfigRuleEvaluationStatus(LastFailedEvaluationTime, LastSuccessfulInvocationTime, FirstEvaluationStarted, LastFailedInvocationTime, ConfigRuleName, ConfigRuleArn, FirstActivatedTime, LastSuccessfulEvaluationTime, LastErrorCode, LastErrorMessage, ConfigRuleId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConfigRuleEvaluationStatus")
	local t = { 
		["LastFailedEvaluationTime"] = LastFailedEvaluationTime,
		["LastSuccessfulInvocationTime"] = LastSuccessfulInvocationTime,
		["FirstEvaluationStarted"] = FirstEvaluationStarted,
		["LastFailedInvocationTime"] = LastFailedInvocationTime,
		["ConfigRuleName"] = ConfigRuleName,
		["ConfigRuleArn"] = ConfigRuleArn,
		["FirstActivatedTime"] = FirstActivatedTime,
		["LastSuccessfulEvaluationTime"] = LastSuccessfulEvaluationTime,
		["LastErrorCode"] = LastErrorCode,
		["LastErrorMessage"] = LastErrorMessage,
		["ConfigRuleId"] = ConfigRuleId,
	}
	M.AssertConfigRuleEvaluationStatus(t)
	return t
end

local NoSuchConfigurationRecorderException_keys = { nil }

function M.AssertNoSuchConfigurationRecorderException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoSuchConfigurationRecorderException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(NoSuchConfigurationRecorderException_keys[k], "NoSuchConfigurationRecorderException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoSuchConfigurationRecorderException
-- &lt;p&gt;You have specified a configuration recorder that does not exist.&lt;/p&gt;
function M.NoSuchConfigurationRecorderException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating NoSuchConfigurationRecorderException")
	local t = { 
	}
	M.AssertNoSuchConfigurationRecorderException(t)
	return t
end

local NoRunningConfigurationRecorderException_keys = { nil }

function M.AssertNoRunningConfigurationRecorderException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoRunningConfigurationRecorderException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(NoRunningConfigurationRecorderException_keys[k], "NoRunningConfigurationRecorderException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoRunningConfigurationRecorderException
-- &lt;p&gt;There is no configuration recorder running.&lt;/p&gt;
function M.NoRunningConfigurationRecorderException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating NoRunningConfigurationRecorderException")
	local t = { 
	}
	M.AssertNoRunningConfigurationRecorderException(t)
	return t
end

local InsufficientPermissionsException_keys = { nil }

function M.AssertInsufficientPermissionsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InsufficientPermissionsException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InsufficientPermissionsException_keys[k], "InsufficientPermissionsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InsufficientPermissionsException
-- &lt;p&gt;Indicates one of the following errors:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;The rule cannot be created because the IAM role assigned to AWS Config lacks permissions to perform the config:Put* action.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;The AWS Lambda function cannot be invoked. Check the function ARN, and check the function's permissions.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
function M.InsufficientPermissionsException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InsufficientPermissionsException")
	local t = { 
	}
	M.AssertInsufficientPermissionsException(t)
	return t
end

local ResourceNotDiscoveredException_keys = { nil }

function M.AssertResourceNotDiscoveredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotDiscoveredException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ResourceNotDiscoveredException_keys[k], "ResourceNotDiscoveredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotDiscoveredException
-- &lt;p&gt;You have specified a resource that is either unknown or has not been discovered.&lt;/p&gt;
function M.ResourceNotDiscoveredException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotDiscoveredException")
	local t = { 
	}
	M.AssertResourceNotDiscoveredException(t)
	return t
end

local InvalidS3KeyPrefixException_keys = { nil }

function M.AssertInvalidS3KeyPrefixException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidS3KeyPrefixException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidS3KeyPrefixException_keys[k], "InvalidS3KeyPrefixException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidS3KeyPrefixException
-- &lt;p&gt;The specified Amazon S3 key prefix is not valid.&lt;/p&gt;
function M.InvalidS3KeyPrefixException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidS3KeyPrefixException")
	local t = { 
	}
	M.AssertInvalidS3KeyPrefixException(t)
	return t
end

local DeliverConfigSnapshotResponse_keys = { "configSnapshotId" = true, nil }

function M.AssertDeliverConfigSnapshotResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeliverConfigSnapshotResponse to be of type 'table'")
	if struct["configSnapshotId"] then M.AssertString(struct["configSnapshotId"]) end
	for k,_ in pairs(struct) do
		assert(DeliverConfigSnapshotResponse_keys[k], "DeliverConfigSnapshotResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeliverConfigSnapshotResponse
-- &lt;p&gt;The output for the &lt;a&gt;DeliverConfigSnapshot&lt;/a&gt; action in JSON format.&lt;/p&gt;
-- @param configSnapshotId [String] &lt;p&gt;The ID of the snapshot that is being created.&lt;/p&gt;
function M.DeliverConfigSnapshotResponse(configSnapshotId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeliverConfigSnapshotResponse")
	local t = { 
		["configSnapshotId"] = configSnapshotId,
	}
	M.AssertDeliverConfigSnapshotResponse(t)
	return t
end

local DeliveryChannel_keys = { "s3KeyPrefix" = true, "configSnapshotDeliveryProperties" = true, "snsTopicARN" = true, "name" = true, "s3BucketName" = true, nil }

function M.AssertDeliveryChannel(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeliveryChannel to be of type 'table'")
	if struct["s3KeyPrefix"] then M.AssertString(struct["s3KeyPrefix"]) end
	if struct["configSnapshotDeliveryProperties"] then M.AssertConfigSnapshotDeliveryProperties(struct["configSnapshotDeliveryProperties"]) end
	if struct["snsTopicARN"] then M.AssertString(struct["snsTopicARN"]) end
	if struct["name"] then M.AssertChannelName(struct["name"]) end
	if struct["s3BucketName"] then M.AssertString(struct["s3BucketName"]) end
	for k,_ in pairs(struct) do
		assert(DeliveryChannel_keys[k], "DeliveryChannel contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeliveryChannel
-- &lt;p&gt;The channel through which AWS Config delivers notifications and updated configuration states.&lt;/p&gt;
-- @param s3KeyPrefix [String] &lt;p&gt;The prefix for the specified Amazon S3 bucket.&lt;/p&gt;
-- @param configSnapshotDeliveryProperties [ConfigSnapshotDeliveryProperties] &lt;p&gt;The options for how often AWS Config delivers configuration snapshots to the Amazon S3 bucket.&lt;/p&gt;
-- @param snsTopicARN [String] &lt;p&gt;The Amazon Resource Name (ARN) of the Amazon SNS topic to which AWS Config sends notifications about configuration changes.&lt;/p&gt; &lt;p&gt;If you choose a topic from another account, the topic must have policies that grant access permissions to AWS Config. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/config/latest/developerguide/sns-topic-policy.html&quot;&gt;Permissions for the Amazon SNS Topic&lt;/a&gt; in the AWS Config Developer Guide.&lt;/p&gt;
-- @param name [ChannelName] &lt;p&gt;The name of the delivery channel. By default, AWS Config assigns the name &quot;default&quot; when creating the delivery channel. To change the delivery channel name, you must use the DeleteDeliveryChannel action to delete your current delivery channel, and then you must use the PutDeliveryChannel command to create a delivery channel that has the desired name.&lt;/p&gt;
-- @param s3BucketName [String] &lt;p&gt;The name of the Amazon S3 bucket to which AWS Config delivers configuration snapshots and configuration history files.&lt;/p&gt; &lt;p&gt;If you specify a bucket that belongs to another AWS account, that bucket must have policies that grant access permissions to AWS Config. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/config/latest/developerguide/s3-bucket-policy.html&quot;&gt;Permissions for the Amazon S3 Bucket&lt;/a&gt; in the AWS Config Developer Guide.&lt;/p&gt;
function M.DeliveryChannel(s3KeyPrefix, configSnapshotDeliveryProperties, snsTopicARN, name, s3BucketName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeliveryChannel")
	local t = { 
		["s3KeyPrefix"] = s3KeyPrefix,
		["configSnapshotDeliveryProperties"] = configSnapshotDeliveryProperties,
		["snsTopicARN"] = snsTopicARN,
		["name"] = name,
		["s3BucketName"] = s3BucketName,
	}
	M.AssertDeliveryChannel(t)
	return t
end

local DescribeComplianceByResourceRequest_keys = { "ResourceType" = true, "ResourceId" = true, "NextToken" = true, "Limit" = true, "ComplianceTypes" = true, nil }

function M.AssertDescribeComplianceByResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeComplianceByResourceRequest to be of type 'table'")
	if struct["ResourceType"] then M.AssertStringWithCharLimit256(struct["ResourceType"]) end
	if struct["ResourceId"] then M.AssertStringWithCharLimit256(struct["ResourceId"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["Limit"] then M.AssertLimit(struct["Limit"]) end
	if struct["ComplianceTypes"] then M.AssertComplianceTypes(struct["ComplianceTypes"]) end
	for k,_ in pairs(struct) do
		assert(DescribeComplianceByResourceRequest_keys[k], "DescribeComplianceByResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeComplianceByResourceRequest
-- &lt;p/&gt;
-- @param ResourceType [StringWithCharLimit256] &lt;p&gt;The types of AWS resources for which you want compliance information; for example, &lt;code&gt;AWS::EC2::Instance&lt;/code&gt;. For this action, you can specify that the resource type is an AWS account by specifying &lt;code&gt;AWS::::Account&lt;/code&gt;.&lt;/p&gt;
-- @param ResourceId [StringWithCharLimit256] &lt;p&gt;The ID of the AWS resource for which you want compliance information. You can specify only one resource ID. If you specify a resource ID, you must also specify a type for &lt;code&gt;ResourceType&lt;/code&gt;.&lt;/p&gt;
-- @param NextToken [NextToken] &lt;p&gt;The &lt;code&gt;NextToken&lt;/code&gt; string returned on a previous page that you use to get the next page of results in a paginated response.&lt;/p&gt;
-- @param Limit [Limit] &lt;p&gt;The maximum number of evaluation results returned on each page. The default is 10. You cannot specify a limit greater than 100. If you specify 0, AWS Config uses the default.&lt;/p&gt;
-- @param ComplianceTypes [ComplianceTypes] &lt;p&gt;Filters the results by compliance.&lt;/p&gt; &lt;p&gt;The allowed values are &lt;code&gt;COMPLIANT&lt;/code&gt;, &lt;code&gt;NON_COMPLIANT&lt;/code&gt;, and &lt;code&gt;INSUFFICIENT_DATA&lt;/code&gt;.&lt;/p&gt;
function M.DescribeComplianceByResourceRequest(ResourceType, ResourceId, NextToken, Limit, ComplianceTypes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeComplianceByResourceRequest")
	local t = { 
		["ResourceType"] = ResourceType,
		["ResourceId"] = ResourceId,
		["NextToken"] = NextToken,
		["Limit"] = Limit,
		["ComplianceTypes"] = ComplianceTypes,
	}
	M.AssertDescribeComplianceByResourceRequest(t)
	return t
end

local InvalidTimeRangeException_keys = { nil }

function M.AssertInvalidTimeRangeException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidTimeRangeException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidTimeRangeException_keys[k], "InvalidTimeRangeException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidTimeRangeException
-- &lt;p&gt;The specified time range is not valid. The earlier time is not chronologically before the later time.&lt;/p&gt;
function M.InvalidTimeRangeException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidTimeRangeException")
	local t = { 
	}
	M.AssertInvalidTimeRangeException(t)
	return t
end

local ComplianceSummaryByResourceType_keys = { "ResourceType" = true, "ComplianceSummary" = true, nil }

function M.AssertComplianceSummaryByResourceType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ComplianceSummaryByResourceType to be of type 'table'")
	if struct["ResourceType"] then M.AssertStringWithCharLimit256(struct["ResourceType"]) end
	if struct["ComplianceSummary"] then M.AssertComplianceSummary(struct["ComplianceSummary"]) end
	for k,_ in pairs(struct) do
		assert(ComplianceSummaryByResourceType_keys[k], "ComplianceSummaryByResourceType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ComplianceSummaryByResourceType
-- &lt;p&gt;The number of AWS resources of a specific type that are compliant or noncompliant, up to a maximum of 100 for each compliance.&lt;/p&gt;
-- @param ResourceType [StringWithCharLimit256] &lt;p&gt;The type of AWS resource.&lt;/p&gt;
-- @param ComplianceSummary [ComplianceSummary] &lt;p&gt;The number of AWS resources that are compliant or noncompliant, up to a maximum of 100 for each compliance.&lt;/p&gt;
function M.ComplianceSummaryByResourceType(ResourceType, ComplianceSummary, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ComplianceSummaryByResourceType")
	local t = { 
		["ResourceType"] = ResourceType,
		["ComplianceSummary"] = ComplianceSummary,
	}
	M.AssertComplianceSummaryByResourceType(t)
	return t
end

local ResourceIdentifier_keys = { "resourceType" = true, "resourceId" = true, "resourceDeletionTime" = true, "resourceName" = true, nil }

function M.AssertResourceIdentifier(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceIdentifier to be of type 'table'")
	if struct["resourceType"] then M.AssertResourceType(struct["resourceType"]) end
	if struct["resourceId"] then M.AssertResourceId(struct["resourceId"]) end
	if struct["resourceDeletionTime"] then M.AssertResourceDeletionTime(struct["resourceDeletionTime"]) end
	if struct["resourceName"] then M.AssertResourceName(struct["resourceName"]) end
	for k,_ in pairs(struct) do
		assert(ResourceIdentifier_keys[k], "ResourceIdentifier contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceIdentifier
-- &lt;p&gt;The details that identify a resource that is discovered by AWS Config, including the resource type, ID, and (if available) the custom resource name.&lt;/p&gt;
-- @param resourceType [ResourceType] &lt;p&gt;The type of resource.&lt;/p&gt;
-- @param resourceId [ResourceId] &lt;p&gt;The ID of the resource (for example., &lt;code&gt;sg-xxxxxx&lt;/code&gt;).&lt;/p&gt;
-- @param resourceDeletionTime [ResourceDeletionTime] &lt;p&gt;The time that the resource was deleted.&lt;/p&gt;
-- @param resourceName [ResourceName] &lt;p&gt;The custom name of the resource (if available).&lt;/p&gt;
function M.ResourceIdentifier(resourceType, resourceId, resourceDeletionTime, resourceName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceIdentifier")
	local t = { 
		["resourceType"] = resourceType,
		["resourceId"] = resourceId,
		["resourceDeletionTime"] = resourceDeletionTime,
		["resourceName"] = resourceName,
	}
	M.AssertResourceIdentifier(t)
	return t
end

local DescribeConfigRulesRequest_keys = { "NextToken" = true, "ConfigRuleNames" = true, nil }

function M.AssertDescribeConfigRulesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeConfigRulesRequest to be of type 'table'")
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	if struct["ConfigRuleNames"] then M.AssertConfigRuleNames(struct["ConfigRuleNames"]) end
	for k,_ in pairs(struct) do
		assert(DescribeConfigRulesRequest_keys[k], "DescribeConfigRulesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeConfigRulesRequest
-- &lt;p/&gt;
-- @param NextToken [String] &lt;p&gt;The &lt;code&gt;NextToken&lt;/code&gt; string returned on a previous page that you use to get the next page of results in a paginated response.&lt;/p&gt;
-- @param ConfigRuleNames [ConfigRuleNames] &lt;p&gt;The names of the AWS Config rules for which you want details. If you do not specify any names, AWS Config returns details for all your rules.&lt;/p&gt;
function M.DescribeConfigRulesRequest(NextToken, ConfigRuleNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeConfigRulesRequest")
	local t = { 
		["NextToken"] = NextToken,
		["ConfigRuleNames"] = ConfigRuleNames,
	}
	M.AssertDescribeConfigRulesRequest(t)
	return t
end

local NoSuchConfigRuleException_keys = { nil }

function M.AssertNoSuchConfigRuleException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoSuchConfigRuleException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(NoSuchConfigRuleException_keys[k], "NoSuchConfigRuleException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoSuchConfigRuleException
-- &lt;p&gt;One or more AWS Config rules in the request are invalid. Verify that the rule names are correct and try again.&lt;/p&gt;
function M.NoSuchConfigRuleException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating NoSuchConfigRuleException")
	local t = { 
	}
	M.AssertNoSuchConfigRuleException(t)
	return t
end

local ComplianceContributorCount_keys = { "CappedCount" = true, "CapExceeded" = true, nil }

function M.AssertComplianceContributorCount(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ComplianceContributorCount to be of type 'table'")
	if struct["CappedCount"] then M.AssertInteger(struct["CappedCount"]) end
	if struct["CapExceeded"] then M.AssertBoolean(struct["CapExceeded"]) end
	for k,_ in pairs(struct) do
		assert(ComplianceContributorCount_keys[k], "ComplianceContributorCount contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ComplianceContributorCount
-- &lt;p&gt;The number of AWS resources or AWS Config rules responsible for the current compliance of the item, up to a maximum number.&lt;/p&gt;
-- @param CappedCount [Integer] &lt;p&gt;The number of AWS resources or AWS Config rules responsible for the current compliance of the item.&lt;/p&gt;
-- @param CapExceeded [Boolean] &lt;p&gt;Indicates whether the maximum count is reached.&lt;/p&gt;
function M.ComplianceContributorCount(CappedCount, CapExceeded, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ComplianceContributorCount")
	local t = { 
		["CappedCount"] = CappedCount,
		["CapExceeded"] = CapExceeded,
	}
	M.AssertComplianceContributorCount(t)
	return t
end

local PutConfigRuleRequest_keys = { "ConfigRule" = true, nil }

function M.AssertPutConfigRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutConfigRuleRequest to be of type 'table'")
	assert(struct["ConfigRule"], "Expected key ConfigRule to exist in table")
	if struct["ConfigRule"] then M.AssertConfigRule(struct["ConfigRule"]) end
	for k,_ in pairs(struct) do
		assert(PutConfigRuleRequest_keys[k], "PutConfigRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutConfigRuleRequest
--  
-- @param ConfigRule [ConfigRule] &lt;p&gt;The rule that you want to add to your account.&lt;/p&gt;
-- Required parameter: ConfigRule
function M.PutConfigRuleRequest(ConfigRule, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutConfigRuleRequest")
	local t = { 
		["ConfigRule"] = ConfigRule,
	}
	M.AssertPutConfigRuleRequest(t)
	return t
end

local SourceDetail_keys = { "EventSource" = true, "MessageType" = true, "MaximumExecutionFrequency" = true, nil }

function M.AssertSourceDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SourceDetail to be of type 'table'")
	if struct["EventSource"] then M.AssertEventSource(struct["EventSource"]) end
	if struct["MessageType"] then M.AssertMessageType(struct["MessageType"]) end
	if struct["MaximumExecutionFrequency"] then M.AssertMaximumExecutionFrequency(struct["MaximumExecutionFrequency"]) end
	for k,_ in pairs(struct) do
		assert(SourceDetail_keys[k], "SourceDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SourceDetail
-- &lt;p&gt;Provides the source and the message types that trigger AWS Config to evaluate your AWS resources against a rule. It also provides the frequency with which you want AWS Config to run evaluations for the rule if the trigger type is periodic. You can specify the parameter values for &lt;code&gt;SourceDetail&lt;/code&gt; only for custom rules. &lt;/p&gt;
-- @param EventSource [EventSource] &lt;p&gt;The source of the event, such as an AWS service, that triggers AWS Config to evaluate your AWS resources.&lt;/p&gt;
-- @param MessageType [MessageType] &lt;p&gt;The type of notification that triggers AWS Config to run an evaluation for a rule. You can specify the following notification types:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ConfigurationItemChangeNotification&lt;/code&gt; - Triggers an evaluation when AWS Config delivers a configuration item as a result of a resource change.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;OversizedConfigurationItemChangeNotification&lt;/code&gt; - Triggers an evaluation when AWS Config delivers an oversized configuration item. AWS Config may generate this notification type when a resource changes and the notification exceeds the maximum size allowed by Amazon SNS.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ScheduledNotification&lt;/code&gt; - Triggers a periodic evaluation at the frequency specified for &lt;code&gt;MaximumExecutionFrequency&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ConfigurationSnapshotDeliveryCompleted&lt;/code&gt; - Triggers a periodic evaluation when AWS Config delivers a configuration snapshot.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;If you want your custom rule to be triggered by configuration changes, specify both &lt;code&gt;ConfigurationItemChangeNotification&lt;/code&gt; and &lt;code&gt;OversizedConfigurationItemChangeNotification&lt;/code&gt;. &lt;/p&gt;
-- @param MaximumExecutionFrequency [MaximumExecutionFrequency] &lt;p&gt;The frequency that you want AWS Config to run evaluations for a custom rule with a periodic trigger. If you specify a value for &lt;code&gt;MaximumExecutionFrequency&lt;/code&gt;, then &lt;code&gt;MessageType&lt;/code&gt; must use the &lt;code&gt;ScheduledNotification&lt;/code&gt; value.&lt;/p&gt; &lt;note&gt; &lt;p&gt;By default, rules with a periodic trigger are evaluated every 24 hours. To change the frequency, specify a valid value for the &lt;code&gt;MaximumExecutionFrequency&lt;/code&gt; parameter.&lt;/p&gt; &lt;/note&gt;
function M.SourceDetail(EventSource, MessageType, MaximumExecutionFrequency, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SourceDetail")
	local t = { 
		["EventSource"] = EventSource,
		["MessageType"] = MessageType,
		["MaximumExecutionFrequency"] = MaximumExecutionFrequency,
	}
	M.AssertSourceDetail(t)
	return t
end

local NoAvailableConfigurationRecorderException_keys = { nil }

function M.AssertNoAvailableConfigurationRecorderException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoAvailableConfigurationRecorderException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(NoAvailableConfigurationRecorderException_keys[k], "NoAvailableConfigurationRecorderException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoAvailableConfigurationRecorderException
-- &lt;p&gt;There are no configuration recorders available to provide the role needed to describe your resources. Create a configuration recorder.&lt;/p&gt;
function M.NoAvailableConfigurationRecorderException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating NoAvailableConfigurationRecorderException")
	local t = { 
	}
	M.AssertNoAvailableConfigurationRecorderException(t)
	return t
end

local InvalidLimitException_keys = { nil }

function M.AssertInvalidLimitException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidLimitException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidLimitException_keys[k], "InvalidLimitException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidLimitException
-- &lt;p&gt;The specified limit is outside the allowable range.&lt;/p&gt;
function M.InvalidLimitException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidLimitException")
	local t = { 
	}
	M.AssertInvalidLimitException(t)
	return t
end

local ConfigSnapshotDeliveryProperties_keys = { "deliveryFrequency" = true, nil }

function M.AssertConfigSnapshotDeliveryProperties(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfigSnapshotDeliveryProperties to be of type 'table'")
	if struct["deliveryFrequency"] then M.AssertMaximumExecutionFrequency(struct["deliveryFrequency"]) end
	for k,_ in pairs(struct) do
		assert(ConfigSnapshotDeliveryProperties_keys[k], "ConfigSnapshotDeliveryProperties contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfigSnapshotDeliveryProperties
-- &lt;p&gt;Provides options for how often AWS Config delivers configuration snapshots to the Amazon S3 bucket in your delivery channel.&lt;/p&gt; &lt;note&gt; &lt;p&gt;If you want to create a rule that triggers evaluations for your resources when AWS Config delivers the configuration snapshot, see the following:&lt;/p&gt; &lt;/note&gt; &lt;p&gt;The frequency for a rule that triggers evaluations for your resources when AWS Config delivers the configuration snapshot is set by one of two values, depending on which is less frequent:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;The value for the &lt;code&gt;deliveryFrequency&lt;/code&gt; parameter within the delivery channel configuration, which sets how often AWS Config delivers configuration snapshots. This value also sets how often AWS Config invokes evaluations for Config rules.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;The value for the &lt;code&gt;MaximumExecutionFrequency&lt;/code&gt; parameter, which sets the maximum frequency with which AWS Config invokes evaluations for the rule. For more information, see &lt;a&gt;ConfigRule&lt;/a&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;If the &lt;code&gt;deliveryFrequency&lt;/code&gt; value is less frequent than the &lt;code&gt;MaximumExecutionFrequency&lt;/code&gt; value for a rule, AWS Config invokes the rule only as often as the &lt;code&gt;deliveryFrequency&lt;/code&gt; value.&lt;/p&gt; &lt;ol&gt; &lt;li&gt; &lt;p&gt;For example, you want your rule to run evaluations when AWS Config delivers the configuration snapshot.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You specify the &lt;code&gt;MaximumExecutionFrequency&lt;/code&gt; value for &lt;code&gt;Six_Hours&lt;/code&gt;. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You then specify the delivery channel &lt;code&gt;deliveryFrequency&lt;/code&gt; value for &lt;code&gt;TwentyFour_Hours&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Because the value for &lt;code&gt;deliveryFrequency&lt;/code&gt; is less frequent than &lt;code&gt;MaximumExecutionFrequency&lt;/code&gt;, AWS Config invokes evaluations for the rule every 24 hours. &lt;/p&gt; &lt;/li&gt; &lt;/ol&gt; &lt;p&gt;You should set the &lt;code&gt;MaximumExecutionFrequency&lt;/code&gt; value to be at least as frequent as the &lt;code&gt;deliveryFrequency&lt;/code&gt; value. You can view the &lt;code&gt;deliveryFrequency&lt;/code&gt; value by using the &lt;code&gt;DescribeDeliveryChannnels&lt;/code&gt; action.&lt;/p&gt; &lt;p&gt;To update the &lt;code&gt;deliveryFrequency&lt;/code&gt; with which AWS Config delivers your configuration snapshots, use the &lt;code&gt;PutDeliveryChannel&lt;/code&gt; action.&lt;/p&gt;
-- @param deliveryFrequency [MaximumExecutionFrequency] &lt;p&gt;The frequency with which AWS Config delivers configuration snapshots.&lt;/p&gt;
function M.ConfigSnapshotDeliveryProperties(deliveryFrequency, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConfigSnapshotDeliveryProperties")
	local t = { 
		["deliveryFrequency"] = deliveryFrequency,
	}
	M.AssertConfigSnapshotDeliveryProperties(t)
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
-- &lt;p&gt;The requested action is not valid.&lt;/p&gt;
function M.ValidationException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ValidationException")
	local t = { 
	}
	M.AssertValidationException(t)
	return t
end

local EvaluationResultQualifier_keys = { "ResourceType" = true, "ResourceId" = true, "ConfigRuleName" = true, nil }

function M.AssertEvaluationResultQualifier(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EvaluationResultQualifier to be of type 'table'")
	if struct["ResourceType"] then M.AssertStringWithCharLimit256(struct["ResourceType"]) end
	if struct["ResourceId"] then M.AssertStringWithCharLimit256(struct["ResourceId"]) end
	if struct["ConfigRuleName"] then M.AssertStringWithCharLimit64(struct["ConfigRuleName"]) end
	for k,_ in pairs(struct) do
		assert(EvaluationResultQualifier_keys[k], "EvaluationResultQualifier contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EvaluationResultQualifier
-- &lt;p&gt;Identifies an AWS Config rule that evaluated an AWS resource, and provides the type and ID of the resource that the rule evaluated.&lt;/p&gt;
-- @param ResourceType [StringWithCharLimit256] &lt;p&gt;The type of AWS resource that was evaluated.&lt;/p&gt;
-- @param ResourceId [StringWithCharLimit256] &lt;p&gt;The ID of the evaluated AWS resource.&lt;/p&gt;
-- @param ConfigRuleName [StringWithCharLimit64] &lt;p&gt;The name of the AWS Config rule that was used in the evaluation.&lt;/p&gt;
function M.EvaluationResultQualifier(ResourceType, ResourceId, ConfigRuleName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EvaluationResultQualifier")
	local t = { 
		["ResourceType"] = ResourceType,
		["ResourceId"] = ResourceId,
		["ConfigRuleName"] = ConfigRuleName,
	}
	M.AssertEvaluationResultQualifier(t)
	return t
end

local DescribeComplianceByConfigRuleRequest_keys = { "ComplianceTypes" = true, "NextToken" = true, "ConfigRuleNames" = true, nil }

function M.AssertDescribeComplianceByConfigRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeComplianceByConfigRuleRequest to be of type 'table'")
	if struct["ComplianceTypes"] then M.AssertComplianceTypes(struct["ComplianceTypes"]) end
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	if struct["ConfigRuleNames"] then M.AssertConfigRuleNames(struct["ConfigRuleNames"]) end
	for k,_ in pairs(struct) do
		assert(DescribeComplianceByConfigRuleRequest_keys[k], "DescribeComplianceByConfigRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeComplianceByConfigRuleRequest
-- &lt;p/&gt;
-- @param ComplianceTypes [ComplianceTypes] &lt;p&gt;Filters the results by compliance.&lt;/p&gt; &lt;p&gt;The allowed values are &lt;code&gt;COMPLIANT&lt;/code&gt;, &lt;code&gt;NON_COMPLIANT&lt;/code&gt;, and &lt;code&gt;INSUFFICIENT_DATA&lt;/code&gt;.&lt;/p&gt;
-- @param NextToken [String] &lt;p&gt;The &lt;code&gt;NextToken&lt;/code&gt; string returned on a previous page that you use to get the next page of results in a paginated response.&lt;/p&gt;
-- @param ConfigRuleNames [ConfigRuleNames] &lt;p&gt;Specify one or more AWS Config rule names to filter the results by rule.&lt;/p&gt;
function M.DescribeComplianceByConfigRuleRequest(ComplianceTypes, NextToken, ConfigRuleNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeComplianceByConfigRuleRequest")
	local t = { 
		["ComplianceTypes"] = ComplianceTypes,
		["NextToken"] = NextToken,
		["ConfigRuleNames"] = ConfigRuleNames,
	}
	M.AssertDescribeComplianceByConfigRuleRequest(t)
	return t
end

local Evaluation_keys = { "OrderingTimestamp" = true, "ComplianceResourceId" = true, "ComplianceResourceType" = true, "Annotation" = true, "ComplianceType" = true, nil }

function M.AssertEvaluation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Evaluation to be of type 'table'")
	assert(struct["ComplianceResourceType"], "Expected key ComplianceResourceType to exist in table")
	assert(struct["ComplianceResourceId"], "Expected key ComplianceResourceId to exist in table")
	assert(struct["ComplianceType"], "Expected key ComplianceType to exist in table")
	assert(struct["OrderingTimestamp"], "Expected key OrderingTimestamp to exist in table")
	if struct["OrderingTimestamp"] then M.AssertOrderingTimestamp(struct["OrderingTimestamp"]) end
	if struct["ComplianceResourceId"] then M.AssertStringWithCharLimit256(struct["ComplianceResourceId"]) end
	if struct["ComplianceResourceType"] then M.AssertStringWithCharLimit256(struct["ComplianceResourceType"]) end
	if struct["Annotation"] then M.AssertStringWithCharLimit256(struct["Annotation"]) end
	if struct["ComplianceType"] then M.AssertComplianceType(struct["ComplianceType"]) end
	for k,_ in pairs(struct) do
		assert(Evaluation_keys[k], "Evaluation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Evaluation
-- &lt;p&gt;Identifies an AWS resource and indicates whether it complies with the AWS Config rule that it was evaluated against.&lt;/p&gt;
-- @param OrderingTimestamp [OrderingTimestamp] &lt;p&gt;The time of the event in AWS Config that triggered the evaluation. For event-based evaluations, the time indicates when AWS Config created the configuration item that triggered the evaluation. For periodic evaluations, the time indicates when AWS Config triggered the evaluation at the frequency that you specified (for example, every 24 hours).&lt;/p&gt;
-- @param ComplianceResourceId [StringWithCharLimit256] &lt;p&gt;The ID of the AWS resource that was evaluated.&lt;/p&gt;
-- @param ComplianceResourceType [StringWithCharLimit256] &lt;p&gt;The type of AWS resource that was evaluated.&lt;/p&gt;
-- @param Annotation [StringWithCharLimit256] &lt;p&gt;Supplementary information about how the evaluation determined the compliance.&lt;/p&gt;
-- @param ComplianceType [ComplianceType] &lt;p&gt;Indicates whether the AWS resource complies with the AWS Config rule that it was evaluated against.&lt;/p&gt; &lt;p&gt;For the &lt;code&gt;Evaluation&lt;/code&gt; data type, AWS Config supports only the &lt;code&gt;COMPLIANT&lt;/code&gt;, &lt;code&gt;NON_COMPLIANT&lt;/code&gt;, and &lt;code&gt;NOT_APPLICABLE&lt;/code&gt; values. AWS Config does not support the &lt;code&gt;INSUFFICIENT_DATA&lt;/code&gt; value for this data type.&lt;/p&gt; &lt;p&gt;Similarly, AWS Config does not accept &lt;code&gt;INSUFFICIENT_DATA&lt;/code&gt; as the value for &lt;code&gt;ComplianceType&lt;/code&gt; from a &lt;code&gt;PutEvaluations&lt;/code&gt; request. For example, an AWS Lambda function for a custom Config rule cannot pass an &lt;code&gt;INSUFFICIENT_DATA&lt;/code&gt; value to AWS Config.&lt;/p&gt;
-- Required parameter: ComplianceResourceType
-- Required parameter: ComplianceResourceId
-- Required parameter: ComplianceType
-- Required parameter: OrderingTimestamp
function M.Evaluation(OrderingTimestamp, ComplianceResourceId, ComplianceResourceType, Annotation, ComplianceType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Evaluation")
	local t = { 
		["OrderingTimestamp"] = OrderingTimestamp,
		["ComplianceResourceId"] = ComplianceResourceId,
		["ComplianceResourceType"] = ComplianceResourceType,
		["Annotation"] = Annotation,
		["ComplianceType"] = ComplianceType,
	}
	M.AssertEvaluation(t)
	return t
end

local DeleteDeliveryChannelRequest_keys = { "DeliveryChannelName" = true, nil }

function M.AssertDeleteDeliveryChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDeliveryChannelRequest to be of type 'table'")
	assert(struct["DeliveryChannelName"], "Expected key DeliveryChannelName to exist in table")
	if struct["DeliveryChannelName"] then M.AssertChannelName(struct["DeliveryChannelName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteDeliveryChannelRequest_keys[k], "DeleteDeliveryChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDeliveryChannelRequest
-- &lt;p&gt;The input for the &lt;a&gt;DeleteDeliveryChannel&lt;/a&gt; action. The action accepts the following data in JSON format. &lt;/p&gt;
-- @param DeliveryChannelName [ChannelName] &lt;p&gt;The name of the delivery channel to delete.&lt;/p&gt;
-- Required parameter: DeliveryChannelName
function M.DeleteDeliveryChannelRequest(DeliveryChannelName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDeliveryChannelRequest")
	local t = { 
		["DeliveryChannelName"] = DeliveryChannelName,
	}
	M.AssertDeleteDeliveryChannelRequest(t)
	return t
end

local InsufficientDeliveryPolicyException_keys = { nil }

function M.AssertInsufficientDeliveryPolicyException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InsufficientDeliveryPolicyException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InsufficientDeliveryPolicyException_keys[k], "InsufficientDeliveryPolicyException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InsufficientDeliveryPolicyException
-- &lt;p&gt;Your Amazon S3 bucket policy does not permit AWS Config to write to it.&lt;/p&gt;
function M.InsufficientDeliveryPolicyException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InsufficientDeliveryPolicyException")
	local t = { 
	}
	M.AssertInsufficientDeliveryPolicyException(t)
	return t
end

local ResourceInUseException_keys = { nil }

function M.AssertResourceInUseException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceInUseException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ResourceInUseException_keys[k], "ResourceInUseException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceInUseException
-- &lt;p&gt;The rule is currently being deleted or the rule is deleting your evaluation results. Try your request again later.&lt;/p&gt;
function M.ResourceInUseException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceInUseException")
	local t = { 
	}
	M.AssertResourceInUseException(t)
	return t
end

local DescribeConfigurationRecordersResponse_keys = { "ConfigurationRecorders" = true, nil }

function M.AssertDescribeConfigurationRecordersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeConfigurationRecordersResponse to be of type 'table'")
	if struct["ConfigurationRecorders"] then M.AssertConfigurationRecorderList(struct["ConfigurationRecorders"]) end
	for k,_ in pairs(struct) do
		assert(DescribeConfigurationRecordersResponse_keys[k], "DescribeConfigurationRecordersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeConfigurationRecordersResponse
-- &lt;p&gt;The output for the &lt;a&gt;DescribeConfigurationRecorders&lt;/a&gt; action.&lt;/p&gt;
-- @param ConfigurationRecorders [ConfigurationRecorderList] &lt;p&gt;A list that contains the descriptions of the specified configuration recorders.&lt;/p&gt;
function M.DescribeConfigurationRecordersResponse(ConfigurationRecorders, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeConfigurationRecordersResponse")
	local t = { 
		["ConfigurationRecorders"] = ConfigurationRecorders,
	}
	M.AssertDescribeConfigurationRecordersResponse(t)
	return t
end

local DescribeConfigRuleEvaluationStatusResponse_keys = { "NextToken" = true, "ConfigRulesEvaluationStatus" = true, nil }

function M.AssertDescribeConfigRuleEvaluationStatusResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeConfigRuleEvaluationStatusResponse to be of type 'table'")
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	if struct["ConfigRulesEvaluationStatus"] then M.AssertConfigRuleEvaluationStatusList(struct["ConfigRulesEvaluationStatus"]) end
	for k,_ in pairs(struct) do
		assert(DescribeConfigRuleEvaluationStatusResponse_keys[k], "DescribeConfigRuleEvaluationStatusResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeConfigRuleEvaluationStatusResponse
-- &lt;p/&gt;
-- @param NextToken [String] &lt;p&gt;The string that you use in a subsequent request to get the next page of results in a paginated response.&lt;/p&gt;
-- @param ConfigRulesEvaluationStatus [ConfigRuleEvaluationStatusList] &lt;p&gt;Status information about your AWS managed Config rules.&lt;/p&gt;
function M.DescribeConfigRuleEvaluationStatusResponse(NextToken, ConfigRulesEvaluationStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeConfigRuleEvaluationStatusResponse")
	local t = { 
		["NextToken"] = NextToken,
		["ConfigRulesEvaluationStatus"] = ConfigRulesEvaluationStatus,
	}
	M.AssertDescribeConfigRuleEvaluationStatusResponse(t)
	return t
end

local ComplianceSummary_keys = { "NonCompliantResourceCount" = true, "ComplianceSummaryTimestamp" = true, "CompliantResourceCount" = true, nil }

function M.AssertComplianceSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ComplianceSummary to be of type 'table'")
	if struct["NonCompliantResourceCount"] then M.AssertComplianceContributorCount(struct["NonCompliantResourceCount"]) end
	if struct["ComplianceSummaryTimestamp"] then M.AssertDate(struct["ComplianceSummaryTimestamp"]) end
	if struct["CompliantResourceCount"] then M.AssertComplianceContributorCount(struct["CompliantResourceCount"]) end
	for k,_ in pairs(struct) do
		assert(ComplianceSummary_keys[k], "ComplianceSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ComplianceSummary
-- &lt;p&gt;The number of AWS Config rules or AWS resources that are compliant and noncompliant.&lt;/p&gt;
-- @param NonCompliantResourceCount [ComplianceContributorCount] &lt;p&gt;The number of AWS Config rules or AWS resources that are noncompliant, up to a maximum of 25 for rules and 100 for resources.&lt;/p&gt;
-- @param ComplianceSummaryTimestamp [Date] &lt;p&gt;The time that AWS Config created the compliance summary.&lt;/p&gt;
-- @param CompliantResourceCount [ComplianceContributorCount] &lt;p&gt;The number of AWS Config rules or AWS resources that are compliant, up to a maximum of 25 for rules and 100 for resources.&lt;/p&gt;
function M.ComplianceSummary(NonCompliantResourceCount, ComplianceSummaryTimestamp, CompliantResourceCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ComplianceSummary")
	local t = { 
		["NonCompliantResourceCount"] = NonCompliantResourceCount,
		["ComplianceSummaryTimestamp"] = ComplianceSummaryTimestamp,
		["CompliantResourceCount"] = CompliantResourceCount,
	}
	M.AssertComplianceSummary(t)
	return t
end

local InvalidRecordingGroupException_keys = { nil }

function M.AssertInvalidRecordingGroupException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRecordingGroupException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidRecordingGroupException_keys[k], "InvalidRecordingGroupException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRecordingGroupException
-- &lt;p&gt;AWS Config throws an exception if the recording group does not contain a valid list of resource types. Invalid values could also be incorrectly formatted.&lt;/p&gt;
function M.InvalidRecordingGroupException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidRecordingGroupException")
	local t = { 
	}
	M.AssertInvalidRecordingGroupException(t)
	return t
end

local DeleteConfigRuleRequest_keys = { "ConfigRuleName" = true, nil }

function M.AssertDeleteConfigRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteConfigRuleRequest to be of type 'table'")
	assert(struct["ConfigRuleName"], "Expected key ConfigRuleName to exist in table")
	if struct["ConfigRuleName"] then M.AssertStringWithCharLimit64(struct["ConfigRuleName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteConfigRuleRequest_keys[k], "DeleteConfigRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteConfigRuleRequest
-- &lt;p/&gt;
-- @param ConfigRuleName [StringWithCharLimit64] &lt;p&gt;The name of the AWS Config rule that you want to delete.&lt;/p&gt;
-- Required parameter: ConfigRuleName
function M.DeleteConfigRuleRequest(ConfigRuleName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteConfigRuleRequest")
	local t = { 
		["ConfigRuleName"] = ConfigRuleName,
	}
	M.AssertDeleteConfigRuleRequest(t)
	return t
end

local GetComplianceDetailsByConfigRuleRequest_keys = { "NextToken" = true, "ComplianceTypes" = true, "Limit" = true, "ConfigRuleName" = true, nil }

function M.AssertGetComplianceDetailsByConfigRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetComplianceDetailsByConfigRuleRequest to be of type 'table'")
	assert(struct["ConfigRuleName"], "Expected key ConfigRuleName to exist in table")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["ComplianceTypes"] then M.AssertComplianceTypes(struct["ComplianceTypes"]) end
	if struct["Limit"] then M.AssertLimit(struct["Limit"]) end
	if struct["ConfigRuleName"] then M.AssertStringWithCharLimit64(struct["ConfigRuleName"]) end
	for k,_ in pairs(struct) do
		assert(GetComplianceDetailsByConfigRuleRequest_keys[k], "GetComplianceDetailsByConfigRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetComplianceDetailsByConfigRuleRequest
-- &lt;p/&gt;
-- @param NextToken [NextToken] &lt;p&gt;The &lt;code&gt;NextToken&lt;/code&gt; string returned on a previous page that you use to get the next page of results in a paginated response.&lt;/p&gt;
-- @param ComplianceTypes [ComplianceTypes] &lt;p&gt;Filters the results by compliance.&lt;/p&gt; &lt;p&gt;The allowed values are &lt;code&gt;COMPLIANT&lt;/code&gt;, &lt;code&gt;NON_COMPLIANT&lt;/code&gt;, and &lt;code&gt;NOT_APPLICABLE&lt;/code&gt;.&lt;/p&gt;
-- @param Limit [Limit] &lt;p&gt;The maximum number of evaluation results returned on each page. The default is 10. You cannot specify a limit greater than 100. If you specify 0, AWS Config uses the default.&lt;/p&gt;
-- @param ConfigRuleName [StringWithCharLimit64] &lt;p&gt;The name of the AWS Config rule for which you want compliance information.&lt;/p&gt;
-- Required parameter: ConfigRuleName
function M.GetComplianceDetailsByConfigRuleRequest(NextToken, ComplianceTypes, Limit, ConfigRuleName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetComplianceDetailsByConfigRuleRequest")
	local t = { 
		["NextToken"] = NextToken,
		["ComplianceTypes"] = ComplianceTypes,
		["Limit"] = Limit,
		["ConfigRuleName"] = ConfigRuleName,
	}
	M.AssertGetComplianceDetailsByConfigRuleRequest(t)
	return t
end

local StopConfigurationRecorderRequest_keys = { "ConfigurationRecorderName" = true, nil }

function M.AssertStopConfigurationRecorderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopConfigurationRecorderRequest to be of type 'table'")
	assert(struct["ConfigurationRecorderName"], "Expected key ConfigurationRecorderName to exist in table")
	if struct["ConfigurationRecorderName"] then M.AssertRecorderName(struct["ConfigurationRecorderName"]) end
	for k,_ in pairs(struct) do
		assert(StopConfigurationRecorderRequest_keys[k], "StopConfigurationRecorderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopConfigurationRecorderRequest
-- &lt;p&gt;The input for the &lt;a&gt;StopConfigurationRecorder&lt;/a&gt; action.&lt;/p&gt;
-- @param ConfigurationRecorderName [RecorderName] &lt;p&gt;The name of the recorder object that records each configuration change made to the resources.&lt;/p&gt;
-- Required parameter: ConfigurationRecorderName
function M.StopConfigurationRecorderRequest(ConfigurationRecorderName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopConfigurationRecorderRequest")
	local t = { 
		["ConfigurationRecorderName"] = ConfigurationRecorderName,
	}
	M.AssertStopConfigurationRecorderRequest(t)
	return t
end

local InvalidParameterValueException_keys = { nil }

function M.AssertInvalidParameterValueException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterValueException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidParameterValueException_keys[k], "InvalidParameterValueException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterValueException
-- &lt;p&gt;One or more of the specified parameters are invalid. Verify that your parameters are valid and try again.&lt;/p&gt;
function M.InvalidParameterValueException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidParameterValueException")
	local t = { 
	}
	M.AssertInvalidParameterValueException(t)
	return t
end

local GetResourceConfigHistoryRequest_keys = { "resourceType" = true, "resourceId" = true, "laterTime" = true, "chronologicalOrder" = true, "limit" = true, "nextToken" = true, "earlierTime" = true, nil }

function M.AssertGetResourceConfigHistoryRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetResourceConfigHistoryRequest to be of type 'table'")
	assert(struct["resourceType"], "Expected key resourceType to exist in table")
	assert(struct["resourceId"], "Expected key resourceId to exist in table")
	if struct["resourceType"] then M.AssertResourceType(struct["resourceType"]) end
	if struct["resourceId"] then M.AssertResourceId(struct["resourceId"]) end
	if struct["laterTime"] then M.AssertLaterTime(struct["laterTime"]) end
	if struct["chronologicalOrder"] then M.AssertChronologicalOrder(struct["chronologicalOrder"]) end
	if struct["limit"] then M.AssertLimit(struct["limit"]) end
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["earlierTime"] then M.AssertEarlierTime(struct["earlierTime"]) end
	for k,_ in pairs(struct) do
		assert(GetResourceConfigHistoryRequest_keys[k], "GetResourceConfigHistoryRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetResourceConfigHistoryRequest
-- &lt;p&gt;The input for the &lt;a&gt;GetResourceConfigHistory&lt;/a&gt; action.&lt;/p&gt;
-- @param resourceType [ResourceType] &lt;p&gt;The resource type.&lt;/p&gt;
-- @param resourceId [ResourceId] &lt;p&gt;The ID of the resource (for example., &lt;code&gt;sg-xxxxxx&lt;/code&gt;).&lt;/p&gt;
-- @param laterTime [LaterTime] &lt;p&gt;The time stamp that indicates a later time. If not specified, current time is taken.&lt;/p&gt;
-- @param chronologicalOrder [ChronologicalOrder] &lt;p&gt;The chronological order for configuration items listed. By default the results are listed in reverse chronological order.&lt;/p&gt;
-- @param limit [Limit] &lt;p&gt;The maximum number of configuration items returned on each page. The default is 10. You cannot specify a limit greater than 100. If you specify 0, AWS Config uses the default.&lt;/p&gt;
-- @param nextToken [NextToken] &lt;p&gt;The &lt;code&gt;nextToken&lt;/code&gt; string returned on a previous page that you use to get the next page of results in a paginated response.&lt;/p&gt;
-- @param earlierTime [EarlierTime] &lt;p&gt;The time stamp that indicates an earlier time. If not specified, the action returns paginated results that contain configuration items that start from when the first configuration item was recorded.&lt;/p&gt;
-- Required parameter: resourceType
-- Required parameter: resourceId
function M.GetResourceConfigHistoryRequest(resourceType, resourceId, laterTime, chronologicalOrder, limit, nextToken, earlierTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetResourceConfigHistoryRequest")
	local t = { 
		["resourceType"] = resourceType,
		["resourceId"] = resourceId,
		["laterTime"] = laterTime,
		["chronologicalOrder"] = chronologicalOrder,
		["limit"] = limit,
		["nextToken"] = nextToken,
		["earlierTime"] = earlierTime,
	}
	M.AssertGetResourceConfigHistoryRequest(t)
	return t
end

local ConfigurationRecorderStatus_keys = { "name" = true, "lastErrorMessage" = true, "lastStatus" = true, "recording" = true, "lastStatusChangeTime" = true, "lastStartTime" = true, "lastErrorCode" = true, "lastStopTime" = true, nil }

function M.AssertConfigurationRecorderStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfigurationRecorderStatus to be of type 'table'")
	if struct["name"] then M.AssertString(struct["name"]) end
	if struct["lastErrorMessage"] then M.AssertString(struct["lastErrorMessage"]) end
	if struct["lastStatus"] then M.AssertRecorderStatus(struct["lastStatus"]) end
	if struct["recording"] then M.AssertBoolean(struct["recording"]) end
	if struct["lastStatusChangeTime"] then M.AssertDate(struct["lastStatusChangeTime"]) end
	if struct["lastStartTime"] then M.AssertDate(struct["lastStartTime"]) end
	if struct["lastErrorCode"] then M.AssertString(struct["lastErrorCode"]) end
	if struct["lastStopTime"] then M.AssertDate(struct["lastStopTime"]) end
	for k,_ in pairs(struct) do
		assert(ConfigurationRecorderStatus_keys[k], "ConfigurationRecorderStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfigurationRecorderStatus
-- &lt;p&gt;The current status of the configuration recorder.&lt;/p&gt;
-- @param name [String] &lt;p&gt;The name of the configuration recorder.&lt;/p&gt;
-- @param lastErrorMessage [String] &lt;p&gt;The message indicating that the recording failed due to an error.&lt;/p&gt;
-- @param lastStatus [RecorderStatus] &lt;p&gt;The last (previous) status of the recorder.&lt;/p&gt;
-- @param recording [Boolean] &lt;p&gt;Specifies whether the recorder is currently recording or not.&lt;/p&gt;
-- @param lastStatusChangeTime [Date] &lt;p&gt;The time when the status was last changed.&lt;/p&gt;
-- @param lastStartTime [Date] &lt;p&gt;The time the recorder was last started.&lt;/p&gt;
-- @param lastErrorCode [String] &lt;p&gt;The error code indicating that the recording failed.&lt;/p&gt;
-- @param lastStopTime [Date] &lt;p&gt;The time the recorder was last stopped.&lt;/p&gt;
function M.ConfigurationRecorderStatus(name, lastErrorMessage, lastStatus, recording, lastStatusChangeTime, lastStartTime, lastErrorCode, lastStopTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConfigurationRecorderStatus")
	local t = { 
		["name"] = name,
		["lastErrorMessage"] = lastErrorMessage,
		["lastStatus"] = lastStatus,
		["recording"] = recording,
		["lastStatusChangeTime"] = lastStatusChangeTime,
		["lastStartTime"] = lastStartTime,
		["lastErrorCode"] = lastErrorCode,
		["lastStopTime"] = lastStopTime,
	}
	M.AssertConfigurationRecorderStatus(t)
	return t
end

local ConfigExportDeliveryInfo_keys = { "lastSuccessfulTime" = true, "lastStatus" = true, "lastAttemptTime" = true, "nextDeliveryTime" = true, "lastErrorCode" = true, "lastErrorMessage" = true, nil }

function M.AssertConfigExportDeliveryInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfigExportDeliveryInfo to be of type 'table'")
	if struct["lastSuccessfulTime"] then M.AssertDate(struct["lastSuccessfulTime"]) end
	if struct["lastStatus"] then M.AssertDeliveryStatus(struct["lastStatus"]) end
	if struct["lastAttemptTime"] then M.AssertDate(struct["lastAttemptTime"]) end
	if struct["nextDeliveryTime"] then M.AssertDate(struct["nextDeliveryTime"]) end
	if struct["lastErrorCode"] then M.AssertString(struct["lastErrorCode"]) end
	if struct["lastErrorMessage"] then M.AssertString(struct["lastErrorMessage"]) end
	for k,_ in pairs(struct) do
		assert(ConfigExportDeliveryInfo_keys[k], "ConfigExportDeliveryInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfigExportDeliveryInfo
-- &lt;p&gt;A list that contains the status of the delivery of either the snapshot or the configuration history to the specified Amazon S3 bucket.&lt;/p&gt;
-- @param lastSuccessfulTime [Date] &lt;p&gt;The time of the last successful delivery.&lt;/p&gt;
-- @param lastStatus [DeliveryStatus] &lt;p&gt;Status of the last attempted delivery.&lt;/p&gt;
-- @param lastAttemptTime [Date] &lt;p&gt;The time of the last attempted delivery.&lt;/p&gt;
-- @param nextDeliveryTime [Date] &lt;p&gt;The time that the next delivery occurs.&lt;/p&gt;
-- @param lastErrorCode [String] &lt;p&gt;The error code from the last attempted delivery.&lt;/p&gt;
-- @param lastErrorMessage [String] &lt;p&gt;The error message from the last attempted delivery.&lt;/p&gt;
function M.ConfigExportDeliveryInfo(lastSuccessfulTime, lastStatus, lastAttemptTime, nextDeliveryTime, lastErrorCode, lastErrorMessage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConfigExportDeliveryInfo")
	local t = { 
		["lastSuccessfulTime"] = lastSuccessfulTime,
		["lastStatus"] = lastStatus,
		["lastAttemptTime"] = lastAttemptTime,
		["nextDeliveryTime"] = nextDeliveryTime,
		["lastErrorCode"] = lastErrorCode,
		["lastErrorMessage"] = lastErrorMessage,
	}
	M.AssertConfigExportDeliveryInfo(t)
	return t
end

local Scope_keys = { "TagKey" = true, "ComplianceResourceId" = true, "ComplianceResourceTypes" = true, "TagValue" = true, nil }

function M.AssertScope(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Scope to be of type 'table'")
	if struct["TagKey"] then M.AssertStringWithCharLimit128(struct["TagKey"]) end
	if struct["ComplianceResourceId"] then M.AssertStringWithCharLimit256(struct["ComplianceResourceId"]) end
	if struct["ComplianceResourceTypes"] then M.AssertComplianceResourceTypes(struct["ComplianceResourceTypes"]) end
	if struct["TagValue"] then M.AssertStringWithCharLimit256(struct["TagValue"]) end
	for k,_ in pairs(struct) do
		assert(Scope_keys[k], "Scope contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Scope
-- &lt;p&gt;Defines which resources trigger an evaluation for an AWS Config rule. The scope can include one or more resource types, a combination of a tag key and value, or a combination of one resource type and one resource ID. Specify a scope to constrain which resources trigger an evaluation for a rule. Otherwise, evaluations for the rule are triggered when any resource in your recording group changes in configuration.&lt;/p&gt;
-- @param TagKey [StringWithCharLimit128] &lt;p&gt;The tag key that is applied to only those AWS resources that you want you want to trigger an evaluation for the rule.&lt;/p&gt;
-- @param ComplianceResourceId [StringWithCharLimit256] &lt;p&gt;The IDs of the only AWS resource that you want to trigger an evaluation for the rule. If you specify a resource ID, you must specify one resource type for &lt;code&gt;ComplianceResourceTypes&lt;/code&gt;.&lt;/p&gt;
-- @param ComplianceResourceTypes [ComplianceResourceTypes] &lt;p&gt;The resource types of only those AWS resources that you want to trigger an evaluation for the rule. You can only specify one type if you also specify a resource ID for &lt;code&gt;ComplianceResourceId&lt;/code&gt;.&lt;/p&gt;
-- @param TagValue [StringWithCharLimit256] &lt;p&gt;The tag value applied to only those AWS resources that you want to trigger an evaluation for the rule. If you specify a value for &lt;code&gt;TagValue&lt;/code&gt;, you must also specify a value for &lt;code&gt;TagKey&lt;/code&gt;.&lt;/p&gt;
function M.Scope(TagKey, ComplianceResourceId, ComplianceResourceTypes, TagValue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Scope")
	local t = { 
		["TagKey"] = TagKey,
		["ComplianceResourceId"] = ComplianceResourceId,
		["ComplianceResourceTypes"] = ComplianceResourceTypes,
		["TagValue"] = TagValue,
	}
	M.AssertScope(t)
	return t
end

local InvalidSNSTopicARNException_keys = { nil }

function M.AssertInvalidSNSTopicARNException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidSNSTopicARNException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidSNSTopicARNException_keys[k], "InvalidSNSTopicARNException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidSNSTopicARNException
-- &lt;p&gt;The specified Amazon SNS topic does not exist.&lt;/p&gt;
function M.InvalidSNSTopicARNException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidSNSTopicARNException")
	local t = { 
	}
	M.AssertInvalidSNSTopicARNException(t)
	return t
end

local MaxNumberOfDeliveryChannelsExceededException_keys = { nil }

function M.AssertMaxNumberOfDeliveryChannelsExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MaxNumberOfDeliveryChannelsExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(MaxNumberOfDeliveryChannelsExceededException_keys[k], "MaxNumberOfDeliveryChannelsExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MaxNumberOfDeliveryChannelsExceededException
-- &lt;p&gt;You have reached the limit on the number of delivery channels you can create.&lt;/p&gt;
function M.MaxNumberOfDeliveryChannelsExceededException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating MaxNumberOfDeliveryChannelsExceededException")
	local t = { 
	}
	M.AssertMaxNumberOfDeliveryChannelsExceededException(t)
	return t
end

local ComplianceByResource_keys = { "ResourceType" = true, "ResourceId" = true, "Compliance" = true, nil }

function M.AssertComplianceByResource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ComplianceByResource to be of type 'table'")
	if struct["ResourceType"] then M.AssertStringWithCharLimit256(struct["ResourceType"]) end
	if struct["ResourceId"] then M.AssertStringWithCharLimit256(struct["ResourceId"]) end
	if struct["Compliance"] then M.AssertCompliance(struct["Compliance"]) end
	for k,_ in pairs(struct) do
		assert(ComplianceByResource_keys[k], "ComplianceByResource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ComplianceByResource
-- &lt;p&gt;Indicates whether an AWS resource that is evaluated according to one or more AWS Config rules is compliant. A resource is compliant if it complies with all of the rules that evaluate it, and it is noncompliant if it does not comply with one or more of these rules.&lt;/p&gt;
-- @param ResourceType [StringWithCharLimit256] &lt;p&gt;The type of the AWS resource that was evaluated.&lt;/p&gt;
-- @param ResourceId [StringWithCharLimit256] &lt;p&gt;The ID of the AWS resource that was evaluated.&lt;/p&gt;
-- @param Compliance [Compliance] &lt;p&gt;Indicates whether the AWS resource complies with all of the AWS Config rules that evaluated it.&lt;/p&gt;
function M.ComplianceByResource(ResourceType, ResourceId, Compliance, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ComplianceByResource")
	local t = { 
		["ResourceType"] = ResourceType,
		["ResourceId"] = ResourceId,
		["Compliance"] = Compliance,
	}
	M.AssertComplianceByResource(t)
	return t
end

local EvaluationResult_keys = { "ComplianceType" = true, "EvaluationResultIdentifier" = true, "ConfigRuleInvokedTime" = true, "ResultToken" = true, "ResultRecordedTime" = true, "Annotation" = true, nil }

function M.AssertEvaluationResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EvaluationResult to be of type 'table'")
	if struct["ComplianceType"] then M.AssertComplianceType(struct["ComplianceType"]) end
	if struct["EvaluationResultIdentifier"] then M.AssertEvaluationResultIdentifier(struct["EvaluationResultIdentifier"]) end
	if struct["ConfigRuleInvokedTime"] then M.AssertDate(struct["ConfigRuleInvokedTime"]) end
	if struct["ResultToken"] then M.AssertString(struct["ResultToken"]) end
	if struct["ResultRecordedTime"] then M.AssertDate(struct["ResultRecordedTime"]) end
	if struct["Annotation"] then M.AssertStringWithCharLimit256(struct["Annotation"]) end
	for k,_ in pairs(struct) do
		assert(EvaluationResult_keys[k], "EvaluationResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EvaluationResult
-- &lt;p&gt;The details of an AWS Config evaluation. Provides the AWS resource that was evaluated, the compliance of the resource, related timestamps, and supplementary information.&lt;/p&gt;
-- @param ComplianceType [ComplianceType] &lt;p&gt;Indicates whether the AWS resource complies with the AWS Config rule that evaluated it.&lt;/p&gt; &lt;p&gt;For the &lt;code&gt;EvaluationResult&lt;/code&gt; data type, AWS Config supports only the &lt;code&gt;COMPLIANT&lt;/code&gt;, &lt;code&gt;NON_COMPLIANT&lt;/code&gt;, and &lt;code&gt;NOT_APPLICABLE&lt;/code&gt; values. AWS Config does not support the &lt;code&gt;INSUFFICIENT_DATA&lt;/code&gt; value for the &lt;code&gt;EvaluationResult&lt;/code&gt; data type.&lt;/p&gt;
-- @param EvaluationResultIdentifier [EvaluationResultIdentifier] &lt;p&gt;Uniquely identifies the evaluation result.&lt;/p&gt;
-- @param ConfigRuleInvokedTime [Date] &lt;p&gt;The time when the AWS Config rule evaluated the AWS resource.&lt;/p&gt;
-- @param ResultToken [String] &lt;p&gt;An encrypted token that associates an evaluation with an AWS Config rule. The token identifies the rule, the AWS resource being evaluated, and the event that triggered the evaluation.&lt;/p&gt;
-- @param ResultRecordedTime [Date] &lt;p&gt;The time when AWS Config recorded the evaluation result.&lt;/p&gt;
-- @param Annotation [StringWithCharLimit256] &lt;p&gt;Supplementary information about how the evaluation determined the compliance.&lt;/p&gt;
function M.EvaluationResult(ComplianceType, EvaluationResultIdentifier, ConfigRuleInvokedTime, ResultToken, ResultRecordedTime, Annotation, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EvaluationResult")
	local t = { 
		["ComplianceType"] = ComplianceType,
		["EvaluationResultIdentifier"] = EvaluationResultIdentifier,
		["ConfigRuleInvokedTime"] = ConfigRuleInvokedTime,
		["ResultToken"] = ResultToken,
		["ResultRecordedTime"] = ResultRecordedTime,
		["Annotation"] = Annotation,
	}
	M.AssertEvaluationResult(t)
	return t
end

local GetComplianceSummaryByConfigRuleResponse_keys = { "ComplianceSummary" = true, nil }

function M.AssertGetComplianceSummaryByConfigRuleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetComplianceSummaryByConfigRuleResponse to be of type 'table'")
	if struct["ComplianceSummary"] then M.AssertComplianceSummary(struct["ComplianceSummary"]) end
	for k,_ in pairs(struct) do
		assert(GetComplianceSummaryByConfigRuleResponse_keys[k], "GetComplianceSummaryByConfigRuleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetComplianceSummaryByConfigRuleResponse
-- &lt;p/&gt;
-- @param ComplianceSummary [ComplianceSummary] &lt;p&gt;The number of AWS Config rules that are compliant and the number that are noncompliant, up to a maximum of 25 for each.&lt;/p&gt;
function M.GetComplianceSummaryByConfigRuleResponse(ComplianceSummary, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetComplianceSummaryByConfigRuleResponse")
	local t = { 
		["ComplianceSummary"] = ComplianceSummary,
	}
	M.AssertGetComplianceSummaryByConfigRuleResponse(t)
	return t
end

local InvalidRoleException_keys = { nil }

function M.AssertInvalidRoleException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRoleException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidRoleException_keys[k], "InvalidRoleException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRoleException
-- &lt;p&gt;You have provided a null or empty role ARN.&lt;/p&gt;
function M.InvalidRoleException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidRoleException")
	local t = { 
	}
	M.AssertInvalidRoleException(t)
	return t
end

local ConfigurationItem_keys = { "configurationItemCaptureTime" = true, "resourceCreationTime" = true, "availabilityZone" = true, "awsRegion" = true, "tags" = true, "resourceType" = true, "resourceId" = true, "configurationStateId" = true, "relatedEvents" = true, "relationships" = true, "arn" = true, "version" = true, "configurationItemMD5Hash" = true, "supplementaryConfiguration" = true, "resourceName" = true, "configuration" = true, "configurationItemStatus" = true, "accountId" = true, nil }

function M.AssertConfigurationItem(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfigurationItem to be of type 'table'")
	if struct["configurationItemCaptureTime"] then M.AssertConfigurationItemCaptureTime(struct["configurationItemCaptureTime"]) end
	if struct["resourceCreationTime"] then M.AssertResourceCreationTime(struct["resourceCreationTime"]) end
	if struct["availabilityZone"] then M.AssertAvailabilityZone(struct["availabilityZone"]) end
	if struct["awsRegion"] then M.AssertAwsRegion(struct["awsRegion"]) end
	if struct["tags"] then M.AssertTags(struct["tags"]) end
	if struct["resourceType"] then M.AssertResourceType(struct["resourceType"]) end
	if struct["resourceId"] then M.AssertResourceId(struct["resourceId"]) end
	if struct["configurationStateId"] then M.AssertConfigurationStateId(struct["configurationStateId"]) end
	if struct["relatedEvents"] then M.AssertRelatedEventList(struct["relatedEvents"]) end
	if struct["relationships"] then M.AssertRelationshipList(struct["relationships"]) end
	if struct["arn"] then M.AssertARN(struct["arn"]) end
	if struct["version"] then M.AssertVersion(struct["version"]) end
	if struct["configurationItemMD5Hash"] then M.AssertConfigurationItemMD5Hash(struct["configurationItemMD5Hash"]) end
	if struct["supplementaryConfiguration"] then M.AssertSupplementaryConfiguration(struct["supplementaryConfiguration"]) end
	if struct["resourceName"] then M.AssertResourceName(struct["resourceName"]) end
	if struct["configuration"] then M.AssertConfiguration(struct["configuration"]) end
	if struct["configurationItemStatus"] then M.AssertConfigurationItemStatus(struct["configurationItemStatus"]) end
	if struct["accountId"] then M.AssertAccountId(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(ConfigurationItem_keys[k], "ConfigurationItem contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfigurationItem
-- &lt;p&gt;A list that contains detailed configurations of a specified resource.&lt;/p&gt;
-- @param configurationItemCaptureTime [ConfigurationItemCaptureTime] &lt;p&gt;The time when the configuration recording was initiated.&lt;/p&gt;
-- @param resourceCreationTime [ResourceCreationTime] &lt;p&gt;The time stamp when the resource was created.&lt;/p&gt;
-- @param availabilityZone [AvailabilityZone] &lt;p&gt;The Availability Zone associated with the resource.&lt;/p&gt;
-- @param awsRegion [AwsRegion] &lt;p&gt;The region where the resource resides.&lt;/p&gt;
-- @param tags [Tags] &lt;p&gt;A mapping of key value tags associated with the resource.&lt;/p&gt;
-- @param resourceType [ResourceType] &lt;p&gt;The type of AWS resource.&lt;/p&gt;
-- @param resourceId [ResourceId] &lt;p&gt;The ID of the resource (for example., &lt;code&gt;sg-xxxxxx&lt;/code&gt;).&lt;/p&gt;
-- @param configurationStateId [ConfigurationStateId] &lt;p&gt;An identifier that indicates the ordering of the configuration items of a resource.&lt;/p&gt;
-- @param relatedEvents [RelatedEventList] &lt;p&gt;A list of CloudTrail event IDs.&lt;/p&gt; &lt;p&gt;A populated field indicates that the current configuration was initiated by the events recorded in the CloudTrail log. For more information about CloudTrail, see &lt;a href=&quot;http://docs.aws.amazon.com/awscloudtrail/latest/userguide/what_is_cloud_trail_top_level.html&quot;&gt;What is AWS CloudTrail?&lt;/a&gt;.&lt;/p&gt; &lt;p&gt;An empty field indicates that the current configuration was not initiated by any event.&lt;/p&gt;
-- @param relationships [RelationshipList] &lt;p&gt;A list of related AWS resources.&lt;/p&gt;
-- @param arn [ARN] &lt;p&gt;The Amazon Resource Name (ARN) of the resource.&lt;/p&gt;
-- @param version [Version] &lt;p&gt;The version number of the resource configuration.&lt;/p&gt;
-- @param configurationItemMD5Hash [ConfigurationItemMD5Hash] &lt;p&gt;Unique MD5 hash that represents the configuration item's state.&lt;/p&gt; &lt;p&gt;You can use MD5 hash to compare the states of two or more configuration items that are associated with the same resource.&lt;/p&gt;
-- @param supplementaryConfiguration [SupplementaryConfiguration] &lt;p&gt;Configuration attributes that AWS Config returns for certain resource types to supplement the information returned for the &lt;code&gt;configuration&lt;/code&gt; parameter.&lt;/p&gt;
-- @param resourceName [ResourceName] &lt;p&gt;The custom name of the resource, if available.&lt;/p&gt;
-- @param configuration [Configuration] &lt;p&gt;The description of the resource configuration.&lt;/p&gt;
-- @param configurationItemStatus [ConfigurationItemStatus] &lt;p&gt;The configuration item status.&lt;/p&gt;
-- @param accountId [AccountId] &lt;p&gt;The 12 digit AWS account ID associated with the resource.&lt;/p&gt;
function M.ConfigurationItem(configurationItemCaptureTime, resourceCreationTime, availabilityZone, awsRegion, tags, resourceType, resourceId, configurationStateId, relatedEvents, relationships, arn, version, configurationItemMD5Hash, supplementaryConfiguration, resourceName, configuration, configurationItemStatus, accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConfigurationItem")
	local t = { 
		["configurationItemCaptureTime"] = configurationItemCaptureTime,
		["resourceCreationTime"] = resourceCreationTime,
		["availabilityZone"] = availabilityZone,
		["awsRegion"] = awsRegion,
		["tags"] = tags,
		["resourceType"] = resourceType,
		["resourceId"] = resourceId,
		["configurationStateId"] = configurationStateId,
		["relatedEvents"] = relatedEvents,
		["relationships"] = relationships,
		["arn"] = arn,
		["version"] = version,
		["configurationItemMD5Hash"] = configurationItemMD5Hash,
		["supplementaryConfiguration"] = supplementaryConfiguration,
		["resourceName"] = resourceName,
		["configuration"] = configuration,
		["configurationItemStatus"] = configurationItemStatus,
		["accountId"] = accountId,
	}
	M.AssertConfigurationItem(t)
	return t
end

local DescribeConfigRuleEvaluationStatusRequest_keys = { "NextToken" = true, "Limit" = true, "ConfigRuleNames" = true, nil }

function M.AssertDescribeConfigRuleEvaluationStatusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeConfigRuleEvaluationStatusRequest to be of type 'table'")
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	if struct["Limit"] then M.AssertRuleLimit(struct["Limit"]) end
	if struct["ConfigRuleNames"] then M.AssertConfigRuleNames(struct["ConfigRuleNames"]) end
	for k,_ in pairs(struct) do
		assert(DescribeConfigRuleEvaluationStatusRequest_keys[k], "DescribeConfigRuleEvaluationStatusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeConfigRuleEvaluationStatusRequest
-- &lt;p/&gt;
-- @param NextToken [String] &lt;p&gt;The &lt;code&gt;NextToken&lt;/code&gt; string returned on a previous page that you use to get the next page of results in a paginated response.&lt;/p&gt;
-- @param Limit [RuleLimit] &lt;p&gt;The number of rule evaluation results that you want returned.&lt;/p&gt; &lt;p&gt;This parameter is required if the rule limit for your account is more than the default of 50 rules.&lt;/p&gt; &lt;p&gt;For more information about requesting a rule limit increase, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_config&quot;&gt;AWS Config Limits&lt;/a&gt; in the &lt;i&gt;AWS General Reference Guide&lt;/i&gt;.&lt;/p&gt;
-- @param ConfigRuleNames [ConfigRuleNames] &lt;p&gt;The name of the AWS managed Config rules for which you want status information. If you do not specify any names, AWS Config returns status information for all AWS managed Config rules that you use.&lt;/p&gt;
function M.DescribeConfigRuleEvaluationStatusRequest(NextToken, Limit, ConfigRuleNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeConfigRuleEvaluationStatusRequest")
	local t = { 
		["NextToken"] = NextToken,
		["Limit"] = Limit,
		["ConfigRuleNames"] = ConfigRuleNames,
	}
	M.AssertDescribeConfigRuleEvaluationStatusRequest(t)
	return t
end

local GetComplianceDetailsByConfigRuleResponse_keys = { "EvaluationResults" = true, "NextToken" = true, nil }

function M.AssertGetComplianceDetailsByConfigRuleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetComplianceDetailsByConfigRuleResponse to be of type 'table'")
	if struct["EvaluationResults"] then M.AssertEvaluationResults(struct["EvaluationResults"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(GetComplianceDetailsByConfigRuleResponse_keys[k], "GetComplianceDetailsByConfigRuleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetComplianceDetailsByConfigRuleResponse
-- &lt;p/&gt;
-- @param EvaluationResults [EvaluationResults] &lt;p&gt;Indicates whether the AWS resource complies with the specified AWS Config rule.&lt;/p&gt;
-- @param NextToken [NextToken] &lt;p&gt;The string that you use in a subsequent request to get the next page of results in a paginated response.&lt;/p&gt;
function M.GetComplianceDetailsByConfigRuleResponse(EvaluationResults, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetComplianceDetailsByConfigRuleResponse")
	local t = { 
		["EvaluationResults"] = EvaluationResults,
		["NextToken"] = NextToken,
	}
	M.AssertGetComplianceDetailsByConfigRuleResponse(t)
	return t
end

local DescribeDeliveryChannelsRequest_keys = { "DeliveryChannelNames" = true, nil }

function M.AssertDescribeDeliveryChannelsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDeliveryChannelsRequest to be of type 'table'")
	if struct["DeliveryChannelNames"] then M.AssertDeliveryChannelNameList(struct["DeliveryChannelNames"]) end
	for k,_ in pairs(struct) do
		assert(DescribeDeliveryChannelsRequest_keys[k], "DescribeDeliveryChannelsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDeliveryChannelsRequest
-- &lt;p&gt;The input for the &lt;a&gt;DescribeDeliveryChannels&lt;/a&gt; action.&lt;/p&gt;
-- @param DeliveryChannelNames [DeliveryChannelNameList] &lt;p&gt;A list of delivery channel names.&lt;/p&gt;
function M.DescribeDeliveryChannelsRequest(DeliveryChannelNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDeliveryChannelsRequest")
	local t = { 
		["DeliveryChannelNames"] = DeliveryChannelNames,
	}
	M.AssertDescribeDeliveryChannelsRequest(t)
	return t
end

local ConfigStreamDeliveryInfo_keys = { "lastStatusChangeTime" = true, "lastErrorCode" = true, "lastStatus" = true, "lastErrorMessage" = true, nil }

function M.AssertConfigStreamDeliveryInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfigStreamDeliveryInfo to be of type 'table'")
	if struct["lastStatusChangeTime"] then M.AssertDate(struct["lastStatusChangeTime"]) end
	if struct["lastErrorCode"] then M.AssertString(struct["lastErrorCode"]) end
	if struct["lastStatus"] then M.AssertDeliveryStatus(struct["lastStatus"]) end
	if struct["lastErrorMessage"] then M.AssertString(struct["lastErrorMessage"]) end
	for k,_ in pairs(struct) do
		assert(ConfigStreamDeliveryInfo_keys[k], "ConfigStreamDeliveryInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfigStreamDeliveryInfo
-- &lt;p&gt;A list that contains the status of the delivery of the configuration stream notification to the Amazon SNS topic.&lt;/p&gt;
-- @param lastStatusChangeTime [Date] &lt;p&gt;The time from the last status change.&lt;/p&gt;
-- @param lastErrorCode [String] &lt;p&gt;The error code from the last attempted delivery.&lt;/p&gt;
-- @param lastStatus [DeliveryStatus] &lt;p&gt;Status of the last attempted delivery.&lt;/p&gt; &lt;p&gt; &lt;b&gt;Note&lt;/b&gt; Providing an SNS topic on a &lt;a href=&quot;http://docs.aws.amazon.com/config/latest/APIReference/API_DeliveryChannel.html&quot;&gt;DeliveryChannel&lt;/a&gt; for AWS Config is optional. If the SNS delivery is turned off, the last status will be &lt;b&gt;Not_Applicable&lt;/b&gt;.&lt;/p&gt;
-- @param lastErrorMessage [String] &lt;p&gt;The error message from the last attempted delivery.&lt;/p&gt;
function M.ConfigStreamDeliveryInfo(lastStatusChangeTime, lastErrorCode, lastStatus, lastErrorMessage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConfigStreamDeliveryInfo")
	local t = { 
		["lastStatusChangeTime"] = lastStatusChangeTime,
		["lastErrorCode"] = lastErrorCode,
		["lastStatus"] = lastStatus,
		["lastErrorMessage"] = lastErrorMessage,
	}
	M.AssertConfigStreamDeliveryInfo(t)
	return t
end

local RecordingGroup_keys = { "allSupported" = true, "resourceTypes" = true, "includeGlobalResourceTypes" = true, nil }

function M.AssertRecordingGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RecordingGroup to be of type 'table'")
	if struct["allSupported"] then M.AssertAllSupported(struct["allSupported"]) end
	if struct["resourceTypes"] then M.AssertResourceTypeList(struct["resourceTypes"]) end
	if struct["includeGlobalResourceTypes"] then M.AssertIncludeGlobalResourceTypes(struct["includeGlobalResourceTypes"]) end
	for k,_ in pairs(struct) do
		assert(RecordingGroup_keys[k], "RecordingGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RecordingGroup
-- &lt;p&gt;Specifies the types of AWS resource for which AWS Config records configuration changes.&lt;/p&gt; &lt;p&gt;In the recording group, you specify whether all supported types or specific types of resources are recorded.&lt;/p&gt; &lt;p&gt;By default, AWS Config records configuration changes for all supported types of regional resources that AWS Config discovers in the region in which it is running. Regional resources are tied to a region and can be used only in that region. Examples of regional resources are EC2 instances and EBS volumes.&lt;/p&gt; &lt;p&gt;You can also have AWS Config record configuration changes for supported types of global resources (for example, IAM resources). Global resources are not tied to an individual region and can be used in all regions.&lt;/p&gt; &lt;important&gt; &lt;p&gt;The configuration details for any global resource are the same in all regions. If you customize AWS Config in multiple regions to record global resources, it will create multiple configuration items each time a global resource changes: one configuration item for each region. These configuration items will contain identical data. To prevent duplicate configuration items, you should consider customizing AWS Config in only one region to record global resources, unless you want the configuration items to be available in multiple regions.&lt;/p&gt; &lt;/important&gt; &lt;p&gt;If you don't want AWS Config to record all resources, you can specify which types of resources it will record with the &lt;code&gt;resourceTypes&lt;/code&gt; parameter.&lt;/p&gt; &lt;p&gt;For a list of supported resource types, see &lt;a href=&quot;http://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources&quot;&gt;Supported resource types&lt;/a&gt;.&lt;/p&gt; &lt;p&gt;For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/config/latest/developerguide/select-resources.html&quot;&gt;Selecting Which Resources AWS Config Records&lt;/a&gt;.&lt;/p&gt;
-- @param allSupported [AllSupported] &lt;p&gt;Specifies whether AWS Config records configuration changes for every supported type of regional resource.&lt;/p&gt; &lt;p&gt;If you set this option to &lt;code&gt;true&lt;/code&gt;, when AWS Config adds support for a new type of regional resource, it automatically starts recording resources of that type.&lt;/p&gt; &lt;p&gt;If you set this option to &lt;code&gt;true&lt;/code&gt;, you cannot enumerate a list of &lt;code&gt;resourceTypes&lt;/code&gt;.&lt;/p&gt;
-- @param resourceTypes [ResourceTypeList] &lt;p&gt;A comma-separated list that specifies the types of AWS resources for which AWS Config records configuration changes (for example, &lt;code&gt;AWS::EC2::Instance&lt;/code&gt; or &lt;code&gt;AWS::CloudTrail::Trail&lt;/code&gt;).&lt;/p&gt; &lt;p&gt;Before you can set this option to &lt;code&gt;true&lt;/code&gt;, you must set the &lt;code&gt;allSupported&lt;/code&gt; option to &lt;code&gt;false&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;If you set this option to &lt;code&gt;true&lt;/code&gt;, when AWS Config adds support for a new type of resource, it will not record resources of that type unless you manually add that type to your recording group.&lt;/p&gt; &lt;p&gt;For a list of valid &lt;code&gt;resourceTypes&lt;/code&gt; values, see the &lt;b&gt;resourceType Value&lt;/b&gt; column in &lt;a href=&quot;http://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources&quot;&gt;Supported AWS Resource Types&lt;/a&gt;.&lt;/p&gt;
-- @param includeGlobalResourceTypes [IncludeGlobalResourceTypes] &lt;p&gt;Specifies whether AWS Config includes all supported types of global resources (for example, IAM resources) with the resources that it records.&lt;/p&gt; &lt;p&gt;Before you can set this option to &lt;code&gt;true&lt;/code&gt;, you must set the &lt;code&gt;allSupported&lt;/code&gt; option to &lt;code&gt;true&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;If you set this option to &lt;code&gt;true&lt;/code&gt;, when AWS Config adds support for a new type of global resource, it automatically starts recording resources of that type.&lt;/p&gt; &lt;p&gt;The configuration details for any global resource are the same in all regions. To prevent duplicate configuration items, you should consider customizing AWS Config in only one region to record global resources.&lt;/p&gt;
function M.RecordingGroup(allSupported, resourceTypes, includeGlobalResourceTypes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RecordingGroup")
	local t = { 
		["allSupported"] = allSupported,
		["resourceTypes"] = resourceTypes,
		["includeGlobalResourceTypes"] = includeGlobalResourceTypes,
	}
	M.AssertRecordingGroup(t)
	return t
end

local EvaluationResultIdentifier_keys = { "OrderingTimestamp" = true, "EvaluationResultQualifier" = true, nil }

function M.AssertEvaluationResultIdentifier(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EvaluationResultIdentifier to be of type 'table'")
	if struct["OrderingTimestamp"] then M.AssertDate(struct["OrderingTimestamp"]) end
	if struct["EvaluationResultQualifier"] then M.AssertEvaluationResultQualifier(struct["EvaluationResultQualifier"]) end
	for k,_ in pairs(struct) do
		assert(EvaluationResultIdentifier_keys[k], "EvaluationResultIdentifier contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EvaluationResultIdentifier
-- &lt;p&gt;Uniquely identifies an evaluation result.&lt;/p&gt;
-- @param OrderingTimestamp [Date] &lt;p&gt;The time of the event that triggered the evaluation of your AWS resources. The time can indicate when AWS Config delivered a configuration item change notification, or it can indicate when AWS Config delivered the configuration snapshot, depending on which event triggered the evaluation.&lt;/p&gt;
-- @param EvaluationResultQualifier [EvaluationResultQualifier] &lt;p&gt;Identifies an AWS Config rule used to evaluate an AWS resource, and provides the type and ID of the evaluated resource.&lt;/p&gt;
function M.EvaluationResultIdentifier(OrderingTimestamp, EvaluationResultQualifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EvaluationResultIdentifier")
	local t = { 
		["OrderingTimestamp"] = OrderingTimestamp,
		["EvaluationResultQualifier"] = EvaluationResultQualifier,
	}
	M.AssertEvaluationResultIdentifier(t)
	return t
end

local GetResourceConfigHistoryResponse_keys = { "configurationItems" = true, "nextToken" = true, nil }

function M.AssertGetResourceConfigHistoryResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetResourceConfigHistoryResponse to be of type 'table'")
	if struct["configurationItems"] then M.AssertConfigurationItemList(struct["configurationItems"]) end
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(GetResourceConfigHistoryResponse_keys[k], "GetResourceConfigHistoryResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetResourceConfigHistoryResponse
-- &lt;p&gt;The output for the &lt;a&gt;GetResourceConfigHistory&lt;/a&gt; action.&lt;/p&gt;
-- @param configurationItems [ConfigurationItemList] &lt;p&gt;A list that contains the configuration history of one or more resources.&lt;/p&gt;
-- @param nextToken [NextToken] &lt;p&gt;The string that you use in a subsequent request to get the next page of results in a paginated response.&lt;/p&gt;
function M.GetResourceConfigHistoryResponse(configurationItems, nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetResourceConfigHistoryResponse")
	local t = { 
		["configurationItems"] = configurationItems,
		["nextToken"] = nextToken,
	}
	M.AssertGetResourceConfigHistoryResponse(t)
	return t
end

local ListDiscoveredResourcesRequest_keys = { "resourceType" = true, "resourceIds" = true, "limit" = true, "includeDeletedResources" = true, "resourceName" = true, "nextToken" = true, nil }

function M.AssertListDiscoveredResourcesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDiscoveredResourcesRequest to be of type 'table'")
	assert(struct["resourceType"], "Expected key resourceType to exist in table")
	if struct["resourceType"] then M.AssertResourceType(struct["resourceType"]) end
	if struct["resourceIds"] then M.AssertResourceIdList(struct["resourceIds"]) end
	if struct["limit"] then M.AssertLimit(struct["limit"]) end
	if struct["includeDeletedResources"] then M.AssertBoolean(struct["includeDeletedResources"]) end
	if struct["resourceName"] then M.AssertResourceName(struct["resourceName"]) end
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListDiscoveredResourcesRequest_keys[k], "ListDiscoveredResourcesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDiscoveredResourcesRequest
-- &lt;p/&gt;
-- @param resourceType [ResourceType] &lt;p&gt;The type of resources that you want AWS Config to list in the response.&lt;/p&gt;
-- @param resourceIds [ResourceIdList] &lt;p&gt;The IDs of only those resources that you want AWS Config to list in the response. If you do not specify this parameter, AWS Config lists all resources of the specified type that it has discovered.&lt;/p&gt;
-- @param limit [Limit] &lt;p&gt;The maximum number of resource identifiers returned on each page. The default is 100. You cannot specify a limit greater than 100. If you specify 0, AWS Config uses the default.&lt;/p&gt;
-- @param includeDeletedResources [Boolean] &lt;p&gt;Specifies whether AWS Config includes deleted resources in the results. By default, deleted resources are not included.&lt;/p&gt;
-- @param resourceName [ResourceName] &lt;p&gt;The custom name of only those resources that you want AWS Config to list in the response. If you do not specify this parameter, AWS Config lists all resources of the specified type that it has discovered.&lt;/p&gt;
-- @param nextToken [NextToken] &lt;p&gt;The &lt;code&gt;nextToken&lt;/code&gt; string returned on a previous page that you use to get the next page of results in a paginated response.&lt;/p&gt;
-- Required parameter: resourceType
function M.ListDiscoveredResourcesRequest(resourceType, resourceIds, limit, includeDeletedResources, resourceName, nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDiscoveredResourcesRequest")
	local t = { 
		["resourceType"] = resourceType,
		["resourceIds"] = resourceIds,
		["limit"] = limit,
		["includeDeletedResources"] = includeDeletedResources,
		["resourceName"] = resourceName,
		["nextToken"] = nextToken,
	}
	M.AssertListDiscoveredResourcesRequest(t)
	return t
end

local DescribeConfigRulesResponse_keys = { "ConfigRules" = true, "NextToken" = true, nil }

function M.AssertDescribeConfigRulesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeConfigRulesResponse to be of type 'table'")
	if struct["ConfigRules"] then M.AssertConfigRules(struct["ConfigRules"]) end
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(DescribeConfigRulesResponse_keys[k], "DescribeConfigRulesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeConfigRulesResponse
-- &lt;p/&gt;
-- @param ConfigRules [ConfigRules] &lt;p&gt;The details about your AWS Config rules.&lt;/p&gt;
-- @param NextToken [String] &lt;p&gt;The string that you use in a subsequent request to get the next page of results in a paginated response.&lt;/p&gt;
function M.DescribeConfigRulesResponse(ConfigRules, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeConfigRulesResponse")
	local t = { 
		["ConfigRules"] = ConfigRules,
		["NextToken"] = NextToken,
	}
	M.AssertDescribeConfigRulesResponse(t)
	return t
end

local GetComplianceSummaryByResourceTypeRequest_keys = { "ResourceTypes" = true, nil }

function M.AssertGetComplianceSummaryByResourceTypeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetComplianceSummaryByResourceTypeRequest to be of type 'table'")
	if struct["ResourceTypes"] then M.AssertResourceTypes(struct["ResourceTypes"]) end
	for k,_ in pairs(struct) do
		assert(GetComplianceSummaryByResourceTypeRequest_keys[k], "GetComplianceSummaryByResourceTypeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetComplianceSummaryByResourceTypeRequest
-- &lt;p/&gt;
-- @param ResourceTypes [ResourceTypes] &lt;p&gt;Specify one or more resource types to get the number of resources that are compliant and the number that are noncompliant for each resource type.&lt;/p&gt; &lt;p&gt;For this request, you can specify an AWS resource type such as &lt;code&gt;AWS::EC2::Instance&lt;/code&gt;, and you can specify that the resource type is an AWS account by specifying &lt;code&gt;AWS::::Account&lt;/code&gt;.&lt;/p&gt;
function M.GetComplianceSummaryByResourceTypeRequest(ResourceTypes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetComplianceSummaryByResourceTypeRequest")
	local t = { 
		["ResourceTypes"] = ResourceTypes,
	}
	M.AssertGetComplianceSummaryByResourceTypeRequest(t)
	return t
end

local GetComplianceDetailsByResourceRequest_keys = { "ResourceType" = true, "ResourceId" = true, "NextToken" = true, "ComplianceTypes" = true, nil }

function M.AssertGetComplianceDetailsByResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetComplianceDetailsByResourceRequest to be of type 'table'")
	assert(struct["ResourceType"], "Expected key ResourceType to exist in table")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	if struct["ResourceType"] then M.AssertStringWithCharLimit256(struct["ResourceType"]) end
	if struct["ResourceId"] then M.AssertStringWithCharLimit256(struct["ResourceId"]) end
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	if struct["ComplianceTypes"] then M.AssertComplianceTypes(struct["ComplianceTypes"]) end
	for k,_ in pairs(struct) do
		assert(GetComplianceDetailsByResourceRequest_keys[k], "GetComplianceDetailsByResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetComplianceDetailsByResourceRequest
-- &lt;p/&gt;
-- @param ResourceType [StringWithCharLimit256] &lt;p&gt;The type of the AWS resource for which you want compliance information.&lt;/p&gt;
-- @param ResourceId [StringWithCharLimit256] &lt;p&gt;The ID of the AWS resource for which you want compliance information.&lt;/p&gt;
-- @param NextToken [String] &lt;p&gt;The &lt;code&gt;NextToken&lt;/code&gt; string returned on a previous page that you use to get the next page of results in a paginated response.&lt;/p&gt;
-- @param ComplianceTypes [ComplianceTypes] &lt;p&gt;Filters the results by compliance.&lt;/p&gt; &lt;p&gt;The allowed values are &lt;code&gt;COMPLIANT&lt;/code&gt;, &lt;code&gt;NON_COMPLIANT&lt;/code&gt;, and &lt;code&gt;NOT_APPLICABLE&lt;/code&gt;.&lt;/p&gt;
-- Required parameter: ResourceType
-- Required parameter: ResourceId
function M.GetComplianceDetailsByResourceRequest(ResourceType, ResourceId, NextToken, ComplianceTypes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetComplianceDetailsByResourceRequest")
	local t = { 
		["ResourceType"] = ResourceType,
		["ResourceId"] = ResourceId,
		["NextToken"] = NextToken,
		["ComplianceTypes"] = ComplianceTypes,
	}
	M.AssertGetComplianceDetailsByResourceRequest(t)
	return t
end

local ConfigRule_keys = { "ConfigRuleState" = true, "Description" = true, "ConfigRuleName" = true, "ConfigRuleArn" = true, "MaximumExecutionFrequency" = true, "Source" = true, "InputParameters" = true, "Scope" = true, "ConfigRuleId" = true, nil }

function M.AssertConfigRule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfigRule to be of type 'table'")
	assert(struct["Source"], "Expected key Source to exist in table")
	if struct["ConfigRuleState"] then M.AssertConfigRuleState(struct["ConfigRuleState"]) end
	if struct["Description"] then M.AssertEmptiableStringWithCharLimit256(struct["Description"]) end
	if struct["ConfigRuleName"] then M.AssertStringWithCharLimit64(struct["ConfigRuleName"]) end
	if struct["ConfigRuleArn"] then M.AssertString(struct["ConfigRuleArn"]) end
	if struct["MaximumExecutionFrequency"] then M.AssertMaximumExecutionFrequency(struct["MaximumExecutionFrequency"]) end
	if struct["Source"] then M.AssertSource(struct["Source"]) end
	if struct["InputParameters"] then M.AssertStringWithCharLimit1024(struct["InputParameters"]) end
	if struct["Scope"] then M.AssertScope(struct["Scope"]) end
	if struct["ConfigRuleId"] then M.AssertString(struct["ConfigRuleId"]) end
	for k,_ in pairs(struct) do
		assert(ConfigRule_keys[k], "ConfigRule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfigRule
-- &lt;p&gt;An AWS Config rule represents an AWS Lambda function that you create for a custom rule or a predefined function for an AWS managed rule. The function evaluates configuration items to assess whether your AWS resources comply with your desired configurations. This function can run when AWS Config detects a configuration change to an AWS resource and at a periodic frequency that you choose (for example, every 24 hours).&lt;/p&gt; &lt;note&gt; &lt;p&gt;You can use the AWS CLI and AWS SDKs if you want to create a rule that triggers evaluations for your resources when AWS Config delivers the configuration snapshot. For more information, see &lt;a&gt;ConfigSnapshotDeliveryProperties&lt;/a&gt;.&lt;/p&gt; &lt;/note&gt; &lt;p&gt;For more information about developing and using AWS Config rules, see &lt;a href=&quot;http://docs.aws.amazon.com/config/latest/developerguide/evaluate-config.html&quot;&gt;Evaluating AWS Resource Configurations with AWS Config&lt;/a&gt; in the &lt;i&gt;AWS Config Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param ConfigRuleState [ConfigRuleState] &lt;p&gt;Indicates whether the AWS Config rule is active or is currently being deleted by AWS Config. It can also indicate the evaluation status for the Config rule.&lt;/p&gt; &lt;p&gt;AWS Config sets the state of the rule to &lt;code&gt;EVALUATING&lt;/code&gt; temporarily after you use the &lt;code&gt;StartConfigRulesEvaluation&lt;/code&gt; request to evaluate your resources against the Config rule.&lt;/p&gt; &lt;p&gt;AWS Config sets the state of the rule to &lt;code&gt;DELETING_RESULTS&lt;/code&gt; temporarily after you use the &lt;code&gt;DeleteEvaluationResults&lt;/code&gt; request to delete the current evaluation results for the Config rule.&lt;/p&gt; &lt;p&gt;AWS Config sets the state of a rule to &lt;code&gt;DELETING&lt;/code&gt; temporarily after you use the &lt;code&gt;DeleteConfigRule&lt;/code&gt; request to delete the rule. After AWS Config deletes the rule, the rule and all of its evaluations are erased and are no longer available.&lt;/p&gt;
-- @param Description [EmptiableStringWithCharLimit256] &lt;p&gt;The description that you provide for the AWS Config rule.&lt;/p&gt;
-- @param ConfigRuleName [StringWithCharLimit64] &lt;p&gt;The name that you assign to the AWS Config rule. The name is required if you are adding a new rule.&lt;/p&gt;
-- @param ConfigRuleArn [String] &lt;p&gt;The Amazon Resource Name (ARN) of the AWS Config rule.&lt;/p&gt;
-- @param MaximumExecutionFrequency [MaximumExecutionFrequency] &lt;p&gt;The maximum frequency with which AWS Config runs evaluations for a rule. You can specify a value for &lt;code&gt;MaximumExecutionFrequency&lt;/code&gt; when:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;You are using an AWS managed rule that is triggered at a periodic frequency.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Your custom rule is triggered when AWS Config delivers the configuration snapshot. For more information, see &lt;a&gt;ConfigSnapshotDeliveryProperties&lt;/a&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;note&gt; &lt;p&gt;By default, rules with a periodic trigger are evaluated every 24 hours. To change the frequency, specify a valid value for the &lt;code&gt;MaximumExecutionFrequency&lt;/code&gt; parameter.&lt;/p&gt; &lt;/note&gt;
-- @param Source [Source] &lt;p&gt;Provides the rule owner (AWS or customer), the rule identifier, and the notifications that cause the function to evaluate your AWS resources.&lt;/p&gt;
-- @param InputParameters [StringWithCharLimit1024] &lt;p&gt;A string in JSON format that is passed to the AWS Config rule Lambda function.&lt;/p&gt;
-- @param Scope [Scope] &lt;p&gt;Defines which resources can trigger an evaluation for the rule. The scope can include one or more resource types, a combination of one resource type and one resource ID, or a combination of a tag key and value. Specify a scope to constrain the resources that can trigger an evaluation for the rule. If you do not specify a scope, evaluations are triggered when any resource in the recording group changes.&lt;/p&gt;
-- @param ConfigRuleId [String] &lt;p&gt;The ID of the AWS Config rule.&lt;/p&gt;
-- Required parameter: Source
function M.ConfigRule(ConfigRuleState, Description, ConfigRuleName, ConfigRuleArn, MaximumExecutionFrequency, Source, InputParameters, Scope, ConfigRuleId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConfigRule")
	local t = { 
		["ConfigRuleState"] = ConfigRuleState,
		["Description"] = Description,
		["ConfigRuleName"] = ConfigRuleName,
		["ConfigRuleArn"] = ConfigRuleArn,
		["MaximumExecutionFrequency"] = MaximumExecutionFrequency,
		["Source"] = Source,
		["InputParameters"] = InputParameters,
		["Scope"] = Scope,
		["ConfigRuleId"] = ConfigRuleId,
	}
	M.AssertConfigRule(t)
	return t
end

local DeliveryChannelStatus_keys = { "configStreamDeliveryInfo" = true, "configHistoryDeliveryInfo" = true, "configSnapshotDeliveryInfo" = true, "name" = true, nil }

function M.AssertDeliveryChannelStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeliveryChannelStatus to be of type 'table'")
	if struct["configStreamDeliveryInfo"] then M.AssertConfigStreamDeliveryInfo(struct["configStreamDeliveryInfo"]) end
	if struct["configHistoryDeliveryInfo"] then M.AssertConfigExportDeliveryInfo(struct["configHistoryDeliveryInfo"]) end
	if struct["configSnapshotDeliveryInfo"] then M.AssertConfigExportDeliveryInfo(struct["configSnapshotDeliveryInfo"]) end
	if struct["name"] then M.AssertString(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(DeliveryChannelStatus_keys[k], "DeliveryChannelStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeliveryChannelStatus
-- &lt;p&gt;The status of a specified delivery channel.&lt;/p&gt; &lt;p&gt;Valid values: &lt;code&gt;Success&lt;/code&gt; | &lt;code&gt;Failure&lt;/code&gt; &lt;/p&gt;
-- @param configStreamDeliveryInfo [ConfigStreamDeliveryInfo] &lt;p&gt;A list containing the status of the delivery of the configuration stream notification to the specified Amazon SNS topic.&lt;/p&gt;
-- @param configHistoryDeliveryInfo [ConfigExportDeliveryInfo] &lt;p&gt;A list that contains the status of the delivery of the configuration history to the specified Amazon S3 bucket.&lt;/p&gt;
-- @param configSnapshotDeliveryInfo [ConfigExportDeliveryInfo] &lt;p&gt;A list containing the status of the delivery of the snapshot to the specified Amazon S3 bucket.&lt;/p&gt;
-- @param name [String] &lt;p&gt;The name of the delivery channel.&lt;/p&gt;
function M.DeliveryChannelStatus(configStreamDeliveryInfo, configHistoryDeliveryInfo, configSnapshotDeliveryInfo, name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeliveryChannelStatus")
	local t = { 
		["configStreamDeliveryInfo"] = configStreamDeliveryInfo,
		["configHistoryDeliveryInfo"] = configHistoryDeliveryInfo,
		["configSnapshotDeliveryInfo"] = configSnapshotDeliveryInfo,
		["name"] = name,
	}
	M.AssertDeliveryChannelStatus(t)
	return t
end

local PutEvaluationsRequest_keys = { "ResultToken" = true, "Evaluations" = true, "TestMode" = true, nil }

function M.AssertPutEvaluationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutEvaluationsRequest to be of type 'table'")
	assert(struct["ResultToken"], "Expected key ResultToken to exist in table")
	if struct["ResultToken"] then M.AssertString(struct["ResultToken"]) end
	if struct["Evaluations"] then M.AssertEvaluations(struct["Evaluations"]) end
	if struct["TestMode"] then M.AssertBoolean(struct["TestMode"]) end
	for k,_ in pairs(struct) do
		assert(PutEvaluationsRequest_keys[k], "PutEvaluationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutEvaluationsRequest
-- &lt;p/&gt;
-- @param ResultToken [String] &lt;p&gt;An encrypted token that associates an evaluation with an AWS Config rule. Identifies the rule and the event that triggered the evaluation&lt;/p&gt;
-- @param Evaluations [Evaluations] &lt;p&gt;The assessments that the AWS Lambda function performs. Each evaluation identifies an AWS resource and indicates whether it complies with the AWS Config rule that invokes the AWS Lambda function.&lt;/p&gt;
-- @param TestMode [Boolean] &lt;p&gt;Use this parameter to specify a test run for &lt;code&gt;PutEvaluations&lt;/code&gt;. You can verify whether your AWS Lambda function will deliver evaluation results to AWS Config. No updates occur to your existing evaluations, and evaluation results are not sent to AWS Config.&lt;/p&gt; &lt;note&gt; &lt;p&gt;When &lt;code&gt;TestMode&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;, &lt;code&gt;PutEvaluations&lt;/code&gt; doesn't require a valid value for the &lt;code&gt;ResultToken&lt;/code&gt; parameter, but the value cannot be null.&lt;/p&gt; &lt;/note&gt;
-- Required parameter: ResultToken
function M.PutEvaluationsRequest(ResultToken, Evaluations, TestMode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutEvaluationsRequest")
	local t = { 
		["ResultToken"] = ResultToken,
		["Evaluations"] = Evaluations,
		["TestMode"] = TestMode,
	}
	M.AssertPutEvaluationsRequest(t)
	return t
end

local Relationship_keys = { "resourceType" = true, "resourceId" = true, "relationshipName" = true, "resourceName" = true, nil }

function M.AssertRelationship(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Relationship to be of type 'table'")
	if struct["resourceType"] then M.AssertResourceType(struct["resourceType"]) end
	if struct["resourceId"] then M.AssertResourceId(struct["resourceId"]) end
	if struct["relationshipName"] then M.AssertRelationshipName(struct["relationshipName"]) end
	if struct["resourceName"] then M.AssertResourceName(struct["resourceName"]) end
	for k,_ in pairs(struct) do
		assert(Relationship_keys[k], "Relationship contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Relationship
-- &lt;p&gt;The relationship of the related resource to the main resource.&lt;/p&gt;
-- @param resourceType [ResourceType] &lt;p&gt;The resource type of the related resource.&lt;/p&gt;
-- @param resourceId [ResourceId] &lt;p&gt;The ID of the related resource (for example, &lt;code&gt;sg-xxxxxx&lt;/code&gt;).&lt;/p&gt;
-- @param relationshipName [RelationshipName] &lt;p&gt;The type of relationship with the related resource.&lt;/p&gt;
-- @param resourceName [ResourceName] &lt;p&gt;The custom name of the related resource, if available.&lt;/p&gt;
function M.Relationship(resourceType, resourceId, relationshipName, resourceName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Relationship")
	local t = { 
		["resourceType"] = resourceType,
		["resourceId"] = resourceId,
		["relationshipName"] = relationshipName,
		["resourceName"] = resourceName,
	}
	M.AssertRelationship(t)
	return t
end

local PutDeliveryChannelRequest_keys = { "DeliveryChannel" = true, nil }

function M.AssertPutDeliveryChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutDeliveryChannelRequest to be of type 'table'")
	assert(struct["DeliveryChannel"], "Expected key DeliveryChannel to exist in table")
	if struct["DeliveryChannel"] then M.AssertDeliveryChannel(struct["DeliveryChannel"]) end
	for k,_ in pairs(struct) do
		assert(PutDeliveryChannelRequest_keys[k], "PutDeliveryChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutDeliveryChannelRequest
-- &lt;p&gt;The input for the &lt;a&gt;PutDeliveryChannel&lt;/a&gt; action.&lt;/p&gt;
-- @param DeliveryChannel [DeliveryChannel] &lt;p&gt;The configuration delivery channel object that delivers the configuration information to an Amazon S3 bucket, and to an Amazon SNS topic.&lt;/p&gt;
-- Required parameter: DeliveryChannel
function M.PutDeliveryChannelRequest(DeliveryChannel, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutDeliveryChannelRequest")
	local t = { 
		["DeliveryChannel"] = DeliveryChannel,
	}
	M.AssertPutDeliveryChannelRequest(t)
	return t
end

local DescribeConfigurationRecorderStatusRequest_keys = { "ConfigurationRecorderNames" = true, nil }

function M.AssertDescribeConfigurationRecorderStatusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeConfigurationRecorderStatusRequest to be of type 'table'")
	if struct["ConfigurationRecorderNames"] then M.AssertConfigurationRecorderNameList(struct["ConfigurationRecorderNames"]) end
	for k,_ in pairs(struct) do
		assert(DescribeConfigurationRecorderStatusRequest_keys[k], "DescribeConfigurationRecorderStatusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeConfigurationRecorderStatusRequest
-- &lt;p&gt;The input for the &lt;a&gt;DescribeConfigurationRecorderStatus&lt;/a&gt; action.&lt;/p&gt;
-- @param ConfigurationRecorderNames [ConfigurationRecorderNameList] &lt;p&gt;The name(s) of the configuration recorder. If the name is not specified, the action returns the current status of all the configuration recorders associated with the account.&lt;/p&gt;
function M.DescribeConfigurationRecorderStatusRequest(ConfigurationRecorderNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeConfigurationRecorderStatusRequest")
	local t = { 
		["ConfigurationRecorderNames"] = ConfigurationRecorderNames,
	}
	M.AssertDescribeConfigurationRecorderStatusRequest(t)
	return t
end

function M.AssertResourceType(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceType to be of type 'string'")
end

--  
function M.ResourceType(str)
	M.AssertResourceType(str)
	return str
end

function M.AssertStringWithCharLimit64(str)
	assert(str)
	assert(type(str) == "string", "Expected StringWithCharLimit64 to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.StringWithCharLimit64(str)
	M.AssertStringWithCharLimit64(str)
	return str
end

function M.AssertMessageType(str)
	assert(str)
	assert(type(str) == "string", "Expected MessageType to be of type 'string'")
end

--  
function M.MessageType(str)
	M.AssertMessageType(str)
	return str
end

function M.AssertEventSource(str)
	assert(str)
	assert(type(str) == "string", "Expected EventSource to be of type 'string'")
end

--  
function M.EventSource(str)
	M.AssertEventSource(str)
	return str
end

function M.AssertAccountId(str)
	assert(str)
	assert(type(str) == "string", "Expected AccountId to be of type 'string'")
end

--  
function M.AccountId(str)
	M.AssertAccountId(str)
	return str
end

function M.AssertSupplementaryConfigurationValue(str)
	assert(str)
	assert(type(str) == "string", "Expected SupplementaryConfigurationValue to be of type 'string'")
end

--  
function M.SupplementaryConfigurationValue(str)
	M.AssertSupplementaryConfigurationValue(str)
	return str
end

function M.AssertDeliveryStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected DeliveryStatus to be of type 'string'")
end

--  
function M.DeliveryStatus(str)
	M.AssertDeliveryStatus(str)
	return str
end

function M.AssertConfigurationItemStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ConfigurationItemStatus to be of type 'string'")
end

--  
function M.ConfigurationItemStatus(str)
	M.AssertConfigurationItemStatus(str)
	return str
end

function M.AssertConfigRuleState(str)
	assert(str)
	assert(type(str) == "string", "Expected ConfigRuleState to be of type 'string'")
end

--  
function M.ConfigRuleState(str)
	M.AssertConfigRuleState(str)
	return str
end

function M.AssertEmptiableStringWithCharLimit256(str)
	assert(str)
	assert(type(str) == "string", "Expected EmptiableStringWithCharLimit256 to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.EmptiableStringWithCharLimit256(str)
	M.AssertEmptiableStringWithCharLimit256(str)
	return str
end

function M.AssertVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected Version to be of type 'string'")
end

--  
function M.Version(str)
	M.AssertVersion(str)
	return str
end

function M.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
end

--  
function M.NextToken(str)
	M.AssertNextToken(str)
	return str
end

function M.AssertStringWithCharLimit256(str)
	assert(str)
	assert(type(str) == "string", "Expected StringWithCharLimit256 to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.StringWithCharLimit256(str)
	M.AssertStringWithCharLimit256(str)
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

function M.AssertSupplementaryConfigurationName(str)
	assert(str)
	assert(type(str) == "string", "Expected SupplementaryConfigurationName to be of type 'string'")
end

--  
function M.SupplementaryConfigurationName(str)
	M.AssertSupplementaryConfigurationName(str)
	return str
end

function M.AssertConfiguration(str)
	assert(str)
	assert(type(str) == "string", "Expected Configuration to be of type 'string'")
end

--  
function M.Configuration(str)
	M.AssertConfiguration(str)
	return str
end

function M.AssertRecorderStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected RecorderStatus to be of type 'string'")
end

--  
function M.RecorderStatus(str)
	M.AssertRecorderStatus(str)
	return str
end

function M.AssertConfigurationStateId(str)
	assert(str)
	assert(type(str) == "string", "Expected ConfigurationStateId to be of type 'string'")
end

--  
function M.ConfigurationStateId(str)
	M.AssertConfigurationStateId(str)
	return str
end

function M.AssertRecorderName(str)
	assert(str)
	assert(type(str) == "string", "Expected RecorderName to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RecorderName(str)
	M.AssertRecorderName(str)
	return str
end

function M.AssertAvailabilityZone(str)
	assert(str)
	assert(type(str) == "string", "Expected AvailabilityZone to be of type 'string'")
end

--  
function M.AvailabilityZone(str)
	M.AssertAvailabilityZone(str)
	return str
end

function M.AssertStringWithCharLimit128(str)
	assert(str)
	assert(type(str) == "string", "Expected StringWithCharLimit128 to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.StringWithCharLimit128(str)
	M.AssertStringWithCharLimit128(str)
	return str
end

function M.AssertChronologicalOrder(str)
	assert(str)
	assert(type(str) == "string", "Expected ChronologicalOrder to be of type 'string'")
end

--  
function M.ChronologicalOrder(str)
	M.AssertChronologicalOrder(str)
	return str
end

function M.AssertConfigurationItemMD5Hash(str)
	assert(str)
	assert(type(str) == "string", "Expected ConfigurationItemMD5Hash to be of type 'string'")
end

--  
function M.ConfigurationItemMD5Hash(str)
	M.AssertConfigurationItemMD5Hash(str)
	return str
end

function M.AssertRelatedEvent(str)
	assert(str)
	assert(type(str) == "string", "Expected RelatedEvent to be of type 'string'")
end

--  
function M.RelatedEvent(str)
	M.AssertRelatedEvent(str)
	return str
end

function M.AssertStringWithCharLimit1024(str)
	assert(str)
	assert(type(str) == "string", "Expected StringWithCharLimit1024 to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.StringWithCharLimit1024(str)
	M.AssertStringWithCharLimit1024(str)
	return str
end

function M.AssertAwsRegion(str)
	assert(str)
	assert(type(str) == "string", "Expected AwsRegion to be of type 'string'")
end

--  
function M.AwsRegion(str)
	M.AssertAwsRegion(str)
	return str
end

function M.AssertRelationshipName(str)
	assert(str)
	assert(type(str) == "string", "Expected RelationshipName to be of type 'string'")
end

--  
function M.RelationshipName(str)
	M.AssertRelationshipName(str)
	return str
end

function M.AssertComplianceType(str)
	assert(str)
	assert(type(str) == "string", "Expected ComplianceType to be of type 'string'")
end

--  
function M.ComplianceType(str)
	M.AssertComplianceType(str)
	return str
end

function M.AssertResourceId(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceId to be of type 'string'")
end

--  
function M.ResourceId(str)
	M.AssertResourceId(str)
	return str
end

function M.AssertMaximumExecutionFrequency(str)
	assert(str)
	assert(type(str) == "string", "Expected MaximumExecutionFrequency to be of type 'string'")
end

--  
function M.MaximumExecutionFrequency(str)
	M.AssertMaximumExecutionFrequency(str)
	return str
end

function M.AssertResourceName(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceName to be of type 'string'")
end

--  
function M.ResourceName(str)
	M.AssertResourceName(str)
	return str
end

function M.AssertName(str)
	assert(str)
	assert(type(str) == "string", "Expected Name to be of type 'string'")
end

--  
function M.Name(str)
	M.AssertName(str)
	return str
end

function M.AssertOwner(str)
	assert(str)
	assert(type(str) == "string", "Expected Owner to be of type 'string'")
end

--  
function M.Owner(str)
	M.AssertOwner(str)
	return str
end

function M.AssertValue(str)
	assert(str)
	assert(type(str) == "string", "Expected Value to be of type 'string'")
end

--  
function M.Value(str)
	M.AssertValue(str)
	return str
end

function M.AssertChannelName(str)
	assert(str)
	assert(type(str) == "string", "Expected ChannelName to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ChannelName(str)
	M.AssertChannelName(str)
	return str
end

function M.AssertARN(str)
	assert(str)
	assert(type(str) == "string", "Expected ARN to be of type 'string'")
end

--  
function M.ARN(str)
	M.AssertARN(str)
	return str
end

function M.AssertRuleLimit(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected RuleLimit to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 50, "Expected integer to be max 50")
end

function M.RuleLimit(integer)
	M.AssertRuleLimit(integer)
	return integer
end

function M.AssertInteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Integer to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Integer(integer)
	M.AssertInteger(integer)
	return integer
end

function M.AssertLimit(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Limit to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
end

function M.Limit(integer)
	M.AssertLimit(integer)
	return integer
end

function M.AssertAllSupported(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected AllSupported to be of type 'boolean'")
end

function M.AllSupported(boolean)
	M.AssertAllSupported(boolean)
	return boolean
end

function M.AssertIncludeGlobalResourceTypes(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected IncludeGlobalResourceTypes to be of type 'boolean'")
end

function M.IncludeGlobalResourceTypes(boolean)
	M.AssertIncludeGlobalResourceTypes(boolean)
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

function M.AssertTags(map)
	assert(map)
	assert(type(map) == "table", "Expected Tags to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertName(k)
		M.AssertValue(v)
	end
end

function M.Tags(map)
	M.AssertTags(map)
	return map
end

function M.AssertSupplementaryConfiguration(map)
	assert(map)
	assert(type(map) == "table", "Expected SupplementaryConfiguration to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertSupplementaryConfigurationName(k)
		M.AssertSupplementaryConfigurationValue(v)
	end
end

function M.SupplementaryConfiguration(map)
	M.AssertSupplementaryConfiguration(map)
	return map
end

function M.AssertResourceCreationTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected ResourceCreationTime to be of type 'string'")
end

function M.ResourceCreationTime(timestamp)
	M.AssertResourceCreationTime(timestamp)
	return timestamp
end

function M.AssertResourceDeletionTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected ResourceDeletionTime to be of type 'string'")
end

function M.ResourceDeletionTime(timestamp)
	M.AssertResourceDeletionTime(timestamp)
	return timestamp
end

function M.AssertDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Date to be of type 'string'")
end

function M.Date(timestamp)
	M.AssertDate(timestamp)
	return timestamp
end

function M.AssertLaterTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected LaterTime to be of type 'string'")
end

function M.LaterTime(timestamp)
	M.AssertLaterTime(timestamp)
	return timestamp
end

function M.AssertOrderingTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected OrderingTimestamp to be of type 'string'")
end

function M.OrderingTimestamp(timestamp)
	M.AssertOrderingTimestamp(timestamp)
	return timestamp
end

function M.AssertEarlierTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected EarlierTime to be of type 'string'")
end

function M.EarlierTime(timestamp)
	M.AssertEarlierTime(timestamp)
	return timestamp
end

function M.AssertConfigurationItemCaptureTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected ConfigurationItemCaptureTime to be of type 'string'")
end

function M.ConfigurationItemCaptureTime(timestamp)
	M.AssertConfigurationItemCaptureTime(timestamp)
	return timestamp
end

function M.AssertEvaluationResults(list)
	assert(list)
	assert(type(list) == "table", "Expected EvaluationResults to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertEvaluationResult(v)
	end
end

--  
-- List of EvaluationResult objects
function M.EvaluationResults(list)
	M.AssertEvaluationResults(list)
	return list
end

function M.AssertDeliveryChannelStatusList(list)
	assert(list)
	assert(type(list) == "table", "Expected DeliveryChannelStatusList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDeliveryChannelStatus(v)
	end
end

--  
-- List of DeliveryChannelStatus objects
function M.DeliveryChannelStatusList(list)
	M.AssertDeliveryChannelStatusList(list)
	return list
end

function M.AssertRelationshipList(list)
	assert(list)
	assert(type(list) == "table", "Expected RelationshipList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertRelationship(v)
	end
end

--  
-- List of Relationship objects
function M.RelationshipList(list)
	M.AssertRelationshipList(list)
	return list
end

function M.AssertComplianceByConfigRules(list)
	assert(list)
	assert(type(list) == "table", "Expected ComplianceByConfigRules to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertComplianceByConfigRule(v)
	end
end

--  
-- List of ComplianceByConfigRule objects
function M.ComplianceByConfigRules(list)
	M.AssertComplianceByConfigRules(list)
	return list
end

function M.AssertDeliveryChannelList(list)
	assert(list)
	assert(type(list) == "table", "Expected DeliveryChannelList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDeliveryChannel(v)
	end
end

--  
-- List of DeliveryChannel objects
function M.DeliveryChannelList(list)
	M.AssertDeliveryChannelList(list)
	return list
end

function M.AssertConfigurationItemList(list)
	assert(list)
	assert(type(list) == "table", "Expected ConfigurationItemList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertConfigurationItem(v)
	end
end

--  
-- List of ConfigurationItem objects
function M.ConfigurationItemList(list)
	M.AssertConfigurationItemList(list)
	return list
end

function M.AssertEvaluations(list)
	assert(list)
	assert(type(list) == "table", "Expected Evaluations to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	for _,v in ipairs(list) do
		M.AssertEvaluation(v)
	end
end

--  
-- List of Evaluation objects
function M.Evaluations(list)
	M.AssertEvaluations(list)
	return list
end

function M.AssertComplianceByResources(list)
	assert(list)
	assert(type(list) == "table", "Expected ComplianceByResources to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertComplianceByResource(v)
	end
end

--  
-- List of ComplianceByResource objects
function M.ComplianceByResources(list)
	M.AssertComplianceByResources(list)
	return list
end

function M.AssertConfigRuleEvaluationStatusList(list)
	assert(list)
	assert(type(list) == "table", "Expected ConfigRuleEvaluationStatusList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertConfigRuleEvaluationStatus(v)
	end
end

--  
-- List of ConfigRuleEvaluationStatus objects
function M.ConfigRuleEvaluationStatusList(list)
	M.AssertConfigRuleEvaluationStatusList(list)
	return list
end

function M.AssertComplianceResourceTypes(list)
	assert(list)
	assert(type(list) == "table", "Expected ComplianceResourceTypes to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	for _,v in ipairs(list) do
		M.AssertStringWithCharLimit256(v)
	end
end

--  
-- List of StringWithCharLimit256 objects
function M.ComplianceResourceTypes(list)
	M.AssertComplianceResourceTypes(list)
	return list
end

function M.AssertComplianceSummariesByResourceType(list)
	assert(list)
	assert(type(list) == "table", "Expected ComplianceSummariesByResourceType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertComplianceSummaryByResourceType(v)
	end
end

--  
-- List of ComplianceSummaryByResourceType objects
function M.ComplianceSummariesByResourceType(list)
	M.AssertComplianceSummariesByResourceType(list)
	return list
end

function M.AssertConfigurationRecorderList(list)
	assert(list)
	assert(type(list) == "table", "Expected ConfigurationRecorderList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertConfigurationRecorder(v)
	end
end

--  
-- List of ConfigurationRecorder objects
function M.ConfigurationRecorderList(list)
	M.AssertConfigurationRecorderList(list)
	return list
end

function M.AssertConfigRules(list)
	assert(list)
	assert(type(list) == "table", "Expected ConfigRules to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertConfigRule(v)
	end
end

--  
-- List of ConfigRule objects
function M.ConfigRules(list)
	M.AssertConfigRules(list)
	return list
end

function M.AssertResourceIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceIdList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertResourceId(v)
	end
end

--  
-- List of ResourceId objects
function M.ResourceIdList(list)
	M.AssertResourceIdList(list)
	return list
end

function M.AssertRelatedEventList(list)
	assert(list)
	assert(type(list) == "table", "Expected RelatedEventList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertRelatedEvent(v)
	end
end

--  
-- List of RelatedEvent objects
function M.RelatedEventList(list)
	M.AssertRelatedEventList(list)
	return list
end

function M.AssertConfigurationRecorderStatusList(list)
	assert(list)
	assert(type(list) == "table", "Expected ConfigurationRecorderStatusList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertConfigurationRecorderStatus(v)
	end
end

--  
-- List of ConfigurationRecorderStatus objects
function M.ConfigurationRecorderStatusList(list)
	M.AssertConfigurationRecorderStatusList(list)
	return list
end

function M.AssertReevaluateConfigRuleNames(list)
	assert(list)
	assert(type(list) == "table", "Expected ReevaluateConfigRuleNames to be of type ''table")
	assert(#list <= 25, "Expected list to be contain 25 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertStringWithCharLimit64(v)
	end
end

--  
-- List of StringWithCharLimit64 objects
function M.ReevaluateConfigRuleNames(list)
	M.AssertReevaluateConfigRuleNames(list)
	return list
end

function M.AssertResourceTypes(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceTypes to be of type ''table")
	assert(#list <= 20, "Expected list to be contain 20 elements")
	for _,v in ipairs(list) do
		M.AssertStringWithCharLimit256(v)
	end
end

--  
-- List of StringWithCharLimit256 objects
function M.ResourceTypes(list)
	M.AssertResourceTypes(list)
	return list
end

function M.AssertSourceDetails(list)
	assert(list)
	assert(type(list) == "table", "Expected SourceDetails to be of type ''table")
	assert(#list <= 25, "Expected list to be contain 25 elements")
	for _,v in ipairs(list) do
		M.AssertSourceDetail(v)
	end
end

--  
-- List of SourceDetail objects
function M.SourceDetails(list)
	M.AssertSourceDetails(list)
	return list
end

function M.AssertComplianceTypes(list)
	assert(list)
	assert(type(list) == "table", "Expected ComplianceTypes to be of type ''table")
	assert(#list <= 3, "Expected list to be contain 3 elements")
	for _,v in ipairs(list) do
		M.AssertComplianceType(v)
	end
end

--  
-- List of ComplianceType objects
function M.ComplianceTypes(list)
	M.AssertComplianceTypes(list)
	return list
end

function M.AssertDeliveryChannelNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected DeliveryChannelNameList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertChannelName(v)
	end
end

--  
-- List of ChannelName objects
function M.DeliveryChannelNameList(list)
	M.AssertDeliveryChannelNameList(list)
	return list
end

function M.AssertConfigRuleNames(list)
	assert(list)
	assert(type(list) == "table", "Expected ConfigRuleNames to be of type ''table")
	assert(#list <= 25, "Expected list to be contain 25 elements")
	for _,v in ipairs(list) do
		M.AssertStringWithCharLimit64(v)
	end
end

--  
-- List of StringWithCharLimit64 objects
function M.ConfigRuleNames(list)
	M.AssertConfigRuleNames(list)
	return list
end

function M.AssertResourceIdentifierList(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceIdentifierList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertResourceIdentifier(v)
	end
end

--  
-- List of ResourceIdentifier objects
function M.ResourceIdentifierList(list)
	M.AssertResourceIdentifierList(list)
	return list
end

function M.AssertResourceTypeList(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceTypeList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertResourceType(v)
	end
end

--  
-- List of ResourceType objects
function M.ResourceTypeList(list)
	M.AssertResourceTypeList(list)
	return list
end

function M.AssertConfigurationRecorderNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected ConfigurationRecorderNameList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertRecorderName(v)
	end
end

--  
-- List of RecorderName objects
function M.ConfigurationRecorderNameList(list)
	M.AssertConfigurationRecorderNameList(list)
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
	uri = scheme_mapper.from_string(config.scheme) .. "://"
	uri = uri .. config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
end


--
-- OPERATIONS
--
--- StopConfigurationRecorder
-- @param StopConfigurationRecorderRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StopConfigurationRecorderAsync(StopConfigurationRecorderRequest, cb)
	assert(StopConfigurationRecorderRequest, "You must provide a StopConfigurationRecorderRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StarlingDoveService.StopConfigurationRecorder",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", StopConfigurationRecorderRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetComplianceDetailsByResource
-- @param GetComplianceDetailsByResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetComplianceDetailsByResourceAsync(GetComplianceDetailsByResourceRequest, cb)
	assert(GetComplianceDetailsByResourceRequest, "You must provide a GetComplianceDetailsByResourceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StarlingDoveService.GetComplianceDetailsByResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetComplianceDetailsByResourceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListDiscoveredResources
-- @param ListDiscoveredResourcesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListDiscoveredResourcesAsync(ListDiscoveredResourcesRequest, cb)
	assert(ListDiscoveredResourcesRequest, "You must provide a ListDiscoveredResourcesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StarlingDoveService.ListDiscoveredResources",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListDiscoveredResourcesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteDeliveryChannel
-- @param DeleteDeliveryChannelRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDeliveryChannelAsync(DeleteDeliveryChannelRequest, cb)
	assert(DeleteDeliveryChannelRequest, "You must provide a DeleteDeliveryChannelRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StarlingDoveService.DeleteDeliveryChannel",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteDeliveryChannelRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutEvaluations
-- @param PutEvaluationsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutEvaluationsAsync(PutEvaluationsRequest, cb)
	assert(PutEvaluationsRequest, "You must provide a PutEvaluationsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StarlingDoveService.PutEvaluations",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PutEvaluationsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteConfigRule
-- @param DeleteConfigRuleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteConfigRuleAsync(DeleteConfigRuleRequest, cb)
	assert(DeleteConfigRuleRequest, "You must provide a DeleteConfigRuleRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StarlingDoveService.DeleteConfigRule",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteConfigRuleRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeConfigurationRecorders
-- @param DescribeConfigurationRecordersRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeConfigurationRecordersAsync(DescribeConfigurationRecordersRequest, cb)
	assert(DescribeConfigurationRecordersRequest, "You must provide a DescribeConfigurationRecordersRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StarlingDoveService.DescribeConfigurationRecorders",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeConfigurationRecordersRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutConfigurationRecorder
-- @param PutConfigurationRecorderRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutConfigurationRecorderAsync(PutConfigurationRecorderRequest, cb)
	assert(PutConfigurationRecorderRequest, "You must provide a PutConfigurationRecorderRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StarlingDoveService.PutConfigurationRecorder",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PutConfigurationRecorderRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeConfigurationRecorderStatus
-- @param DescribeConfigurationRecorderStatusRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeConfigurationRecorderStatusAsync(DescribeConfigurationRecorderStatusRequest, cb)
	assert(DescribeConfigurationRecorderStatusRequest, "You must provide a DescribeConfigurationRecorderStatusRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StarlingDoveService.DescribeConfigurationRecorderStatus",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeConfigurationRecorderStatusRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetComplianceDetailsByConfigRule
-- @param GetComplianceDetailsByConfigRuleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetComplianceDetailsByConfigRuleAsync(GetComplianceDetailsByConfigRuleRequest, cb)
	assert(GetComplianceDetailsByConfigRuleRequest, "You must provide a GetComplianceDetailsByConfigRuleRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StarlingDoveService.GetComplianceDetailsByConfigRule",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetComplianceDetailsByConfigRuleRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeDeliveryChannelStatus
-- @param DescribeDeliveryChannelStatusRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDeliveryChannelStatusAsync(DescribeDeliveryChannelStatusRequest, cb)
	assert(DescribeDeliveryChannelStatusRequest, "You must provide a DescribeDeliveryChannelStatusRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StarlingDoveService.DescribeDeliveryChannelStatus",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeDeliveryChannelStatusRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeliverConfigSnapshot
-- @param DeliverConfigSnapshotRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeliverConfigSnapshotAsync(DeliverConfigSnapshotRequest, cb)
	assert(DeliverConfigSnapshotRequest, "You must provide a DeliverConfigSnapshotRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StarlingDoveService.DeliverConfigSnapshot",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeliverConfigSnapshotRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- StartConfigRulesEvaluation
-- @param StartConfigRulesEvaluationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StartConfigRulesEvaluationAsync(StartConfigRulesEvaluationRequest, cb)
	assert(StartConfigRulesEvaluationRequest, "You must provide a StartConfigRulesEvaluationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StarlingDoveService.StartConfigRulesEvaluation",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", StartConfigRulesEvaluationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetComplianceSummaryByConfigRule
-- @param 
-- @param cb Callback function accepting two args: response, error_message
function M.GetComplianceSummaryByConfigRuleAsync(, cb)
	assert(, "You must provide a ")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StarlingDoveService.GetComplianceSummaryByConfigRule",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", , headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- StartConfigurationRecorder
-- @param StartConfigurationRecorderRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StartConfigurationRecorderAsync(StartConfigurationRecorderRequest, cb)
	assert(StartConfigurationRecorderRequest, "You must provide a StartConfigurationRecorderRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StarlingDoveService.StartConfigurationRecorder",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", StartConfigurationRecorderRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeComplianceByResource
-- @param DescribeComplianceByResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeComplianceByResourceAsync(DescribeComplianceByResourceRequest, cb)
	assert(DescribeComplianceByResourceRequest, "You must provide a DescribeComplianceByResourceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StarlingDoveService.DescribeComplianceByResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeComplianceByResourceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetResourceConfigHistory
-- @param GetResourceConfigHistoryRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetResourceConfigHistoryAsync(GetResourceConfigHistoryRequest, cb)
	assert(GetResourceConfigHistoryRequest, "You must provide a GetResourceConfigHistoryRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StarlingDoveService.GetResourceConfigHistory",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetResourceConfigHistoryRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeConfigRuleEvaluationStatus
-- @param DescribeConfigRuleEvaluationStatusRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeConfigRuleEvaluationStatusAsync(DescribeConfigRuleEvaluationStatusRequest, cb)
	assert(DescribeConfigRuleEvaluationStatusRequest, "You must provide a DescribeConfigRuleEvaluationStatusRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StarlingDoveService.DescribeConfigRuleEvaluationStatus",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeConfigRuleEvaluationStatusRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeDeliveryChannels
-- @param DescribeDeliveryChannelsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDeliveryChannelsAsync(DescribeDeliveryChannelsRequest, cb)
	assert(DescribeDeliveryChannelsRequest, "You must provide a DescribeDeliveryChannelsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StarlingDoveService.DescribeDeliveryChannels",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeDeliveryChannelsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetComplianceSummaryByResourceType
-- @param GetComplianceSummaryByResourceTypeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetComplianceSummaryByResourceTypeAsync(GetComplianceSummaryByResourceTypeRequest, cb)
	assert(GetComplianceSummaryByResourceTypeRequest, "You must provide a GetComplianceSummaryByResourceTypeRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StarlingDoveService.GetComplianceSummaryByResourceType",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetComplianceSummaryByResourceTypeRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeConfigRules
-- @param DescribeConfigRulesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeConfigRulesAsync(DescribeConfigRulesRequest, cb)
	assert(DescribeConfigRulesRequest, "You must provide a DescribeConfigRulesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StarlingDoveService.DescribeConfigRules",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeConfigRulesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutConfigRule
-- @param PutConfigRuleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutConfigRuleAsync(PutConfigRuleRequest, cb)
	assert(PutConfigRuleRequest, "You must provide a PutConfigRuleRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StarlingDoveService.PutConfigRule",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PutConfigRuleRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteEvaluationResults
-- @param DeleteEvaluationResultsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteEvaluationResultsAsync(DeleteEvaluationResultsRequest, cb)
	assert(DeleteEvaluationResultsRequest, "You must provide a DeleteEvaluationResultsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StarlingDoveService.DeleteEvaluationResults",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteEvaluationResultsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeComplianceByConfigRule
-- @param DescribeComplianceByConfigRuleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeComplianceByConfigRuleAsync(DescribeComplianceByConfigRuleRequest, cb)
	assert(DescribeComplianceByConfigRuleRequest, "You must provide a DescribeComplianceByConfigRuleRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StarlingDoveService.DescribeComplianceByConfigRule",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeComplianceByConfigRuleRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutDeliveryChannel
-- @param PutDeliveryChannelRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutDeliveryChannelAsync(PutDeliveryChannelRequest, cb)
	assert(PutDeliveryChannelRequest, "You must provide a PutDeliveryChannelRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StarlingDoveService.PutDeliveryChannel",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PutDeliveryChannelRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteConfigurationRecorder
-- @param DeleteConfigurationRecorderRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteConfigurationRecorderAsync(DeleteConfigurationRecorderRequest, cb)
	assert(DeleteConfigurationRecorderRequest, "You must provide a DeleteConfigurationRecorderRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StarlingDoveService.DeleteConfigurationRecorder",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteConfigurationRecorderRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
