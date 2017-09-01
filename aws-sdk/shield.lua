--- GENERATED CODE - DO NOT MODIFY
-- AWS Shield (shield-2016-06-02)

local M = {}

M.metadata = {
	api_version = "2016-06-02",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "shield",
	service_abbreviation = "AWS Shield",
	service_full_name = "AWS Shield",
	signature_version = "v4",
	target_prefix = "AWSShield_20160616",
	timestamp_format = "",
	global_endpoint = "",
	uid = "shield-2016-06-02",
}

local keys = {}
local asserts = {}

keys.DeleteProtectionRequest = { ["ProtectionId"] = true, nil }

function asserts.AssertDeleteProtectionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteProtectionRequest to be of type 'table'")
	assert(struct["ProtectionId"], "Expected key ProtectionId to exist in table")
	if struct["ProtectionId"] then asserts.AssertProtectionId(struct["ProtectionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteProtectionRequest[k], "DeleteProtectionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteProtectionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProtectionId [ProtectionId] <p>The unique identifier (ID) for the <a>Protection</a> object to be deleted.</p>
-- Required key: ProtectionId
-- @return DeleteProtectionRequest structure as a key-value pair table
function M.DeleteProtectionRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteProtectionRequest")
	local t = { 
		["ProtectionId"] = args["ProtectionId"],
	}
	asserts.AssertDeleteProtectionRequest(t)
	return t
end

keys.ListProtectionsResponse = { ["Protections"] = true, ["NextToken"] = true, nil }

function asserts.AssertListProtectionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListProtectionsResponse to be of type 'table'")
	if struct["Protections"] then asserts.AssertProtections(struct["Protections"]) end
	if struct["NextToken"] then asserts.AssertToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListProtectionsResponse[k], "ListProtectionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListProtectionsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Protections [Protections] <p>The array of enabled <a>Protection</a> objects.</p>
-- * NextToken [Token] <p>If you specify a value for <code>MaxResults</code> and you have more Protections than the value of MaxResults, AWS Shield Advanced returns a NextToken value in the response that allows you to list another group of Protections. For the second and subsequent ListProtections requests, specify the value of NextToken from the previous response to get information about another batch of Protections.</p>
-- @return ListProtectionsResponse structure as a key-value pair table
function M.ListProtectionsResponse(args)
	assert(args, "You must provdide an argument table when creating ListProtectionsResponse")
	local t = { 
		["Protections"] = args["Protections"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListProtectionsResponse(t)
	return t
end

keys.DescribeAttackRequest = { ["AttackId"] = true, nil }

function asserts.AssertDescribeAttackRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAttackRequest to be of type 'table'")
	assert(struct["AttackId"], "Expected key AttackId to exist in table")
	if struct["AttackId"] then asserts.AssertAttackId(struct["AttackId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAttackRequest[k], "DescribeAttackRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAttackRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AttackId [AttackId] <p>The unique identifier (ID) for the attack that to be described.</p>
-- Required key: AttackId
-- @return DescribeAttackRequest structure as a key-value pair table
function M.DescribeAttackRequest(args)
	assert(args, "You must provdide an argument table when creating DescribeAttackRequest")
	local t = { 
		["AttackId"] = args["AttackId"],
	}
	asserts.AssertDescribeAttackRequest(t)
	return t
end

keys.TimeRange = { ["FromInclusive"] = true, ["ToExclusive"] = true, nil }

function asserts.AssertTimeRange(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TimeRange to be of type 'table'")
	if struct["FromInclusive"] then asserts.AssertAttackTimestamp(struct["FromInclusive"]) end
	if struct["ToExclusive"] then asserts.AssertAttackTimestamp(struct["ToExclusive"]) end
	for k,_ in pairs(struct) do
		assert(keys.TimeRange[k], "TimeRange contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TimeRange
-- <p>The time range.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FromInclusive [AttackTimestamp] <p>The start time, in the format 2016-12-16T13:50Z.</p>
-- * ToExclusive [AttackTimestamp] <p>The end time, in the format 2016-12-16T15:50Z.</p>
-- @return TimeRange structure as a key-value pair table
function M.TimeRange(args)
	assert(args, "You must provdide an argument table when creating TimeRange")
	local t = { 
		["FromInclusive"] = args["FromInclusive"],
		["ToExclusive"] = args["ToExclusive"],
	}
	asserts.AssertTimeRange(t)
	return t
end

keys.DescribeSubscriptionResponse = { ["Subscription"] = true, nil }

function asserts.AssertDescribeSubscriptionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSubscriptionResponse to be of type 'table'")
	if struct["Subscription"] then asserts.AssertSubscription(struct["Subscription"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeSubscriptionResponse[k], "DescribeSubscriptionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSubscriptionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Subscription [Subscription] <p>The AWS Shield Advanced subscription details for an account.</p>
-- @return DescribeSubscriptionResponse structure as a key-value pair table
function M.DescribeSubscriptionResponse(args)
	assert(args, "You must provdide an argument table when creating DescribeSubscriptionResponse")
	local t = { 
		["Subscription"] = args["Subscription"],
	}
	asserts.AssertDescribeSubscriptionResponse(t)
	return t
end

keys.Mitigation = { ["MitigationName"] = true, nil }

function asserts.AssertMitigation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Mitigation to be of type 'table'")
	if struct["MitigationName"] then asserts.AssertString(struct["MitigationName"]) end
	for k,_ in pairs(struct) do
		assert(keys.Mitigation[k], "Mitigation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Mitigation
-- <p>The mitigation applied to a DDoS attack.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MitigationName [String] <p>The name of the mitigation taken for this attack.</p>
-- @return Mitigation structure as a key-value pair table
function M.Mitigation(args)
	assert(args, "You must provdide an argument table when creating Mitigation")
	local t = { 
		["MitigationName"] = args["MitigationName"],
	}
	asserts.AssertMitigation(t)
	return t
end

keys.InternalErrorException = { ["message"] = true, nil }

function asserts.AssertInternalErrorException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalErrorException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InternalErrorException[k], "InternalErrorException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalErrorException
-- <p>Exception that indicates that a problem occurred with the service infrastructure. You can retry the request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [errorMessage] 
-- @return InternalErrorException structure as a key-value pair table
function M.InternalErrorException(args)
	assert(args, "You must provdide an argument table when creating InternalErrorException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertInternalErrorException(t)
	return t
end

keys.ListAttacksResponse = { ["NextToken"] = true, ["AttackSummaries"] = true, nil }

function asserts.AssertListAttacksResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAttacksResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertToken(struct["NextToken"]) end
	if struct["AttackSummaries"] then asserts.AssertAttackSummaries(struct["AttackSummaries"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAttacksResponse[k], "ListAttacksResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAttacksResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [Token] <p>The token returned by a previous call to indicate that there is more data available. If not null, more results are available. Pass this value for the <code>NextMarker</code> parameter in a subsequent call to <code>ListAttacks</code> to retrieve the next set of items.</p>
-- * AttackSummaries [AttackSummaries] <p>The attack information for the specified time range.</p>
-- @return ListAttacksResponse structure as a key-value pair table
function M.ListAttacksResponse(args)
	assert(args, "You must provdide an argument table when creating ListAttacksResponse")
	local t = { 
		["NextToken"] = args["NextToken"],
		["AttackSummaries"] = args["AttackSummaries"],
	}
	asserts.AssertListAttacksResponse(t)
	return t
end

keys.ListAttacksRequest = { ["NextToken"] = true, ["EndTime"] = true, ["ResourceArns"] = true, ["MaxResults"] = true, ["StartTime"] = true, nil }

function asserts.AssertListAttacksRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAttacksRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertToken(struct["NextToken"]) end
	if struct["EndTime"] then asserts.AssertTimeRange(struct["EndTime"]) end
	if struct["ResourceArns"] then asserts.AssertResourceArnFilterList(struct["ResourceArns"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	if struct["StartTime"] then asserts.AssertTimeRange(struct["StartTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAttacksRequest[k], "ListAttacksRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAttacksRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [Token] <p>The <code>ListAttacksRequest.NextMarker</code> value from a previous call to <code>ListAttacksRequest</code>. Pass null if this is the first call.</p>
-- * EndTime [TimeRange] <p>The end of the time period for the attacks.</p>
-- * ResourceArns [ResourceArnFilterList] <p>The ARN (Amazon Resource Name) of the resource that was attacked. If this is left blank, all applicable resources for this account will be included.</p>
-- * MaxResults [MaxResults] <p>The maximum number of <a>AttackSummary</a> objects to be returned. If this is left blank, the first 20 results will be returned.</p>
-- * StartTime [TimeRange] <p>The time period for the attacks.</p>
-- @return ListAttacksRequest structure as a key-value pair table
function M.ListAttacksRequest(args)
	assert(args, "You must provdide an argument table when creating ListAttacksRequest")
	local t = { 
		["NextToken"] = args["NextToken"],
		["EndTime"] = args["EndTime"],
		["ResourceArns"] = args["ResourceArns"],
		["MaxResults"] = args["MaxResults"],
		["StartTime"] = args["StartTime"],
	}
	asserts.AssertListAttacksRequest(t)
	return t
end

keys.LockedSubscriptionException = { ["message"] = true, nil }

function asserts.AssertLockedSubscriptionException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LockedSubscriptionException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.LockedSubscriptionException[k], "LockedSubscriptionException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LockedSubscriptionException
-- <p>Exception that indicates that the subscription has been modified by another client. You can retry the request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [errorMessage] 
-- @return LockedSubscriptionException structure as a key-value pair table
function M.LockedSubscriptionException(args)
	assert(args, "You must provdide an argument table when creating LockedSubscriptionException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertLockedSubscriptionException(t)
	return t
end

keys.DeleteSubscriptionRequest = { nil }

function asserts.AssertDeleteSubscriptionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSubscriptionRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteSubscriptionRequest[k], "DeleteSubscriptionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSubscriptionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteSubscriptionRequest structure as a key-value pair table
function M.DeleteSubscriptionRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteSubscriptionRequest")
	local t = { 
	}
	asserts.AssertDeleteSubscriptionRequest(t)
	return t
end

keys.CreateProtectionResponse = { ["ProtectionId"] = true, nil }

function asserts.AssertCreateProtectionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateProtectionResponse to be of type 'table'")
	if struct["ProtectionId"] then asserts.AssertProtectionId(struct["ProtectionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateProtectionResponse[k], "CreateProtectionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateProtectionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProtectionId [ProtectionId] <p>The unique identifier (ID) for the <a>Protection</a> object that is created.</p>
-- @return CreateProtectionResponse structure as a key-value pair table
function M.CreateProtectionResponse(args)
	assert(args, "You must provdide an argument table when creating CreateProtectionResponse")
	local t = { 
		["ProtectionId"] = args["ProtectionId"],
	}
	asserts.AssertCreateProtectionResponse(t)
	return t
end

keys.ListProtectionsRequest = { ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListProtectionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListProtectionsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListProtectionsRequest[k], "ListProtectionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListProtectionsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [Token] <p>The <code>ListProtectionsRequest.NextToken</code> value from a previous call to <code>ListProtections</code>. Pass null if this is the first call.</p>
-- * MaxResults [MaxResults] <p>The maximum number of <a>Protection</a> objects to be returned. If this is left blank the first 20 results will be returned.</p>
-- @return ListProtectionsRequest structure as a key-value pair table
function M.ListProtectionsRequest(args)
	assert(args, "You must provdide an argument table when creating ListProtectionsRequest")
	local t = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListProtectionsRequest(t)
	return t
end

keys.LimitsExceededException = { ["Limit"] = true, ["message"] = true, ["Type"] = true, nil }

function asserts.AssertLimitsExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitsExceededException to be of type 'table'")
	if struct["Limit"] then asserts.AssertLimitNumber(struct["Limit"]) end
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	if struct["Type"] then asserts.AssertLimitType(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(keys.LimitsExceededException[k], "LimitsExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitsExceededException
-- <p>Exception that indicates that the operation would exceed a limit.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Limit [LimitNumber] 
-- * message [errorMessage] 
-- * Type [LimitType] 
-- @return LimitsExceededException structure as a key-value pair table
function M.LimitsExceededException(args)
	assert(args, "You must provdide an argument table when creating LimitsExceededException")
	local t = { 
		["Limit"] = args["Limit"],
		["message"] = args["message"],
		["Type"] = args["Type"],
	}
	asserts.AssertLimitsExceededException(t)
	return t
end

keys.InvalidParameterException = { ["message"] = true, nil }

function asserts.AssertInvalidParameterException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidParameterException[k], "InvalidParameterException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterException
-- <p>Exception that indicates that the parameters passed to the API are invalid. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [errorMessage] 
-- @return InvalidParameterException structure as a key-value pair table
function M.InvalidParameterException(args)
	assert(args, "You must provdide an argument table when creating InvalidParameterException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidParameterException(t)
	return t
end

keys.DescribeSubscriptionRequest = { nil }

function asserts.AssertDescribeSubscriptionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSubscriptionRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DescribeSubscriptionRequest[k], "DescribeSubscriptionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSubscriptionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DescribeSubscriptionRequest structure as a key-value pair table
function M.DescribeSubscriptionRequest(args)
	assert(args, "You must provdide an argument table when creating DescribeSubscriptionRequest")
	local t = { 
	}
	asserts.AssertDescribeSubscriptionRequest(t)
	return t
end

keys.Protection = { ["ResourceArn"] = true, ["Id"] = true, ["Name"] = true, nil }

function asserts.AssertProtection(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Protection to be of type 'table'")
	if struct["ResourceArn"] then asserts.AssertResourceArn(struct["ResourceArn"]) end
	if struct["Id"] then asserts.AssertProtectionId(struct["Id"]) end
	if struct["Name"] then asserts.AssertProtectionName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.Protection[k], "Protection contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Protection
-- <p>An object that represents a resource that is under DDoS protection.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceArn [ResourceArn] <p>The ARN (Amazon Resource Name) of the AWS resource that is protected.</p>
-- * Id [ProtectionId] <p>The unique identifier (ID) of the protection.</p>
-- * Name [ProtectionName] <p>The friendly name of the protection. For example, <code>My CloudFront distributions</code>.</p>
-- @return Protection structure as a key-value pair table
function M.Protection(args)
	assert(args, "You must provdide an argument table when creating Protection")
	local t = { 
		["ResourceArn"] = args["ResourceArn"],
		["Id"] = args["Id"],
		["Name"] = args["Name"],
	}
	asserts.AssertProtection(t)
	return t
end

keys.DeleteSubscriptionResponse = { nil }

function asserts.AssertDeleteSubscriptionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSubscriptionResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteSubscriptionResponse[k], "DeleteSubscriptionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSubscriptionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteSubscriptionResponse structure as a key-value pair table
function M.DeleteSubscriptionResponse(args)
	assert(args, "You must provdide an argument table when creating DeleteSubscriptionResponse")
	local t = { 
	}
	asserts.AssertDeleteSubscriptionResponse(t)
	return t
end

keys.CreateProtectionRequest = { ["ResourceArn"] = true, ["Name"] = true, nil }

function asserts.AssertCreateProtectionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateProtectionRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["ResourceArn"], "Expected key ResourceArn to exist in table")
	if struct["ResourceArn"] then asserts.AssertResourceArn(struct["ResourceArn"]) end
	if struct["Name"] then asserts.AssertProtectionName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateProtectionRequest[k], "CreateProtectionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateProtectionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceArn [ResourceArn] <p>The ARN (Amazon Resource Name) of the resource to be protected.</p>
-- * Name [ProtectionName] <p>Friendly name for the <code>Protection</code> you are creating.</p>
-- Required key: Name
-- Required key: ResourceArn
-- @return CreateProtectionRequest structure as a key-value pair table
function M.CreateProtectionRequest(args)
	assert(args, "You must provdide an argument table when creating CreateProtectionRequest")
	local t = { 
		["ResourceArn"] = args["ResourceArn"],
		["Name"] = args["Name"],
	}
	asserts.AssertCreateProtectionRequest(t)
	return t
end

keys.InvalidOperationException = { ["message"] = true, nil }

function asserts.AssertInvalidOperationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidOperationException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidOperationException[k], "InvalidOperationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidOperationException
-- <p>Exception that indicates that the operation would not cause any change to occur.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [errorMessage] 
-- @return InvalidOperationException structure as a key-value pair table
function M.InvalidOperationException(args)
	assert(args, "You must provdide an argument table when creating InvalidOperationException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidOperationException(t)
	return t
end

keys.ResourceNotFoundException = { ["message"] = true, nil }

function asserts.AssertResourceNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceNotFoundException[k], "ResourceNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundException
-- <p>Exception indicating the specified resource does not exist.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [errorMessage] 
-- @return ResourceNotFoundException structure as a key-value pair table
function M.ResourceNotFoundException(args)
	assert(args, "You must provdide an argument table when creating ResourceNotFoundException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertResourceNotFoundException(t)
	return t
end

keys.Subscription = { ["StartTime"] = true, ["TimeCommitmentInSeconds"] = true, nil }

function asserts.AssertSubscription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Subscription to be of type 'table'")
	if struct["StartTime"] then asserts.AssertTimestamp(struct["StartTime"]) end
	if struct["TimeCommitmentInSeconds"] then asserts.AssertDurationInSeconds(struct["TimeCommitmentInSeconds"]) end
	for k,_ in pairs(struct) do
		assert(keys.Subscription[k], "Subscription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Subscription
-- <p>Information about the AWS Shield Advanced subscription for an account.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StartTime [Timestamp] <p>The start time of the subscription, in the format "2016-12-16T13:50Z".</p>
-- * TimeCommitmentInSeconds [DurationInSeconds] <p>The length, in seconds, of the AWS Shield Advanced subscription for the account.</p>
-- @return Subscription structure as a key-value pair table
function M.Subscription(args)
	assert(args, "You must provdide an argument table when creating Subscription")
	local t = { 
		["StartTime"] = args["StartTime"],
		["TimeCommitmentInSeconds"] = args["TimeCommitmentInSeconds"],
	}
	asserts.AssertSubscription(t)
	return t
end

keys.SubResourceSummary = { ["Counters"] = true, ["Type"] = true, ["Id"] = true, ["AttackVectors"] = true, nil }

function asserts.AssertSubResourceSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubResourceSummary to be of type 'table'")
	if struct["Counters"] then asserts.AssertSummarizedCounterList(struct["Counters"]) end
	if struct["Type"] then asserts.AssertSubResourceType(struct["Type"]) end
	if struct["Id"] then asserts.AssertString(struct["Id"]) end
	if struct["AttackVectors"] then asserts.AssertSummarizedAttackVectorList(struct["AttackVectors"]) end
	for k,_ in pairs(struct) do
		assert(keys.SubResourceSummary[k], "SubResourceSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubResourceSummary
-- <p>The attack information for the specified SubResource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Counters [SummarizedCounterList] <p>The counters that describe the details of the attack.</p>
-- * Type [SubResourceType] <p>The <code>SubResource</code> type.</p>
-- * Id [String] <p>The unique identifier (ID) of the <code>SubResource</code>.</p>
-- * AttackVectors [SummarizedAttackVectorList] <p>The list of attack types and associated counters.</p>
-- @return SubResourceSummary structure as a key-value pair table
function M.SubResourceSummary(args)
	assert(args, "You must provdide an argument table when creating SubResourceSummary")
	local t = { 
		["Counters"] = args["Counters"],
		["Type"] = args["Type"],
		["Id"] = args["Id"],
		["AttackVectors"] = args["AttackVectors"],
	}
	asserts.AssertSubResourceSummary(t)
	return t
end

keys.AttackSummary = { ["EndTime"] = true, ["ResourceArn"] = true, ["AttackId"] = true, ["AttackVectors"] = true, ["StartTime"] = true, nil }

function asserts.AssertAttackSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttackSummary to be of type 'table'")
	if struct["EndTime"] then asserts.AssertAttackTimestamp(struct["EndTime"]) end
	if struct["ResourceArn"] then asserts.AssertString(struct["ResourceArn"]) end
	if struct["AttackId"] then asserts.AssertString(struct["AttackId"]) end
	if struct["AttackVectors"] then asserts.AssertAttackVectorDescriptionList(struct["AttackVectors"]) end
	if struct["StartTime"] then asserts.AssertAttackTimestamp(struct["StartTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttackSummary[k], "AttackSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttackSummary
-- <p>Summarizes all DDoS attacks for a specified time period.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EndTime [AttackTimestamp] <p>The end time of the attack, in the format 2016-12-16T13:50Z.</p>
-- * ResourceArn [String] <p>The ARN (Amazon Resource Name) of the resource that was attacked.</p>
-- * AttackId [String] <p>The unique identifier (ID) of the attack.</p>
-- * AttackVectors [AttackVectorDescriptionList] <p>The list of attacks for a specified time period.</p>
-- * StartTime [AttackTimestamp] <p>The start time of the attack, in the format 2016-12-16T13:50Z.</p>
-- @return AttackSummary structure as a key-value pair table
function M.AttackSummary(args)
	assert(args, "You must provdide an argument table when creating AttackSummary")
	local t = { 
		["EndTime"] = args["EndTime"],
		["ResourceArn"] = args["ResourceArn"],
		["AttackId"] = args["AttackId"],
		["AttackVectors"] = args["AttackVectors"],
		["StartTime"] = args["StartTime"],
	}
	asserts.AssertAttackSummary(t)
	return t
end

keys.AttackDetail = { ["Mitigations"] = true, ["ResourceArn"] = true, ["AttackId"] = true, ["SubResources"] = true, ["StartTime"] = true, ["EndTime"] = true, ["AttackCounters"] = true, nil }

function asserts.AssertAttackDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttackDetail to be of type 'table'")
	if struct["Mitigations"] then asserts.AssertMitigationList(struct["Mitigations"]) end
	if struct["ResourceArn"] then asserts.AssertResourceArn(struct["ResourceArn"]) end
	if struct["AttackId"] then asserts.AssertAttackId(struct["AttackId"]) end
	if struct["SubResources"] then asserts.AssertSubResourceSummaryList(struct["SubResources"]) end
	if struct["StartTime"] then asserts.AssertAttackTimestamp(struct["StartTime"]) end
	if struct["EndTime"] then asserts.AssertAttackTimestamp(struct["EndTime"]) end
	if struct["AttackCounters"] then asserts.AssertSummarizedCounterList(struct["AttackCounters"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttackDetail[k], "AttackDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttackDetail
-- <p>The details of a DDoS attack.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Mitigations [MitigationList] <p>List of mitigation actions taken for the attack.</p>
-- * ResourceArn [ResourceArn] <p>The ARN (Amazon Resource Name) of the resource that was attacked.</p>
-- * AttackId [AttackId] <p>The unique identifier (ID) of the attack.</p>
-- * SubResources [SubResourceSummaryList] <p>If applicable, additional detail about the resource being attacked, for example, IP address or URL.</p>
-- * StartTime [AttackTimestamp] <p>The time the attack started, in the format 2016-12-16T13:50Z.</p>
-- * EndTime [AttackTimestamp] <p>The time the attack ended, in the format 2016-12-16T13:50Z.</p>
-- * AttackCounters [SummarizedCounterList] <p>List of counters that describe the attack for the specified time period.</p>
-- @return AttackDetail structure as a key-value pair table
function M.AttackDetail(args)
	assert(args, "You must provdide an argument table when creating AttackDetail")
	local t = { 
		["Mitigations"] = args["Mitigations"],
		["ResourceArn"] = args["ResourceArn"],
		["AttackId"] = args["AttackId"],
		["SubResources"] = args["SubResources"],
		["StartTime"] = args["StartTime"],
		["EndTime"] = args["EndTime"],
		["AttackCounters"] = args["AttackCounters"],
	}
	asserts.AssertAttackDetail(t)
	return t
end

keys.OptimisticLockException = { ["message"] = true, nil }

function asserts.AssertOptimisticLockException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OptimisticLockException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.OptimisticLockException[k], "OptimisticLockException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OptimisticLockException
-- <p>Exception that indicates that the protection state has been modified by another client. You can retry the request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [errorMessage] 
-- @return OptimisticLockException structure as a key-value pair table
function M.OptimisticLockException(args)
	assert(args, "You must provdide an argument table when creating OptimisticLockException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertOptimisticLockException(t)
	return t
end

keys.DescribeAttackResponse = { ["Attack"] = true, nil }

function asserts.AssertDescribeAttackResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAttackResponse to be of type 'table'")
	if struct["Attack"] then asserts.AssertAttackDetail(struct["Attack"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAttackResponse[k], "DescribeAttackResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAttackResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Attack [AttackDetail] <p>The attack that is described.</p>
-- @return DescribeAttackResponse structure as a key-value pair table
function M.DescribeAttackResponse(args)
	assert(args, "You must provdide an argument table when creating DescribeAttackResponse")
	local t = { 
		["Attack"] = args["Attack"],
	}
	asserts.AssertDescribeAttackResponse(t)
	return t
end

keys.SummarizedAttackVector = { ["VectorCounters"] = true, ["VectorType"] = true, nil }

function asserts.AssertSummarizedAttackVector(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SummarizedAttackVector to be of type 'table'")
	assert(struct["VectorType"], "Expected key VectorType to exist in table")
	if struct["VectorCounters"] then asserts.AssertSummarizedCounterList(struct["VectorCounters"]) end
	if struct["VectorType"] then asserts.AssertString(struct["VectorType"]) end
	for k,_ in pairs(struct) do
		assert(keys.SummarizedAttackVector[k], "SummarizedAttackVector contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SummarizedAttackVector
-- <p>A summary of information about the attack.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VectorCounters [SummarizedCounterList] <p>The list of counters that describe the details of the attack.</p>
-- * VectorType [String] <p>The attack type, for example, SNMP reflection or SYN flood.</p>
-- Required key: VectorType
-- @return SummarizedAttackVector structure as a key-value pair table
function M.SummarizedAttackVector(args)
	assert(args, "You must provdide an argument table when creating SummarizedAttackVector")
	local t = { 
		["VectorCounters"] = args["VectorCounters"],
		["VectorType"] = args["VectorType"],
	}
	asserts.AssertSummarizedAttackVector(t)
	return t
end

keys.DescribeProtectionResponse = { ["Protection"] = true, nil }

function asserts.AssertDescribeProtectionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeProtectionResponse to be of type 'table'")
	if struct["Protection"] then asserts.AssertProtection(struct["Protection"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeProtectionResponse[k], "DescribeProtectionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeProtectionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Protection [Protection] <p>The <a>Protection</a> object that is described.</p>
-- @return DescribeProtectionResponse structure as a key-value pair table
function M.DescribeProtectionResponse(args)
	assert(args, "You must provdide an argument table when creating DescribeProtectionResponse")
	local t = { 
		["Protection"] = args["Protection"],
	}
	asserts.AssertDescribeProtectionResponse(t)
	return t
end

keys.SummarizedCounter = { ["Name"] = true, ["Max"] = true, ["Average"] = true, ["N"] = true, ["Sum"] = true, ["Unit"] = true, nil }

function asserts.AssertSummarizedCounter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SummarizedCounter to be of type 'table'")
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["Max"] then asserts.AssertDouble(struct["Max"]) end
	if struct["Average"] then asserts.AssertDouble(struct["Average"]) end
	if struct["N"] then asserts.AssertInteger(struct["N"]) end
	if struct["Sum"] then asserts.AssertDouble(struct["Sum"]) end
	if struct["Unit"] then asserts.AssertString(struct["Unit"]) end
	for k,_ in pairs(struct) do
		assert(keys.SummarizedCounter[k], "SummarizedCounter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SummarizedCounter
-- <p>The counter that describes a DDoS attack.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [String] <p>The counter name.</p>
-- * Max [Double] <p>The maximum value of the counter for a specified time period.</p>
-- * Average [Double] <p>The average value of the counter for a specified time period.</p>
-- * N [Integer] <p>The number of counters for a specified time period.</p>
-- * Sum [Double] <p>The total of counter values for a specified time period.</p>
-- * Unit [String] <p>The unit of the counters.</p>
-- @return SummarizedCounter structure as a key-value pair table
function M.SummarizedCounter(args)
	assert(args, "You must provdide an argument table when creating SummarizedCounter")
	local t = { 
		["Name"] = args["Name"],
		["Max"] = args["Max"],
		["Average"] = args["Average"],
		["N"] = args["N"],
		["Sum"] = args["Sum"],
		["Unit"] = args["Unit"],
	}
	asserts.AssertSummarizedCounter(t)
	return t
end

keys.CreateSubscriptionRequest = { nil }

function asserts.AssertCreateSubscriptionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSubscriptionRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CreateSubscriptionRequest[k], "CreateSubscriptionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSubscriptionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CreateSubscriptionRequest structure as a key-value pair table
function M.CreateSubscriptionRequest(args)
	assert(args, "You must provdide an argument table when creating CreateSubscriptionRequest")
	local t = { 
	}
	asserts.AssertCreateSubscriptionRequest(t)
	return t
end

keys.InvalidResourceException = { ["message"] = true, nil }

function asserts.AssertInvalidResourceException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidResourceException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidResourceException[k], "InvalidResourceException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidResourceException
-- <p>Exception that indicates that the resource is invalid. You might not have access to the resource, or the resource might not exist.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [errorMessage] 
-- @return InvalidResourceException structure as a key-value pair table
function M.InvalidResourceException(args)
	assert(args, "You must provdide an argument table when creating InvalidResourceException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidResourceException(t)
	return t
end

keys.DeleteProtectionResponse = { nil }

function asserts.AssertDeleteProtectionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteProtectionResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteProtectionResponse[k], "DeleteProtectionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteProtectionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteProtectionResponse structure as a key-value pair table
function M.DeleteProtectionResponse(args)
	assert(args, "You must provdide an argument table when creating DeleteProtectionResponse")
	local t = { 
	}
	asserts.AssertDeleteProtectionResponse(t)
	return t
end

keys.CreateSubscriptionResponse = { nil }

function asserts.AssertCreateSubscriptionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSubscriptionResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CreateSubscriptionResponse[k], "CreateSubscriptionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSubscriptionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CreateSubscriptionResponse structure as a key-value pair table
function M.CreateSubscriptionResponse(args)
	assert(args, "You must provdide an argument table when creating CreateSubscriptionResponse")
	local t = { 
	}
	asserts.AssertCreateSubscriptionResponse(t)
	return t
end

keys.DescribeProtectionRequest = { ["ProtectionId"] = true, nil }

function asserts.AssertDescribeProtectionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeProtectionRequest to be of type 'table'")
	assert(struct["ProtectionId"], "Expected key ProtectionId to exist in table")
	if struct["ProtectionId"] then asserts.AssertProtectionId(struct["ProtectionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeProtectionRequest[k], "DescribeProtectionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeProtectionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProtectionId [ProtectionId] <p>The unique identifier (ID) for the <a>Protection</a> object that is described.</p>
-- Required key: ProtectionId
-- @return DescribeProtectionRequest structure as a key-value pair table
function M.DescribeProtectionRequest(args)
	assert(args, "You must provdide an argument table when creating DescribeProtectionRequest")
	local t = { 
		["ProtectionId"] = args["ProtectionId"],
	}
	asserts.AssertDescribeProtectionRequest(t)
	return t
end

keys.AttackVectorDescription = { ["VectorType"] = true, nil }

function asserts.AssertAttackVectorDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttackVectorDescription to be of type 'table'")
	assert(struct["VectorType"], "Expected key VectorType to exist in table")
	if struct["VectorType"] then asserts.AssertString(struct["VectorType"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttackVectorDescription[k], "AttackVectorDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttackVectorDescription
-- <p>Describes the attack.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VectorType [String] <p>The attack type, for example, SNMP reflection or SYN flood.</p>
-- Required key: VectorType
-- @return AttackVectorDescription structure as a key-value pair table
function M.AttackVectorDescription(args)
	assert(args, "You must provdide an argument table when creating AttackVectorDescription")
	local t = { 
		["VectorType"] = args["VectorType"],
	}
	asserts.AssertAttackVectorDescription(t)
	return t
end

keys.ResourceAlreadyExistsException = { ["message"] = true, nil }

function asserts.AssertResourceAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceAlreadyExistsException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceAlreadyExistsException[k], "ResourceAlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceAlreadyExistsException
-- <p>Exception indicating the specified resource already exists.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [errorMessage] 
-- @return ResourceAlreadyExistsException structure as a key-value pair table
function M.ResourceAlreadyExistsException(args)
	assert(args, "You must provdide an argument table when creating ResourceAlreadyExistsException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertResourceAlreadyExistsException(t)
	return t
end

function asserts.AssertProtectionId(str)
	assert(str)
	assert(type(str) == "string", "Expected ProtectionId to be of type 'string'")
	assert(#str <= 36, "Expected string to be max 36 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ProtectionId(str)
	asserts.AssertProtectionId(str)
	return str
end

function asserts.AssertLimitType(str)
	assert(str)
	assert(type(str) == "string", "Expected LimitType to be of type 'string'")
end

--  
function M.LimitType(str)
	asserts.AssertLimitType(str)
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

function asserts.AssertResourceArn(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceArn to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ResourceArn(str)
	asserts.AssertResourceArn(str)
	return str
end

function asserts.AssertProtectionName(str)
	assert(str)
	assert(type(str) == "string", "Expected ProtectionName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ProtectionName(str)
	asserts.AssertProtectionName(str)
	return str
end

function asserts.AsserterrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected errorMessage to be of type 'string'")
end

--  
function M.errorMessage(str)
	asserts.AsserterrorMessage(str)
	return str
end

function asserts.AssertSubResourceType(str)
	assert(str)
	assert(type(str) == "string", "Expected SubResourceType to be of type 'string'")
end

--  
function M.SubResourceType(str)
	asserts.AssertSubResourceType(str)
	return str
end

function asserts.AssertToken(str)
	assert(str)
	assert(type(str) == "string", "Expected Token to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Token(str)
	asserts.AssertToken(str)
	return str
end

function asserts.AssertAttackId(str)
	assert(str)
	assert(type(str) == "string", "Expected AttackId to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AttackId(str)
	asserts.AssertAttackId(str)
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

function asserts.AssertLimitNumber(long)
	assert(long)
	assert(type(long) == "number", "Expected LimitNumber to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.LimitNumber(long)
	asserts.AssertLimitNumber(long)
	return long
end

function asserts.AssertDurationInSeconds(long)
	assert(long)
	assert(type(long) == "number", "Expected DurationInSeconds to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.DurationInSeconds(long)
	asserts.AssertDurationInSeconds(long)
	return long
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

function asserts.AssertTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Timestamp to be of type 'string'")
end

function M.Timestamp(timestamp)
	asserts.AssertTimestamp(timestamp)
	return timestamp
end

function asserts.AssertAttackTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected AttackTimestamp to be of type 'string'")
end

function M.AttackTimestamp(timestamp)
	asserts.AssertAttackTimestamp(timestamp)
	return timestamp
end

function asserts.AssertMitigationList(list)
	assert(list)
	assert(type(list) == "table", "Expected MitigationList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertMitigation(v)
	end
end

--  
-- List of Mitigation objects
function M.MitigationList(list)
	asserts.AssertMitigationList(list)
	return list
end

function asserts.AssertAttackVectorDescriptionList(list)
	assert(list)
	assert(type(list) == "table", "Expected AttackVectorDescriptionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAttackVectorDescription(v)
	end
end

--  
-- List of AttackVectorDescription objects
function M.AttackVectorDescriptionList(list)
	asserts.AssertAttackVectorDescriptionList(list)
	return list
end

function asserts.AssertProtections(list)
	assert(list)
	assert(type(list) == "table", "Expected Protections to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertProtection(v)
	end
end

--  
-- List of Protection objects
function M.Protections(list)
	asserts.AssertProtections(list)
	return list
end

function asserts.AssertResourceArnFilterList(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceArnFilterList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertResourceArn(v)
	end
end

--  
-- List of ResourceArn objects
function M.ResourceArnFilterList(list)
	asserts.AssertResourceArnFilterList(list)
	return list
end

function asserts.AssertSubResourceSummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected SubResourceSummaryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSubResourceSummary(v)
	end
end

--  
-- List of SubResourceSummary objects
function M.SubResourceSummaryList(list)
	asserts.AssertSubResourceSummaryList(list)
	return list
end

function asserts.AssertSummarizedAttackVectorList(list)
	assert(list)
	assert(type(list) == "table", "Expected SummarizedAttackVectorList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSummarizedAttackVector(v)
	end
end

--  
-- List of SummarizedAttackVector objects
function M.SummarizedAttackVectorList(list)
	asserts.AssertSummarizedAttackVectorList(list)
	return list
end

function asserts.AssertSummarizedCounterList(list)
	assert(list)
	assert(type(list) == "table", "Expected SummarizedCounterList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSummarizedCounter(v)
	end
end

--  
-- List of SummarizedCounter objects
function M.SummarizedCounterList(list)
	asserts.AssertSummarizedCounterList(list)
	return list
end

function asserts.AssertAttackSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected AttackSummaries to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAttackSummary(v)
	end
end

--  
-- List of AttackSummary objects
function M.AttackSummaries(list)
	asserts.AssertAttackSummaries(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "shield.amazonaws.com"
		end
	end
	local ss = { "shield" }
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
--- Call DeleteProtection asynchronously, invoking a callback when done
-- @param DeleteProtectionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteProtectionAsync(DeleteProtectionRequest, cb)
	assert(DeleteProtectionRequest, "You must provide a DeleteProtectionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSShield_20160616.DeleteProtection",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteProtectionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteProtection synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteProtectionRequest
-- @return response
-- @return error_message
function M.DeleteProtectionSync(DeleteProtectionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteProtectionAsync(DeleteProtectionRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeSubscription asynchronously, invoking a callback when done
-- @param DescribeSubscriptionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeSubscriptionAsync(DescribeSubscriptionRequest, cb)
	assert(DescribeSubscriptionRequest, "You must provide a DescribeSubscriptionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSShield_20160616.DescribeSubscription",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeSubscriptionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeSubscription synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeSubscriptionRequest
-- @return response
-- @return error_message
function M.DescribeSubscriptionSync(DescribeSubscriptionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeSubscriptionAsync(DescribeSubscriptionRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateSubscription asynchronously, invoking a callback when done
-- @param CreateSubscriptionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateSubscriptionAsync(CreateSubscriptionRequest, cb)
	assert(CreateSubscriptionRequest, "You must provide a CreateSubscriptionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSShield_20160616.CreateSubscription",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateSubscriptionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateSubscription synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateSubscriptionRequest
-- @return response
-- @return error_message
function M.CreateSubscriptionSync(CreateSubscriptionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateSubscriptionAsync(CreateSubscriptionRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeProtection asynchronously, invoking a callback when done
-- @param DescribeProtectionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeProtectionAsync(DescribeProtectionRequest, cb)
	assert(DescribeProtectionRequest, "You must provide a DescribeProtectionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSShield_20160616.DescribeProtection",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeProtectionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeProtection synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeProtectionRequest
-- @return response
-- @return error_message
function M.DescribeProtectionSync(DescribeProtectionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeProtectionAsync(DescribeProtectionRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeAttack asynchronously, invoking a callback when done
-- @param DescribeAttackRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeAttackAsync(DescribeAttackRequest, cb)
	assert(DescribeAttackRequest, "You must provide a DescribeAttackRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSShield_20160616.DescribeAttack",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeAttackRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeAttack synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeAttackRequest
-- @return response
-- @return error_message
function M.DescribeAttackSync(DescribeAttackRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeAttackAsync(DescribeAttackRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteSubscription asynchronously, invoking a callback when done
-- @param DeleteSubscriptionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteSubscriptionAsync(DeleteSubscriptionRequest, cb)
	assert(DeleteSubscriptionRequest, "You must provide a DeleteSubscriptionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSShield_20160616.DeleteSubscription",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteSubscriptionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteSubscription synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteSubscriptionRequest
-- @return response
-- @return error_message
function M.DeleteSubscriptionSync(DeleteSubscriptionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteSubscriptionAsync(DeleteSubscriptionRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListProtections asynchronously, invoking a callback when done
-- @param ListProtectionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListProtectionsAsync(ListProtectionsRequest, cb)
	assert(ListProtectionsRequest, "You must provide a ListProtectionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSShield_20160616.ListProtections",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ListProtectionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListProtections synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListProtectionsRequest
-- @return response
-- @return error_message
function M.ListProtectionsSync(ListProtectionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListProtectionsAsync(ListProtectionsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListAttacks asynchronously, invoking a callback when done
-- @param ListAttacksRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListAttacksAsync(ListAttacksRequest, cb)
	assert(ListAttacksRequest, "You must provide a ListAttacksRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSShield_20160616.ListAttacks",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ListAttacksRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListAttacks synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListAttacksRequest
-- @return response
-- @return error_message
function M.ListAttacksSync(ListAttacksRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListAttacksAsync(ListAttacksRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateProtection asynchronously, invoking a callback when done
-- @param CreateProtectionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateProtectionAsync(CreateProtectionRequest, cb)
	assert(CreateProtectionRequest, "You must provide a CreateProtectionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSShield_20160616.CreateProtection",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateProtectionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateProtection synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateProtectionRequest
-- @return response
-- @return error_message
function M.CreateProtectionSync(CreateProtectionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateProtectionAsync(CreateProtectionRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
