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

local DeleteProtectionRequest_keys = { "ProtectionId" = true, nil }

function M.AssertDeleteProtectionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteProtectionRequest to be of type 'table'")
	assert(struct["ProtectionId"], "Expected key ProtectionId to exist in table")
	if struct["ProtectionId"] then M.AssertProtectionId(struct["ProtectionId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteProtectionRequest_keys[k], "DeleteProtectionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteProtectionRequest
--  
-- @param ProtectionId [ProtectionId] &lt;p&gt;The unique identifier (ID) for the &lt;a&gt;Protection&lt;/a&gt; object to be deleted.&lt;/p&gt;
-- Required parameter: ProtectionId
function M.DeleteProtectionRequest(ProtectionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteProtectionRequest")
	local t = { 
		["ProtectionId"] = ProtectionId,
	}
	M.AssertDeleteProtectionRequest(t)
	return t
end

local ListProtectionsResponse_keys = { "Protections" = true, "NextToken" = true, nil }

function M.AssertListProtectionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListProtectionsResponse to be of type 'table'")
	if struct["Protections"] then M.AssertProtections(struct["Protections"]) end
	if struct["NextToken"] then M.AssertToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListProtectionsResponse_keys[k], "ListProtectionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListProtectionsResponse
--  
-- @param Protections [Protections] &lt;p&gt;The array of enabled &lt;a&gt;Protection&lt;/a&gt; objects.&lt;/p&gt;
-- @param NextToken [Token] &lt;p&gt;If you specify a value for &lt;code&gt;MaxResults&lt;/code&gt; and you have more Protections than the value of MaxResults, AWS Shield Advanced returns a NextToken value in the response that allows you to list another group of Protections. For the second and subsequent ListProtections requests, specify the value of NextToken from the previous response to get information about another batch of Protections.&lt;/p&gt;
function M.ListProtectionsResponse(Protections, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListProtectionsResponse")
	local t = { 
		["Protections"] = Protections,
		["NextToken"] = NextToken,
	}
	M.AssertListProtectionsResponse(t)
	return t
end

local DescribeAttackRequest_keys = { "AttackId" = true, nil }

function M.AssertDescribeAttackRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAttackRequest to be of type 'table'")
	assert(struct["AttackId"], "Expected key AttackId to exist in table")
	if struct["AttackId"] then M.AssertAttackId(struct["AttackId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeAttackRequest_keys[k], "DescribeAttackRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAttackRequest
--  
-- @param AttackId [AttackId] &lt;p&gt;The unique identifier (ID) for the attack that to be described.&lt;/p&gt;
-- Required parameter: AttackId
function M.DescribeAttackRequest(AttackId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAttackRequest")
	local t = { 
		["AttackId"] = AttackId,
	}
	M.AssertDescribeAttackRequest(t)
	return t
end

local TimeRange_keys = { "FromInclusive" = true, "ToExclusive" = true, nil }

function M.AssertTimeRange(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TimeRange to be of type 'table'")
	if struct["FromInclusive"] then M.AssertAttackTimestamp(struct["FromInclusive"]) end
	if struct["ToExclusive"] then M.AssertAttackTimestamp(struct["ToExclusive"]) end
	for k,_ in pairs(struct) do
		assert(TimeRange_keys[k], "TimeRange contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TimeRange
-- &lt;p&gt;The time range.&lt;/p&gt;
-- @param FromInclusive [AttackTimestamp] &lt;p&gt;The start time, in the format 2016-12-16T13:50Z.&lt;/p&gt;
-- @param ToExclusive [AttackTimestamp] &lt;p&gt;The end time, in the format 2016-12-16T15:50Z.&lt;/p&gt;
function M.TimeRange(FromInclusive, ToExclusive, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TimeRange")
	local t = { 
		["FromInclusive"] = FromInclusive,
		["ToExclusive"] = ToExclusive,
	}
	M.AssertTimeRange(t)
	return t
end

local DescribeSubscriptionResponse_keys = { "Subscription" = true, nil }

function M.AssertDescribeSubscriptionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSubscriptionResponse to be of type 'table'")
	if struct["Subscription"] then M.AssertSubscription(struct["Subscription"]) end
	for k,_ in pairs(struct) do
		assert(DescribeSubscriptionResponse_keys[k], "DescribeSubscriptionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSubscriptionResponse
--  
-- @param Subscription [Subscription] &lt;p&gt;The AWS Shield Advanced subscription details for an account.&lt;/p&gt;
function M.DescribeSubscriptionResponse(Subscription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeSubscriptionResponse")
	local t = { 
		["Subscription"] = Subscription,
	}
	M.AssertDescribeSubscriptionResponse(t)
	return t
end

local Mitigation_keys = { "MitigationName" = true, nil }

function M.AssertMitigation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Mitigation to be of type 'table'")
	if struct["MitigationName"] then M.AssertString(struct["MitigationName"]) end
	for k,_ in pairs(struct) do
		assert(Mitigation_keys[k], "Mitigation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Mitigation
-- &lt;p&gt;The mitigation applied to a DDoS attack.&lt;/p&gt;
-- @param MitigationName [String] &lt;p&gt;The name of the mitigation taken for this attack.&lt;/p&gt;
function M.Mitigation(MitigationName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Mitigation")
	local t = { 
		["MitigationName"] = MitigationName,
	}
	M.AssertMitigation(t)
	return t
end

local InternalErrorException_keys = { "message" = true, nil }

function M.AssertInternalErrorException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalErrorException to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InternalErrorException_keys[k], "InternalErrorException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalErrorException
-- &lt;p&gt;Exception that indicates that a problem occurred with the service infrastructure. You can retry the request.&lt;/p&gt;
-- @param message [errorMessage] &lt;p&gt;Exception that indicates that a problem occurred with the service infrastructure. You can retry the request.&lt;/p&gt;
function M.InternalErrorException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalErrorException")
	local t = { 
		["message"] = message,
	}
	M.AssertInternalErrorException(t)
	return t
end

local ListAttacksResponse_keys = { "NextToken" = true, "AttackSummaries" = true, nil }

function M.AssertListAttacksResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAttacksResponse to be of type 'table'")
	if struct["NextToken"] then M.AssertToken(struct["NextToken"]) end
	if struct["AttackSummaries"] then M.AssertAttackSummaries(struct["AttackSummaries"]) end
	for k,_ in pairs(struct) do
		assert(ListAttacksResponse_keys[k], "ListAttacksResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAttacksResponse
--  
-- @param NextToken [Token] &lt;p&gt;The token returned by a previous call to indicate that there is more data available. If not null, more results are available. Pass this value for the &lt;code&gt;NextMarker&lt;/code&gt; parameter in a subsequent call to &lt;code&gt;ListAttacks&lt;/code&gt; to retrieve the next set of items.&lt;/p&gt;
-- @param AttackSummaries [AttackSummaries] &lt;p&gt;The attack information for the specified time range.&lt;/p&gt;
function M.ListAttacksResponse(NextToken, AttackSummaries, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAttacksResponse")
	local t = { 
		["NextToken"] = NextToken,
		["AttackSummaries"] = AttackSummaries,
	}
	M.AssertListAttacksResponse(t)
	return t
end

local ListAttacksRequest_keys = { "NextToken" = true, "EndTime" = true, "ResourceArns" = true, "MaxResults" = true, "StartTime" = true, nil }

function M.AssertListAttacksRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAttacksRequest to be of type 'table'")
	if struct["NextToken"] then M.AssertToken(struct["NextToken"]) end
	if struct["EndTime"] then M.AssertTimeRange(struct["EndTime"]) end
	if struct["ResourceArns"] then M.AssertResourceArnFilterList(struct["ResourceArns"]) end
	if struct["MaxResults"] then M.AssertMaxResults(struct["MaxResults"]) end
	if struct["StartTime"] then M.AssertTimeRange(struct["StartTime"]) end
	for k,_ in pairs(struct) do
		assert(ListAttacksRequest_keys[k], "ListAttacksRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAttacksRequest
--  
-- @param NextToken [Token] &lt;p&gt;The &lt;code&gt;ListAttacksRequest.NextMarker&lt;/code&gt; value from a previous call to &lt;code&gt;ListAttacksRequest&lt;/code&gt;. Pass null if this is the first call.&lt;/p&gt;
-- @param EndTime [TimeRange] &lt;p&gt;The end of the time period for the attacks.&lt;/p&gt;
-- @param ResourceArns [ResourceArnFilterList] &lt;p&gt;The ARN (Amazon Resource Name) of the resource that was attacked. If this is left blank, all applicable resources for this account will be included.&lt;/p&gt;
-- @param MaxResults [MaxResults] &lt;p&gt;The maximum number of &lt;a&gt;AttackSummary&lt;/a&gt; objects to be returned. If this is left blank, the first 20 results will be returned.&lt;/p&gt;
-- @param StartTime [TimeRange] &lt;p&gt;The time period for the attacks.&lt;/p&gt;
function M.ListAttacksRequest(NextToken, EndTime, ResourceArns, MaxResults, StartTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAttacksRequest")
	local t = { 
		["NextToken"] = NextToken,
		["EndTime"] = EndTime,
		["ResourceArns"] = ResourceArns,
		["MaxResults"] = MaxResults,
		["StartTime"] = StartTime,
	}
	M.AssertListAttacksRequest(t)
	return t
end

local LockedSubscriptionException_keys = { "message" = true, nil }

function M.AssertLockedSubscriptionException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LockedSubscriptionException to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(LockedSubscriptionException_keys[k], "LockedSubscriptionException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LockedSubscriptionException
-- &lt;p&gt;Exception that indicates that the subscription has been modified by another client. You can retry the request.&lt;/p&gt;
-- @param message [errorMessage] &lt;p&gt;Exception that indicates that the subscription has been modified by another client. You can retry the request.&lt;/p&gt;
function M.LockedSubscriptionException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LockedSubscriptionException")
	local t = { 
		["message"] = message,
	}
	M.AssertLockedSubscriptionException(t)
	return t
end

local DeleteSubscriptionRequest_keys = { nil }

function M.AssertDeleteSubscriptionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSubscriptionRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteSubscriptionRequest_keys[k], "DeleteSubscriptionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSubscriptionRequest
--  
function M.DeleteSubscriptionRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteSubscriptionRequest")
	local t = { 
	}
	M.AssertDeleteSubscriptionRequest(t)
	return t
end

local CreateProtectionResponse_keys = { "ProtectionId" = true, nil }

function M.AssertCreateProtectionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateProtectionResponse to be of type 'table'")
	if struct["ProtectionId"] then M.AssertProtectionId(struct["ProtectionId"]) end
	for k,_ in pairs(struct) do
		assert(CreateProtectionResponse_keys[k], "CreateProtectionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateProtectionResponse
--  
-- @param ProtectionId [ProtectionId] &lt;p&gt;The unique identifier (ID) for the &lt;a&gt;Protection&lt;/a&gt; object that is created.&lt;/p&gt;
function M.CreateProtectionResponse(ProtectionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateProtectionResponse")
	local t = { 
		["ProtectionId"] = ProtectionId,
	}
	M.AssertCreateProtectionResponse(t)
	return t
end

local ListProtectionsRequest_keys = { "NextToken" = true, "MaxResults" = true, nil }

function M.AssertListProtectionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListProtectionsRequest to be of type 'table'")
	if struct["NextToken"] then M.AssertToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListProtectionsRequest_keys[k], "ListProtectionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListProtectionsRequest
--  
-- @param NextToken [Token] &lt;p&gt;The &lt;code&gt;ListProtectionsRequest.NextToken&lt;/code&gt; value from a previous call to &lt;code&gt;ListProtections&lt;/code&gt;. Pass null if this is the first call.&lt;/p&gt;
-- @param MaxResults [MaxResults] &lt;p&gt;The maximum number of &lt;a&gt;Protection&lt;/a&gt; objects to be returned. If this is left blank the first 20 results will be returned.&lt;/p&gt;
function M.ListProtectionsRequest(NextToken, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListProtectionsRequest")
	local t = { 
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
	}
	M.AssertListProtectionsRequest(t)
	return t
end

local LimitsExceededException_keys = { "Limit" = true, "message" = true, "Type" = true, nil }

function M.AssertLimitsExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitsExceededException to be of type 'table'")
	if struct["Limit"] then M.AssertLimitNumber(struct["Limit"]) end
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	if struct["Type"] then M.AssertLimitType(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(LimitsExceededException_keys[k], "LimitsExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitsExceededException
-- &lt;p&gt;Exception that indicates that the operation would exceed a limit.&lt;/p&gt;
-- @param Limit [LimitNumber] &lt;p&gt;Exception that indicates that the operation would exceed a limit.&lt;/p&gt;
-- @param message [errorMessage] &lt;p&gt;Exception that indicates that the operation would exceed a limit.&lt;/p&gt;
-- @param Type [LimitType] &lt;p&gt;Exception that indicates that the operation would exceed a limit.&lt;/p&gt;
function M.LimitsExceededException(Limit, message, Type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitsExceededException")
	local t = { 
		["Limit"] = Limit,
		["message"] = message,
		["Type"] = Type,
	}
	M.AssertLimitsExceededException(t)
	return t
end

local InvalidParameterException_keys = { "message" = true, nil }

function M.AssertInvalidParameterException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterException to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidParameterException_keys[k], "InvalidParameterException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterException
-- &lt;p&gt;Exception that indicates that the parameters passed to the API are invalid. &lt;/p&gt;
-- @param message [errorMessage] &lt;p&gt;Exception that indicates that the parameters passed to the API are invalid. &lt;/p&gt;
function M.InvalidParameterException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidParameterException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidParameterException(t)
	return t
end

local DescribeSubscriptionRequest_keys = { nil }

function M.AssertDescribeSubscriptionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSubscriptionRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DescribeSubscriptionRequest_keys[k], "DescribeSubscriptionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSubscriptionRequest
--  
function M.DescribeSubscriptionRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeSubscriptionRequest")
	local t = { 
	}
	M.AssertDescribeSubscriptionRequest(t)
	return t
end

local Protection_keys = { "ResourceArn" = true, "Id" = true, "Name" = true, nil }

function M.AssertProtection(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Protection to be of type 'table'")
	if struct["ResourceArn"] then M.AssertResourceArn(struct["ResourceArn"]) end
	if struct["Id"] then M.AssertProtectionId(struct["Id"]) end
	if struct["Name"] then M.AssertProtectionName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(Protection_keys[k], "Protection contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Protection
-- &lt;p&gt;An object that represents a resource that is under DDoS protection.&lt;/p&gt;
-- @param ResourceArn [ResourceArn] &lt;p&gt;The ARN (Amazon Resource Name) of the AWS resource that is protected.&lt;/p&gt;
-- @param Id [ProtectionId] &lt;p&gt;The unique identifier (ID) of the protection.&lt;/p&gt;
-- @param Name [ProtectionName] &lt;p&gt;The friendly name of the protection. For example, &lt;code&gt;My CloudFront distributions&lt;/code&gt;.&lt;/p&gt;
function M.Protection(ResourceArn, Id, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Protection")
	local t = { 
		["ResourceArn"] = ResourceArn,
		["Id"] = Id,
		["Name"] = Name,
	}
	M.AssertProtection(t)
	return t
end

local DeleteSubscriptionResponse_keys = { nil }

function M.AssertDeleteSubscriptionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSubscriptionResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteSubscriptionResponse_keys[k], "DeleteSubscriptionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSubscriptionResponse
--  
function M.DeleteSubscriptionResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteSubscriptionResponse")
	local t = { 
	}
	M.AssertDeleteSubscriptionResponse(t)
	return t
end

local CreateProtectionRequest_keys = { "ResourceArn" = true, "Name" = true, nil }

function M.AssertCreateProtectionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateProtectionRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["ResourceArn"], "Expected key ResourceArn to exist in table")
	if struct["ResourceArn"] then M.AssertResourceArn(struct["ResourceArn"]) end
	if struct["Name"] then M.AssertProtectionName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(CreateProtectionRequest_keys[k], "CreateProtectionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateProtectionRequest
--  
-- @param ResourceArn [ResourceArn] &lt;p&gt;The ARN (Amazon Resource Name) of the resource to be protected.&lt;/p&gt;
-- @param Name [ProtectionName] &lt;p&gt;Friendly name for the &lt;code&gt;Protection&lt;/code&gt; you are creating.&lt;/p&gt;
-- Required parameter: Name
-- Required parameter: ResourceArn
function M.CreateProtectionRequest(ResourceArn, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateProtectionRequest")
	local t = { 
		["ResourceArn"] = ResourceArn,
		["Name"] = Name,
	}
	M.AssertCreateProtectionRequest(t)
	return t
end

local InvalidOperationException_keys = { "message" = true, nil }

function M.AssertInvalidOperationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidOperationException to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidOperationException_keys[k], "InvalidOperationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidOperationException
-- &lt;p&gt;Exception that indicates that the operation would not cause any change to occur.&lt;/p&gt;
-- @param message [errorMessage] &lt;p&gt;Exception that indicates that the operation would not cause any change to occur.&lt;/p&gt;
function M.InvalidOperationException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidOperationException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidOperationException(t)
	return t
end

local ResourceNotFoundException_keys = { "message" = true, nil }

function M.AssertResourceNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundException to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ResourceNotFoundException_keys[k], "ResourceNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundException
-- &lt;p&gt;Exception indicating the specified resource does not exist.&lt;/p&gt;
-- @param message [errorMessage] &lt;p&gt;Exception indicating the specified resource does not exist.&lt;/p&gt;
function M.ResourceNotFoundException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundException")
	local t = { 
		["message"] = message,
	}
	M.AssertResourceNotFoundException(t)
	return t
end

local Subscription_keys = { "StartTime" = true, "TimeCommitmentInSeconds" = true, nil }

function M.AssertSubscription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Subscription to be of type 'table'")
	if struct["StartTime"] then M.AssertTimestamp(struct["StartTime"]) end
	if struct["TimeCommitmentInSeconds"] then M.AssertDurationInSeconds(struct["TimeCommitmentInSeconds"]) end
	for k,_ in pairs(struct) do
		assert(Subscription_keys[k], "Subscription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Subscription
-- &lt;p&gt;Information about the AWS Shield Advanced subscription for an account.&lt;/p&gt;
-- @param StartTime [Timestamp] &lt;p&gt;The start time of the subscription, in the format &quot;2016-12-16T13:50Z&quot;.&lt;/p&gt;
-- @param TimeCommitmentInSeconds [DurationInSeconds] &lt;p&gt;The length, in seconds, of the AWS Shield Advanced subscription for the account.&lt;/p&gt;
function M.Subscription(StartTime, TimeCommitmentInSeconds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Subscription")
	local t = { 
		["StartTime"] = StartTime,
		["TimeCommitmentInSeconds"] = TimeCommitmentInSeconds,
	}
	M.AssertSubscription(t)
	return t
end

local SubResourceSummary_keys = { "Counters" = true, "Type" = true, "Id" = true, "AttackVectors" = true, nil }

function M.AssertSubResourceSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubResourceSummary to be of type 'table'")
	if struct["Counters"] then M.AssertSummarizedCounterList(struct["Counters"]) end
	if struct["Type"] then M.AssertSubResourceType(struct["Type"]) end
	if struct["Id"] then M.AssertString(struct["Id"]) end
	if struct["AttackVectors"] then M.AssertSummarizedAttackVectorList(struct["AttackVectors"]) end
	for k,_ in pairs(struct) do
		assert(SubResourceSummary_keys[k], "SubResourceSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubResourceSummary
-- &lt;p&gt;The attack information for the specified SubResource.&lt;/p&gt;
-- @param Counters [SummarizedCounterList] &lt;p&gt;The counters that describe the details of the attack.&lt;/p&gt;
-- @param Type [SubResourceType] &lt;p&gt;The &lt;code&gt;SubResource&lt;/code&gt; type.&lt;/p&gt;
-- @param Id [String] &lt;p&gt;The unique identifier (ID) of the &lt;code&gt;SubResource&lt;/code&gt;.&lt;/p&gt;
-- @param AttackVectors [SummarizedAttackVectorList] &lt;p&gt;The list of attack types and associated counters.&lt;/p&gt;
function M.SubResourceSummary(Counters, Type, Id, AttackVectors, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubResourceSummary")
	local t = { 
		["Counters"] = Counters,
		["Type"] = Type,
		["Id"] = Id,
		["AttackVectors"] = AttackVectors,
	}
	M.AssertSubResourceSummary(t)
	return t
end

local AttackSummary_keys = { "EndTime" = true, "ResourceArn" = true, "AttackId" = true, "AttackVectors" = true, "StartTime" = true, nil }

function M.AssertAttackSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttackSummary to be of type 'table'")
	if struct["EndTime"] then M.AssertAttackTimestamp(struct["EndTime"]) end
	if struct["ResourceArn"] then M.AssertString(struct["ResourceArn"]) end
	if struct["AttackId"] then M.AssertString(struct["AttackId"]) end
	if struct["AttackVectors"] then M.AssertAttackVectorDescriptionList(struct["AttackVectors"]) end
	if struct["StartTime"] then M.AssertAttackTimestamp(struct["StartTime"]) end
	for k,_ in pairs(struct) do
		assert(AttackSummary_keys[k], "AttackSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttackSummary
-- &lt;p&gt;Summarizes all DDoS attacks for a specified time period.&lt;/p&gt;
-- @param EndTime [AttackTimestamp] &lt;p&gt;The end time of the attack, in the format 2016-12-16T13:50Z.&lt;/p&gt;
-- @param ResourceArn [String] &lt;p&gt;The ARN (Amazon Resource Name) of the resource that was attacked.&lt;/p&gt;
-- @param AttackId [String] &lt;p&gt;The unique identifier (ID) of the attack.&lt;/p&gt;
-- @param AttackVectors [AttackVectorDescriptionList] &lt;p&gt;The list of attacks for a specified time period.&lt;/p&gt;
-- @param StartTime [AttackTimestamp] &lt;p&gt;The start time of the attack, in the format 2016-12-16T13:50Z.&lt;/p&gt;
function M.AttackSummary(EndTime, ResourceArn, AttackId, AttackVectors, StartTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttackSummary")
	local t = { 
		["EndTime"] = EndTime,
		["ResourceArn"] = ResourceArn,
		["AttackId"] = AttackId,
		["AttackVectors"] = AttackVectors,
		["StartTime"] = StartTime,
	}
	M.AssertAttackSummary(t)
	return t
end

local AttackDetail_keys = { "Mitigations" = true, "ResourceArn" = true, "AttackId" = true, "SubResources" = true, "StartTime" = true, "EndTime" = true, "AttackCounters" = true, nil }

function M.AssertAttackDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttackDetail to be of type 'table'")
	if struct["Mitigations"] then M.AssertMitigationList(struct["Mitigations"]) end
	if struct["ResourceArn"] then M.AssertResourceArn(struct["ResourceArn"]) end
	if struct["AttackId"] then M.AssertAttackId(struct["AttackId"]) end
	if struct["SubResources"] then M.AssertSubResourceSummaryList(struct["SubResources"]) end
	if struct["StartTime"] then M.AssertAttackTimestamp(struct["StartTime"]) end
	if struct["EndTime"] then M.AssertAttackTimestamp(struct["EndTime"]) end
	if struct["AttackCounters"] then M.AssertSummarizedCounterList(struct["AttackCounters"]) end
	for k,_ in pairs(struct) do
		assert(AttackDetail_keys[k], "AttackDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttackDetail
-- &lt;p&gt;The details of a DDoS attack.&lt;/p&gt;
-- @param Mitigations [MitigationList] &lt;p&gt;List of mitigation actions taken for the attack.&lt;/p&gt;
-- @param ResourceArn [ResourceArn] &lt;p&gt;The ARN (Amazon Resource Name) of the resource that was attacked.&lt;/p&gt;
-- @param AttackId [AttackId] &lt;p&gt;The unique identifier (ID) of the attack.&lt;/p&gt;
-- @param SubResources [SubResourceSummaryList] &lt;p&gt;If applicable, additional detail about the resource being attacked, for example, IP address or URL.&lt;/p&gt;
-- @param StartTime [AttackTimestamp] &lt;p&gt;The time the attack started, in the format 2016-12-16T13:50Z.&lt;/p&gt;
-- @param EndTime [AttackTimestamp] &lt;p&gt;The time the attack ended, in the format 2016-12-16T13:50Z.&lt;/p&gt;
-- @param AttackCounters [SummarizedCounterList] &lt;p&gt;List of counters that describe the attack for the specified time period.&lt;/p&gt;
function M.AttackDetail(Mitigations, ResourceArn, AttackId, SubResources, StartTime, EndTime, AttackCounters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttackDetail")
	local t = { 
		["Mitigations"] = Mitigations,
		["ResourceArn"] = ResourceArn,
		["AttackId"] = AttackId,
		["SubResources"] = SubResources,
		["StartTime"] = StartTime,
		["EndTime"] = EndTime,
		["AttackCounters"] = AttackCounters,
	}
	M.AssertAttackDetail(t)
	return t
end

local OptimisticLockException_keys = { "message" = true, nil }

function M.AssertOptimisticLockException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OptimisticLockException to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(OptimisticLockException_keys[k], "OptimisticLockException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OptimisticLockException
-- &lt;p&gt;Exception that indicates that the protection state has been modified by another client. You can retry the request.&lt;/p&gt;
-- @param message [errorMessage] &lt;p&gt;Exception that indicates that the protection state has been modified by another client. You can retry the request.&lt;/p&gt;
function M.OptimisticLockException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OptimisticLockException")
	local t = { 
		["message"] = message,
	}
	M.AssertOptimisticLockException(t)
	return t
end

local DescribeAttackResponse_keys = { "Attack" = true, nil }

function M.AssertDescribeAttackResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAttackResponse to be of type 'table'")
	if struct["Attack"] then M.AssertAttackDetail(struct["Attack"]) end
	for k,_ in pairs(struct) do
		assert(DescribeAttackResponse_keys[k], "DescribeAttackResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAttackResponse
--  
-- @param Attack [AttackDetail] &lt;p&gt;The attack that is described.&lt;/p&gt;
function M.DescribeAttackResponse(Attack, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAttackResponse")
	local t = { 
		["Attack"] = Attack,
	}
	M.AssertDescribeAttackResponse(t)
	return t
end

local SummarizedAttackVector_keys = { "VectorCounters" = true, "VectorType" = true, nil }

function M.AssertSummarizedAttackVector(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SummarizedAttackVector to be of type 'table'")
	assert(struct["VectorType"], "Expected key VectorType to exist in table")
	if struct["VectorCounters"] then M.AssertSummarizedCounterList(struct["VectorCounters"]) end
	if struct["VectorType"] then M.AssertString(struct["VectorType"]) end
	for k,_ in pairs(struct) do
		assert(SummarizedAttackVector_keys[k], "SummarizedAttackVector contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SummarizedAttackVector
-- &lt;p&gt;A summary of information about the attack.&lt;/p&gt;
-- @param VectorCounters [SummarizedCounterList] &lt;p&gt;The list of counters that describe the details of the attack.&lt;/p&gt;
-- @param VectorType [String] &lt;p&gt;The attack type, for example, SNMP reflection or SYN flood.&lt;/p&gt;
-- Required parameter: VectorType
function M.SummarizedAttackVector(VectorCounters, VectorType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SummarizedAttackVector")
	local t = { 
		["VectorCounters"] = VectorCounters,
		["VectorType"] = VectorType,
	}
	M.AssertSummarizedAttackVector(t)
	return t
end

local DescribeProtectionResponse_keys = { "Protection" = true, nil }

function M.AssertDescribeProtectionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeProtectionResponse to be of type 'table'")
	if struct["Protection"] then M.AssertProtection(struct["Protection"]) end
	for k,_ in pairs(struct) do
		assert(DescribeProtectionResponse_keys[k], "DescribeProtectionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeProtectionResponse
--  
-- @param Protection [Protection] &lt;p&gt;The &lt;a&gt;Protection&lt;/a&gt; object that is described.&lt;/p&gt;
function M.DescribeProtectionResponse(Protection, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeProtectionResponse")
	local t = { 
		["Protection"] = Protection,
	}
	M.AssertDescribeProtectionResponse(t)
	return t
end

local SummarizedCounter_keys = { "Name" = true, "Max" = true, "Average" = true, "N" = true, "Sum" = true, "Unit" = true, nil }

function M.AssertSummarizedCounter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SummarizedCounter to be of type 'table'")
	if struct["Name"] then M.AssertString(struct["Name"]) end
	if struct["Max"] then M.AssertDouble(struct["Max"]) end
	if struct["Average"] then M.AssertDouble(struct["Average"]) end
	if struct["N"] then M.AssertInteger(struct["N"]) end
	if struct["Sum"] then M.AssertDouble(struct["Sum"]) end
	if struct["Unit"] then M.AssertString(struct["Unit"]) end
	for k,_ in pairs(struct) do
		assert(SummarizedCounter_keys[k], "SummarizedCounter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SummarizedCounter
-- &lt;p&gt;The counter that describes a DDoS attack.&lt;/p&gt;
-- @param Name [String] &lt;p&gt;The counter name.&lt;/p&gt;
-- @param Max [Double] &lt;p&gt;The maximum value of the counter for a specified time period.&lt;/p&gt;
-- @param Average [Double] &lt;p&gt;The average value of the counter for a specified time period.&lt;/p&gt;
-- @param N [Integer] &lt;p&gt;The number of counters for a specified time period.&lt;/p&gt;
-- @param Sum [Double] &lt;p&gt;The total of counter values for a specified time period.&lt;/p&gt;
-- @param Unit [String] &lt;p&gt;The unit of the counters.&lt;/p&gt;
function M.SummarizedCounter(Name, Max, Average, N, Sum, Unit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SummarizedCounter")
	local t = { 
		["Name"] = Name,
		["Max"] = Max,
		["Average"] = Average,
		["N"] = N,
		["Sum"] = Sum,
		["Unit"] = Unit,
	}
	M.AssertSummarizedCounter(t)
	return t
end

local CreateSubscriptionRequest_keys = { nil }

function M.AssertCreateSubscriptionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSubscriptionRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(CreateSubscriptionRequest_keys[k], "CreateSubscriptionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSubscriptionRequest
--  
function M.CreateSubscriptionRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateSubscriptionRequest")
	local t = { 
	}
	M.AssertCreateSubscriptionRequest(t)
	return t
end

local InvalidResourceException_keys = { "message" = true, nil }

function M.AssertInvalidResourceException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidResourceException to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidResourceException_keys[k], "InvalidResourceException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidResourceException
-- &lt;p&gt;Exception that indicates that the resource is invalid. You might not have access to the resource, or the resource might not exist.&lt;/p&gt;
-- @param message [errorMessage] &lt;p&gt;Exception that indicates that the resource is invalid. You might not have access to the resource, or the resource might not exist.&lt;/p&gt;
function M.InvalidResourceException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidResourceException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidResourceException(t)
	return t
end

local DeleteProtectionResponse_keys = { nil }

function M.AssertDeleteProtectionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteProtectionResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteProtectionResponse_keys[k], "DeleteProtectionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteProtectionResponse
--  
function M.DeleteProtectionResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteProtectionResponse")
	local t = { 
	}
	M.AssertDeleteProtectionResponse(t)
	return t
end

local CreateSubscriptionResponse_keys = { nil }

function M.AssertCreateSubscriptionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSubscriptionResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(CreateSubscriptionResponse_keys[k], "CreateSubscriptionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSubscriptionResponse
--  
function M.CreateSubscriptionResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateSubscriptionResponse")
	local t = { 
	}
	M.AssertCreateSubscriptionResponse(t)
	return t
end

local DescribeProtectionRequest_keys = { "ProtectionId" = true, nil }

function M.AssertDescribeProtectionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeProtectionRequest to be of type 'table'")
	assert(struct["ProtectionId"], "Expected key ProtectionId to exist in table")
	if struct["ProtectionId"] then M.AssertProtectionId(struct["ProtectionId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeProtectionRequest_keys[k], "DescribeProtectionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeProtectionRequest
--  
-- @param ProtectionId [ProtectionId] &lt;p&gt;The unique identifier (ID) for the &lt;a&gt;Protection&lt;/a&gt; object that is described.&lt;/p&gt;
-- Required parameter: ProtectionId
function M.DescribeProtectionRequest(ProtectionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeProtectionRequest")
	local t = { 
		["ProtectionId"] = ProtectionId,
	}
	M.AssertDescribeProtectionRequest(t)
	return t
end

local AttackVectorDescription_keys = { "VectorType" = true, nil }

function M.AssertAttackVectorDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttackVectorDescription to be of type 'table'")
	assert(struct["VectorType"], "Expected key VectorType to exist in table")
	if struct["VectorType"] then M.AssertString(struct["VectorType"]) end
	for k,_ in pairs(struct) do
		assert(AttackVectorDescription_keys[k], "AttackVectorDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttackVectorDescription
-- &lt;p&gt;Describes the attack.&lt;/p&gt;
-- @param VectorType [String] &lt;p&gt;The attack type, for example, SNMP reflection or SYN flood.&lt;/p&gt;
-- Required parameter: VectorType
function M.AttackVectorDescription(VectorType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttackVectorDescription")
	local t = { 
		["VectorType"] = VectorType,
	}
	M.AssertAttackVectorDescription(t)
	return t
end

local ResourceAlreadyExistsException_keys = { "message" = true, nil }

function M.AssertResourceAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceAlreadyExistsException to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ResourceAlreadyExistsException_keys[k], "ResourceAlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceAlreadyExistsException
-- &lt;p&gt;Exception indicating the specified resource already exists.&lt;/p&gt;
-- @param message [errorMessage] &lt;p&gt;Exception indicating the specified resource already exists.&lt;/p&gt;
function M.ResourceAlreadyExistsException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceAlreadyExistsException")
	local t = { 
		["message"] = message,
	}
	M.AssertResourceAlreadyExistsException(t)
	return t
end

function M.AssertProtectionId(str)
	assert(str)
	assert(type(str) == "string", "Expected ProtectionId to be of type 'string'")
	assert(#str <= 36, "Expected string to be max 36 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[a-zA-Z0-9%%-]*"), "Expected string to match pattern '[a-zA-Z0-9%%-]*'")
end

--  
function M.ProtectionId(str)
	M.AssertProtectionId(str)
	return str
end

function M.AssertLimitType(str)
	assert(str)
	assert(type(str) == "string", "Expected LimitType to be of type 'string'")
end

--  
function M.LimitType(str)
	M.AssertLimitType(str)
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

function M.AssertResourceArn(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceArn to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ResourceArn(str)
	M.AssertResourceArn(str)
	return str
end

function M.AssertProtectionName(str)
	assert(str)
	assert(type(str) == "string", "Expected ProtectionName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[ a-zA-Z0-9_%%.%%-]*"), "Expected string to match pattern '[ a-zA-Z0-9_%%.%%-]*'")
end

--  
function M.ProtectionName(str)
	M.AssertProtectionName(str)
	return str
end

function M.AsserterrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected errorMessage to be of type 'string'")
end

--  
function M.errorMessage(str)
	M.AsserterrorMessage(str)
	return str
end

function M.AssertSubResourceType(str)
	assert(str)
	assert(type(str) == "string", "Expected SubResourceType to be of type 'string'")
end

--  
function M.SubResourceType(str)
	M.AssertSubResourceType(str)
	return str
end

function M.AssertToken(str)
	assert(str)
	assert(type(str) == "string", "Expected Token to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Token(str)
	M.AssertToken(str)
	return str
end

function M.AssertAttackId(str)
	assert(str)
	assert(type(str) == "string", "Expected AttackId to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[a-zA-Z0-9%%-]*"), "Expected string to match pattern '[a-zA-Z0-9%%-]*'")
end

--  
function M.AttackId(str)
	M.AssertAttackId(str)
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

function M.AssertLimitNumber(long)
	assert(long)
	assert(type(long) == "number", "Expected LimitNumber to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.LimitNumber(long)
	M.AssertLimitNumber(long)
	return long
end

function M.AssertDurationInSeconds(long)
	assert(long)
	assert(type(long) == "number", "Expected DurationInSeconds to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.DurationInSeconds(long)
	M.AssertDurationInSeconds(long)
	return long
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

function M.AssertTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Timestamp to be of type 'string'")
end

function M.Timestamp(timestamp)
	M.AssertTimestamp(timestamp)
	return timestamp
end

function M.AssertAttackTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected AttackTimestamp to be of type 'string'")
end

function M.AttackTimestamp(timestamp)
	M.AssertAttackTimestamp(timestamp)
	return timestamp
end

function M.AssertMitigationList(list)
	assert(list)
	assert(type(list) == "table", "Expected MitigationList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertMitigation(v)
	end
end

--  
-- List of Mitigation objects
function M.MitigationList(list)
	M.AssertMitigationList(list)
	return list
end

function M.AssertAttackVectorDescriptionList(list)
	assert(list)
	assert(type(list) == "table", "Expected AttackVectorDescriptionList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAttackVectorDescription(v)
	end
end

--  
-- List of AttackVectorDescription objects
function M.AttackVectorDescriptionList(list)
	M.AssertAttackVectorDescriptionList(list)
	return list
end

function M.AssertProtections(list)
	assert(list)
	assert(type(list) == "table", "Expected Protections to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertProtection(v)
	end
end

--  
-- List of Protection objects
function M.Protections(list)
	M.AssertProtections(list)
	return list
end

function M.AssertResourceArnFilterList(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceArnFilterList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertResourceArn(v)
	end
end

--  
-- List of ResourceArn objects
function M.ResourceArnFilterList(list)
	M.AssertResourceArnFilterList(list)
	return list
end

function M.AssertSubResourceSummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected SubResourceSummaryList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertSubResourceSummary(v)
	end
end

--  
-- List of SubResourceSummary objects
function M.SubResourceSummaryList(list)
	M.AssertSubResourceSummaryList(list)
	return list
end

function M.AssertSummarizedAttackVectorList(list)
	assert(list)
	assert(type(list) == "table", "Expected SummarizedAttackVectorList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertSummarizedAttackVector(v)
	end
end

--  
-- List of SummarizedAttackVector objects
function M.SummarizedAttackVectorList(list)
	M.AssertSummarizedAttackVectorList(list)
	return list
end

function M.AssertSummarizedCounterList(list)
	assert(list)
	assert(type(list) == "table", "Expected SummarizedCounterList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertSummarizedCounter(v)
	end
end

--  
-- List of SummarizedCounter objects
function M.SummarizedCounterList(list)
	M.AssertSummarizedCounterList(list)
	return list
end

function M.AssertAttackSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected AttackSummaries to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAttackSummary(v)
	end
end

--  
-- List of AttackSummary objects
function M.AttackSummaries(list)
	M.AssertAttackSummaries(list)
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
	uri = scheme_mapper.from_string(config.scheme) .. "://"
	uri = uri .. config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
end


--
-- OPERATIONS
--
--- DeleteProtection
-- @param DeleteProtectionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteProtectionAsync(DeleteProtectionRequest, cb)
	assert(DeleteProtectionRequest, "You must provide a DeleteProtectionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSShield_20160616.DeleteProtection",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteProtectionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeSubscription
-- @param DescribeSubscriptionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeSubscriptionAsync(DescribeSubscriptionRequest, cb)
	assert(DescribeSubscriptionRequest, "You must provide a DescribeSubscriptionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSShield_20160616.DescribeSubscription",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeSubscriptionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateSubscription
-- @param CreateSubscriptionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateSubscriptionAsync(CreateSubscriptionRequest, cb)
	assert(CreateSubscriptionRequest, "You must provide a CreateSubscriptionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSShield_20160616.CreateSubscription",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateSubscriptionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeProtection
-- @param DescribeProtectionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeProtectionAsync(DescribeProtectionRequest, cb)
	assert(DescribeProtectionRequest, "You must provide a DescribeProtectionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSShield_20160616.DescribeProtection",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeProtectionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeAttack
-- @param DescribeAttackRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeAttackAsync(DescribeAttackRequest, cb)
	assert(DescribeAttackRequest, "You must provide a DescribeAttackRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSShield_20160616.DescribeAttack",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeAttackRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteSubscription
-- @param DeleteSubscriptionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteSubscriptionAsync(DeleteSubscriptionRequest, cb)
	assert(DeleteSubscriptionRequest, "You must provide a DeleteSubscriptionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSShield_20160616.DeleteSubscription",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteSubscriptionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListProtections
-- @param ListProtectionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListProtectionsAsync(ListProtectionsRequest, cb)
	assert(ListProtectionsRequest, "You must provide a ListProtectionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSShield_20160616.ListProtections",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListProtectionsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListAttacks
-- @param ListAttacksRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListAttacksAsync(ListAttacksRequest, cb)
	assert(ListAttacksRequest, "You must provide a ListAttacksRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSShield_20160616.ListAttacks",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListAttacksRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateProtection
-- @param CreateProtectionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateProtectionAsync(CreateProtectionRequest, cb)
	assert(CreateProtectionRequest, "You must provide a CreateProtectionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSShield_20160616.CreateProtection",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateProtectionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
