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
	assert(args, "You must provide an argument table when creating DeleteProtectionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ProtectionId"] = args["ProtectionId"],
	}
	asserts.AssertDeleteProtectionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisassociateDRTLogBucketResponse = { nil }

function asserts.AssertDisassociateDRTLogBucketResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateDRTLogBucketResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DisassociateDRTLogBucketResponse[k], "DisassociateDRTLogBucketResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateDRTLogBucketResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DisassociateDRTLogBucketResponse structure as a key-value pair table
function M.DisassociateDRTLogBucketResponse(args)
	assert(args, "You must provide an argument table when creating DisassociateDRTLogBucketResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDisassociateDRTLogBucketResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * NextToken [Token] <p>If you specify a value for <code>MaxResults</code> and you have more Protections than the value of MaxResults, AWS Shield Advanced returns a NextToken value in the response that allows you to list another group of Protections. For the second and subsequent ListProtections requests, specify the value of NextToken from the previous response to get information about another batch of Protections.</p> <p>AWS WAF might return the list of <a>Protection</a> objects in batches smaller than the number specified by MaxResults. If there are more <a>Protection</a> objects to return, AWS WAF will always also return a <code>NextToken</code>.</p>
-- @return ListProtectionsResponse structure as a key-value pair table
function M.ListProtectionsResponse(args)
	assert(args, "You must provide an argument table when creating ListProtectionsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Protections"] = args["Protections"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListProtectionsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating DescribeAttackRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AttackId"] = args["AttackId"],
	}
	asserts.AssertDescribeAttackRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDRTAccessRequest = { nil }

function asserts.AssertDescribeDRTAccessRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDRTAccessRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DescribeDRTAccessRequest[k], "DescribeDRTAccessRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDRTAccessRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DescribeDRTAccessRequest structure as a key-value pair table
function M.DescribeDRTAccessRequest(args)
	assert(args, "You must provide an argument table when creating DescribeDRTAccessRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDescribeDRTAccessRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * FromInclusive [AttackTimestamp] <p>The start time, in Unix time in seconds. For more information see <a href="http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#parameter-types">timestamp</a>.</p>
-- * ToExclusive [AttackTimestamp] <p>The end time, in Unix time in seconds. For more information see <a href="http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#parameter-types">timestamp</a>.</p>
-- @return TimeRange structure as a key-value pair table
function M.TimeRange(args)
	assert(args, "You must provide an argument table when creating TimeRange")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FromInclusive"] = args["FromInclusive"],
		["ToExclusive"] = args["ToExclusive"],
	}
	asserts.AssertTimeRange(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating DescribeProtectionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ProtectionId"] = args["ProtectionId"],
	}
	asserts.AssertDescribeProtectionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating DeleteProtectionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteProtectionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetSubscriptionStateRequest = { nil }

function asserts.AssertGetSubscriptionStateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSubscriptionStateRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.GetSubscriptionStateRequest[k], "GetSubscriptionStateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSubscriptionStateRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return GetSubscriptionStateRequest structure as a key-value pair table
function M.GetSubscriptionStateRequest(args)
	assert(args, "You must provide an argument table when creating GetSubscriptionStateRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertGetSubscriptionStateRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating Mitigation")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MitigationName"] = args["MitigationName"],
	}
	asserts.AssertMitigation(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateSubscriptionResponse = { nil }

function asserts.AssertUpdateSubscriptionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateSubscriptionResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateSubscriptionResponse[k], "UpdateSubscriptionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateSubscriptionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateSubscriptionResponse structure as a key-value pair table
function M.UpdateSubscriptionResponse(args)
	assert(args, "You must provide an argument table when creating UpdateSubscriptionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateSubscriptionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EmergencyContact = { ["EmailAddress"] = true, nil }

function asserts.AssertEmergencyContact(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EmergencyContact to be of type 'table'")
	assert(struct["EmailAddress"], "Expected key EmailAddress to exist in table")
	if struct["EmailAddress"] then asserts.AssertEmailAddress(struct["EmailAddress"]) end
	for k,_ in pairs(struct) do
		assert(keys.EmergencyContact[k], "EmergencyContact contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EmergencyContact
-- <p>Contact information that the DRT can use to contact you during a suspected attack.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EmailAddress [EmailAddress] <p>An email address that the DRT can use to contact you during a suspected attack.</p>
-- Required key: EmailAddress
-- @return EmergencyContact structure as a key-value pair table
function M.EmergencyContact(args)
	assert(args, "You must provide an argument table when creating EmergencyContact")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EmailAddress"] = args["EmailAddress"],
	}
	asserts.AssertEmergencyContact(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * NextToken [Token] <p>The token returned by a previous call to indicate that there is more data available. If not null, more results are available. Pass this value for the <code>NextMarker</code> parameter in a subsequent call to <code>ListAttacks</code> to retrieve the next set of items.</p> <p>AWS WAF might return the list of <a>AttackSummary</a> objects in batches smaller than the number specified by MaxResults. If there are more <a>AttackSummary</a> objects to return, AWS WAF will always also return a <code>NextToken</code>.</p>
-- * AttackSummaries [AttackSummaries] <p>The attack information for the specified time range.</p>
-- @return ListAttacksResponse structure as a key-value pair table
function M.ListAttacksResponse(args)
	assert(args, "You must provide an argument table when creating ListAttacksResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["AttackSummaries"] = args["AttackSummaries"],
	}
	asserts.AssertListAttacksResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AssociateDRTRoleRequest = { ["RoleArn"] = true, nil }

function asserts.AssertAssociateDRTRoleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateDRTRoleRequest to be of type 'table'")
	assert(struct["RoleArn"], "Expected key RoleArn to exist in table")
	if struct["RoleArn"] then asserts.AssertRoleArn(struct["RoleArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssociateDRTRoleRequest[k], "AssociateDRTRoleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateDRTRoleRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoleArn [RoleArn] <p>The Amazon Resource Name (ARN) of the role the DRT will use to access your AWS account.</p> <p>Prior to making the <code>AssociateDRTRole</code> request, you must attach the <a href="https://console.aws.amazon.com/iam/home?#/policies/arn:aws:iam::aws:policy/service-role/AWSShieldDRTAccessPolicy">AWSShieldDRTAccessPolicy</a> managed policy to this role. For more information see <a href=" https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_manage-attach-detach.html">Attaching and Detaching IAM Policies</a>.</p>
-- Required key: RoleArn
-- @return AssociateDRTRoleRequest structure as a key-value pair table
function M.AssociateDRTRoleRequest(args)
	assert(args, "You must provide an argument table when creating AssociateDRTRoleRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RoleArn"] = args["RoleArn"],
	}
	asserts.AssertAssociateDRTRoleRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisassociateDRTRoleRequest = { nil }

function asserts.AssertDisassociateDRTRoleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateDRTRoleRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DisassociateDRTRoleRequest[k], "DisassociateDRTRoleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateDRTRoleRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DisassociateDRTRoleRequest structure as a key-value pair table
function M.DisassociateDRTRoleRequest(args)
	assert(args, "You must provide an argument table when creating DisassociateDRTRoleRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDisassociateDRTRoleRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * EndTime [TimeRange] <p>The end of the time period for the attacks. This is a <code>timestamp</code> type. The sample request above indicates a <code>number</code> type because the default used by WAF is Unix time in seconds. However any valid <a href="http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#parameter-types">timestamp format</a> is allowed. </p>
-- * ResourceArns [ResourceArnFilterList] <p>The ARN (Amazon Resource Name) of the resource that was attacked. If this is left blank, all applicable resources for this account will be included.</p>
-- * MaxResults [MaxResults] <p>The maximum number of <a>AttackSummary</a> objects to be returned. If this is left blank, the first 20 results will be returned.</p> <p>This is a maximum value; it is possible that AWS WAF will return the results in smaller batches. That is, the number of <a>AttackSummary</a> objects returned could be less than <code>MaxResults</code>, even if there are still more <a>AttackSummary</a> objects yet to return. If there are more <a>AttackSummary</a> objects to return, AWS WAF will always also return a <code>NextToken</code>.</p>
-- * StartTime [TimeRange] <p>The start of the time period for the attacks. This is a <code>timestamp</code> type. The sample request above indicates a <code>number</code> type because the default used by WAF is Unix time in seconds. However any valid <a href="http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#parameter-types">timestamp format</a> is allowed. </p>
-- @return ListAttacksRequest structure as a key-value pair table
function M.ListAttacksRequest(args)
	assert(args, "You must provide an argument table when creating ListAttacksRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["EndTime"] = args["EndTime"],
		["ResourceArns"] = args["ResourceArns"],
		["MaxResults"] = args["MaxResults"],
		["StartTime"] = args["StartTime"],
	}
	asserts.AssertListAttacksRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AssociateDRTRoleResponse = { nil }

function asserts.AssertAssociateDRTRoleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateDRTRoleResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AssociateDRTRoleResponse[k], "AssociateDRTRoleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateDRTRoleResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AssociateDRTRoleResponse structure as a key-value pair table
function M.AssociateDRTRoleResponse(args)
	assert(args, "You must provide an argument table when creating AssociateDRTRoleResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAssociateDRTRoleResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating DeleteSubscriptionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteSubscriptionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating CreateProtectionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ProtectionId"] = args["ProtectionId"],
	}
	asserts.AssertCreateProtectionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * MaxResults [MaxResults] <p>The maximum number of <a>Protection</a> objects to be returned. If this is left blank the first 20 results will be returned.</p> <p>This is a maximum value; it is possible that AWS WAF will return the results in smaller batches. That is, the number of <a>Protection</a> objects returned could be less than <code>MaxResults</code>, even if there are still more <a>Protection</a> objects yet to return. If there are more <a>Protection</a> objects to return, AWS WAF will always also return a <code>NextToken</code>.</p>
-- @return ListProtectionsRequest structure as a key-value pair table
function M.ListProtectionsRequest(args)
	assert(args, "You must provide an argument table when creating ListProtectionsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListProtectionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating Protection")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceArn"] = args["ResourceArn"],
		["Id"] = args["Id"],
		["Name"] = args["Name"],
	}
	asserts.AssertProtection(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating DeleteSubscriptionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteSubscriptionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * ResourceArn [ResourceArn] <p>The ARN (Amazon Resource Name) of the resource to be protected.</p> <p>The ARN should be in one of the following formats:</p> <ul> <li> <p>For an Application Load Balancer: <code>arn:aws:elasticloadbalancing:<i>region</i>:<i>account-id</i>:loadbalancer/app/<i>load-balancer-name</i>/<i>load-balancer-id</i> </code> </p> </li> <li> <p>For an Elastic Load Balancer (Classic Load Balancer): <code>arn:aws:elasticloadbalancing:<i>region</i>:<i>account-id</i>:loadbalancer/<i>load-balancer-name</i> </code> </p> </li> <li> <p>For AWS CloudFront distribution: <code>arn:aws:cloudfront::<i>account-id</i>:distribution/<i>distribution-id</i> </code> </p> </li> <li> <p>For Amazon Route 53: <code>arn:aws:route53:::hostedzone/<i>hosted-zone-id</i> </code> </p> </li> <li> <p>For an Elastic IP address: <code>arn:aws:ec2:<i>region</i>:<i>account-id</i>:eip-allocation/<i>allocation-id</i> </code> </p> </li> </ul>
-- * Name [ProtectionName] <p>Friendly name for the <code>Protection</code> you are creating.</p>
-- Required key: Name
-- Required key: ResourceArn
-- @return CreateProtectionRequest structure as a key-value pair table
function M.CreateProtectionRequest(args)
	assert(args, "You must provide an argument table when creating CreateProtectionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceArn"] = args["ResourceArn"],
		["Name"] = args["Name"],
	}
	asserts.AssertCreateProtectionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AssociateDRTLogBucketResponse = { nil }

function asserts.AssertAssociateDRTLogBucketResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateDRTLogBucketResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AssociateDRTLogBucketResponse[k], "AssociateDRTLogBucketResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateDRTLogBucketResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AssociateDRTLogBucketResponse structure as a key-value pair table
function M.AssociateDRTLogBucketResponse(args)
	assert(args, "You must provide an argument table when creating AssociateDRTLogBucketResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAssociateDRTLogBucketResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeEmergencyContactSettingsRequest = { nil }

function asserts.AssertDescribeEmergencyContactSettingsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEmergencyContactSettingsRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DescribeEmergencyContactSettingsRequest[k], "DescribeEmergencyContactSettingsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEmergencyContactSettingsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DescribeEmergencyContactSettingsRequest structure as a key-value pair table
function M.DescribeEmergencyContactSettingsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeEmergencyContactSettingsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDescribeEmergencyContactSettingsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDRTAccessResponse = { ["LogBucketList"] = true, ["RoleArn"] = true, nil }

function asserts.AssertDescribeDRTAccessResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDRTAccessResponse to be of type 'table'")
	if struct["LogBucketList"] then asserts.AssertLogBucketList(struct["LogBucketList"]) end
	if struct["RoleArn"] then asserts.AssertRoleArn(struct["RoleArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDRTAccessResponse[k], "DescribeDRTAccessResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDRTAccessResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LogBucketList [LogBucketList] <p>The list of Amazon S3 buckets accessed by the DRT.</p>
-- * RoleArn [RoleArn] <p>The Amazon Resource Name (ARN) of the role the DRT used to access your AWS account.</p>
-- @return DescribeDRTAccessResponse structure as a key-value pair table
function M.DescribeDRTAccessResponse(args)
	assert(args, "You must provide an argument table when creating DescribeDRTAccessResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LogBucketList"] = args["LogBucketList"],
		["RoleArn"] = args["RoleArn"],
	}
	asserts.AssertDescribeDRTAccessResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating SubResourceSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Counters"] = args["Counters"],
		["Type"] = args["Type"],
		["Id"] = args["Id"],
		["AttackVectors"] = args["AttackVectors"],
	}
	asserts.AssertSubResourceSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * EndTime [AttackTimestamp] <p>The end time of the attack, in Unix time in seconds. For more information see <a href="http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#parameter-types">timestamp</a>.</p>
-- * ResourceArn [String] <p>The ARN (Amazon Resource Name) of the resource that was attacked.</p>
-- * AttackId [String] <p>The unique identifier (ID) of the attack.</p>
-- * AttackVectors [AttackVectorDescriptionList] <p>The list of attacks for a specified time period.</p>
-- * StartTime [AttackTimestamp] <p>The start time of the attack, in Unix time in seconds. For more information see <a href="http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#parameter-types">timestamp</a>.</p>
-- @return AttackSummary structure as a key-value pair table
function M.AttackSummary(args)
	assert(args, "You must provide an argument table when creating AttackSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EndTime"] = args["EndTime"],
		["ResourceArn"] = args["ResourceArn"],
		["AttackId"] = args["AttackId"],
		["AttackVectors"] = args["AttackVectors"],
		["StartTime"] = args["StartTime"],
	}
	asserts.AssertAttackSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AttackDetail = { ["AttackProperties"] = true, ["Mitigations"] = true, ["ResourceArn"] = true, ["AttackId"] = true, ["SubResources"] = true, ["StartTime"] = true, ["EndTime"] = true, ["AttackCounters"] = true, nil }

function asserts.AssertAttackDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttackDetail to be of type 'table'")
	if struct["AttackProperties"] then asserts.AssertAttackProperties(struct["AttackProperties"]) end
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
-- * AttackProperties [AttackProperties] <p>The array of <a>AttackProperty</a> objects.</p>
-- * Mitigations [MitigationList] <p>List of mitigation actions taken for the attack.</p>
-- * ResourceArn [ResourceArn] <p>The ARN (Amazon Resource Name) of the resource that was attacked.</p>
-- * AttackId [AttackId] <p>The unique identifier (ID) of the attack.</p>
-- * SubResources [SubResourceSummaryList] <p>If applicable, additional detail about the resource being attacked, for example, IP address or URL.</p>
-- * StartTime [AttackTimestamp] <p>The time the attack started, in Unix time in seconds. For more information see <a href="http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#parameter-types">timestamp</a>.</p>
-- * EndTime [AttackTimestamp] <p>The time the attack ended, in Unix time in seconds. For more information see <a href="http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#parameter-types">timestamp</a>.</p>
-- * AttackCounters [SummarizedCounterList] <p>List of counters that describe the attack for the specified time period.</p>
-- @return AttackDetail structure as a key-value pair table
function M.AttackDetail(args)
	assert(args, "You must provide an argument table when creating AttackDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AttackProperties"] = args["AttackProperties"],
		["Mitigations"] = args["Mitigations"],
		["ResourceArn"] = args["ResourceArn"],
		["AttackId"] = args["AttackId"],
		["SubResources"] = args["SubResources"],
		["StartTime"] = args["StartTime"],
		["EndTime"] = args["EndTime"],
		["AttackCounters"] = args["AttackCounters"],
	}
	asserts.AssertAttackDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating DescribeAttackResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Attack"] = args["Attack"],
	}
	asserts.AssertDescribeAttackResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating SummarizedAttackVector")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VectorCounters"] = args["VectorCounters"],
		["VectorType"] = args["VectorType"],
	}
	asserts.AssertSummarizedAttackVector(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetSubscriptionStateResponse = { ["SubscriptionState"] = true, nil }

function asserts.AssertGetSubscriptionStateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSubscriptionStateResponse to be of type 'table'")
	assert(struct["SubscriptionState"], "Expected key SubscriptionState to exist in table")
	if struct["SubscriptionState"] then asserts.AssertSubscriptionState(struct["SubscriptionState"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSubscriptionStateResponse[k], "GetSubscriptionStateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSubscriptionStateResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SubscriptionState [SubscriptionState] <p>The status of the subscription.</p>
-- Required key: SubscriptionState
-- @return GetSubscriptionStateResponse structure as a key-value pair table
function M.GetSubscriptionStateResponse(args)
	assert(args, "You must provide an argument table when creating GetSubscriptionStateResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SubscriptionState"] = args["SubscriptionState"],
	}
	asserts.AssertGetSubscriptionStateResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeEmergencyContactSettingsResponse = { ["EmergencyContactList"] = true, nil }

function asserts.AssertDescribeEmergencyContactSettingsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEmergencyContactSettingsResponse to be of type 'table'")
	if struct["EmergencyContactList"] then asserts.AssertEmergencyContactList(struct["EmergencyContactList"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEmergencyContactSettingsResponse[k], "DescribeEmergencyContactSettingsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEmergencyContactSettingsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EmergencyContactList [EmergencyContactList] <p>A list of email addresses that the DRT can use to contact you during a suspected attack.</p>
-- @return DescribeEmergencyContactSettingsResponse structure as a key-value pair table
function M.DescribeEmergencyContactSettingsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeEmergencyContactSettingsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EmergencyContactList"] = args["EmergencyContactList"],
	}
	asserts.AssertDescribeEmergencyContactSettingsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating DescribeProtectionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Protection"] = args["Protection"],
	}
	asserts.AssertDescribeProtectionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating SummarizedCounter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["Max"] = args["Max"],
		["Average"] = args["Average"],
		["N"] = args["N"],
		["Sum"] = args["Sum"],
		["Unit"] = args["Unit"],
	}
	asserts.AssertSummarizedCounter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Limit = { ["Max"] = true, ["Type"] = true, nil }

function asserts.AssertLimit(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Limit to be of type 'table'")
	if struct["Max"] then asserts.AssertLong(struct["Max"]) end
	if struct["Type"] then asserts.AssertString(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(keys.Limit[k], "Limit contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Limit
-- <p>Specifies how many protections of a given type you can create.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Max [Long] <p>The maximum number of protections that can be created for the specified <code>Type</code>.</p>
-- * Type [String] <p>The type of protection.</p>
-- @return Limit structure as a key-value pair table
function M.Limit(args)
	assert(args, "You must provide an argument table when creating Limit")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Max"] = args["Max"],
		["Type"] = args["Type"],
	}
	asserts.AssertLimit(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating CreateSubscriptionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertCreateSubscriptionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating DescribeSubscriptionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDescribeSubscriptionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisassociateDRTLogBucketRequest = { ["LogBucket"] = true, nil }

function asserts.AssertDisassociateDRTLogBucketRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateDRTLogBucketRequest to be of type 'table'")
	assert(struct["LogBucket"], "Expected key LogBucket to exist in table")
	if struct["LogBucket"] then asserts.AssertLogBucket(struct["LogBucket"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisassociateDRTLogBucketRequest[k], "DisassociateDRTLogBucketRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateDRTLogBucketRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LogBucket [LogBucket] <p>The Amazon S3 bucket that contains your flow logs.</p>
-- Required key: LogBucket
-- @return DisassociateDRTLogBucketRequest structure as a key-value pair table
function M.DisassociateDRTLogBucketRequest(args)
	assert(args, "You must provide an argument table when creating DisassociateDRTLogBucketRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LogBucket"] = args["LogBucket"],
	}
	asserts.AssertDisassociateDRTLogBucketRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AssociateDRTLogBucketRequest = { ["LogBucket"] = true, nil }

function asserts.AssertAssociateDRTLogBucketRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateDRTLogBucketRequest to be of type 'table'")
	assert(struct["LogBucket"], "Expected key LogBucket to exist in table")
	if struct["LogBucket"] then asserts.AssertLogBucket(struct["LogBucket"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssociateDRTLogBucketRequest[k], "AssociateDRTLogBucketRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateDRTLogBucketRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LogBucket [LogBucket] <p>The Amazon S3 bucket that contains your flow logs.</p>
-- Required key: LogBucket
-- @return AssociateDRTLogBucketRequest structure as a key-value pair table
function M.AssociateDRTLogBucketRequest(args)
	assert(args, "You must provide an argument table when creating AssociateDRTLogBucketRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LogBucket"] = args["LogBucket"],
	}
	asserts.AssertAssociateDRTLogBucketRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateEmergencyContactSettingsRequest = { ["EmergencyContactList"] = true, nil }

function asserts.AssertUpdateEmergencyContactSettingsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateEmergencyContactSettingsRequest to be of type 'table'")
	if struct["EmergencyContactList"] then asserts.AssertEmergencyContactList(struct["EmergencyContactList"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateEmergencyContactSettingsRequest[k], "UpdateEmergencyContactSettingsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateEmergencyContactSettingsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EmergencyContactList [EmergencyContactList] <p>A list of email addresses that the DRT can use to contact you during a suspected attack.</p>
-- @return UpdateEmergencyContactSettingsRequest structure as a key-value pair table
function M.UpdateEmergencyContactSettingsRequest(args)
	assert(args, "You must provide an argument table when creating UpdateEmergencyContactSettingsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EmergencyContactList"] = args["EmergencyContactList"],
	}
	asserts.AssertUpdateEmergencyContactSettingsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating CreateSubscriptionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertCreateSubscriptionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * VectorType [String] <p>The attack type. Valid values:</p> <ul> <li> <p>UDP_TRAFFIC</p> </li> <li> <p>UDP_FRAGMENT</p> </li> <li> <p>GENERIC_UDP_REFLECTION</p> </li> <li> <p>DNS_REFLECTION</p> </li> <li> <p>NTP_REFLECTION</p> </li> <li> <p>CHARGEN_REFLECTION</p> </li> <li> <p>SSDP_REFLECTION</p> </li> <li> <p>PORT_MAPPER</p> </li> <li> <p>RIP_REFLECTION</p> </li> <li> <p>SNMP_REFLECTION</p> </li> <li> <p>MSSQL_REFLECTION</p> </li> <li> <p>NET_BIOS_REFLECTION</p> </li> <li> <p>SYN_FLOOD</p> </li> <li> <p>ACK_FLOOD</p> </li> <li> <p>REQUEST_FLOOD</p> </li> </ul>
-- Required key: VectorType
-- @return AttackVectorDescription structure as a key-value pair table
function M.AttackVectorDescription(args)
	assert(args, "You must provide an argument table when creating AttackVectorDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VectorType"] = args["VectorType"],
	}
	asserts.AssertAttackVectorDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateEmergencyContactSettingsResponse = { nil }

function asserts.AssertUpdateEmergencyContactSettingsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateEmergencyContactSettingsResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateEmergencyContactSettingsResponse[k], "UpdateEmergencyContactSettingsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateEmergencyContactSettingsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateEmergencyContactSettingsResponse structure as a key-value pair table
function M.UpdateEmergencyContactSettingsResponse(args)
	assert(args, "You must provide an argument table when creating UpdateEmergencyContactSettingsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateEmergencyContactSettingsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Contributor = { ["Name"] = true, ["Value"] = true, nil }

function asserts.AssertContributor(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Contributor to be of type 'table'")
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["Value"] then asserts.AssertLong(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(keys.Contributor[k], "Contributor contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Contributor
-- <p>A contributor to the attack and their contribution.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [String] <p>The name of the contributor. This is dependent on the <code>AttackPropertyIdentifier</code>. For example, if the <code>AttackPropertyIdentifier</code> is <code>SOURCE_COUNTRY</code>, the <code>Name</code> could be <code>United States</code>.</p>
-- * Value [Long] <p>The contribution of this contributor expressed in <a>Protection</a> units. For example <code>10,000</code>.</p>
-- @return Contributor structure as a key-value pair table
function M.Contributor(args)
	assert(args, "You must provide an argument table when creating Contributor")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["Value"] = args["Value"],
	}
	asserts.AssertContributor(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AttackProperty = { ["AttackLayer"] = true, ["AttackPropertyIdentifier"] = true, ["Total"] = true, ["TopContributors"] = true, ["Unit"] = true, nil }

function asserts.AssertAttackProperty(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttackProperty to be of type 'table'")
	if struct["AttackLayer"] then asserts.AssertAttackLayer(struct["AttackLayer"]) end
	if struct["AttackPropertyIdentifier"] then asserts.AssertAttackPropertyIdentifier(struct["AttackPropertyIdentifier"]) end
	if struct["Total"] then asserts.AssertLong(struct["Total"]) end
	if struct["TopContributors"] then asserts.AssertTopContributors(struct["TopContributors"]) end
	if struct["Unit"] then asserts.AssertUnit(struct["Unit"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttackProperty[k], "AttackProperty contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttackProperty
-- <p>Details of the described attack.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AttackLayer [AttackLayer] <p>The type of DDoS event that was observed. <code>NETWORK</code> indicates layer 3 and layer 4 events and <code>APPLICATION</code> indicates layer 7 events.</p>
-- * AttackPropertyIdentifier [AttackPropertyIdentifier] <p>Defines the DDoS attack property information that is provided.</p>
-- * Total [Long] <p>The total contributions made to this attack by all contributors, not just the five listed in the <code>TopContributors</code> list.</p>
-- * TopContributors [TopContributors] <p>The array of <a>Contributor</a> objects that includes the top five contributors to an attack. </p>
-- * Unit [Unit] <p>The unit of the <code>Value</code> of the contributions.</p>
-- @return AttackProperty structure as a key-value pair table
function M.AttackProperty(args)
	assert(args, "You must provide an argument table when creating AttackProperty")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AttackLayer"] = args["AttackLayer"],
		["AttackPropertyIdentifier"] = args["AttackPropertyIdentifier"],
		["Total"] = args["Total"],
		["TopContributors"] = args["TopContributors"],
		["Unit"] = args["Unit"],
	}
	asserts.AssertAttackProperty(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Subscription = { ["AutoRenew"] = true, ["EndTime"] = true, ["Limits"] = true, ["StartTime"] = true, ["TimeCommitmentInSeconds"] = true, nil }

function asserts.AssertSubscription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Subscription to be of type 'table'")
	if struct["AutoRenew"] then asserts.AssertAutoRenew(struct["AutoRenew"]) end
	if struct["EndTime"] then asserts.AssertTimestamp(struct["EndTime"]) end
	if struct["Limits"] then asserts.AssertLimits(struct["Limits"]) end
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
-- * AutoRenew [AutoRenew] <p>If <code>ENABLED</code>, the subscription will be automatically renewed at the end of the existing subscription period.</p> <p>When you initally create a subscription, <code>AutoRenew</code> is set to <code>ENABLED</code>. You can change this by submitting an <code>UpdateSubscription</code> request. If the <code>UpdateSubscription</code> request does not included a value for <code>AutoRenew</code>, the existing value for <code>AutoRenew</code> remains unchanged.</p>
-- * EndTime [Timestamp] <p>The date and time your subscription will end.</p>
-- * Limits [Limits] <p>Specifies how many protections of a given type you can create.</p>
-- * StartTime [Timestamp] <p>The start time of the subscription, in Unix time in seconds. For more information see <a href="http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#parameter-types">timestamp</a>.</p>
-- * TimeCommitmentInSeconds [DurationInSeconds] <p>The length, in seconds, of the AWS Shield Advanced subscription for the account.</p>
-- @return Subscription structure as a key-value pair table
function M.Subscription(args)
	assert(args, "You must provide an argument table when creating Subscription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AutoRenew"] = args["AutoRenew"],
		["EndTime"] = args["EndTime"],
		["Limits"] = args["Limits"],
		["StartTime"] = args["StartTime"],
		["TimeCommitmentInSeconds"] = args["TimeCommitmentInSeconds"],
	}
	asserts.AssertSubscription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating DescribeSubscriptionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Subscription"] = args["Subscription"],
	}
	asserts.AssertDescribeSubscriptionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateSubscriptionRequest = { ["AutoRenew"] = true, nil }

function asserts.AssertUpdateSubscriptionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateSubscriptionRequest to be of type 'table'")
	if struct["AutoRenew"] then asserts.AssertAutoRenew(struct["AutoRenew"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateSubscriptionRequest[k], "UpdateSubscriptionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateSubscriptionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AutoRenew [AutoRenew] <p>When you initally create a subscription, <code>AutoRenew</code> is set to <code>ENABLED</code>. If <code>ENABLED</code>, the subscription will be automatically renewed at the end of the existing subscription period. You can change this by submitting an <code>UpdateSubscription</code> request. If the <code>UpdateSubscription</code> request does not included a value for <code>AutoRenew</code>, the existing value for <code>AutoRenew</code> remains unchanged.</p>
-- @return UpdateSubscriptionRequest structure as a key-value pair table
function M.UpdateSubscriptionRequest(args)
	assert(args, "You must provide an argument table when creating UpdateSubscriptionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AutoRenew"] = args["AutoRenew"],
	}
	asserts.AssertUpdateSubscriptionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisassociateDRTRoleResponse = { nil }

function asserts.AssertDisassociateDRTRoleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateDRTRoleResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DisassociateDRTRoleResponse[k], "DisassociateDRTRoleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateDRTRoleResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DisassociateDRTRoleResponse structure as a key-value pair table
function M.DisassociateDRTRoleResponse(args)
	assert(args, "You must provide an argument table when creating DisassociateDRTRoleResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDisassociateDRTRoleResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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

function asserts.AssertRoleArn(str)
	assert(str)
	assert(type(str) == "string", "Expected RoleArn to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RoleArn(str)
	asserts.AssertRoleArn(str)
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

function asserts.AssertAttackPropertyIdentifier(str)
	assert(str)
	assert(type(str) == "string", "Expected AttackPropertyIdentifier to be of type 'string'")
end

--  
function M.AttackPropertyIdentifier(str)
	asserts.AssertAttackPropertyIdentifier(str)
	return str
end

function asserts.AssertAutoRenew(str)
	assert(str)
	assert(type(str) == "string", "Expected AutoRenew to be of type 'string'")
end

--  
function M.AutoRenew(str)
	asserts.AssertAutoRenew(str)
	return str
end

function asserts.AssertResourceArn(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceArn to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
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

function asserts.AssertLogBucket(str)
	assert(str)
	assert(type(str) == "string", "Expected LogBucket to be of type 'string'")
	assert(#str <= 63, "Expected string to be max 63 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
end

--  
function M.LogBucket(str)
	asserts.AssertLogBucket(str)
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

function asserts.AssertSubscriptionState(str)
	assert(str)
	assert(type(str) == "string", "Expected SubscriptionState to be of type 'string'")
end

--  
function M.SubscriptionState(str)
	asserts.AssertSubscriptionState(str)
	return str
end

function asserts.AssertUnit(str)
	assert(str)
	assert(type(str) == "string", "Expected Unit to be of type 'string'")
end

--  
function M.Unit(str)
	asserts.AssertUnit(str)
	return str
end

function asserts.AssertAttackLayer(str)
	assert(str)
	assert(type(str) == "string", "Expected AttackLayer to be of type 'string'")
end

--  
function M.AttackLayer(str)
	asserts.AssertAttackLayer(str)
	return str
end

function asserts.AssertToken(str)
	assert(str)
	assert(type(str) == "string", "Expected Token to be of type 'string'")
	assert(#str <= 4096, "Expected string to be max 4096 characters")
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

function asserts.AssertEmailAddress(str)
	assert(str)
	assert(type(str) == "string", "Expected EmailAddress to be of type 'string'")
	assert(#str <= 150, "Expected string to be max 150 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.EmailAddress(str)
	asserts.AssertEmailAddress(str)
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
	assert(integer <= 10000, "Expected integer to be max 10000")
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

function asserts.AssertAttackProperties(list)
	assert(list)
	assert(type(list) == "table", "Expected AttackProperties to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAttackProperty(v)
	end
end

--  
-- List of AttackProperty objects
function M.AttackProperties(list)
	asserts.AssertAttackProperties(list)
	return list
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

function asserts.AssertLogBucketList(list)
	assert(list)
	assert(type(list) == "table", "Expected LogBucketList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	for _,v in ipairs(list) do
		asserts.AssertLogBucket(v)
	end
end

--  
-- List of LogBucket objects
function M.LogBucketList(list)
	asserts.AssertLogBucketList(list)
	return list
end

function asserts.AssertLimits(list)
	assert(list)
	assert(type(list) == "table", "Expected Limits to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLimit(v)
	end
end

--  
-- List of Limit objects
function M.Limits(list)
	asserts.AssertLimits(list)
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

function asserts.AssertTopContributors(list)
	assert(list)
	assert(type(list) == "table", "Expected TopContributors to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertContributor(v)
	end
end

--  
-- List of Contributor objects
function M.TopContributors(list)
	asserts.AssertTopContributors(list)
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

function asserts.AssertEmergencyContactList(list)
	assert(list)
	assert(type(list) == "table", "Expected EmergencyContactList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	for _,v in ipairs(list) do
		asserts.AssertEmergencyContact(v)
	end
end

--  
-- List of EmergencyContact objects
function M.EmergencyContactList(list)
	asserts.AssertEmergencyContactList(list)
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
--- Call DisassociateDRTRole asynchronously, invoking a callback when done
-- @param DisassociateDRTRoleRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DisassociateDRTRoleAsync(DisassociateDRTRoleRequest, cb)
	assert(DisassociateDRTRoleRequest, "You must provide a DisassociateDRTRoleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSShield_20160616.DisassociateDRTRole",
	}
	for header,value in pairs(DisassociateDRTRoleRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DisassociateDRTRoleRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DisassociateDRTRole synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisassociateDRTRoleRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DisassociateDRTRoleSync(DisassociateDRTRoleRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisassociateDRTRoleAsync(DisassociateDRTRoleRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteProtection asynchronously, invoking a callback when done
-- @param DeleteProtectionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteProtectionAsync(DeleteProtectionRequest, cb)
	assert(DeleteProtectionRequest, "You must provide a DeleteProtectionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSShield_20160616.DeleteProtection",
	}
	for header,value in pairs(DeleteProtectionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DeleteProtectionSync(DeleteProtectionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteProtectionAsync(DeleteProtectionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AssociateDRTLogBucket asynchronously, invoking a callback when done
-- @param AssociateDRTLogBucketRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AssociateDRTLogBucketAsync(AssociateDRTLogBucketRequest, cb)
	assert(AssociateDRTLogBucketRequest, "You must provide a AssociateDRTLogBucketRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSShield_20160616.AssociateDRTLogBucket",
	}
	for header,value in pairs(AssociateDRTLogBucketRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AssociateDRTLogBucketRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AssociateDRTLogBucket synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AssociateDRTLogBucketRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AssociateDRTLogBucketSync(AssociateDRTLogBucketRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AssociateDRTLogBucketAsync(AssociateDRTLogBucketRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetSubscriptionState asynchronously, invoking a callback when done
-- @param GetSubscriptionStateRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetSubscriptionStateAsync(GetSubscriptionStateRequest, cb)
	assert(GetSubscriptionStateRequest, "You must provide a GetSubscriptionStateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSShield_20160616.GetSubscriptionState",
	}
	for header,value in pairs(GetSubscriptionStateRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetSubscriptionStateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetSubscriptionState synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetSubscriptionStateRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetSubscriptionStateSync(GetSubscriptionStateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSubscriptionStateAsync(GetSubscriptionStateRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeEmergencyContactSettings asynchronously, invoking a callback when done
-- @param DescribeEmergencyContactSettingsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeEmergencyContactSettingsAsync(DescribeEmergencyContactSettingsRequest, cb)
	assert(DescribeEmergencyContactSettingsRequest, "You must provide a DescribeEmergencyContactSettingsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSShield_20160616.DescribeEmergencyContactSettings",
	}
	for header,value in pairs(DescribeEmergencyContactSettingsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeEmergencyContactSettingsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeEmergencyContactSettings synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeEmergencyContactSettingsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeEmergencyContactSettingsSync(DescribeEmergencyContactSettingsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeEmergencyContactSettingsAsync(DescribeEmergencyContactSettingsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateEmergencyContactSettings asynchronously, invoking a callback when done
-- @param UpdateEmergencyContactSettingsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateEmergencyContactSettingsAsync(UpdateEmergencyContactSettingsRequest, cb)
	assert(UpdateEmergencyContactSettingsRequest, "You must provide a UpdateEmergencyContactSettingsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSShield_20160616.UpdateEmergencyContactSettings",
	}
	for header,value in pairs(UpdateEmergencyContactSettingsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateEmergencyContactSettingsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateEmergencyContactSettings synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateEmergencyContactSettingsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateEmergencyContactSettingsSync(UpdateEmergencyContactSettingsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateEmergencyContactSettingsAsync(UpdateEmergencyContactSettingsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeSubscription asynchronously, invoking a callback when done
-- @param DescribeSubscriptionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeSubscriptionAsync(DescribeSubscriptionRequest, cb)
	assert(DescribeSubscriptionRequest, "You must provide a DescribeSubscriptionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSShield_20160616.DescribeSubscription",
	}
	for header,value in pairs(DescribeSubscriptionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeSubscriptionSync(DescribeSubscriptionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeSubscriptionAsync(DescribeSubscriptionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateSubscription asynchronously, invoking a callback when done
-- @param CreateSubscriptionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateSubscriptionAsync(CreateSubscriptionRequest, cb)
	assert(CreateSubscriptionRequest, "You must provide a CreateSubscriptionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSShield_20160616.CreateSubscription",
	}
	for header,value in pairs(CreateSubscriptionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.CreateSubscriptionSync(CreateSubscriptionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateSubscriptionAsync(CreateSubscriptionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeProtection asynchronously, invoking a callback when done
-- @param DescribeProtectionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeProtectionAsync(DescribeProtectionRequest, cb)
	assert(DescribeProtectionRequest, "You must provide a DescribeProtectionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSShield_20160616.DescribeProtection",
	}
	for header,value in pairs(DescribeProtectionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeProtectionSync(DescribeProtectionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeProtectionAsync(DescribeProtectionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateSubscription asynchronously, invoking a callback when done
-- @param UpdateSubscriptionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateSubscriptionAsync(UpdateSubscriptionRequest, cb)
	assert(UpdateSubscriptionRequest, "You must provide a UpdateSubscriptionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSShield_20160616.UpdateSubscription",
	}
	for header,value in pairs(UpdateSubscriptionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateSubscriptionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateSubscription synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateSubscriptionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateSubscriptionSync(UpdateSubscriptionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateSubscriptionAsync(UpdateSubscriptionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDRTAccess asynchronously, invoking a callback when done
-- @param DescribeDRTAccessRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeDRTAccessAsync(DescribeDRTAccessRequest, cb)
	assert(DescribeDRTAccessRequest, "You must provide a DescribeDRTAccessRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSShield_20160616.DescribeDRTAccess",
	}
	for header,value in pairs(DescribeDRTAccessRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeDRTAccessRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeDRTAccess synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeDRTAccessRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeDRTAccessSync(DescribeDRTAccessRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDRTAccessAsync(DescribeDRTAccessRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DisassociateDRTLogBucket asynchronously, invoking a callback when done
-- @param DisassociateDRTLogBucketRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DisassociateDRTLogBucketAsync(DisassociateDRTLogBucketRequest, cb)
	assert(DisassociateDRTLogBucketRequest, "You must provide a DisassociateDRTLogBucketRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSShield_20160616.DisassociateDRTLogBucket",
	}
	for header,value in pairs(DisassociateDRTLogBucketRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DisassociateDRTLogBucketRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DisassociateDRTLogBucket synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisassociateDRTLogBucketRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DisassociateDRTLogBucketSync(DisassociateDRTLogBucketRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisassociateDRTLogBucketAsync(DisassociateDRTLogBucketRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateProtection asynchronously, invoking a callback when done
-- @param CreateProtectionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateProtectionAsync(CreateProtectionRequest, cb)
	assert(CreateProtectionRequest, "You must provide a CreateProtectionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSShield_20160616.CreateProtection",
	}
	for header,value in pairs(CreateProtectionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.CreateProtectionSync(CreateProtectionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateProtectionAsync(CreateProtectionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AssociateDRTRole asynchronously, invoking a callback when done
-- @param AssociateDRTRoleRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AssociateDRTRoleAsync(AssociateDRTRoleRequest, cb)
	assert(AssociateDRTRoleRequest, "You must provide a AssociateDRTRoleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSShield_20160616.AssociateDRTRole",
	}
	for header,value in pairs(AssociateDRTRoleRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AssociateDRTRoleRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AssociateDRTRole synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AssociateDRTRoleRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AssociateDRTRoleSync(AssociateDRTRoleRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AssociateDRTRoleAsync(AssociateDRTRoleRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListProtections asynchronously, invoking a callback when done
-- @param ListProtectionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListProtectionsAsync(ListProtectionsRequest, cb)
	assert(ListProtectionsRequest, "You must provide a ListProtectionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSShield_20160616.ListProtections",
	}
	for header,value in pairs(ListProtectionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.ListProtectionsSync(ListProtectionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListProtectionsAsync(ListProtectionsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListAttacks asynchronously, invoking a callback when done
-- @param ListAttacksRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListAttacksAsync(ListAttacksRequest, cb)
	assert(ListAttacksRequest, "You must provide a ListAttacksRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSShield_20160616.ListAttacks",
	}
	for header,value in pairs(ListAttacksRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.ListAttacksSync(ListAttacksRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListAttacksAsync(ListAttacksRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeAttack asynchronously, invoking a callback when done
-- @param DescribeAttackRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeAttackAsync(DescribeAttackRequest, cb)
	assert(DescribeAttackRequest, "You must provide a DescribeAttackRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSShield_20160616.DescribeAttack",
	}
	for header,value in pairs(DescribeAttackRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeAttackSync(DescribeAttackRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeAttackAsync(DescribeAttackRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
