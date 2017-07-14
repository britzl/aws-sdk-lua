--- GENERATED CODE - DO NOT MODIFY
-- Elastic Load Balancing (elasticloadbalancingv2-2015-12-01)

local M = {}

M.metadata = {
	api_version = "2015-12-01",
	json_version = "",
	protocol = "query",
	checksum_format = "",
	endpoint_prefix = "elasticloadbalancing",
	service_abbreviation = "Elastic Load Balancing v2",
	service_full_name = "Elastic Load Balancing",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "elasticloadbalancingv2-2015-12-01",
}

local DescribeTargetGroupAttributesInput_keys = { "TargetGroupArn" = true, nil }

function M.AssertDescribeTargetGroupAttributesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTargetGroupAttributesInput to be of type 'table'")
	assert(struct["TargetGroupArn"], "Expected key TargetGroupArn to exist in table")
	if struct["TargetGroupArn"] then M.AssertTargetGroupArn(struct["TargetGroupArn"]) end
	for k,_ in pairs(struct) do
		assert(DescribeTargetGroupAttributesInput_keys[k], "DescribeTargetGroupAttributesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTargetGroupAttributesInput
--  
-- @param TargetGroupArn [TargetGroupArn] &lt;p&gt;The Amazon Resource Name (ARN) of the target group.&lt;/p&gt;
-- Required parameter: TargetGroupArn
function M.DescribeTargetGroupAttributesInput(TargetGroupArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTargetGroupAttributesInput")
	local t = { 
		["TargetGroupArn"] = TargetGroupArn,
	}
	M.AssertDescribeTargetGroupAttributesInput(t)
	return t
end

local TooManyCertificatesException_keys = { nil }

function M.AssertTooManyCertificatesException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyCertificatesException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(TooManyCertificatesException_keys[k], "TooManyCertificatesException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyCertificatesException
-- &lt;p&gt;You've reached the limit on the number of certificates per listener.&lt;/p&gt;
function M.TooManyCertificatesException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyCertificatesException")
	local t = { 
	}
	M.AssertTooManyCertificatesException(t)
	return t
end

local DeleteRuleInput_keys = { "RuleArn" = true, nil }

function M.AssertDeleteRuleInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRuleInput to be of type 'table'")
	assert(struct["RuleArn"], "Expected key RuleArn to exist in table")
	if struct["RuleArn"] then M.AssertRuleArn(struct["RuleArn"]) end
	for k,_ in pairs(struct) do
		assert(DeleteRuleInput_keys[k], "DeleteRuleInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRuleInput
--  
-- @param RuleArn [RuleArn] &lt;p&gt;The Amazon Resource Name (ARN) of the rule.&lt;/p&gt;
-- Required parameter: RuleArn
function M.DeleteRuleInput(RuleArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteRuleInput")
	local t = { 
		["RuleArn"] = RuleArn,
	}
	M.AssertDeleteRuleInput(t)
	return t
end

local SslPolicy_keys = { "SslProtocols" = true, "Ciphers" = true, "Name" = true, nil }

function M.AssertSslPolicy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SslPolicy to be of type 'table'")
	if struct["SslProtocols"] then M.AssertSslProtocols(struct["SslProtocols"]) end
	if struct["Ciphers"] then M.AssertCiphers(struct["Ciphers"]) end
	if struct["Name"] then M.AssertSslPolicyName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(SslPolicy_keys[k], "SslPolicy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SslPolicy
-- &lt;p&gt;Information about a policy used for SSL negotiation.&lt;/p&gt;
-- @param SslProtocols [SslProtocols] &lt;p&gt;The protocols.&lt;/p&gt;
-- @param Ciphers [Ciphers] &lt;p&gt;The ciphers.&lt;/p&gt;
-- @param Name [SslPolicyName] &lt;p&gt;The name of the policy.&lt;/p&gt;
function M.SslPolicy(SslProtocols, Ciphers, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SslPolicy")
	local t = { 
		["SslProtocols"] = SslProtocols,
		["Ciphers"] = Ciphers,
		["Name"] = Name,
	}
	M.AssertSslPolicy(t)
	return t
end

local DuplicateTagKeysException_keys = { nil }

function M.AssertDuplicateTagKeysException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DuplicateTagKeysException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DuplicateTagKeysException_keys[k], "DuplicateTagKeysException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DuplicateTagKeysException
-- &lt;p&gt;A tag key was specified more than once.&lt;/p&gt;
function M.DuplicateTagKeysException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DuplicateTagKeysException")
	local t = { 
	}
	M.AssertDuplicateTagKeysException(t)
	return t
end

local ListenerNotFoundException_keys = { nil }

function M.AssertListenerNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListenerNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ListenerNotFoundException_keys[k], "ListenerNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListenerNotFoundException
-- &lt;p&gt;The specified listener does not exist.&lt;/p&gt;
function M.ListenerNotFoundException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListenerNotFoundException")
	local t = { 
	}
	M.AssertListenerNotFoundException(t)
	return t
end

local DescribeLoadBalancersInput_keys = { "Marker" = true, "LoadBalancerArns" = true, "Names" = true, "PageSize" = true, nil }

function M.AssertDescribeLoadBalancersInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLoadBalancersInput to be of type 'table'")
	if struct["Marker"] then M.AssertMarker(struct["Marker"]) end
	if struct["LoadBalancerArns"] then M.AssertLoadBalancerArns(struct["LoadBalancerArns"]) end
	if struct["Names"] then M.AssertLoadBalancerNames(struct["Names"]) end
	if struct["PageSize"] then M.AssertPageSize(struct["PageSize"]) end
	for k,_ in pairs(struct) do
		assert(DescribeLoadBalancersInput_keys[k], "DescribeLoadBalancersInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLoadBalancersInput
--  
-- @param Marker [Marker] &lt;p&gt;The marker for the next set of results. (You received this marker from a previous call.)&lt;/p&gt;
-- @param LoadBalancerArns [LoadBalancerArns] &lt;p&gt;The Amazon Resource Names (ARN) of the load balancers. You can specify up to 20 load balancers in a single call.&lt;/p&gt;
-- @param Names [LoadBalancerNames] &lt;p&gt;The names of the load balancers.&lt;/p&gt;
-- @param PageSize [PageSize] &lt;p&gt;The maximum number of results to return with this call.&lt;/p&gt;
function M.DescribeLoadBalancersInput(Marker, LoadBalancerArns, Names, PageSize, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeLoadBalancersInput")
	local t = { 
		["Marker"] = Marker,
		["LoadBalancerArns"] = LoadBalancerArns,
		["Names"] = Names,
		["PageSize"] = PageSize,
	}
	M.AssertDescribeLoadBalancersInput(t)
	return t
end

local AddTagsOutput_keys = { nil }

function M.AssertAddTagsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddTagsOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(AddTagsOutput_keys[k], "AddTagsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddTagsOutput
--  
function M.AddTagsOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddTagsOutput")
	local t = { 
	}
	M.AssertAddTagsOutput(t)
	return t
end

local SubnetNotFoundException_keys = { nil }

function M.AssertSubnetNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubnetNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(SubnetNotFoundException_keys[k], "SubnetNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubnetNotFoundException
-- &lt;p&gt;The specified subnet does not exist.&lt;/p&gt;
function M.SubnetNotFoundException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubnetNotFoundException")
	local t = { 
	}
	M.AssertSubnetNotFoundException(t)
	return t
end

local RulePriorityPair_keys = { "Priority" = true, "RuleArn" = true, nil }

function M.AssertRulePriorityPair(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RulePriorityPair to be of type 'table'")
	if struct["Priority"] then M.AssertRulePriority(struct["Priority"]) end
	if struct["RuleArn"] then M.AssertRuleArn(struct["RuleArn"]) end
	for k,_ in pairs(struct) do
		assert(RulePriorityPair_keys[k], "RulePriorityPair contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RulePriorityPair
-- &lt;p&gt;Information about the priorities for the rules for a listener.&lt;/p&gt;
-- @param Priority [RulePriority] &lt;p&gt;The rule priority.&lt;/p&gt;
-- @param RuleArn [RuleArn] &lt;p&gt;The Amazon Resource Name (ARN) of the rule.&lt;/p&gt;
function M.RulePriorityPair(Priority, RuleArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RulePriorityPair")
	local t = { 
		["Priority"] = Priority,
		["RuleArn"] = RuleArn,
	}
	M.AssertRulePriorityPair(t)
	return t
end

local DeleteTargetGroupOutput_keys = { nil }

function M.AssertDeleteTargetGroupOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTargetGroupOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteTargetGroupOutput_keys[k], "DeleteTargetGroupOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTargetGroupOutput
--  
function M.DeleteTargetGroupOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteTargetGroupOutput")
	local t = { 
	}
	M.AssertDeleteTargetGroupOutput(t)
	return t
end

local DuplicateLoadBalancerNameException_keys = { nil }

function M.AssertDuplicateLoadBalancerNameException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DuplicateLoadBalancerNameException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DuplicateLoadBalancerNameException_keys[k], "DuplicateLoadBalancerNameException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DuplicateLoadBalancerNameException
-- &lt;p&gt;A load balancer with the specified name already exists.&lt;/p&gt;
function M.DuplicateLoadBalancerNameException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DuplicateLoadBalancerNameException")
	local t = { 
	}
	M.AssertDuplicateLoadBalancerNameException(t)
	return t
end

local InvalidConfigurationRequestException_keys = { nil }

function M.AssertInvalidConfigurationRequestException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidConfigurationRequestException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidConfigurationRequestException_keys[k], "InvalidConfigurationRequestException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidConfigurationRequestException
-- &lt;p&gt;The requested configuration is not valid.&lt;/p&gt;
function M.InvalidConfigurationRequestException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidConfigurationRequestException")
	local t = { 
	}
	M.AssertInvalidConfigurationRequestException(t)
	return t
end

local ModifyTargetGroupAttributesInput_keys = { "Attributes" = true, "TargetGroupArn" = true, nil }

function M.AssertModifyTargetGroupAttributesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyTargetGroupAttributesInput to be of type 'table'")
	assert(struct["TargetGroupArn"], "Expected key TargetGroupArn to exist in table")
	assert(struct["Attributes"], "Expected key Attributes to exist in table")
	if struct["Attributes"] then M.AssertTargetGroupAttributes(struct["Attributes"]) end
	if struct["TargetGroupArn"] then M.AssertTargetGroupArn(struct["TargetGroupArn"]) end
	for k,_ in pairs(struct) do
		assert(ModifyTargetGroupAttributesInput_keys[k], "ModifyTargetGroupAttributesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyTargetGroupAttributesInput
--  
-- @param Attributes [TargetGroupAttributes] &lt;p&gt;The attributes.&lt;/p&gt;
-- @param TargetGroupArn [TargetGroupArn] &lt;p&gt;The Amazon Resource Name (ARN) of the target group.&lt;/p&gt;
-- Required parameter: TargetGroupArn
-- Required parameter: Attributes
function M.ModifyTargetGroupAttributesInput(Attributes, TargetGroupArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyTargetGroupAttributesInput")
	local t = { 
		["Attributes"] = Attributes,
		["TargetGroupArn"] = TargetGroupArn,
	}
	M.AssertModifyTargetGroupAttributesInput(t)
	return t
end

local Cipher_keys = { "Priority" = true, "Name" = true, nil }

function M.AssertCipher(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Cipher to be of type 'table'")
	if struct["Priority"] then M.AssertCipherPriority(struct["Priority"]) end
	if struct["Name"] then M.AssertCipherName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(Cipher_keys[k], "Cipher contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Cipher
-- &lt;p&gt;Information about a cipher used in a policy.&lt;/p&gt;
-- @param Priority [CipherPriority] &lt;p&gt;The priority of the cipher.&lt;/p&gt;
-- @param Name [CipherName] &lt;p&gt;The name of the cipher.&lt;/p&gt;
function M.Cipher(Priority, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Cipher")
	local t = { 
		["Priority"] = Priority,
		["Name"] = Name,
	}
	M.AssertCipher(t)
	return t
end

local DescribeSSLPoliciesOutput_keys = { "NextMarker" = true, "SslPolicies" = true, nil }

function M.AssertDescribeSSLPoliciesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSSLPoliciesOutput to be of type 'table'")
	if struct["NextMarker"] then M.AssertMarker(struct["NextMarker"]) end
	if struct["SslPolicies"] then M.AssertSslPolicies(struct["SslPolicies"]) end
	for k,_ in pairs(struct) do
		assert(DescribeSSLPoliciesOutput_keys[k], "DescribeSSLPoliciesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSSLPoliciesOutput
--  
-- @param NextMarker [Marker] &lt;p&gt;The marker to use when requesting the next set of results. If there are no additional results, the string is empty.&lt;/p&gt;
-- @param SslPolicies [SslPolicies] &lt;p&gt;Information about the policies.&lt;/p&gt;
function M.DescribeSSLPoliciesOutput(NextMarker, SslPolicies, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeSSLPoliciesOutput")
	local t = { 
		["NextMarker"] = NextMarker,
		["SslPolicies"] = SslPolicies,
	}
	M.AssertDescribeSSLPoliciesOutput(t)
	return t
end

local OperationNotPermittedException_keys = { nil }

function M.AssertOperationNotPermittedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OperationNotPermittedException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(OperationNotPermittedException_keys[k], "OperationNotPermittedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OperationNotPermittedException
-- &lt;p&gt;This operation is not allowed.&lt;/p&gt;
function M.OperationNotPermittedException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating OperationNotPermittedException")
	local t = { 
	}
	M.AssertOperationNotPermittedException(t)
	return t
end

local DescribeTagsInput_keys = { "ResourceArns" = true, nil }

function M.AssertDescribeTagsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTagsInput to be of type 'table'")
	assert(struct["ResourceArns"], "Expected key ResourceArns to exist in table")
	if struct["ResourceArns"] then M.AssertResourceArns(struct["ResourceArns"]) end
	for k,_ in pairs(struct) do
		assert(DescribeTagsInput_keys[k], "DescribeTagsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTagsInput
--  
-- @param ResourceArns [ResourceArns] &lt;p&gt;The Amazon Resource Names (ARN) of the resources.&lt;/p&gt;
-- Required parameter: ResourceArns
function M.DescribeTagsInput(ResourceArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTagsInput")
	local t = { 
		["ResourceArns"] = ResourceArns,
	}
	M.AssertDescribeTagsInput(t)
	return t
end

local SetSecurityGroupsOutput_keys = { "SecurityGroupIds" = true, nil }

function M.AssertSetSecurityGroupsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetSecurityGroupsOutput to be of type 'table'")
	if struct["SecurityGroupIds"] then M.AssertSecurityGroups(struct["SecurityGroupIds"]) end
	for k,_ in pairs(struct) do
		assert(SetSecurityGroupsOutput_keys[k], "SetSecurityGroupsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetSecurityGroupsOutput
--  
-- @param SecurityGroupIds [SecurityGroups] &lt;p&gt;The IDs of the security groups associated with the load balancer.&lt;/p&gt;
function M.SetSecurityGroupsOutput(SecurityGroupIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetSecurityGroupsOutput")
	local t = { 
		["SecurityGroupIds"] = SecurityGroupIds,
	}
	M.AssertSetSecurityGroupsOutput(t)
	return t
end

local DescribeAccountLimitsInput_keys = { "Marker" = true, "PageSize" = true, nil }

function M.AssertDescribeAccountLimitsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAccountLimitsInput to be of type 'table'")
	if struct["Marker"] then M.AssertMarker(struct["Marker"]) end
	if struct["PageSize"] then M.AssertPageSize(struct["PageSize"]) end
	for k,_ in pairs(struct) do
		assert(DescribeAccountLimitsInput_keys[k], "DescribeAccountLimitsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAccountLimitsInput
--  
-- @param Marker [Marker] &lt;p&gt;The marker for the next set of results. (You received this marker from a previous call.)&lt;/p&gt;
-- @param PageSize [PageSize] &lt;p&gt;The maximum number of results to return with this call.&lt;/p&gt;
function M.DescribeAccountLimitsInput(Marker, PageSize, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAccountLimitsInput")
	local t = { 
		["Marker"] = Marker,
		["PageSize"] = PageSize,
	}
	M.AssertDescribeAccountLimitsInput(t)
	return t
end

local SetSubnetsInput_keys = { "Subnets" = true, "LoadBalancerArn" = true, nil }

function M.AssertSetSubnetsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetSubnetsInput to be of type 'table'")
	assert(struct["LoadBalancerArn"], "Expected key LoadBalancerArn to exist in table")
	assert(struct["Subnets"], "Expected key Subnets to exist in table")
	if struct["Subnets"] then M.AssertSubnets(struct["Subnets"]) end
	if struct["LoadBalancerArn"] then M.AssertLoadBalancerArn(struct["LoadBalancerArn"]) end
	for k,_ in pairs(struct) do
		assert(SetSubnetsInput_keys[k], "SetSubnetsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetSubnetsInput
--  
-- @param Subnets [Subnets] &lt;p&gt;The IDs of the subnets. You must specify at least two subnets. You can add only one subnet per Availability Zone.&lt;/p&gt;
-- @param LoadBalancerArn [LoadBalancerArn] &lt;p&gt;The Amazon Resource Name (ARN) of the load balancer.&lt;/p&gt;
-- Required parameter: LoadBalancerArn
-- Required parameter: Subnets
function M.SetSubnetsInput(Subnets, LoadBalancerArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetSubnetsInput")
	local t = { 
		["Subnets"] = Subnets,
		["LoadBalancerArn"] = LoadBalancerArn,
	}
	M.AssertSetSubnetsInput(t)
	return t
end

local Limit_keys = { "Max" = true, "Name" = true, nil }

function M.AssertLimit(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Limit to be of type 'table'")
	if struct["Max"] then M.AssertMax(struct["Max"]) end
	if struct["Name"] then M.AssertName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(Limit_keys[k], "Limit contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Limit
-- &lt;p&gt;Information about an Elastic Load Balancing resource limit for your AWS account.&lt;/p&gt;
-- @param Max [Max] &lt;p&gt;The maximum value of the limit.&lt;/p&gt;
-- @param Name [Name] &lt;p&gt;The name of the limit. The possible values are:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;application-load-balancers&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;listeners-per-application-load-balancer&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;rules-per-application-load-balancer&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;target-groups&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;targets-per-application-load-balancer&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
function M.Limit(Max, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Limit")
	local t = { 
		["Max"] = Max,
		["Name"] = Name,
	}
	M.AssertLimit(t)
	return t
end

local DuplicateTargetGroupNameException_keys = { nil }

function M.AssertDuplicateTargetGroupNameException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DuplicateTargetGroupNameException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DuplicateTargetGroupNameException_keys[k], "DuplicateTargetGroupNameException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DuplicateTargetGroupNameException
-- &lt;p&gt;A target group with the specified name already exists.&lt;/p&gt;
function M.DuplicateTargetGroupNameException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DuplicateTargetGroupNameException")
	local t = { 
	}
	M.AssertDuplicateTargetGroupNameException(t)
	return t
end

local TargetGroup_keys = { "HealthCheckPath" = true, "HealthCheckIntervalSeconds" = true, "VpcId" = true, "Protocol" = true, "HealthCheckTimeoutSeconds" = true, "HealthCheckProtocol" = true, "LoadBalancerArns" = true, "UnhealthyThresholdCount" = true, "HealthyThresholdCount" = true, "TargetGroupArn" = true, "Matcher" = true, "HealthCheckPort" = true, "Port" = true, "TargetGroupName" = true, nil }

function M.AssertTargetGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TargetGroup to be of type 'table'")
	if struct["HealthCheckPath"] then M.AssertPath(struct["HealthCheckPath"]) end
	if struct["HealthCheckIntervalSeconds"] then M.AssertHealthCheckIntervalSeconds(struct["HealthCheckIntervalSeconds"]) end
	if struct["VpcId"] then M.AssertVpcId(struct["VpcId"]) end
	if struct["Protocol"] then M.AssertProtocolEnum(struct["Protocol"]) end
	if struct["HealthCheckTimeoutSeconds"] then M.AssertHealthCheckTimeoutSeconds(struct["HealthCheckTimeoutSeconds"]) end
	if struct["HealthCheckProtocol"] then M.AssertProtocolEnum(struct["HealthCheckProtocol"]) end
	if struct["LoadBalancerArns"] then M.AssertLoadBalancerArns(struct["LoadBalancerArns"]) end
	if struct["UnhealthyThresholdCount"] then M.AssertHealthCheckThresholdCount(struct["UnhealthyThresholdCount"]) end
	if struct["HealthyThresholdCount"] then M.AssertHealthCheckThresholdCount(struct["HealthyThresholdCount"]) end
	if struct["TargetGroupArn"] then M.AssertTargetGroupArn(struct["TargetGroupArn"]) end
	if struct["Matcher"] then M.AssertMatcher(struct["Matcher"]) end
	if struct["HealthCheckPort"] then M.AssertHealthCheckPort(struct["HealthCheckPort"]) end
	if struct["Port"] then M.AssertPort(struct["Port"]) end
	if struct["TargetGroupName"] then M.AssertTargetGroupName(struct["TargetGroupName"]) end
	for k,_ in pairs(struct) do
		assert(TargetGroup_keys[k], "TargetGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TargetGroup
-- &lt;p&gt;Information about a target group.&lt;/p&gt;
-- @param HealthCheckPath [Path] &lt;p&gt;The destination for the health check request.&lt;/p&gt;
-- @param HealthCheckIntervalSeconds [HealthCheckIntervalSeconds] &lt;p&gt;The approximate amount of time, in seconds, between health checks of an individual target.&lt;/p&gt;
-- @param VpcId [VpcId] &lt;p&gt;The ID of the VPC for the targets.&lt;/p&gt;
-- @param Protocol [ProtocolEnum] &lt;p&gt;The protocol to use for routing traffic to the targets.&lt;/p&gt;
-- @param HealthCheckTimeoutSeconds [HealthCheckTimeoutSeconds] &lt;p&gt;The amount of time, in seconds, during which no response means a failed health check.&lt;/p&gt;
-- @param HealthCheckProtocol [ProtocolEnum] &lt;p&gt;The protocol to use to connect with the target.&lt;/p&gt;
-- @param LoadBalancerArns [LoadBalancerArns] &lt;p&gt;The Amazon Resource Names (ARN) of the load balancers that route traffic to this target group.&lt;/p&gt;
-- @param UnhealthyThresholdCount [HealthCheckThresholdCount] &lt;p&gt;The number of consecutive health check failures required before considering the target unhealthy.&lt;/p&gt;
-- @param HealthyThresholdCount [HealthCheckThresholdCount] &lt;p&gt;The number of consecutive health checks successes required before considering an unhealthy target healthy.&lt;/p&gt;
-- @param TargetGroupArn [TargetGroupArn] &lt;p&gt;The Amazon Resource Name (ARN) of the target group.&lt;/p&gt;
-- @param Matcher [Matcher] &lt;p&gt;The HTTP codes to use when checking for a successful response from a target.&lt;/p&gt;
-- @param HealthCheckPort [HealthCheckPort] &lt;p&gt;The port to use to connect with the target.&lt;/p&gt;
-- @param Port [Port] &lt;p&gt;The port on which the targets are listening.&lt;/p&gt;
-- @param TargetGroupName [TargetGroupName] &lt;p&gt;The name of the target group.&lt;/p&gt;
function M.TargetGroup(HealthCheckPath, HealthCheckIntervalSeconds, VpcId, Protocol, HealthCheckTimeoutSeconds, HealthCheckProtocol, LoadBalancerArns, UnhealthyThresholdCount, HealthyThresholdCount, TargetGroupArn, Matcher, HealthCheckPort, Port, TargetGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TargetGroup")
	local t = { 
		["HealthCheckPath"] = HealthCheckPath,
		["HealthCheckIntervalSeconds"] = HealthCheckIntervalSeconds,
		["VpcId"] = VpcId,
		["Protocol"] = Protocol,
		["HealthCheckTimeoutSeconds"] = HealthCheckTimeoutSeconds,
		["HealthCheckProtocol"] = HealthCheckProtocol,
		["LoadBalancerArns"] = LoadBalancerArns,
		["UnhealthyThresholdCount"] = UnhealthyThresholdCount,
		["HealthyThresholdCount"] = HealthyThresholdCount,
		["TargetGroupArn"] = TargetGroupArn,
		["Matcher"] = Matcher,
		["HealthCheckPort"] = HealthCheckPort,
		["Port"] = Port,
		["TargetGroupName"] = TargetGroupName,
	}
	M.AssertTargetGroup(t)
	return t
end

local DescribeLoadBalancerAttributesOutput_keys = { "Attributes" = true, nil }

function M.AssertDescribeLoadBalancerAttributesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLoadBalancerAttributesOutput to be of type 'table'")
	if struct["Attributes"] then M.AssertLoadBalancerAttributes(struct["Attributes"]) end
	for k,_ in pairs(struct) do
		assert(DescribeLoadBalancerAttributesOutput_keys[k], "DescribeLoadBalancerAttributesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLoadBalancerAttributesOutput
--  
-- @param Attributes [LoadBalancerAttributes] &lt;p&gt;Information about the load balancer attributes.&lt;/p&gt;
function M.DescribeLoadBalancerAttributesOutput(Attributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeLoadBalancerAttributesOutput")
	local t = { 
		["Attributes"] = Attributes,
	}
	M.AssertDescribeLoadBalancerAttributesOutput(t)
	return t
end

local InvalidSubnetException_keys = { nil }

function M.AssertInvalidSubnetException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidSubnetException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidSubnetException_keys[k], "InvalidSubnetException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidSubnetException
-- &lt;p&gt;The specified subnet is out of available addresses.&lt;/p&gt;
function M.InvalidSubnetException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidSubnetException")
	local t = { 
	}
	M.AssertInvalidSubnetException(t)
	return t
end

local TagDescription_keys = { "ResourceArn" = true, "Tags" = true, nil }

function M.AssertTagDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagDescription to be of type 'table'")
	if struct["ResourceArn"] then M.AssertResourceArn(struct["ResourceArn"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(TagDescription_keys[k], "TagDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagDescription
-- &lt;p&gt;The tags associated with a resource.&lt;/p&gt;
-- @param ResourceArn [ResourceArn] &lt;p&gt;The Amazon Resource Name (ARN) of the resource.&lt;/p&gt;
-- @param Tags [TagList] &lt;p&gt;Information about the tags.&lt;/p&gt;
function M.TagDescription(ResourceArn, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagDescription")
	local t = { 
		["ResourceArn"] = ResourceArn,
		["Tags"] = Tags,
	}
	M.AssertTagDescription(t)
	return t
end

local Tag_keys = { "Value" = true, "Key" = true, nil }

function M.AssertTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tag to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	if struct["Value"] then M.AssertTagValue(struct["Value"]) end
	if struct["Key"] then M.AssertTagKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(Tag_keys[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- &lt;p&gt;Information about a tag.&lt;/p&gt;
-- @param Value [TagValue] &lt;p&gt;The value of the tag.&lt;/p&gt;
-- @param Key [TagKey] &lt;p&gt;The key of the tag.&lt;/p&gt;
-- Required parameter: Key
function M.Tag(Value, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tag")
	local t = { 
		["Value"] = Value,
		["Key"] = Key,
	}
	M.AssertTag(t)
	return t
end

local DescribeTargetGroupAttributesOutput_keys = { "Attributes" = true, nil }

function M.AssertDescribeTargetGroupAttributesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTargetGroupAttributesOutput to be of type 'table'")
	if struct["Attributes"] then M.AssertTargetGroupAttributes(struct["Attributes"]) end
	for k,_ in pairs(struct) do
		assert(DescribeTargetGroupAttributesOutput_keys[k], "DescribeTargetGroupAttributesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTargetGroupAttributesOutput
--  
-- @param Attributes [TargetGroupAttributes] &lt;p&gt;Information about the target group attributes&lt;/p&gt;
function M.DescribeTargetGroupAttributesOutput(Attributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTargetGroupAttributesOutput")
	local t = { 
		["Attributes"] = Attributes,
	}
	M.AssertDescribeTargetGroupAttributesOutput(t)
	return t
end

local CertificateNotFoundException_keys = { nil }

function M.AssertCertificateNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CertificateNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(CertificateNotFoundException_keys[k], "CertificateNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CertificateNotFoundException
-- &lt;p&gt;The specified certificate does not exist.&lt;/p&gt;
function M.CertificateNotFoundException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CertificateNotFoundException")
	local t = { 
	}
	M.AssertCertificateNotFoundException(t)
	return t
end

local CreateLoadBalancerInput_keys = { "IpAddressType" = true, "Subnets" = true, "Name" = true, "Tags" = true, "SecurityGroups" = true, "Scheme" = true, nil }

function M.AssertCreateLoadBalancerInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateLoadBalancerInput to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Subnets"], "Expected key Subnets to exist in table")
	if struct["IpAddressType"] then M.AssertIpAddressType(struct["IpAddressType"]) end
	if struct["Subnets"] then M.AssertSubnets(struct["Subnets"]) end
	if struct["Name"] then M.AssertLoadBalancerName(struct["Name"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	if struct["SecurityGroups"] then M.AssertSecurityGroups(struct["SecurityGroups"]) end
	if struct["Scheme"] then M.AssertLoadBalancerSchemeEnum(struct["Scheme"]) end
	for k,_ in pairs(struct) do
		assert(CreateLoadBalancerInput_keys[k], "CreateLoadBalancerInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateLoadBalancerInput
--  
-- @param IpAddressType [IpAddressType] &lt;p&gt;The type of IP addresses used by the subnets for your load balancer. The possible values are &lt;code&gt;ipv4&lt;/code&gt; (for IPv4 addresses) and &lt;code&gt;dualstack&lt;/code&gt; (for IPv4 and IPv6 addresses). Internal load balancers must use &lt;code&gt;ipv4&lt;/code&gt;.&lt;/p&gt;
-- @param Subnets [Subnets] &lt;p&gt;The IDs of the subnets to attach to the load balancer. You can specify only one subnet per Availability Zone. You must specify subnets from at least two Availability Zones.&lt;/p&gt;
-- @param Name [LoadBalancerName] &lt;p&gt;The name of the load balancer.&lt;/p&gt; &lt;p&gt;This name must be unique per region per account, can have a maximum of 32 characters, must contain only alphanumeric characters or hyphens, and must not begin or end with a hyphen.&lt;/p&gt;
-- @param Tags [TagList] &lt;p&gt;One or more tags to assign to the load balancer.&lt;/p&gt;
-- @param SecurityGroups [SecurityGroups] &lt;p&gt;The IDs of the security groups to assign to the load balancer.&lt;/p&gt;
-- @param Scheme [LoadBalancerSchemeEnum] &lt;p&gt;The nodes of an Internet-facing load balancer have public IP addresses. The DNS name of an Internet-facing load balancer is publicly resolvable to the public IP addresses of the nodes. Therefore, Internet-facing load balancers can route requests from clients over the Internet.&lt;/p&gt; &lt;p&gt;The nodes of an internal load balancer have only private IP addresses. The DNS name of an internal load balancer is publicly resolvable to the private IP addresses of the nodes. Therefore, internal load balancers can only route requests from clients with access to the VPC for the load balancer.&lt;/p&gt; &lt;p&gt;The default is an Internet-facing load balancer.&lt;/p&gt;
-- Required parameter: Name
-- Required parameter: Subnets
function M.CreateLoadBalancerInput(IpAddressType, Subnets, Name, Tags, SecurityGroups, Scheme, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateLoadBalancerInput")
	local t = { 
		["IpAddressType"] = IpAddressType,
		["Subnets"] = Subnets,
		["Name"] = Name,
		["Tags"] = Tags,
		["SecurityGroups"] = SecurityGroups,
		["Scheme"] = Scheme,
	}
	M.AssertCreateLoadBalancerInput(t)
	return t
end

local DeregisterTargetsOutput_keys = { nil }

function M.AssertDeregisterTargetsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterTargetsOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeregisterTargetsOutput_keys[k], "DeregisterTargetsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterTargetsOutput
--  
function M.DeregisterTargetsOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeregisterTargetsOutput")
	local t = { 
	}
	M.AssertDeregisterTargetsOutput(t)
	return t
end

local TargetGroupAssociationLimitException_keys = { nil }

function M.AssertTargetGroupAssociationLimitException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TargetGroupAssociationLimitException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(TargetGroupAssociationLimitException_keys[k], "TargetGroupAssociationLimitException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TargetGroupAssociationLimitException
-- &lt;p&gt;You've reached the limit on the number of load balancers per target group.&lt;/p&gt;
function M.TargetGroupAssociationLimitException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating TargetGroupAssociationLimitException")
	local t = { 
	}
	M.AssertTargetGroupAssociationLimitException(t)
	return t
end

local DeregisterTargetsInput_keys = { "TargetGroupArn" = true, "Targets" = true, nil }

function M.AssertDeregisterTargetsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterTargetsInput to be of type 'table'")
	assert(struct["TargetGroupArn"], "Expected key TargetGroupArn to exist in table")
	assert(struct["Targets"], "Expected key Targets to exist in table")
	if struct["TargetGroupArn"] then M.AssertTargetGroupArn(struct["TargetGroupArn"]) end
	if struct["Targets"] then M.AssertTargetDescriptions(struct["Targets"]) end
	for k,_ in pairs(struct) do
		assert(DeregisterTargetsInput_keys[k], "DeregisterTargetsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterTargetsInput
--  
-- @param TargetGroupArn [TargetGroupArn] &lt;p&gt;The Amazon Resource Name (ARN) of the target group.&lt;/p&gt;
-- @param Targets [TargetDescriptions] &lt;p&gt;The targets. If you specified a port override when you registered a target, you must specify both the target ID and the port when you deregister it.&lt;/p&gt;
-- Required parameter: TargetGroupArn
-- Required parameter: Targets
function M.DeregisterTargetsInput(TargetGroupArn, Targets, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeregisterTargetsInput")
	local t = { 
		["TargetGroupArn"] = TargetGroupArn,
		["Targets"] = Targets,
	}
	M.AssertDeregisterTargetsInput(t)
	return t
end

local Listener_keys = { "Protocol" = true, "DefaultActions" = true, "SslPolicy" = true, "Certificates" = true, "LoadBalancerArn" = true, "Port" = true, "ListenerArn" = true, nil }

function M.AssertListener(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Listener to be of type 'table'")
	if struct["Protocol"] then M.AssertProtocolEnum(struct["Protocol"]) end
	if struct["DefaultActions"] then M.AssertActions(struct["DefaultActions"]) end
	if struct["SslPolicy"] then M.AssertSslPolicyName(struct["SslPolicy"]) end
	if struct["Certificates"] then M.AssertCertificateList(struct["Certificates"]) end
	if struct["LoadBalancerArn"] then M.AssertLoadBalancerArn(struct["LoadBalancerArn"]) end
	if struct["Port"] then M.AssertPort(struct["Port"]) end
	if struct["ListenerArn"] then M.AssertListenerArn(struct["ListenerArn"]) end
	for k,_ in pairs(struct) do
		assert(Listener_keys[k], "Listener contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Listener
-- &lt;p&gt;Information about a listener.&lt;/p&gt;
-- @param Protocol [ProtocolEnum] &lt;p&gt;The protocol for connections from clients to the load balancer.&lt;/p&gt;
-- @param DefaultActions [Actions] &lt;p&gt;The default actions for the listener.&lt;/p&gt;
-- @param SslPolicy [SslPolicyName] &lt;p&gt;The security policy that defines which ciphers and protocols are supported. The default is the current predefined security policy.&lt;/p&gt;
-- @param Certificates [CertificateList] &lt;p&gt;The SSL server certificate. You must provide a certificate if the protocol is HTTPS.&lt;/p&gt;
-- @param LoadBalancerArn [LoadBalancerArn] &lt;p&gt;The Amazon Resource Name (ARN) of the load balancer.&lt;/p&gt;
-- @param Port [Port] &lt;p&gt;The port on which the load balancer is listening.&lt;/p&gt;
-- @param ListenerArn [ListenerArn] &lt;p&gt;The Amazon Resource Name (ARN) of the listener.&lt;/p&gt;
function M.Listener(Protocol, DefaultActions, SslPolicy, Certificates, LoadBalancerArn, Port, ListenerArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Listener")
	local t = { 
		["Protocol"] = Protocol,
		["DefaultActions"] = DefaultActions,
		["SslPolicy"] = SslPolicy,
		["Certificates"] = Certificates,
		["LoadBalancerArn"] = LoadBalancerArn,
		["Port"] = Port,
		["ListenerArn"] = ListenerArn,
	}
	M.AssertListener(t)
	return t
end

local TargetHealth_keys = { "State" = true, "Reason" = true, "Description" = true, nil }

function M.AssertTargetHealth(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TargetHealth to be of type 'table'")
	if struct["State"] then M.AssertTargetHealthStateEnum(struct["State"]) end
	if struct["Reason"] then M.AssertTargetHealthReasonEnum(struct["Reason"]) end
	if struct["Description"] then M.AssertDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(TargetHealth_keys[k], "TargetHealth contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TargetHealth
-- &lt;p&gt;Information about the current health of a target.&lt;/p&gt;
-- @param State [TargetHealthStateEnum] &lt;p&gt;The state of the target.&lt;/p&gt;
-- @param Reason [TargetHealthReasonEnum] &lt;p&gt;The reason code. If the target state is &lt;code&gt;healthy&lt;/code&gt;, a reason code is not provided.&lt;/p&gt; &lt;p&gt;If the target state is &lt;code&gt;initial&lt;/code&gt;, the reason code can be one of the following values:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Elb.RegistrationInProgress&lt;/code&gt; - The target is in the process of being registered with the load balancer.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Elb.InitialHealthChecking&lt;/code&gt; - The load balancer is still sending the target the minimum number of health checks required to determine its health status.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;If the target state is &lt;code&gt;unhealthy&lt;/code&gt;, the reason code can be one of the following values:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Target.ResponseCodeMismatch&lt;/code&gt; - The health checks did not return an expected HTTP code.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Target.Timeout&lt;/code&gt; - The health check requests timed out.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Target.FailedHealthChecks&lt;/code&gt; - The health checks failed because the connection to the target timed out, the target response was malformed, or the target failed the health check for an unknown reason.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Elb.InternalError&lt;/code&gt; - The health checks failed due to an internal error.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;If the target state is &lt;code&gt;unused&lt;/code&gt;, the reason code can be one of the following values:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Target.NotRegistered&lt;/code&gt; - The target is not registered with the target group.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Target.NotInUse&lt;/code&gt; - The target group is not used by any load balancer or the target is in an Availability Zone that is not enabled for its load balancer.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Target.InvalidState&lt;/code&gt; - The target is in the stopped or terminated state.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;If the target state is &lt;code&gt;draining&lt;/code&gt;, the reason code can be the following value:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Target.DeregistrationInProgress&lt;/code&gt; - The target is in the process of being deregistered and the deregistration delay period has not expired.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param Description [Description] &lt;p&gt;A description of the target health that provides additional details. If the state is &lt;code&gt;healthy&lt;/code&gt;, a description is not provided.&lt;/p&gt;
function M.TargetHealth(State, Reason, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TargetHealth")
	local t = { 
		["State"] = State,
		["Reason"] = Reason,
		["Description"] = Description,
	}
	M.AssertTargetHealth(t)
	return t
end

local DescribeLoadBalancerAttributesInput_keys = { "LoadBalancerArn" = true, nil }

function M.AssertDescribeLoadBalancerAttributesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLoadBalancerAttributesInput to be of type 'table'")
	assert(struct["LoadBalancerArn"], "Expected key LoadBalancerArn to exist in table")
	if struct["LoadBalancerArn"] then M.AssertLoadBalancerArn(struct["LoadBalancerArn"]) end
	for k,_ in pairs(struct) do
		assert(DescribeLoadBalancerAttributesInput_keys[k], "DescribeLoadBalancerAttributesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLoadBalancerAttributesInput
--  
-- @param LoadBalancerArn [LoadBalancerArn] &lt;p&gt;The Amazon Resource Name (ARN) of the load balancer.&lt;/p&gt;
-- Required parameter: LoadBalancerArn
function M.DescribeLoadBalancerAttributesInput(LoadBalancerArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeLoadBalancerAttributesInput")
	local t = { 
		["LoadBalancerArn"] = LoadBalancerArn,
	}
	M.AssertDescribeLoadBalancerAttributesInput(t)
	return t
end

local UnsupportedProtocolException_keys = { nil }

function M.AssertUnsupportedProtocolException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsupportedProtocolException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(UnsupportedProtocolException_keys[k], "UnsupportedProtocolException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsupportedProtocolException
-- &lt;p&gt;The specified protocol is not supported.&lt;/p&gt;
function M.UnsupportedProtocolException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnsupportedProtocolException")
	local t = { 
	}
	M.AssertUnsupportedProtocolException(t)
	return t
end

local ModifyRuleOutput_keys = { "Rules" = true, nil }

function M.AssertModifyRuleOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyRuleOutput to be of type 'table'")
	if struct["Rules"] then M.AssertRules(struct["Rules"]) end
	for k,_ in pairs(struct) do
		assert(ModifyRuleOutput_keys[k], "ModifyRuleOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyRuleOutput
--  
-- @param Rules [Rules] &lt;p&gt;Information about the rule.&lt;/p&gt;
function M.ModifyRuleOutput(Rules, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyRuleOutput")
	local t = { 
		["Rules"] = Rules,
	}
	M.AssertModifyRuleOutput(t)
	return t
end

local RuleCondition_keys = { "Field" = true, "Values" = true, nil }

function M.AssertRuleCondition(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RuleCondition to be of type 'table'")
	if struct["Field"] then M.AssertConditionFieldName(struct["Field"]) end
	if struct["Values"] then M.AssertListOfString(struct["Values"]) end
	for k,_ in pairs(struct) do
		assert(RuleCondition_keys[k], "RuleCondition contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RuleCondition
-- &lt;p&gt;Information about a condition for a rule.&lt;/p&gt;
-- @param Field [ConditionFieldName] &lt;p&gt;The name of the field. The possible values are &lt;code&gt;host-header&lt;/code&gt; and &lt;code&gt;path-pattern&lt;/code&gt;.&lt;/p&gt;
-- @param Values [ListOfString] &lt;p&gt;The condition value.&lt;/p&gt; &lt;p&gt;If the field name is &lt;code&gt;host-header&lt;/code&gt;, you can specify a single host name (for example, my.example.com). A host name is case insensitive, can be up to 128 characters in length, and can contain any of the following characters. Note that you can include up to three wildcard characters.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;A-Z, a-z, 0-9&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;- .&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;* (matches 0 or more characters)&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;? (matches exactly 1 character)&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;If the field name is &lt;code&gt;path-pattern&lt;/code&gt;, you can specify a single path pattern (for example, /img/*). A path pattern is case sensitive, can be up to 128 characters in length, and can contain any of the following characters. Note that you can include up to three wildcard characters.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;A-Z, a-z, 0-9&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;_ - . $ / ~ &quot; ' @ : +&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;&amp;amp; (using &amp;amp;amp;)&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;* (matches 0 or more characters)&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;? (matches exactly 1 character)&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
function M.RuleCondition(Field, Values, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RuleCondition")
	local t = { 
		["Field"] = Field,
		["Values"] = Values,
	}
	M.AssertRuleCondition(t)
	return t
end

local DeleteRuleOutput_keys = { nil }

function M.AssertDeleteRuleOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRuleOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteRuleOutput_keys[k], "DeleteRuleOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRuleOutput
--  
function M.DeleteRuleOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteRuleOutput")
	local t = { 
	}
	M.AssertDeleteRuleOutput(t)
	return t
end

local DeleteLoadBalancerOutput_keys = { nil }

function M.AssertDeleteLoadBalancerOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteLoadBalancerOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteLoadBalancerOutput_keys[k], "DeleteLoadBalancerOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteLoadBalancerOutput
--  
function M.DeleteLoadBalancerOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteLoadBalancerOutput")
	local t = { 
	}
	M.AssertDeleteLoadBalancerOutput(t)
	return t
end

local AvailabilityZone_keys = { "SubnetId" = true, "ZoneName" = true, nil }

function M.AssertAvailabilityZone(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AvailabilityZone to be of type 'table'")
	if struct["SubnetId"] then M.AssertSubnetId(struct["SubnetId"]) end
	if struct["ZoneName"] then M.AssertZoneName(struct["ZoneName"]) end
	for k,_ in pairs(struct) do
		assert(AvailabilityZone_keys[k], "AvailabilityZone contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AvailabilityZone
-- &lt;p&gt;Information about an Availability Zone.&lt;/p&gt;
-- @param SubnetId [SubnetId] &lt;p&gt;The ID of the subnet.&lt;/p&gt;
-- @param ZoneName [ZoneName] &lt;p&gt;The name of the Availability Zone.&lt;/p&gt;
function M.AvailabilityZone(SubnetId, ZoneName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AvailabilityZone")
	local t = { 
		["SubnetId"] = SubnetId,
		["ZoneName"] = ZoneName,
	}
	M.AssertAvailabilityZone(t)
	return t
end

local TooManyRegistrationsForTargetIdException_keys = { nil }

function M.AssertTooManyRegistrationsForTargetIdException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyRegistrationsForTargetIdException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(TooManyRegistrationsForTargetIdException_keys[k], "TooManyRegistrationsForTargetIdException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyRegistrationsForTargetIdException
-- &lt;p&gt;You've reached the limit on the number of times a target can be registered with a load balancer.&lt;/p&gt;
function M.TooManyRegistrationsForTargetIdException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyRegistrationsForTargetIdException")
	local t = { 
	}
	M.AssertTooManyRegistrationsForTargetIdException(t)
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
-- &lt;p&gt;A specified resource is in use.&lt;/p&gt;
function M.ResourceInUseException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceInUseException")
	local t = { 
	}
	M.AssertResourceInUseException(t)
	return t
end

local DescribeLoadBalancersOutput_keys = { "LoadBalancers" = true, "NextMarker" = true, nil }

function M.AssertDescribeLoadBalancersOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLoadBalancersOutput to be of type 'table'")
	if struct["LoadBalancers"] then M.AssertLoadBalancers(struct["LoadBalancers"]) end
	if struct["NextMarker"] then M.AssertMarker(struct["NextMarker"]) end
	for k,_ in pairs(struct) do
		assert(DescribeLoadBalancersOutput_keys[k], "DescribeLoadBalancersOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLoadBalancersOutput
--  
-- @param LoadBalancers [LoadBalancers] &lt;p&gt;Information about the load balancers.&lt;/p&gt;
-- @param NextMarker [Marker] &lt;p&gt;The marker to use when requesting the next set of results. If there are no additional results, the string is empty.&lt;/p&gt;
function M.DescribeLoadBalancersOutput(LoadBalancers, NextMarker, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeLoadBalancersOutput")
	local t = { 
		["LoadBalancers"] = LoadBalancers,
		["NextMarker"] = NextMarker,
	}
	M.AssertDescribeLoadBalancersOutput(t)
	return t
end

local IncompatibleProtocolsException_keys = { nil }

function M.AssertIncompatibleProtocolsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IncompatibleProtocolsException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(IncompatibleProtocolsException_keys[k], "IncompatibleProtocolsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IncompatibleProtocolsException
-- &lt;p&gt;The specified configuration is not valid with this protocol.&lt;/p&gt;
function M.IncompatibleProtocolsException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating IncompatibleProtocolsException")
	local t = { 
	}
	M.AssertIncompatibleProtocolsException(t)
	return t
end

local RemoveTagsOutput_keys = { nil }

function M.AssertRemoveTagsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveTagsOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(RemoveTagsOutput_keys[k], "RemoveTagsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveTagsOutput
--  
function M.RemoveTagsOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveTagsOutput")
	local t = { 
	}
	M.AssertRemoveTagsOutput(t)
	return t
end

local TooManyTargetGroupsException_keys = { nil }

function M.AssertTooManyTargetGroupsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyTargetGroupsException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(TooManyTargetGroupsException_keys[k], "TooManyTargetGroupsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyTargetGroupsException
-- &lt;p&gt;You've reached the limit on the number of target groups for your AWS account.&lt;/p&gt;
function M.TooManyTargetGroupsException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyTargetGroupsException")
	local t = { 
	}
	M.AssertTooManyTargetGroupsException(t)
	return t
end

local TargetGroupNotFoundException_keys = { nil }

function M.AssertTargetGroupNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TargetGroupNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(TargetGroupNotFoundException_keys[k], "TargetGroupNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TargetGroupNotFoundException
-- &lt;p&gt;The specified target group does not exist.&lt;/p&gt;
function M.TargetGroupNotFoundException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating TargetGroupNotFoundException")
	local t = { 
	}
	M.AssertTargetGroupNotFoundException(t)
	return t
end

local CreateLoadBalancerOutput_keys = { "LoadBalancers" = true, nil }

function M.AssertCreateLoadBalancerOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateLoadBalancerOutput to be of type 'table'")
	if struct["LoadBalancers"] then M.AssertLoadBalancers(struct["LoadBalancers"]) end
	for k,_ in pairs(struct) do
		assert(CreateLoadBalancerOutput_keys[k], "CreateLoadBalancerOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateLoadBalancerOutput
--  
-- @param LoadBalancers [LoadBalancers] &lt;p&gt;Information about the load balancer.&lt;/p&gt;
function M.CreateLoadBalancerOutput(LoadBalancers, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateLoadBalancerOutput")
	local t = { 
		["LoadBalancers"] = LoadBalancers,
	}
	M.AssertCreateLoadBalancerOutput(t)
	return t
end

local SetIpAddressTypeInput_keys = { "IpAddressType" = true, "LoadBalancerArn" = true, nil }

function M.AssertSetIpAddressTypeInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetIpAddressTypeInput to be of type 'table'")
	assert(struct["LoadBalancerArn"], "Expected key LoadBalancerArn to exist in table")
	assert(struct["IpAddressType"], "Expected key IpAddressType to exist in table")
	if struct["IpAddressType"] then M.AssertIpAddressType(struct["IpAddressType"]) end
	if struct["LoadBalancerArn"] then M.AssertLoadBalancerArn(struct["LoadBalancerArn"]) end
	for k,_ in pairs(struct) do
		assert(SetIpAddressTypeInput_keys[k], "SetIpAddressTypeInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetIpAddressTypeInput
--  
-- @param IpAddressType [IpAddressType] &lt;p&gt;The IP address type. The possible values are &lt;code&gt;ipv4&lt;/code&gt; (for IPv4 addresses) and &lt;code&gt;dualstack&lt;/code&gt; (for IPv4 and IPv6 addresses). Internal load balancers must use &lt;code&gt;ipv4&lt;/code&gt;.&lt;/p&gt;
-- @param LoadBalancerArn [LoadBalancerArn] &lt;p&gt;The Amazon Resource Name (ARN) of the load balancer.&lt;/p&gt;
-- Required parameter: LoadBalancerArn
-- Required parameter: IpAddressType
function M.SetIpAddressTypeInput(IpAddressType, LoadBalancerArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetIpAddressTypeInput")
	local t = { 
		["IpAddressType"] = IpAddressType,
		["LoadBalancerArn"] = LoadBalancerArn,
	}
	M.AssertSetIpAddressTypeInput(t)
	return t
end

local DescribeTargetHealthInput_keys = { "TargetGroupArn" = true, "Targets" = true, nil }

function M.AssertDescribeTargetHealthInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTargetHealthInput to be of type 'table'")
	assert(struct["TargetGroupArn"], "Expected key TargetGroupArn to exist in table")
	if struct["TargetGroupArn"] then M.AssertTargetGroupArn(struct["TargetGroupArn"]) end
	if struct["Targets"] then M.AssertTargetDescriptions(struct["Targets"]) end
	for k,_ in pairs(struct) do
		assert(DescribeTargetHealthInput_keys[k], "DescribeTargetHealthInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTargetHealthInput
--  
-- @param TargetGroupArn [TargetGroupArn] &lt;p&gt;The Amazon Resource Name (ARN) of the target group.&lt;/p&gt;
-- @param Targets [TargetDescriptions] &lt;p&gt;The targets.&lt;/p&gt;
-- Required parameter: TargetGroupArn
function M.DescribeTargetHealthInput(TargetGroupArn, Targets, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTargetHealthInput")
	local t = { 
		["TargetGroupArn"] = TargetGroupArn,
		["Targets"] = Targets,
	}
	M.AssertDescribeTargetHealthInput(t)
	return t
end

local Certificate_keys = { "CertificateArn" = true, nil }

function M.AssertCertificate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Certificate to be of type 'table'")
	if struct["CertificateArn"] then M.AssertCertificateArn(struct["CertificateArn"]) end
	for k,_ in pairs(struct) do
		assert(Certificate_keys[k], "Certificate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Certificate
-- &lt;p&gt;Information about an SSL server certificate deployed on a load balancer.&lt;/p&gt;
-- @param CertificateArn [CertificateArn] &lt;p&gt;The Amazon Resource Name (ARN) of the certificate.&lt;/p&gt;
function M.Certificate(CertificateArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Certificate")
	local t = { 
		["CertificateArn"] = CertificateArn,
	}
	M.AssertCertificate(t)
	return t
end

local TooManyListenersException_keys = { nil }

function M.AssertTooManyListenersException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyListenersException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(TooManyListenersException_keys[k], "TooManyListenersException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyListenersException
-- &lt;p&gt;You've reached the limit on the number of listeners per load balancer.&lt;/p&gt;
function M.TooManyListenersException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyListenersException")
	local t = { 
	}
	M.AssertTooManyListenersException(t)
	return t
end

local InvalidSchemeException_keys = { nil }

function M.AssertInvalidSchemeException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidSchemeException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidSchemeException_keys[k], "InvalidSchemeException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidSchemeException
-- &lt;p&gt;The requested scheme is not valid.&lt;/p&gt;
function M.InvalidSchemeException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidSchemeException")
	local t = { 
	}
	M.AssertInvalidSchemeException(t)
	return t
end

local SetSubnetsOutput_keys = { "AvailabilityZones" = true, nil }

function M.AssertSetSubnetsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetSubnetsOutput to be of type 'table'")
	if struct["AvailabilityZones"] then M.AssertAvailabilityZones(struct["AvailabilityZones"]) end
	for k,_ in pairs(struct) do
		assert(SetSubnetsOutput_keys[k], "SetSubnetsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetSubnetsOutput
--  
-- @param AvailabilityZones [AvailabilityZones] &lt;p&gt;Information about the subnet and Availability Zone.&lt;/p&gt;
function M.SetSubnetsOutput(AvailabilityZones, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetSubnetsOutput")
	local t = { 
		["AvailabilityZones"] = AvailabilityZones,
	}
	M.AssertSetSubnetsOutput(t)
	return t
end

local TargetHealthDescription_keys = { "HealthCheckPort" = true, "Target" = true, "TargetHealth" = true, nil }

function M.AssertTargetHealthDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TargetHealthDescription to be of type 'table'")
	if struct["HealthCheckPort"] then M.AssertHealthCheckPort(struct["HealthCheckPort"]) end
	if struct["Target"] then M.AssertTargetDescription(struct["Target"]) end
	if struct["TargetHealth"] then M.AssertTargetHealth(struct["TargetHealth"]) end
	for k,_ in pairs(struct) do
		assert(TargetHealthDescription_keys[k], "TargetHealthDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TargetHealthDescription
-- &lt;p&gt;Information about the health of a target.&lt;/p&gt;
-- @param HealthCheckPort [HealthCheckPort] &lt;p&gt;The port to use to connect with the target.&lt;/p&gt;
-- @param Target [TargetDescription] &lt;p&gt;The description of the target.&lt;/p&gt;
-- @param TargetHealth [TargetHealth] &lt;p&gt;The health information for the target.&lt;/p&gt;
function M.TargetHealthDescription(HealthCheckPort, Target, TargetHealth, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TargetHealthDescription")
	local t = { 
		["HealthCheckPort"] = HealthCheckPort,
		["Target"] = Target,
		["TargetHealth"] = TargetHealth,
	}
	M.AssertTargetHealthDescription(t)
	return t
end

local DescribeTargetHealthOutput_keys = { "TargetHealthDescriptions" = true, nil }

function M.AssertDescribeTargetHealthOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTargetHealthOutput to be of type 'table'")
	if struct["TargetHealthDescriptions"] then M.AssertTargetHealthDescriptions(struct["TargetHealthDescriptions"]) end
	for k,_ in pairs(struct) do
		assert(DescribeTargetHealthOutput_keys[k], "DescribeTargetHealthOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTargetHealthOutput
--  
-- @param TargetHealthDescriptions [TargetHealthDescriptions] &lt;p&gt;Information about the health of the targets.&lt;/p&gt;
function M.DescribeTargetHealthOutput(TargetHealthDescriptions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTargetHealthOutput")
	local t = { 
		["TargetHealthDescriptions"] = TargetHealthDescriptions,
	}
	M.AssertDescribeTargetHealthOutput(t)
	return t
end

local DeleteListenerInput_keys = { "ListenerArn" = true, nil }

function M.AssertDeleteListenerInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteListenerInput to be of type 'table'")
	assert(struct["ListenerArn"], "Expected key ListenerArn to exist in table")
	if struct["ListenerArn"] then M.AssertListenerArn(struct["ListenerArn"]) end
	for k,_ in pairs(struct) do
		assert(DeleteListenerInput_keys[k], "DeleteListenerInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteListenerInput
--  
-- @param ListenerArn [ListenerArn] &lt;p&gt;The Amazon Resource Name (ARN) of the listener.&lt;/p&gt;
-- Required parameter: ListenerArn
function M.DeleteListenerInput(ListenerArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteListenerInput")
	local t = { 
		["ListenerArn"] = ListenerArn,
	}
	M.AssertDeleteListenerInput(t)
	return t
end

local CreateListenerInput_keys = { "Protocol" = true, "DefaultActions" = true, "SslPolicy" = true, "Certificates" = true, "LoadBalancerArn" = true, "Port" = true, nil }

function M.AssertCreateListenerInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateListenerInput to be of type 'table'")
	assert(struct["LoadBalancerArn"], "Expected key LoadBalancerArn to exist in table")
	assert(struct["Protocol"], "Expected key Protocol to exist in table")
	assert(struct["Port"], "Expected key Port to exist in table")
	assert(struct["DefaultActions"], "Expected key DefaultActions to exist in table")
	if struct["Protocol"] then M.AssertProtocolEnum(struct["Protocol"]) end
	if struct["DefaultActions"] then M.AssertActions(struct["DefaultActions"]) end
	if struct["SslPolicy"] then M.AssertSslPolicyName(struct["SslPolicy"]) end
	if struct["Certificates"] then M.AssertCertificateList(struct["Certificates"]) end
	if struct["LoadBalancerArn"] then M.AssertLoadBalancerArn(struct["LoadBalancerArn"]) end
	if struct["Port"] then M.AssertPort(struct["Port"]) end
	for k,_ in pairs(struct) do
		assert(CreateListenerInput_keys[k], "CreateListenerInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateListenerInput
--  
-- @param Protocol [ProtocolEnum] &lt;p&gt;The protocol for connections from clients to the load balancer.&lt;/p&gt;
-- @param DefaultActions [Actions] &lt;p&gt;The default action for the listener.&lt;/p&gt;
-- @param SslPolicy [SslPolicyName] &lt;p&gt;The security policy that defines which ciphers and protocols are supported. The default is the current predefined security policy.&lt;/p&gt;
-- @param Certificates [CertificateList] &lt;p&gt;The SSL server certificate. You must provide exactly one certificate if the protocol is HTTPS.&lt;/p&gt;
-- @param LoadBalancerArn [LoadBalancerArn] &lt;p&gt;The Amazon Resource Name (ARN) of the load balancer.&lt;/p&gt;
-- @param Port [Port] &lt;p&gt;The port on which the load balancer is listening.&lt;/p&gt;
-- Required parameter: LoadBalancerArn
-- Required parameter: Protocol
-- Required parameter: Port
-- Required parameter: DefaultActions
function M.CreateListenerInput(Protocol, DefaultActions, SslPolicy, Certificates, LoadBalancerArn, Port, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateListenerInput")
	local t = { 
		["Protocol"] = Protocol,
		["DefaultActions"] = DefaultActions,
		["SslPolicy"] = SslPolicy,
		["Certificates"] = Certificates,
		["LoadBalancerArn"] = LoadBalancerArn,
		["Port"] = Port,
	}
	M.AssertCreateListenerInput(t)
	return t
end

local CreateTargetGroupInput_keys = { "HealthyThresholdCount" = true, "HealthCheckIntervalSeconds" = true, "VpcId" = true, "Protocol" = true, "Name" = true, "HealthCheckProtocol" = true, "UnhealthyThresholdCount" = true, "HealthCheckPath" = true, "HealthCheckTimeoutSeconds" = true, "Matcher" = true, "HealthCheckPort" = true, "Port" = true, nil }

function M.AssertCreateTargetGroupInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTargetGroupInput to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Protocol"], "Expected key Protocol to exist in table")
	assert(struct["Port"], "Expected key Port to exist in table")
	assert(struct["VpcId"], "Expected key VpcId to exist in table")
	if struct["HealthyThresholdCount"] then M.AssertHealthCheckThresholdCount(struct["HealthyThresholdCount"]) end
	if struct["HealthCheckIntervalSeconds"] then M.AssertHealthCheckIntervalSeconds(struct["HealthCheckIntervalSeconds"]) end
	if struct["VpcId"] then M.AssertVpcId(struct["VpcId"]) end
	if struct["Protocol"] then M.AssertProtocolEnum(struct["Protocol"]) end
	if struct["Name"] then M.AssertTargetGroupName(struct["Name"]) end
	if struct["HealthCheckProtocol"] then M.AssertProtocolEnum(struct["HealthCheckProtocol"]) end
	if struct["UnhealthyThresholdCount"] then M.AssertHealthCheckThresholdCount(struct["UnhealthyThresholdCount"]) end
	if struct["HealthCheckPath"] then M.AssertPath(struct["HealthCheckPath"]) end
	if struct["HealthCheckTimeoutSeconds"] then M.AssertHealthCheckTimeoutSeconds(struct["HealthCheckTimeoutSeconds"]) end
	if struct["Matcher"] then M.AssertMatcher(struct["Matcher"]) end
	if struct["HealthCheckPort"] then M.AssertHealthCheckPort(struct["HealthCheckPort"]) end
	if struct["Port"] then M.AssertPort(struct["Port"]) end
	for k,_ in pairs(struct) do
		assert(CreateTargetGroupInput_keys[k], "CreateTargetGroupInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTargetGroupInput
--  
-- @param HealthyThresholdCount [HealthCheckThresholdCount] &lt;p&gt;The number of consecutive health checks successes required before considering an unhealthy target healthy. The default is 5.&lt;/p&gt;
-- @param HealthCheckIntervalSeconds [HealthCheckIntervalSeconds] &lt;p&gt;The approximate amount of time, in seconds, between health checks of an individual target. The default is 30 seconds.&lt;/p&gt;
-- @param VpcId [VpcId] &lt;p&gt;The identifier of the virtual private cloud (VPC).&lt;/p&gt;
-- @param Protocol [ProtocolEnum] &lt;p&gt;The protocol to use for routing traffic to the targets.&lt;/p&gt;
-- @param Name [TargetGroupName] &lt;p&gt;The name of the target group.&lt;/p&gt; &lt;p&gt;This name must be unique per region per account, can have a maximum of 32 characters, must contain only alphanumeric characters or hyphens, and must not begin or end with a hyphen.&lt;/p&gt;
-- @param HealthCheckProtocol [ProtocolEnum] &lt;p&gt;The protocol the load balancer uses when performing health checks on targets. The default is the HTTP protocol.&lt;/p&gt;
-- @param UnhealthyThresholdCount [HealthCheckThresholdCount] &lt;p&gt;The number of consecutive health check failures required before considering a target unhealthy. The default is 2.&lt;/p&gt;
-- @param HealthCheckPath [Path] &lt;p&gt;The ping path that is the destination on the targets for health checks. The default is /.&lt;/p&gt;
-- @param HealthCheckTimeoutSeconds [HealthCheckTimeoutSeconds] &lt;p&gt;The amount of time, in seconds, during which no response from a target means a failed health check. The default is 5 seconds.&lt;/p&gt;
-- @param Matcher [Matcher] &lt;p&gt;The HTTP codes to use when checking for a successful response from a target. The default is 200.&lt;/p&gt;
-- @param HealthCheckPort [HealthCheckPort] &lt;p&gt;The port the load balancer uses when performing health checks on targets. The default is &lt;code&gt;traffic-port&lt;/code&gt;, which indicates the port on which each target receives traffic from the load balancer.&lt;/p&gt;
-- @param Port [Port] &lt;p&gt;The port on which the targets receive traffic. This port is used unless you specify a port override when registering the target.&lt;/p&gt;
-- Required parameter: Name
-- Required parameter: Protocol
-- Required parameter: Port
-- Required parameter: VpcId
function M.CreateTargetGroupInput(HealthyThresholdCount, HealthCheckIntervalSeconds, VpcId, Protocol, Name, HealthCheckProtocol, UnhealthyThresholdCount, HealthCheckPath, HealthCheckTimeoutSeconds, Matcher, HealthCheckPort, Port, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateTargetGroupInput")
	local t = { 
		["HealthyThresholdCount"] = HealthyThresholdCount,
		["HealthCheckIntervalSeconds"] = HealthCheckIntervalSeconds,
		["VpcId"] = VpcId,
		["Protocol"] = Protocol,
		["Name"] = Name,
		["HealthCheckProtocol"] = HealthCheckProtocol,
		["UnhealthyThresholdCount"] = UnhealthyThresholdCount,
		["HealthCheckPath"] = HealthCheckPath,
		["HealthCheckTimeoutSeconds"] = HealthCheckTimeoutSeconds,
		["Matcher"] = Matcher,
		["HealthCheckPort"] = HealthCheckPort,
		["Port"] = Port,
	}
	M.AssertCreateTargetGroupInput(t)
	return t
end

local ModifyLoadBalancerAttributesOutput_keys = { "Attributes" = true, nil }

function M.AssertModifyLoadBalancerAttributesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyLoadBalancerAttributesOutput to be of type 'table'")
	if struct["Attributes"] then M.AssertLoadBalancerAttributes(struct["Attributes"]) end
	for k,_ in pairs(struct) do
		assert(ModifyLoadBalancerAttributesOutput_keys[k], "ModifyLoadBalancerAttributesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyLoadBalancerAttributesOutput
--  
-- @param Attributes [LoadBalancerAttributes] &lt;p&gt;Information about the load balancer attributes.&lt;/p&gt;
function M.ModifyLoadBalancerAttributesOutput(Attributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyLoadBalancerAttributesOutput")
	local t = { 
		["Attributes"] = Attributes,
	}
	M.AssertModifyLoadBalancerAttributesOutput(t)
	return t
end

local RegisterTargetsOutput_keys = { nil }

function M.AssertRegisterTargetsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterTargetsOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(RegisterTargetsOutput_keys[k], "RegisterTargetsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterTargetsOutput
--  
function M.RegisterTargetsOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterTargetsOutput")
	local t = { 
	}
	M.AssertRegisterTargetsOutput(t)
	return t
end

local Matcher_keys = { "HttpCode" = true, nil }

function M.AssertMatcher(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Matcher to be of type 'table'")
	assert(struct["HttpCode"], "Expected key HttpCode to exist in table")
	if struct["HttpCode"] then M.AssertHttpCode(struct["HttpCode"]) end
	for k,_ in pairs(struct) do
		assert(Matcher_keys[k], "Matcher contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Matcher
-- &lt;p&gt;Information to use when checking for a successful response from a target.&lt;/p&gt;
-- @param HttpCode [HttpCode] &lt;p&gt;The HTTP codes. You can specify values between 200 and 499. The default value is 200. You can specify multiple values (for example, &quot;200,202&quot;) or a range of values (for example, &quot;200-299&quot;).&lt;/p&gt;
-- Required parameter: HttpCode
function M.Matcher(HttpCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Matcher")
	local t = { 
		["HttpCode"] = HttpCode,
	}
	M.AssertMatcher(t)
	return t
end

local InvalidSecurityGroupException_keys = { nil }

function M.AssertInvalidSecurityGroupException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidSecurityGroupException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidSecurityGroupException_keys[k], "InvalidSecurityGroupException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidSecurityGroupException
-- &lt;p&gt;The specified security group does not exist.&lt;/p&gt;
function M.InvalidSecurityGroupException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidSecurityGroupException")
	local t = { 
	}
	M.AssertInvalidSecurityGroupException(t)
	return t
end

local DescribeAccountLimitsOutput_keys = { "NextMarker" = true, "Limits" = true, nil }

function M.AssertDescribeAccountLimitsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAccountLimitsOutput to be of type 'table'")
	if struct["NextMarker"] then M.AssertMarker(struct["NextMarker"]) end
	if struct["Limits"] then M.AssertLimits(struct["Limits"]) end
	for k,_ in pairs(struct) do
		assert(DescribeAccountLimitsOutput_keys[k], "DescribeAccountLimitsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAccountLimitsOutput
--  
-- @param NextMarker [Marker] &lt;p&gt;The marker to use when requesting the next set of results. If there are no additional results, the string is empty.&lt;/p&gt;
-- @param Limits [Limits] &lt;p&gt;Information about the limits.&lt;/p&gt;
function M.DescribeAccountLimitsOutput(NextMarker, Limits, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAccountLimitsOutput")
	local t = { 
		["NextMarker"] = NextMarker,
		["Limits"] = Limits,
	}
	M.AssertDescribeAccountLimitsOutput(t)
	return t
end

local ModifyListenerInput_keys = { "Protocol" = true, "DefaultActions" = true, "SslPolicy" = true, "Certificates" = true, "Port" = true, "ListenerArn" = true, nil }

function M.AssertModifyListenerInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyListenerInput to be of type 'table'")
	assert(struct["ListenerArn"], "Expected key ListenerArn to exist in table")
	if struct["Protocol"] then M.AssertProtocolEnum(struct["Protocol"]) end
	if struct["DefaultActions"] then M.AssertActions(struct["DefaultActions"]) end
	if struct["SslPolicy"] then M.AssertSslPolicyName(struct["SslPolicy"]) end
	if struct["Certificates"] then M.AssertCertificateList(struct["Certificates"]) end
	if struct["Port"] then M.AssertPort(struct["Port"]) end
	if struct["ListenerArn"] then M.AssertListenerArn(struct["ListenerArn"]) end
	for k,_ in pairs(struct) do
		assert(ModifyListenerInput_keys[k], "ModifyListenerInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyListenerInput
--  
-- @param Protocol [ProtocolEnum] &lt;p&gt;The protocol for connections from clients to the load balancer.&lt;/p&gt;
-- @param DefaultActions [Actions] &lt;p&gt;The default actions.&lt;/p&gt;
-- @param SslPolicy [SslPolicyName] &lt;p&gt;The security policy that defines which protocols and ciphers are supported. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html#describe-ssl-policies&quot;&gt;Security Policies&lt;/a&gt; in the &lt;i&gt;Application Load Balancers Guide&lt;/i&gt;.&lt;/p&gt;
-- @param Certificates [CertificateList] &lt;p&gt;The SSL server certificate.&lt;/p&gt;
-- @param Port [Port] &lt;p&gt;The port for connections from clients to the load balancer.&lt;/p&gt;
-- @param ListenerArn [ListenerArn] &lt;p&gt;The Amazon Resource Name (ARN) of the listener.&lt;/p&gt;
-- Required parameter: ListenerArn
function M.ModifyListenerInput(Protocol, DefaultActions, SslPolicy, Certificates, Port, ListenerArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyListenerInput")
	local t = { 
		["Protocol"] = Protocol,
		["DefaultActions"] = DefaultActions,
		["SslPolicy"] = SslPolicy,
		["Certificates"] = Certificates,
		["Port"] = Port,
		["ListenerArn"] = ListenerArn,
	}
	M.AssertModifyListenerInput(t)
	return t
end

local ModifyLoadBalancerAttributesInput_keys = { "Attributes" = true, "LoadBalancerArn" = true, nil }

function M.AssertModifyLoadBalancerAttributesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyLoadBalancerAttributesInput to be of type 'table'")
	assert(struct["LoadBalancerArn"], "Expected key LoadBalancerArn to exist in table")
	assert(struct["Attributes"], "Expected key Attributes to exist in table")
	if struct["Attributes"] then M.AssertLoadBalancerAttributes(struct["Attributes"]) end
	if struct["LoadBalancerArn"] then M.AssertLoadBalancerArn(struct["LoadBalancerArn"]) end
	for k,_ in pairs(struct) do
		assert(ModifyLoadBalancerAttributesInput_keys[k], "ModifyLoadBalancerAttributesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyLoadBalancerAttributesInput
--  
-- @param Attributes [LoadBalancerAttributes] &lt;p&gt;The load balancer attributes.&lt;/p&gt;
-- @param LoadBalancerArn [LoadBalancerArn] &lt;p&gt;The Amazon Resource Name (ARN) of the load balancer.&lt;/p&gt;
-- Required parameter: LoadBalancerArn
-- Required parameter: Attributes
function M.ModifyLoadBalancerAttributesInput(Attributes, LoadBalancerArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyLoadBalancerAttributesInput")
	local t = { 
		["Attributes"] = Attributes,
		["LoadBalancerArn"] = LoadBalancerArn,
	}
	M.AssertModifyLoadBalancerAttributesInput(t)
	return t
end

local ModifyTargetGroupInput_keys = { "HealthyThresholdCount" = true, "HealthCheckIntervalSeconds" = true, "TargetGroupArn" = true, "HealthCheckPort" = true, "HealthCheckProtocol" = true, "HealthCheckPath" = true, "HealthCheckTimeoutSeconds" = true, "Matcher" = true, "UnhealthyThresholdCount" = true, nil }

function M.AssertModifyTargetGroupInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyTargetGroupInput to be of type 'table'")
	assert(struct["TargetGroupArn"], "Expected key TargetGroupArn to exist in table")
	if struct["HealthyThresholdCount"] then M.AssertHealthCheckThresholdCount(struct["HealthyThresholdCount"]) end
	if struct["HealthCheckIntervalSeconds"] then M.AssertHealthCheckIntervalSeconds(struct["HealthCheckIntervalSeconds"]) end
	if struct["TargetGroupArn"] then M.AssertTargetGroupArn(struct["TargetGroupArn"]) end
	if struct["HealthCheckPort"] then M.AssertHealthCheckPort(struct["HealthCheckPort"]) end
	if struct["HealthCheckProtocol"] then M.AssertProtocolEnum(struct["HealthCheckProtocol"]) end
	if struct["HealthCheckPath"] then M.AssertPath(struct["HealthCheckPath"]) end
	if struct["HealthCheckTimeoutSeconds"] then M.AssertHealthCheckTimeoutSeconds(struct["HealthCheckTimeoutSeconds"]) end
	if struct["Matcher"] then M.AssertMatcher(struct["Matcher"]) end
	if struct["UnhealthyThresholdCount"] then M.AssertHealthCheckThresholdCount(struct["UnhealthyThresholdCount"]) end
	for k,_ in pairs(struct) do
		assert(ModifyTargetGroupInput_keys[k], "ModifyTargetGroupInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyTargetGroupInput
--  
-- @param HealthyThresholdCount [HealthCheckThresholdCount] &lt;p&gt;The number of consecutive health checks successes required before considering an unhealthy target healthy.&lt;/p&gt;
-- @param HealthCheckIntervalSeconds [HealthCheckIntervalSeconds] &lt;p&gt;The approximate amount of time, in seconds, between health checks of an individual target.&lt;/p&gt;
-- @param TargetGroupArn [TargetGroupArn] &lt;p&gt;The Amazon Resource Name (ARN) of the target group.&lt;/p&gt;
-- @param HealthCheckPort [HealthCheckPort] &lt;p&gt;The port to use to connect with the target.&lt;/p&gt;
-- @param HealthCheckProtocol [ProtocolEnum] &lt;p&gt;The protocol to use to connect with the target.&lt;/p&gt;
-- @param HealthCheckPath [Path] &lt;p&gt;The ping path that is the destination for the health check request.&lt;/p&gt;
-- @param HealthCheckTimeoutSeconds [HealthCheckTimeoutSeconds] &lt;p&gt;The amount of time, in seconds, during which no response means a failed health check.&lt;/p&gt;
-- @param Matcher [Matcher] &lt;p&gt;The HTTP codes to use when checking for a successful response from a target.&lt;/p&gt;
-- @param UnhealthyThresholdCount [HealthCheckThresholdCount] &lt;p&gt;The number of consecutive health check failures required before considering the target unhealthy.&lt;/p&gt;
-- Required parameter: TargetGroupArn
function M.ModifyTargetGroupInput(HealthyThresholdCount, HealthCheckIntervalSeconds, TargetGroupArn, HealthCheckPort, HealthCheckProtocol, HealthCheckPath, HealthCheckTimeoutSeconds, Matcher, UnhealthyThresholdCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyTargetGroupInput")
	local t = { 
		["HealthyThresholdCount"] = HealthyThresholdCount,
		["HealthCheckIntervalSeconds"] = HealthCheckIntervalSeconds,
		["TargetGroupArn"] = TargetGroupArn,
		["HealthCheckPort"] = HealthCheckPort,
		["HealthCheckProtocol"] = HealthCheckProtocol,
		["HealthCheckPath"] = HealthCheckPath,
		["HealthCheckTimeoutSeconds"] = HealthCheckTimeoutSeconds,
		["Matcher"] = Matcher,
		["UnhealthyThresholdCount"] = UnhealthyThresholdCount,
	}
	M.AssertModifyTargetGroupInput(t)
	return t
end

local CreateRuleInput_keys = { "Priority" = true, "Conditions" = true, "Actions" = true, "ListenerArn" = true, nil }

function M.AssertCreateRuleInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateRuleInput to be of type 'table'")
	assert(struct["ListenerArn"], "Expected key ListenerArn to exist in table")
	assert(struct["Conditions"], "Expected key Conditions to exist in table")
	assert(struct["Priority"], "Expected key Priority to exist in table")
	assert(struct["Actions"], "Expected key Actions to exist in table")
	if struct["Priority"] then M.AssertRulePriority(struct["Priority"]) end
	if struct["Conditions"] then M.AssertRuleConditionList(struct["Conditions"]) end
	if struct["Actions"] then M.AssertActions(struct["Actions"]) end
	if struct["ListenerArn"] then M.AssertListenerArn(struct["ListenerArn"]) end
	for k,_ in pairs(struct) do
		assert(CreateRuleInput_keys[k], "CreateRuleInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateRuleInput
--  
-- @param Priority [RulePriority] &lt;p&gt;The priority for the rule. A listener can't have multiple rules with the same priority.&lt;/p&gt;
-- @param Conditions [RuleConditionList] &lt;p&gt;A condition. Each condition specifies a field name and a single value.&lt;/p&gt; &lt;p&gt;If the field name is &lt;code&gt;host-header&lt;/code&gt;, you can specify a single host name (for example, my.example.com). A host name is case insensitive, can be up to 128 characters in length, and can contain any of the following characters. Note that you can include up to three wildcard characters.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;A-Z, a-z, 0-9&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;- .&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;* (matches 0 or more characters)&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;? (matches exactly 1 character)&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;If the field name is &lt;code&gt;path-pattern&lt;/code&gt;, you can specify a single path pattern. A path pattern is case sensitive, can be up to 128 characters in length, and can contain any of the following characters. Note that you can include up to three wildcard characters.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;A-Z, a-z, 0-9&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;_ - . $ / ~ &quot; ' @ : +&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;&amp;amp; (using &amp;amp;amp;)&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;* (matches 0 or more characters)&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;? (matches exactly 1 character)&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param Actions [Actions] &lt;p&gt;An action. Each action has the type &lt;code&gt;forward&lt;/code&gt; and specifies a target group.&lt;/p&gt;
-- @param ListenerArn [ListenerArn] &lt;p&gt;The Amazon Resource Name (ARN) of the listener.&lt;/p&gt;
-- Required parameter: ListenerArn
-- Required parameter: Conditions
-- Required parameter: Priority
-- Required parameter: Actions
function M.CreateRuleInput(Priority, Conditions, Actions, ListenerArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateRuleInput")
	local t = { 
		["Priority"] = Priority,
		["Conditions"] = Conditions,
		["Actions"] = Actions,
		["ListenerArn"] = ListenerArn,
	}
	M.AssertCreateRuleInput(t)
	return t
end

local DescribeListenersInput_keys = { "ListenerArns" = true, "Marker" = true, "LoadBalancerArn" = true, "PageSize" = true, nil }

function M.AssertDescribeListenersInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeListenersInput to be of type 'table'")
	if struct["ListenerArns"] then M.AssertListenerArns(struct["ListenerArns"]) end
	if struct["Marker"] then M.AssertMarker(struct["Marker"]) end
	if struct["LoadBalancerArn"] then M.AssertLoadBalancerArn(struct["LoadBalancerArn"]) end
	if struct["PageSize"] then M.AssertPageSize(struct["PageSize"]) end
	for k,_ in pairs(struct) do
		assert(DescribeListenersInput_keys[k], "DescribeListenersInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeListenersInput
--  
-- @param ListenerArns [ListenerArns] &lt;p&gt;The Amazon Resource Names (ARN) of the listeners.&lt;/p&gt;
-- @param Marker [Marker] &lt;p&gt;The marker for the next set of results. (You received this marker from a previous call.)&lt;/p&gt;
-- @param LoadBalancerArn [LoadBalancerArn] &lt;p&gt;The Amazon Resource Name (ARN) of the load balancer.&lt;/p&gt;
-- @param PageSize [PageSize] &lt;p&gt;The maximum number of results to return with this call.&lt;/p&gt;
function M.DescribeListenersInput(ListenerArns, Marker, LoadBalancerArn, PageSize, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeListenersInput")
	local t = { 
		["ListenerArns"] = ListenerArns,
		["Marker"] = Marker,
		["LoadBalancerArn"] = LoadBalancerArn,
		["PageSize"] = PageSize,
	}
	M.AssertDescribeListenersInput(t)
	return t
end

local Rule_keys = { "Priority" = true, "Conditions" = true, "RuleArn" = true, "IsDefault" = true, "Actions" = true, nil }

function M.AssertRule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Rule to be of type 'table'")
	if struct["Priority"] then M.AssertString(struct["Priority"]) end
	if struct["Conditions"] then M.AssertRuleConditionList(struct["Conditions"]) end
	if struct["RuleArn"] then M.AssertRuleArn(struct["RuleArn"]) end
	if struct["IsDefault"] then M.AssertIsDefault(struct["IsDefault"]) end
	if struct["Actions"] then M.AssertActions(struct["Actions"]) end
	for k,_ in pairs(struct) do
		assert(Rule_keys[k], "Rule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Rule
-- &lt;p&gt;Information about a rule.&lt;/p&gt;
-- @param Priority [String] &lt;p&gt;The priority.&lt;/p&gt;
-- @param Conditions [RuleConditionList] &lt;p&gt;The conditions.&lt;/p&gt;
-- @param RuleArn [RuleArn] &lt;p&gt;The Amazon Resource Name (ARN) of the rule.&lt;/p&gt;
-- @param IsDefault [IsDefault] &lt;p&gt;Indicates whether this is the default rule.&lt;/p&gt;
-- @param Actions [Actions] &lt;p&gt;The actions.&lt;/p&gt;
function M.Rule(Priority, Conditions, RuleArn, IsDefault, Actions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Rule")
	local t = { 
		["Priority"] = Priority,
		["Conditions"] = Conditions,
		["RuleArn"] = RuleArn,
		["IsDefault"] = IsDefault,
		["Actions"] = Actions,
	}
	M.AssertRule(t)
	return t
end

local SetRulePrioritiesInput_keys = { "RulePriorities" = true, nil }

function M.AssertSetRulePrioritiesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetRulePrioritiesInput to be of type 'table'")
	assert(struct["RulePriorities"], "Expected key RulePriorities to exist in table")
	if struct["RulePriorities"] then M.AssertRulePriorityList(struct["RulePriorities"]) end
	for k,_ in pairs(struct) do
		assert(SetRulePrioritiesInput_keys[k], "SetRulePrioritiesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetRulePrioritiesInput
--  
-- @param RulePriorities [RulePriorityList] &lt;p&gt;The rule priorities.&lt;/p&gt;
-- Required parameter: RulePriorities
function M.SetRulePrioritiesInput(RulePriorities, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetRulePrioritiesInput")
	local t = { 
		["RulePriorities"] = RulePriorities,
	}
	M.AssertSetRulePrioritiesInput(t)
	return t
end

local SetRulePrioritiesOutput_keys = { "Rules" = true, nil }

function M.AssertSetRulePrioritiesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetRulePrioritiesOutput to be of type 'table'")
	if struct["Rules"] then M.AssertRules(struct["Rules"]) end
	for k,_ in pairs(struct) do
		assert(SetRulePrioritiesOutput_keys[k], "SetRulePrioritiesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetRulePrioritiesOutput
--  
-- @param Rules [Rules] &lt;p&gt;Information about the rules.&lt;/p&gt;
function M.SetRulePrioritiesOutput(Rules, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetRulePrioritiesOutput")
	local t = { 
		["Rules"] = Rules,
	}
	M.AssertSetRulePrioritiesOutput(t)
	return t
end

local Action_keys = { "TargetGroupArn" = true, "Type" = true, nil }

function M.AssertAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Action to be of type 'table'")
	assert(struct["Type"], "Expected key Type to exist in table")
	assert(struct["TargetGroupArn"], "Expected key TargetGroupArn to exist in table")
	if struct["TargetGroupArn"] then M.AssertTargetGroupArn(struct["TargetGroupArn"]) end
	if struct["Type"] then M.AssertActionTypeEnum(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(Action_keys[k], "Action contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Action
-- &lt;p&gt;Information about an action.&lt;/p&gt;
-- @param TargetGroupArn [TargetGroupArn] &lt;p&gt;The Amazon Resource Name (ARN) of the target group.&lt;/p&gt;
-- @param Type [ActionTypeEnum] &lt;p&gt;The type of action.&lt;/p&gt;
-- Required parameter: Type
-- Required parameter: TargetGroupArn
function M.Action(TargetGroupArn, Type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Action")
	local t = { 
		["TargetGroupArn"] = TargetGroupArn,
		["Type"] = Type,
	}
	M.AssertAction(t)
	return t
end

local PriorityInUseException_keys = { nil }

function M.AssertPriorityInUseException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PriorityInUseException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(PriorityInUseException_keys[k], "PriorityInUseException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PriorityInUseException
-- &lt;p&gt;The specified priority is in use.&lt;/p&gt;
function M.PriorityInUseException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating PriorityInUseException")
	local t = { 
	}
	M.AssertPriorityInUseException(t)
	return t
end

local RegisterTargetsInput_keys = { "TargetGroupArn" = true, "Targets" = true, nil }

function M.AssertRegisterTargetsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterTargetsInput to be of type 'table'")
	assert(struct["TargetGroupArn"], "Expected key TargetGroupArn to exist in table")
	assert(struct["Targets"], "Expected key Targets to exist in table")
	if struct["TargetGroupArn"] then M.AssertTargetGroupArn(struct["TargetGroupArn"]) end
	if struct["Targets"] then M.AssertTargetDescriptions(struct["Targets"]) end
	for k,_ in pairs(struct) do
		assert(RegisterTargetsInput_keys[k], "RegisterTargetsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterTargetsInput
--  
-- @param TargetGroupArn [TargetGroupArn] &lt;p&gt;The Amazon Resource Name (ARN) of the target group.&lt;/p&gt;
-- @param Targets [TargetDescriptions] &lt;p&gt;The targets. The default port for a target is the port for the target group. You can specify a port override. If a target is already registered, you can register it again using a different port.&lt;/p&gt;
-- Required parameter: TargetGroupArn
-- Required parameter: Targets
function M.RegisterTargetsInput(TargetGroupArn, Targets, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterTargetsInput")
	local t = { 
		["TargetGroupArn"] = TargetGroupArn,
		["Targets"] = Targets,
	}
	M.AssertRegisterTargetsInput(t)
	return t
end

local DeleteTargetGroupInput_keys = { "TargetGroupArn" = true, nil }

function M.AssertDeleteTargetGroupInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTargetGroupInput to be of type 'table'")
	assert(struct["TargetGroupArn"], "Expected key TargetGroupArn to exist in table")
	if struct["TargetGroupArn"] then M.AssertTargetGroupArn(struct["TargetGroupArn"]) end
	for k,_ in pairs(struct) do
		assert(DeleteTargetGroupInput_keys[k], "DeleteTargetGroupInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTargetGroupInput
--  
-- @param TargetGroupArn [TargetGroupArn] &lt;p&gt;The Amazon Resource Name (ARN) of the target group.&lt;/p&gt;
-- Required parameter: TargetGroupArn
function M.DeleteTargetGroupInput(TargetGroupArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteTargetGroupInput")
	local t = { 
		["TargetGroupArn"] = TargetGroupArn,
	}
	M.AssertDeleteTargetGroupInput(t)
	return t
end

local RuleNotFoundException_keys = { nil }

function M.AssertRuleNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RuleNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(RuleNotFoundException_keys[k], "RuleNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RuleNotFoundException
-- &lt;p&gt;The specified rule does not exist.&lt;/p&gt;
function M.RuleNotFoundException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating RuleNotFoundException")
	local t = { 
	}
	M.AssertRuleNotFoundException(t)
	return t
end

local TooManyTargetsException_keys = { nil }

function M.AssertTooManyTargetsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyTargetsException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(TooManyTargetsException_keys[k], "TooManyTargetsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyTargetsException
-- &lt;p&gt;You've reached the limit on the number of targets.&lt;/p&gt;
function M.TooManyTargetsException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyTargetsException")
	local t = { 
	}
	M.AssertTooManyTargetsException(t)
	return t
end

local TooManyLoadBalancersException_keys = { nil }

function M.AssertTooManyLoadBalancersException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyLoadBalancersException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(TooManyLoadBalancersException_keys[k], "TooManyLoadBalancersException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyLoadBalancersException
-- &lt;p&gt;You've reached the limit on the number of load balancers for your AWS account.&lt;/p&gt;
function M.TooManyLoadBalancersException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyLoadBalancersException")
	local t = { 
	}
	M.AssertTooManyLoadBalancersException(t)
	return t
end

local AddTagsInput_keys = { "ResourceArns" = true, "Tags" = true, nil }

function M.AssertAddTagsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddTagsInput to be of type 'table'")
	assert(struct["ResourceArns"], "Expected key ResourceArns to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["ResourceArns"] then M.AssertResourceArns(struct["ResourceArns"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(AddTagsInput_keys[k], "AddTagsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddTagsInput
--  
-- @param ResourceArns [ResourceArns] &lt;p&gt;The Amazon Resource Name (ARN) of the resource.&lt;/p&gt;
-- @param Tags [TagList] &lt;p&gt;The tags. Each resource can have a maximum of 10 tags.&lt;/p&gt;
-- Required parameter: ResourceArns
-- Required parameter: Tags
function M.AddTagsInput(ResourceArns, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddTagsInput")
	local t = { 
		["ResourceArns"] = ResourceArns,
		["Tags"] = Tags,
	}
	M.AssertAddTagsInput(t)
	return t
end

local TargetGroupAttribute_keys = { "Value" = true, "Key" = true, nil }

function M.AssertTargetGroupAttribute(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TargetGroupAttribute to be of type 'table'")
	if struct["Value"] then M.AssertTargetGroupAttributeValue(struct["Value"]) end
	if struct["Key"] then M.AssertTargetGroupAttributeKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(TargetGroupAttribute_keys[k], "TargetGroupAttribute contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TargetGroupAttribute
-- &lt;p&gt;Information about a target group attribute.&lt;/p&gt;
-- @param Value [TargetGroupAttributeValue] &lt;p&gt;The value of the attribute.&lt;/p&gt;
-- @param Key [TargetGroupAttributeKey] &lt;p&gt;The name of the attribute.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;deregistration_delay.timeout_seconds&lt;/code&gt; - The amount time for Elastic Load Balancing to wait before changing the state of a deregistering target from &lt;code&gt;draining&lt;/code&gt; to &lt;code&gt;unused&lt;/code&gt;. The range is 0-3600 seconds. The default value is 300 seconds.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;stickiness.enabled&lt;/code&gt; - Indicates whether sticky sessions are enabled. The value is &lt;code&gt;true&lt;/code&gt; or &lt;code&gt;false&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;stickiness.type&lt;/code&gt; - The type of sticky sessions. The possible value is &lt;code&gt;lb_cookie&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;stickiness.lb_cookie.duration_seconds&lt;/code&gt; - The time period, in seconds, during which requests from a client should be routed to the same target. After this time period expires, the load balancer-generated cookie is considered stale. The range is 1 second to 1 week (604800 seconds). The default value is 1 day (86400 seconds).&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
function M.TargetGroupAttribute(Value, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TargetGroupAttribute")
	local t = { 
		["Value"] = Value,
		["Key"] = Key,
	}
	M.AssertTargetGroupAttribute(t)
	return t
end

local HealthUnavailableException_keys = { nil }

function M.AssertHealthUnavailableException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HealthUnavailableException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(HealthUnavailableException_keys[k], "HealthUnavailableException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HealthUnavailableException
-- &lt;p&gt;The health of the specified targets could not be retrieved due to an internal error.&lt;/p&gt;
function M.HealthUnavailableException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating HealthUnavailableException")
	local t = { 
	}
	M.AssertHealthUnavailableException(t)
	return t
end

local ModifyRuleInput_keys = { "Conditions" = true, "RuleArn" = true, "Actions" = true, nil }

function M.AssertModifyRuleInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyRuleInput to be of type 'table'")
	assert(struct["RuleArn"], "Expected key RuleArn to exist in table")
	if struct["Conditions"] then M.AssertRuleConditionList(struct["Conditions"]) end
	if struct["RuleArn"] then M.AssertRuleArn(struct["RuleArn"]) end
	if struct["Actions"] then M.AssertActions(struct["Actions"]) end
	for k,_ in pairs(struct) do
		assert(ModifyRuleInput_keys[k], "ModifyRuleInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyRuleInput
--  
-- @param Conditions [RuleConditionList] &lt;p&gt;The conditions.&lt;/p&gt;
-- @param RuleArn [RuleArn] &lt;p&gt;The Amazon Resource Name (ARN) of the rule.&lt;/p&gt;
-- @param Actions [Actions] &lt;p&gt;The actions.&lt;/p&gt;
-- Required parameter: RuleArn
function M.ModifyRuleInput(Conditions, RuleArn, Actions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyRuleInput")
	local t = { 
		["Conditions"] = Conditions,
		["RuleArn"] = RuleArn,
		["Actions"] = Actions,
	}
	M.AssertModifyRuleInput(t)
	return t
end

local TooManyTagsException_keys = { nil }

function M.AssertTooManyTagsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyTagsException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(TooManyTagsException_keys[k], "TooManyTagsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyTagsException
-- &lt;p&gt;You've reached the limit on the number of tags per load balancer.&lt;/p&gt;
function M.TooManyTagsException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyTagsException")
	local t = { 
	}
	M.AssertTooManyTagsException(t)
	return t
end

local DescribeRulesOutput_keys = { "Rules" = true, "NextMarker" = true, nil }

function M.AssertDescribeRulesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeRulesOutput to be of type 'table'")
	if struct["Rules"] then M.AssertRules(struct["Rules"]) end
	if struct["NextMarker"] then M.AssertMarker(struct["NextMarker"]) end
	for k,_ in pairs(struct) do
		assert(DescribeRulesOutput_keys[k], "DescribeRulesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeRulesOutput
--  
-- @param Rules [Rules] &lt;p&gt;Information about the rules.&lt;/p&gt;
-- @param NextMarker [Marker] &lt;p&gt;The marker to use when requesting the next set of results. If there are no additional results, the string is empty.&lt;/p&gt;
function M.DescribeRulesOutput(Rules, NextMarker, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeRulesOutput")
	local t = { 
		["Rules"] = Rules,
		["NextMarker"] = NextMarker,
	}
	M.AssertDescribeRulesOutput(t)
	return t
end

local SSLPolicyNotFoundException_keys = { nil }

function M.AssertSSLPolicyNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SSLPolicyNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(SSLPolicyNotFoundException_keys[k], "SSLPolicyNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SSLPolicyNotFoundException
-- &lt;p&gt;The specified SSL policy does not exist.&lt;/p&gt;
function M.SSLPolicyNotFoundException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SSLPolicyNotFoundException")
	local t = { 
	}
	M.AssertSSLPolicyNotFoundException(t)
	return t
end

local DuplicateListenerException_keys = { nil }

function M.AssertDuplicateListenerException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DuplicateListenerException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DuplicateListenerException_keys[k], "DuplicateListenerException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DuplicateListenerException
-- &lt;p&gt;A listener with the specified port already exists.&lt;/p&gt;
function M.DuplicateListenerException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DuplicateListenerException")
	local t = { 
	}
	M.AssertDuplicateListenerException(t)
	return t
end

local DescribeTargetGroupsOutput_keys = { "NextMarker" = true, "TargetGroups" = true, nil }

function M.AssertDescribeTargetGroupsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTargetGroupsOutput to be of type 'table'")
	if struct["NextMarker"] then M.AssertMarker(struct["NextMarker"]) end
	if struct["TargetGroups"] then M.AssertTargetGroups(struct["TargetGroups"]) end
	for k,_ in pairs(struct) do
		assert(DescribeTargetGroupsOutput_keys[k], "DescribeTargetGroupsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTargetGroupsOutput
--  
-- @param NextMarker [Marker] &lt;p&gt;The marker to use when requesting the next set of results. If there are no additional results, the string is empty.&lt;/p&gt;
-- @param TargetGroups [TargetGroups] &lt;p&gt;Information about the target groups.&lt;/p&gt;
function M.DescribeTargetGroupsOutput(NextMarker, TargetGroups, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTargetGroupsOutput")
	local t = { 
		["NextMarker"] = NextMarker,
		["TargetGroups"] = TargetGroups,
	}
	M.AssertDescribeTargetGroupsOutput(t)
	return t
end

local DeleteLoadBalancerInput_keys = { "LoadBalancerArn" = true, nil }

function M.AssertDeleteLoadBalancerInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteLoadBalancerInput to be of type 'table'")
	assert(struct["LoadBalancerArn"], "Expected key LoadBalancerArn to exist in table")
	if struct["LoadBalancerArn"] then M.AssertLoadBalancerArn(struct["LoadBalancerArn"]) end
	for k,_ in pairs(struct) do
		assert(DeleteLoadBalancerInput_keys[k], "DeleteLoadBalancerInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteLoadBalancerInput
--  
-- @param LoadBalancerArn [LoadBalancerArn] &lt;p&gt;The Amazon Resource Name (ARN) of the load balancer.&lt;/p&gt;
-- Required parameter: LoadBalancerArn
function M.DeleteLoadBalancerInput(LoadBalancerArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteLoadBalancerInput")
	local t = { 
		["LoadBalancerArn"] = LoadBalancerArn,
	}
	M.AssertDeleteLoadBalancerInput(t)
	return t
end

local DescribeTargetGroupsInput_keys = { "Marker" = true, "TargetGroupArns" = true, "LoadBalancerArn" = true, "Names" = true, "PageSize" = true, nil }

function M.AssertDescribeTargetGroupsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTargetGroupsInput to be of type 'table'")
	if struct["Marker"] then M.AssertMarker(struct["Marker"]) end
	if struct["TargetGroupArns"] then M.AssertTargetGroupArns(struct["TargetGroupArns"]) end
	if struct["LoadBalancerArn"] then M.AssertLoadBalancerArn(struct["LoadBalancerArn"]) end
	if struct["Names"] then M.AssertTargetGroupNames(struct["Names"]) end
	if struct["PageSize"] then M.AssertPageSize(struct["PageSize"]) end
	for k,_ in pairs(struct) do
		assert(DescribeTargetGroupsInput_keys[k], "DescribeTargetGroupsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTargetGroupsInput
--  
-- @param Marker [Marker] &lt;p&gt;The marker for the next set of results. (You received this marker from a previous call.)&lt;/p&gt;
-- @param TargetGroupArns [TargetGroupArns] &lt;p&gt;The Amazon Resource Names (ARN) of the target groups.&lt;/p&gt;
-- @param LoadBalancerArn [LoadBalancerArn] &lt;p&gt;The Amazon Resource Name (ARN) of the load balancer.&lt;/p&gt;
-- @param Names [TargetGroupNames] &lt;p&gt;The names of the target groups.&lt;/p&gt;
-- @param PageSize [PageSize] &lt;p&gt;The maximum number of results to return with this call.&lt;/p&gt;
function M.DescribeTargetGroupsInput(Marker, TargetGroupArns, LoadBalancerArn, Names, PageSize, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTargetGroupsInput")
	local t = { 
		["Marker"] = Marker,
		["TargetGroupArns"] = TargetGroupArns,
		["LoadBalancerArn"] = LoadBalancerArn,
		["Names"] = Names,
		["PageSize"] = PageSize,
	}
	M.AssertDescribeTargetGroupsInput(t)
	return t
end

local ModifyTargetGroupOutput_keys = { "TargetGroups" = true, nil }

function M.AssertModifyTargetGroupOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyTargetGroupOutput to be of type 'table'")
	if struct["TargetGroups"] then M.AssertTargetGroups(struct["TargetGroups"]) end
	for k,_ in pairs(struct) do
		assert(ModifyTargetGroupOutput_keys[k], "ModifyTargetGroupOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyTargetGroupOutput
--  
-- @param TargetGroups [TargetGroups] &lt;p&gt;Information about the target group.&lt;/p&gt;
function M.ModifyTargetGroupOutput(TargetGroups, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyTargetGroupOutput")
	local t = { 
		["TargetGroups"] = TargetGroups,
	}
	M.AssertModifyTargetGroupOutput(t)
	return t
end

local ModifyTargetGroupAttributesOutput_keys = { "Attributes" = true, nil }

function M.AssertModifyTargetGroupAttributesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyTargetGroupAttributesOutput to be of type 'table'")
	if struct["Attributes"] then M.AssertTargetGroupAttributes(struct["Attributes"]) end
	for k,_ in pairs(struct) do
		assert(ModifyTargetGroupAttributesOutput_keys[k], "ModifyTargetGroupAttributesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyTargetGroupAttributesOutput
--  
-- @param Attributes [TargetGroupAttributes] &lt;p&gt;Information about the attributes.&lt;/p&gt;
function M.ModifyTargetGroupAttributesOutput(Attributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyTargetGroupAttributesOutput")
	local t = { 
		["Attributes"] = Attributes,
	}
	M.AssertModifyTargetGroupAttributesOutput(t)
	return t
end

local CreateTargetGroupOutput_keys = { "TargetGroups" = true, nil }

function M.AssertCreateTargetGroupOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTargetGroupOutput to be of type 'table'")
	if struct["TargetGroups"] then M.AssertTargetGroups(struct["TargetGroups"]) end
	for k,_ in pairs(struct) do
		assert(CreateTargetGroupOutput_keys[k], "CreateTargetGroupOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTargetGroupOutput
--  
-- @param TargetGroups [TargetGroups] &lt;p&gt;Information about the target group.&lt;/p&gt;
function M.CreateTargetGroupOutput(TargetGroups, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateTargetGroupOutput")
	local t = { 
		["TargetGroups"] = TargetGroups,
	}
	M.AssertCreateTargetGroupOutput(t)
	return t
end

local CreateListenerOutput_keys = { "Listeners" = true, nil }

function M.AssertCreateListenerOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateListenerOutput to be of type 'table'")
	if struct["Listeners"] then M.AssertListeners(struct["Listeners"]) end
	for k,_ in pairs(struct) do
		assert(CreateListenerOutput_keys[k], "CreateListenerOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateListenerOutput
--  
-- @param Listeners [Listeners] &lt;p&gt;Information about the listener.&lt;/p&gt;
function M.CreateListenerOutput(Listeners, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateListenerOutput")
	local t = { 
		["Listeners"] = Listeners,
	}
	M.AssertCreateListenerOutput(t)
	return t
end

local DescribeRulesInput_keys = { "Marker" = true, "RuleArns" = true, "PageSize" = true, "ListenerArn" = true, nil }

function M.AssertDescribeRulesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeRulesInput to be of type 'table'")
	if struct["Marker"] then M.AssertMarker(struct["Marker"]) end
	if struct["RuleArns"] then M.AssertRuleArns(struct["RuleArns"]) end
	if struct["PageSize"] then M.AssertPageSize(struct["PageSize"]) end
	if struct["ListenerArn"] then M.AssertListenerArn(struct["ListenerArn"]) end
	for k,_ in pairs(struct) do
		assert(DescribeRulesInput_keys[k], "DescribeRulesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeRulesInput
--  
-- @param Marker [Marker] &lt;p&gt;The marker for the next set of results. (You received this marker from a previous call.)&lt;/p&gt;
-- @param RuleArns [RuleArns] &lt;p&gt;The Amazon Resource Names (ARN) of the rules.&lt;/p&gt;
-- @param PageSize [PageSize] &lt;p&gt;The maximum number of results to return with this call.&lt;/p&gt;
-- @param ListenerArn [ListenerArn] &lt;p&gt;The Amazon Resource Name (ARN) of the listener.&lt;/p&gt;
function M.DescribeRulesInput(Marker, RuleArns, PageSize, ListenerArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeRulesInput")
	local t = { 
		["Marker"] = Marker,
		["RuleArns"] = RuleArns,
		["PageSize"] = PageSize,
		["ListenerArn"] = ListenerArn,
	}
	M.AssertDescribeRulesInput(t)
	return t
end

local DeleteListenerOutput_keys = { nil }

function M.AssertDeleteListenerOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteListenerOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteListenerOutput_keys[k], "DeleteListenerOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteListenerOutput
--  
function M.DeleteListenerOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteListenerOutput")
	local t = { 
	}
	M.AssertDeleteListenerOutput(t)
	return t
end

local DescribeTagsOutput_keys = { "TagDescriptions" = true, nil }

function M.AssertDescribeTagsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTagsOutput to be of type 'table'")
	if struct["TagDescriptions"] then M.AssertTagDescriptions(struct["TagDescriptions"]) end
	for k,_ in pairs(struct) do
		assert(DescribeTagsOutput_keys[k], "DescribeTagsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTagsOutput
--  
-- @param TagDescriptions [TagDescriptions] &lt;p&gt;Information about the tags.&lt;/p&gt;
function M.DescribeTagsOutput(TagDescriptions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTagsOutput")
	local t = { 
		["TagDescriptions"] = TagDescriptions,
	}
	M.AssertDescribeTagsOutput(t)
	return t
end

local ModifyListenerOutput_keys = { "Listeners" = true, nil }

function M.AssertModifyListenerOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyListenerOutput to be of type 'table'")
	if struct["Listeners"] then M.AssertListeners(struct["Listeners"]) end
	for k,_ in pairs(struct) do
		assert(ModifyListenerOutput_keys[k], "ModifyListenerOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyListenerOutput
--  
-- @param Listeners [Listeners] &lt;p&gt;Information about the modified listeners.&lt;/p&gt;
function M.ModifyListenerOutput(Listeners, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyListenerOutput")
	local t = { 
		["Listeners"] = Listeners,
	}
	M.AssertModifyListenerOutput(t)
	return t
end

local LoadBalancerState_keys = { "Reason" = true, "Code" = true, nil }

function M.AssertLoadBalancerState(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LoadBalancerState to be of type 'table'")
	if struct["Reason"] then M.AssertStateReason(struct["Reason"]) end
	if struct["Code"] then M.AssertLoadBalancerStateEnum(struct["Code"]) end
	for k,_ in pairs(struct) do
		assert(LoadBalancerState_keys[k], "LoadBalancerState contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LoadBalancerState
-- &lt;p&gt;Information about the state of the load balancer.&lt;/p&gt;
-- @param Reason [StateReason] &lt;p&gt;A description of the state.&lt;/p&gt;
-- @param Code [LoadBalancerStateEnum] &lt;p&gt;The state code. The initial state of the load balancer is &lt;code&gt;provisioning&lt;/code&gt;. After the load balancer is fully set up and ready to route traffic, its state is &lt;code&gt;active&lt;/code&gt;. If the load balancer could not be set up, its state is &lt;code&gt;failed&lt;/code&gt;.&lt;/p&gt;
function M.LoadBalancerState(Reason, Code, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LoadBalancerState")
	local t = { 
		["Reason"] = Reason,
		["Code"] = Code,
	}
	M.AssertLoadBalancerState(t)
	return t
end

local InvalidTargetException_keys = { nil }

function M.AssertInvalidTargetException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidTargetException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidTargetException_keys[k], "InvalidTargetException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidTargetException
-- &lt;p&gt;The specified target does not exist or is not in the same VPC as the target group.&lt;/p&gt;
function M.InvalidTargetException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidTargetException")
	local t = { 
	}
	M.AssertInvalidTargetException(t)
	return t
end

local SetSecurityGroupsInput_keys = { "SecurityGroups" = true, "LoadBalancerArn" = true, nil }

function M.AssertSetSecurityGroupsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetSecurityGroupsInput to be of type 'table'")
	assert(struct["LoadBalancerArn"], "Expected key LoadBalancerArn to exist in table")
	assert(struct["SecurityGroups"], "Expected key SecurityGroups to exist in table")
	if struct["SecurityGroups"] then M.AssertSecurityGroups(struct["SecurityGroups"]) end
	if struct["LoadBalancerArn"] then M.AssertLoadBalancerArn(struct["LoadBalancerArn"]) end
	for k,_ in pairs(struct) do
		assert(SetSecurityGroupsInput_keys[k], "SetSecurityGroupsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetSecurityGroupsInput
--  
-- @param SecurityGroups [SecurityGroups] &lt;p&gt;The IDs of the security groups.&lt;/p&gt;
-- @param LoadBalancerArn [LoadBalancerArn] &lt;p&gt;The Amazon Resource Name (ARN) of the load balancer.&lt;/p&gt;
-- Required parameter: LoadBalancerArn
-- Required parameter: SecurityGroups
function M.SetSecurityGroupsInput(SecurityGroups, LoadBalancerArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetSecurityGroupsInput")
	local t = { 
		["SecurityGroups"] = SecurityGroups,
		["LoadBalancerArn"] = LoadBalancerArn,
	}
	M.AssertSetSecurityGroupsInput(t)
	return t
end

local LoadBalancerAttribute_keys = { "Value" = true, "Key" = true, nil }

function M.AssertLoadBalancerAttribute(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LoadBalancerAttribute to be of type 'table'")
	if struct["Value"] then M.AssertLoadBalancerAttributeValue(struct["Value"]) end
	if struct["Key"] then M.AssertLoadBalancerAttributeKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(LoadBalancerAttribute_keys[k], "LoadBalancerAttribute contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LoadBalancerAttribute
-- &lt;p&gt;Information about a load balancer attribute.&lt;/p&gt;
-- @param Value [LoadBalancerAttributeValue] &lt;p&gt;The value of the attribute.&lt;/p&gt;
-- @param Key [LoadBalancerAttributeKey] &lt;p&gt;The name of the attribute.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;access_logs.s3.enabled&lt;/code&gt; - Indicates whether access logs stored in Amazon S3 are enabled. The value is &lt;code&gt;true&lt;/code&gt; or &lt;code&gt;false&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;access_logs.s3.bucket&lt;/code&gt; - The name of the S3 bucket for the access logs. This attribute is required if access logs in Amazon S3 are enabled. The bucket must exist in the same region as the load balancer and have a bucket policy that grants Elastic Load Balancing permission to write to the bucket.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;access_logs.s3.prefix&lt;/code&gt; - The prefix for the location in the S3 bucket. If you don't specify a prefix, the access logs are stored in the root of the bucket.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;deletion_protection.enabled&lt;/code&gt; - Indicates whether deletion protection is enabled. The value is &lt;code&gt;true&lt;/code&gt; or &lt;code&gt;false&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;idle_timeout.timeout_seconds&lt;/code&gt; - The idle timeout value, in seconds. The valid range is 1-3600. The default is 60 seconds.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
function M.LoadBalancerAttribute(Value, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LoadBalancerAttribute")
	local t = { 
		["Value"] = Value,
		["Key"] = Key,
	}
	M.AssertLoadBalancerAttribute(t)
	return t
end

local DescribeListenersOutput_keys = { "Listeners" = true, "NextMarker" = true, nil }

function M.AssertDescribeListenersOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeListenersOutput to be of type 'table'")
	if struct["Listeners"] then M.AssertListeners(struct["Listeners"]) end
	if struct["NextMarker"] then M.AssertMarker(struct["NextMarker"]) end
	for k,_ in pairs(struct) do
		assert(DescribeListenersOutput_keys[k], "DescribeListenersOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeListenersOutput
--  
-- @param Listeners [Listeners] &lt;p&gt;Information about the listeners.&lt;/p&gt;
-- @param NextMarker [Marker] &lt;p&gt;The marker to use when requesting the next set of results. If there are no additional results, the string is empty.&lt;/p&gt;
function M.DescribeListenersOutput(Listeners, NextMarker, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeListenersOutput")
	local t = { 
		["Listeners"] = Listeners,
		["NextMarker"] = NextMarker,
	}
	M.AssertDescribeListenersOutput(t)
	return t
end

local RemoveTagsInput_keys = { "TagKeys" = true, "ResourceArns" = true, nil }

function M.AssertRemoveTagsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveTagsInput to be of type 'table'")
	assert(struct["ResourceArns"], "Expected key ResourceArns to exist in table")
	assert(struct["TagKeys"], "Expected key TagKeys to exist in table")
	if struct["TagKeys"] then M.AssertTagKeys(struct["TagKeys"]) end
	if struct["ResourceArns"] then M.AssertResourceArns(struct["ResourceArns"]) end
	for k,_ in pairs(struct) do
		assert(RemoveTagsInput_keys[k], "RemoveTagsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveTagsInput
--  
-- @param TagKeys [TagKeys] &lt;p&gt;The tag keys for the tags to remove.&lt;/p&gt;
-- @param ResourceArns [ResourceArns] &lt;p&gt;The Amazon Resource Name (ARN) of the resource.&lt;/p&gt;
-- Required parameter: ResourceArns
-- Required parameter: TagKeys
function M.RemoveTagsInput(TagKeys, ResourceArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveTagsInput")
	local t = { 
		["TagKeys"] = TagKeys,
		["ResourceArns"] = ResourceArns,
	}
	M.AssertRemoveTagsInput(t)
	return t
end

local TooManyRulesException_keys = { nil }

function M.AssertTooManyRulesException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyRulesException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(TooManyRulesException_keys[k], "TooManyRulesException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyRulesException
-- &lt;p&gt;You've reached the limit on the number of rules per load balancer.&lt;/p&gt;
function M.TooManyRulesException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyRulesException")
	local t = { 
	}
	M.AssertTooManyRulesException(t)
	return t
end

local LoadBalancerNotFoundException_keys = { nil }

function M.AssertLoadBalancerNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LoadBalancerNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(LoadBalancerNotFoundException_keys[k], "LoadBalancerNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LoadBalancerNotFoundException
-- &lt;p&gt;The specified load balancer does not exist.&lt;/p&gt;
function M.LoadBalancerNotFoundException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating LoadBalancerNotFoundException")
	local t = { 
	}
	M.AssertLoadBalancerNotFoundException(t)
	return t
end

local TargetDescription_keys = { "Id" = true, "Port" = true, nil }

function M.AssertTargetDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TargetDescription to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then M.AssertTargetId(struct["Id"]) end
	if struct["Port"] then M.AssertPort(struct["Port"]) end
	for k,_ in pairs(struct) do
		assert(TargetDescription_keys[k], "TargetDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TargetDescription
-- &lt;p&gt;Information about a target.&lt;/p&gt;
-- @param Id [TargetId] &lt;p&gt;The ID of the target.&lt;/p&gt;
-- @param Port [Port] &lt;p&gt;The port on which the target is listening.&lt;/p&gt;
-- Required parameter: Id
function M.TargetDescription(Id, Port, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TargetDescription")
	local t = { 
		["Id"] = Id,
		["Port"] = Port,
	}
	M.AssertTargetDescription(t)
	return t
end

local SetIpAddressTypeOutput_keys = { "IpAddressType" = true, nil }

function M.AssertSetIpAddressTypeOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetIpAddressTypeOutput to be of type 'table'")
	if struct["IpAddressType"] then M.AssertIpAddressType(struct["IpAddressType"]) end
	for k,_ in pairs(struct) do
		assert(SetIpAddressTypeOutput_keys[k], "SetIpAddressTypeOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetIpAddressTypeOutput
--  
-- @param IpAddressType [IpAddressType] &lt;p&gt;The IP address type.&lt;/p&gt;
function M.SetIpAddressTypeOutput(IpAddressType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetIpAddressTypeOutput")
	local t = { 
		["IpAddressType"] = IpAddressType,
	}
	M.AssertSetIpAddressTypeOutput(t)
	return t
end

local DescribeSSLPoliciesInput_keys = { "Marker" = true, "Names" = true, "PageSize" = true, nil }

function M.AssertDescribeSSLPoliciesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSSLPoliciesInput to be of type 'table'")
	if struct["Marker"] then M.AssertMarker(struct["Marker"]) end
	if struct["Names"] then M.AssertSslPolicyNames(struct["Names"]) end
	if struct["PageSize"] then M.AssertPageSize(struct["PageSize"]) end
	for k,_ in pairs(struct) do
		assert(DescribeSSLPoliciesInput_keys[k], "DescribeSSLPoliciesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSSLPoliciesInput
--  
-- @param Marker [Marker] &lt;p&gt;The marker for the next set of results. (You received this marker from a previous call.)&lt;/p&gt;
-- @param Names [SslPolicyNames] &lt;p&gt;The names of the policies.&lt;/p&gt;
-- @param PageSize [PageSize] &lt;p&gt;The maximum number of results to return with this call.&lt;/p&gt;
function M.DescribeSSLPoliciesInput(Marker, Names, PageSize, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeSSLPoliciesInput")
	local t = { 
		["Marker"] = Marker,
		["Names"] = Names,
		["PageSize"] = PageSize,
	}
	M.AssertDescribeSSLPoliciesInput(t)
	return t
end

local CreateRuleOutput_keys = { "Rules" = true, nil }

function M.AssertCreateRuleOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateRuleOutput to be of type 'table'")
	if struct["Rules"] then M.AssertRules(struct["Rules"]) end
	for k,_ in pairs(struct) do
		assert(CreateRuleOutput_keys[k], "CreateRuleOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateRuleOutput
--  
-- @param Rules [Rules] &lt;p&gt;Information about the rule.&lt;/p&gt;
function M.CreateRuleOutput(Rules, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateRuleOutput")
	local t = { 
		["Rules"] = Rules,
	}
	M.AssertCreateRuleOutput(t)
	return t
end

local LoadBalancer_keys = { "IpAddressType" = true, "VpcId" = true, "LoadBalancerArn" = true, "State" = true, "DNSName" = true, "SecurityGroups" = true, "LoadBalancerName" = true, "CreatedTime" = true, "Scheme" = true, "Type" = true, "CanonicalHostedZoneId" = true, "AvailabilityZones" = true, nil }

function M.AssertLoadBalancer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LoadBalancer to be of type 'table'")
	if struct["IpAddressType"] then M.AssertIpAddressType(struct["IpAddressType"]) end
	if struct["VpcId"] then M.AssertVpcId(struct["VpcId"]) end
	if struct["LoadBalancerArn"] then M.AssertLoadBalancerArn(struct["LoadBalancerArn"]) end
	if struct["State"] then M.AssertLoadBalancerState(struct["State"]) end
	if struct["DNSName"] then M.AssertDNSName(struct["DNSName"]) end
	if struct["SecurityGroups"] then M.AssertSecurityGroups(struct["SecurityGroups"]) end
	if struct["LoadBalancerName"] then M.AssertLoadBalancerName(struct["LoadBalancerName"]) end
	if struct["CreatedTime"] then M.AssertCreatedTime(struct["CreatedTime"]) end
	if struct["Scheme"] then M.AssertLoadBalancerSchemeEnum(struct["Scheme"]) end
	if struct["Type"] then M.AssertLoadBalancerTypeEnum(struct["Type"]) end
	if struct["CanonicalHostedZoneId"] then M.AssertCanonicalHostedZoneId(struct["CanonicalHostedZoneId"]) end
	if struct["AvailabilityZones"] then M.AssertAvailabilityZones(struct["AvailabilityZones"]) end
	for k,_ in pairs(struct) do
		assert(LoadBalancer_keys[k], "LoadBalancer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LoadBalancer
-- &lt;p&gt;Information about a load balancer.&lt;/p&gt;
-- @param IpAddressType [IpAddressType] &lt;p&gt;The type of IP addresses used by the subnets for your load balancer. The possible values are &lt;code&gt;ipv4&lt;/code&gt; (for IPv4 addresses) and &lt;code&gt;dualstack&lt;/code&gt; (for IPv4 and IPv6 addresses).&lt;/p&gt;
-- @param VpcId [VpcId] &lt;p&gt;The ID of the VPC for the load balancer.&lt;/p&gt;
-- @param LoadBalancerArn [LoadBalancerArn] &lt;p&gt;The Amazon Resource Name (ARN) of the load balancer.&lt;/p&gt;
-- @param State [LoadBalancerState] &lt;p&gt;The state of the load balancer.&lt;/p&gt;
-- @param DNSName [DNSName] &lt;p&gt;The public DNS name of the load balancer.&lt;/p&gt;
-- @param SecurityGroups [SecurityGroups] &lt;p&gt;The IDs of the security groups for the load balancer.&lt;/p&gt;
-- @param LoadBalancerName [LoadBalancerName] &lt;p&gt;The name of the load balancer.&lt;/p&gt;
-- @param CreatedTime [CreatedTime] &lt;p&gt;The date and time the load balancer was created.&lt;/p&gt;
-- @param Scheme [LoadBalancerSchemeEnum] &lt;p&gt;The nodes of an Internet-facing load balancer have public IP addresses. The DNS name of an Internet-facing load balancer is publicly resolvable to the public IP addresses of the nodes. Therefore, Internet-facing load balancers can route requests from clients over the Internet.&lt;/p&gt; &lt;p&gt;The nodes of an internal load balancer have only private IP addresses. The DNS name of an internal load balancer is publicly resolvable to the private IP addresses of the nodes. Therefore, internal load balancers can only route requests from clients with access to the VPC for the load balancer.&lt;/p&gt;
-- @param Type [LoadBalancerTypeEnum] &lt;p&gt;The type of load balancer.&lt;/p&gt;
-- @param CanonicalHostedZoneId [CanonicalHostedZoneId] &lt;p&gt;The ID of the Amazon Route 53 hosted zone associated with the load balancer.&lt;/p&gt;
-- @param AvailabilityZones [AvailabilityZones] &lt;p&gt;The Availability Zones for the load balancer.&lt;/p&gt;
function M.LoadBalancer(IpAddressType, VpcId, LoadBalancerArn, State, DNSName, SecurityGroups, LoadBalancerName, CreatedTime, Scheme, Type, CanonicalHostedZoneId, AvailabilityZones, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LoadBalancer")
	local t = { 
		["IpAddressType"] = IpAddressType,
		["VpcId"] = VpcId,
		["LoadBalancerArn"] = LoadBalancerArn,
		["State"] = State,
		["DNSName"] = DNSName,
		["SecurityGroups"] = SecurityGroups,
		["LoadBalancerName"] = LoadBalancerName,
		["CreatedTime"] = CreatedTime,
		["Scheme"] = Scheme,
		["Type"] = Type,
		["CanonicalHostedZoneId"] = CanonicalHostedZoneId,
		["AvailabilityZones"] = AvailabilityZones,
	}
	M.AssertLoadBalancer(t)
	return t
end

function M.AssertDNSName(str)
	assert(str)
	assert(type(str) == "string", "Expected DNSName to be of type 'string'")
end

--  
function M.DNSName(str)
	M.AssertDNSName(str)
	return str
end

function M.AssertLoadBalancerSchemeEnum(str)
	assert(str)
	assert(type(str) == "string", "Expected LoadBalancerSchemeEnum to be of type 'string'")
end

--  
function M.LoadBalancerSchemeEnum(str)
	M.AssertLoadBalancerSchemeEnum(str)
	return str
end

function M.AssertTagKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TagKey to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("^([%p{L}%p{Z}%p{N}_.:/=+%-@]*)$"), "Expected string to match pattern '^([%p{L}%p{Z}%p{N}_.:/=+%-@]*)$'")
end

--  
function M.TagKey(str)
	M.AssertTagKey(str)
	return str
end

function M.AssertPath(str)
	assert(str)
	assert(type(str) == "string", "Expected Path to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Path(str)
	M.AssertPath(str)
	return str
end

function M.AssertConditionFieldName(str)
	assert(str)
	assert(type(str) == "string", "Expected ConditionFieldName to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
end

--  
function M.ConditionFieldName(str)
	M.AssertConditionFieldName(str)
	return str
end

function M.AssertTargetGroupArn(str)
	assert(str)
	assert(type(str) == "string", "Expected TargetGroupArn to be of type 'string'")
end

--  
function M.TargetGroupArn(str)
	M.AssertTargetGroupArn(str)
	return str
end

function M.AssertIpAddressType(str)
	assert(str)
	assert(type(str) == "string", "Expected IpAddressType to be of type 'string'")
end

--  
function M.IpAddressType(str)
	M.AssertIpAddressType(str)
	return str
end

function M.AssertTargetGroupAttributeKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TargetGroupAttributeKey to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(str:match("^[a-zA-Z0-9._]+$"), "Expected string to match pattern '^[a-zA-Z0-9._]+$'")
end

--  
function M.TargetGroupAttributeKey(str)
	M.AssertTargetGroupAttributeKey(str)
	return str
end

function M.AssertLoadBalancerName(str)
	assert(str)
	assert(type(str) == "string", "Expected LoadBalancerName to be of type 'string'")
end

--  
function M.LoadBalancerName(str)
	M.AssertLoadBalancerName(str)
	return str
end

function M.AssertStringValue(str)
	assert(str)
	assert(type(str) == "string", "Expected StringValue to be of type 'string'")
end

--  
function M.StringValue(str)
	M.AssertStringValue(str)
	return str
end

function M.AssertLoadBalancerAttributeKey(str)
	assert(str)
	assert(type(str) == "string", "Expected LoadBalancerAttributeKey to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(str:match("^[a-zA-Z0-9._]+$"), "Expected string to match pattern '^[a-zA-Z0-9._]+$'")
end

--  
function M.LoadBalancerAttributeKey(str)
	M.AssertLoadBalancerAttributeKey(str)
	return str
end

function M.AssertTargetGroupAttributeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TargetGroupAttributeValue to be of type 'string'")
end

--  
function M.TargetGroupAttributeValue(str)
	M.AssertTargetGroupAttributeValue(str)
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
end

--  
function M.ResourceArn(str)
	M.AssertResourceArn(str)
	return str
end

function M.AssertLoadBalancerAttributeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected LoadBalancerAttributeValue to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

--  
function M.LoadBalancerAttributeValue(str)
	M.AssertLoadBalancerAttributeValue(str)
	return str
end

function M.AssertZoneName(str)
	assert(str)
	assert(type(str) == "string", "Expected ZoneName to be of type 'string'")
end

--  
function M.ZoneName(str)
	M.AssertZoneName(str)
	return str
end

function M.AssertSubnetId(str)
	assert(str)
	assert(type(str) == "string", "Expected SubnetId to be of type 'string'")
end

--  
function M.SubnetId(str)
	M.AssertSubnetId(str)
	return str
end

function M.AssertTargetHealthReasonEnum(str)
	assert(str)
	assert(type(str) == "string", "Expected TargetHealthReasonEnum to be of type 'string'")
end

--  
function M.TargetHealthReasonEnum(str)
	M.AssertTargetHealthReasonEnum(str)
	return str
end

function M.AssertMarker(str)
	assert(str)
	assert(type(str) == "string", "Expected Marker to be of type 'string'")
end

--  
function M.Marker(str)
	M.AssertMarker(str)
	return str
end

function M.AssertTagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TagValue to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(str:match("^([%p{L}%p{Z}%p{N}_.:/=+%-@]*)$"), "Expected string to match pattern '^([%p{L}%p{Z}%p{N}_.:/=+%-@]*)$'")
end

--  
function M.TagValue(str)
	M.AssertTagValue(str)
	return str
end

function M.AssertActionTypeEnum(str)
	assert(str)
	assert(type(str) == "string", "Expected ActionTypeEnum to be of type 'string'")
end

--  
function M.ActionTypeEnum(str)
	M.AssertActionTypeEnum(str)
	return str
end

function M.AssertHealthCheckPort(str)
	assert(str)
	assert(type(str) == "string", "Expected HealthCheckPort to be of type 'string'")
end

--  
function M.HealthCheckPort(str)
	M.AssertHealthCheckPort(str)
	return str
end

function M.AssertListenerArn(str)
	assert(str)
	assert(type(str) == "string", "Expected ListenerArn to be of type 'string'")
end

--  
function M.ListenerArn(str)
	M.AssertListenerArn(str)
	return str
end

function M.AssertCertificateArn(str)
	assert(str)
	assert(type(str) == "string", "Expected CertificateArn to be of type 'string'")
end

--  
function M.CertificateArn(str)
	M.AssertCertificateArn(str)
	return str
end

function M.AssertLoadBalancerArn(str)
	assert(str)
	assert(type(str) == "string", "Expected LoadBalancerArn to be of type 'string'")
end

--  
function M.LoadBalancerArn(str)
	M.AssertLoadBalancerArn(str)
	return str
end

function M.AssertHttpCode(str)
	assert(str)
	assert(type(str) == "string", "Expected HttpCode to be of type 'string'")
end

--  
function M.HttpCode(str)
	M.AssertHttpCode(str)
	return str
end

function M.AssertRuleArn(str)
	assert(str)
	assert(type(str) == "string", "Expected RuleArn to be of type 'string'")
end

--  
function M.RuleArn(str)
	M.AssertRuleArn(str)
	return str
end

function M.AssertSecurityGroupId(str)
	assert(str)
	assert(type(str) == "string", "Expected SecurityGroupId to be of type 'string'")
end

--  
function M.SecurityGroupId(str)
	M.AssertSecurityGroupId(str)
	return str
end

function M.AssertDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected Description to be of type 'string'")
end

--  
function M.Description(str)
	M.AssertDescription(str)
	return str
end

function M.AssertMax(str)
	assert(str)
	assert(type(str) == "string", "Expected Max to be of type 'string'")
end

--  
function M.Max(str)
	M.AssertMax(str)
	return str
end

function M.AssertTargetId(str)
	assert(str)
	assert(type(str) == "string", "Expected TargetId to be of type 'string'")
end

--  
function M.TargetId(str)
	M.AssertTargetId(str)
	return str
end

function M.AssertCanonicalHostedZoneId(str)
	assert(str)
	assert(type(str) == "string", "Expected CanonicalHostedZoneId to be of type 'string'")
end

--  
function M.CanonicalHostedZoneId(str)
	M.AssertCanonicalHostedZoneId(str)
	return str
end

function M.AssertTargetHealthStateEnum(str)
	assert(str)
	assert(type(str) == "string", "Expected TargetHealthStateEnum to be of type 'string'")
end

--  
function M.TargetHealthStateEnum(str)
	M.AssertTargetHealthStateEnum(str)
	return str
end

function M.AssertLoadBalancerTypeEnum(str)
	assert(str)
	assert(type(str) == "string", "Expected LoadBalancerTypeEnum to be of type 'string'")
end

--  
function M.LoadBalancerTypeEnum(str)
	M.AssertLoadBalancerTypeEnum(str)
	return str
end

function M.AssertCipherName(str)
	assert(str)
	assert(type(str) == "string", "Expected CipherName to be of type 'string'")
end

--  
function M.CipherName(str)
	M.AssertCipherName(str)
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

function M.AssertSslProtocol(str)
	assert(str)
	assert(type(str) == "string", "Expected SslProtocol to be of type 'string'")
end

--  
function M.SslProtocol(str)
	M.AssertSslProtocol(str)
	return str
end

function M.AssertSslPolicyName(str)
	assert(str)
	assert(type(str) == "string", "Expected SslPolicyName to be of type 'string'")
end

--  
function M.SslPolicyName(str)
	M.AssertSslPolicyName(str)
	return str
end

function M.AssertStateReason(str)
	assert(str)
	assert(type(str) == "string", "Expected StateReason to be of type 'string'")
end

--  
function M.StateReason(str)
	M.AssertStateReason(str)
	return str
end

function M.AssertLoadBalancerStateEnum(str)
	assert(str)
	assert(type(str) == "string", "Expected LoadBalancerStateEnum to be of type 'string'")
end

--  
function M.LoadBalancerStateEnum(str)
	M.AssertLoadBalancerStateEnum(str)
	return str
end

function M.AssertVpcId(str)
	assert(str)
	assert(type(str) == "string", "Expected VpcId to be of type 'string'")
end

--  
function M.VpcId(str)
	M.AssertVpcId(str)
	return str
end

function M.AssertTargetGroupName(str)
	assert(str)
	assert(type(str) == "string", "Expected TargetGroupName to be of type 'string'")
end

--  
function M.TargetGroupName(str)
	M.AssertTargetGroupName(str)
	return str
end

function M.AssertProtocolEnum(str)
	assert(str)
	assert(type(str) == "string", "Expected ProtocolEnum to be of type 'string'")
end

--  
function M.ProtocolEnum(str)
	M.AssertProtocolEnum(str)
	return str
end

function M.AssertHealthCheckThresholdCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected HealthCheckThresholdCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10, "Expected integer to be max 10")
	assert(integer >= 2, "Expected integer to be min 2")
end

function M.HealthCheckThresholdCount(integer)
	M.AssertHealthCheckThresholdCount(integer)
	return integer
end

function M.AssertHealthCheckIntervalSeconds(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected HealthCheckIntervalSeconds to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 300, "Expected integer to be max 300")
	assert(integer >= 5, "Expected integer to be min 5")
end

function M.HealthCheckIntervalSeconds(integer)
	M.AssertHealthCheckIntervalSeconds(integer)
	return integer
end

function M.AssertPageSize(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PageSize to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 400, "Expected integer to be max 400")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.PageSize(integer)
	M.AssertPageSize(integer)
	return integer
end

function M.AssertCipherPriority(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected CipherPriority to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.CipherPriority(integer)
	M.AssertCipherPriority(integer)
	return integer
end

function M.AssertHealthCheckTimeoutSeconds(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected HealthCheckTimeoutSeconds to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 60, "Expected integer to be max 60")
	assert(integer >= 2, "Expected integer to be min 2")
end

function M.HealthCheckTimeoutSeconds(integer)
	M.AssertHealthCheckTimeoutSeconds(integer)
	return integer
end

function M.AssertRulePriority(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected RulePriority to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 99999, "Expected integer to be max 99999")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.RulePriority(integer)
	M.AssertRulePriority(integer)
	return integer
end

function M.AssertPort(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Port to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 65535, "Expected integer to be max 65535")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.Port(integer)
	M.AssertPort(integer)
	return integer
end

function M.AssertIsDefault(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected IsDefault to be of type 'boolean'")
end

function M.IsDefault(boolean)
	M.AssertIsDefault(boolean)
	return boolean
end

function M.AssertCreatedTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected CreatedTime to be of type 'string'")
end

function M.CreatedTime(timestamp)
	M.AssertCreatedTime(timestamp)
	return timestamp
end

function M.AssertSslProtocols(list)
	assert(list)
	assert(type(list) == "table", "Expected SslProtocols to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertSslProtocol(v)
	end
end

--  
-- List of SslProtocol objects
function M.SslProtocols(list)
	M.AssertSslProtocols(list)
	return list
end

function M.AssertTargetGroups(list)
	assert(list)
	assert(type(list) == "table", "Expected TargetGroups to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTargetGroup(v)
	end
end

--  
-- List of TargetGroup objects
function M.TargetGroups(list)
	M.AssertTargetGroups(list)
	return list
end

function M.AssertResourceArns(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceArns to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertResourceArn(v)
	end
end

--  
-- List of ResourceArn objects
function M.ResourceArns(list)
	M.AssertResourceArns(list)
	return list
end

function M.AssertTargetHealthDescriptions(list)
	assert(list)
	assert(type(list) == "table", "Expected TargetHealthDescriptions to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTargetHealthDescription(v)
	end
end

--  
-- List of TargetHealthDescription objects
function M.TargetHealthDescriptions(list)
	M.AssertTargetHealthDescriptions(list)
	return list
end

function M.AssertLoadBalancers(list)
	assert(list)
	assert(type(list) == "table", "Expected LoadBalancers to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertLoadBalancer(v)
	end
end

--  
-- List of LoadBalancer objects
function M.LoadBalancers(list)
	M.AssertLoadBalancers(list)
	return list
end

function M.AssertRuleConditionList(list)
	assert(list)
	assert(type(list) == "table", "Expected RuleConditionList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertRuleCondition(v)
	end
end

--  
-- List of RuleCondition objects
function M.RuleConditionList(list)
	M.AssertRuleConditionList(list)
	return list
end

function M.AssertListeners(list)
	assert(list)
	assert(type(list) == "table", "Expected Listeners to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertListener(v)
	end
end

--  
-- List of Listener objects
function M.Listeners(list)
	M.AssertListeners(list)
	return list
end

function M.AssertTagDescriptions(list)
	assert(list)
	assert(type(list) == "table", "Expected TagDescriptions to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTagDescription(v)
	end
end

--  
-- List of TagDescription objects
function M.TagDescriptions(list)
	M.AssertTagDescriptions(list)
	return list
end

function M.AssertTargetGroupArns(list)
	assert(list)
	assert(type(list) == "table", "Expected TargetGroupArns to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTargetGroupArn(v)
	end
end

--  
-- List of TargetGroupArn objects
function M.TargetGroupArns(list)
	M.AssertTargetGroupArns(list)
	return list
end

function M.AssertRuleArns(list)
	assert(list)
	assert(type(list) == "table", "Expected RuleArns to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertRuleArn(v)
	end
end

--  
-- List of RuleArn objects
function M.RuleArns(list)
	M.AssertRuleArns(list)
	return list
end

function M.AssertLoadBalancerNames(list)
	assert(list)
	assert(type(list) == "table", "Expected LoadBalancerNames to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertLoadBalancerName(v)
	end
end

--  
-- List of LoadBalancerName objects
function M.LoadBalancerNames(list)
	M.AssertLoadBalancerNames(list)
	return list
end

function M.AssertListenerArns(list)
	assert(list)
	assert(type(list) == "table", "Expected ListenerArns to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertListenerArn(v)
	end
end

--  
-- List of ListenerArn objects
function M.ListenerArns(list)
	M.AssertListenerArns(list)
	return list
end

function M.AssertSubnets(list)
	assert(list)
	assert(type(list) == "table", "Expected Subnets to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertSubnetId(v)
	end
end

--  
-- List of SubnetId objects
function M.Subnets(list)
	M.AssertSubnets(list)
	return list
end

function M.AssertSslPolicies(list)
	assert(list)
	assert(type(list) == "table", "Expected SslPolicies to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertSslPolicy(v)
	end
end

--  
-- List of SslPolicy objects
function M.SslPolicies(list)
	M.AssertSslPolicies(list)
	return list
end

function M.AssertTargetGroupAttributes(list)
	assert(list)
	assert(type(list) == "table", "Expected TargetGroupAttributes to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTargetGroupAttribute(v)
	end
end

--  
-- List of TargetGroupAttribute objects
function M.TargetGroupAttributes(list)
	M.AssertTargetGroupAttributes(list)
	return list
end

function M.AssertRules(list)
	assert(list)
	assert(type(list) == "table", "Expected Rules to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertRule(v)
	end
end

--  
-- List of Rule objects
function M.Rules(list)
	M.AssertRules(list)
	return list
end

function M.AssertSslPolicyNames(list)
	assert(list)
	assert(type(list) == "table", "Expected SslPolicyNames to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertSslPolicyName(v)
	end
end

--  
-- List of SslPolicyName objects
function M.SslPolicyNames(list)
	M.AssertSslPolicyNames(list)
	return list
end

function M.AssertTagKeys(list)
	assert(list)
	assert(type(list) == "table", "Expected TagKeys to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTagKey(v)
	end
end

--  
-- List of TagKey objects
function M.TagKeys(list)
	M.AssertTagKeys(list)
	return list
end

function M.AssertListOfString(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfString to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertStringValue(v)
	end
end

--  
-- List of StringValue objects
function M.ListOfString(list)
	M.AssertListOfString(list)
	return list
end

function M.AssertLimits(list)
	assert(list)
	assert(type(list) == "table", "Expected Limits to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertLimit(v)
	end
end

--  
-- List of Limit objects
function M.Limits(list)
	M.AssertLimits(list)
	return list
end

function M.AssertLoadBalancerAttributes(list)
	assert(list)
	assert(type(list) == "table", "Expected LoadBalancerAttributes to be of type ''table")
	assert(#list <= 20, "Expected list to be contain 20 elements")
	for _,v in ipairs(list) do
		M.AssertLoadBalancerAttribute(v)
	end
end

--  
-- List of LoadBalancerAttribute objects
function M.LoadBalancerAttributes(list)
	M.AssertLoadBalancerAttributes(list)
	return list
end

function M.AssertLoadBalancerArns(list)
	assert(list)
	assert(type(list) == "table", "Expected LoadBalancerArns to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertLoadBalancerArn(v)
	end
end

--  
-- List of LoadBalancerArn objects
function M.LoadBalancerArns(list)
	M.AssertLoadBalancerArns(list)
	return list
end

function M.AssertCertificateList(list)
	assert(list)
	assert(type(list) == "table", "Expected CertificateList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertCertificate(v)
	end
end

--  
-- List of Certificate objects
function M.CertificateList(list)
	M.AssertCertificateList(list)
	return list
end

function M.AssertCiphers(list)
	assert(list)
	assert(type(list) == "table", "Expected Ciphers to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertCipher(v)
	end
end

--  
-- List of Cipher objects
function M.Ciphers(list)
	M.AssertCiphers(list)
	return list
end

function M.AssertSecurityGroups(list)
	assert(list)
	assert(type(list) == "table", "Expected SecurityGroups to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertSecurityGroupId(v)
	end
end

--  
-- List of SecurityGroupId objects
function M.SecurityGroups(list)
	M.AssertSecurityGroups(list)
	return list
end

function M.AssertTargetGroupNames(list)
	assert(list)
	assert(type(list) == "table", "Expected TargetGroupNames to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTargetGroupName(v)
	end
end

--  
-- List of TargetGroupName objects
function M.TargetGroupNames(list)
	M.AssertTargetGroupNames(list)
	return list
end

function M.AssertTargetDescriptions(list)
	assert(list)
	assert(type(list) == "table", "Expected TargetDescriptions to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTargetDescription(v)
	end
end

--  
-- List of TargetDescription objects
function M.TargetDescriptions(list)
	M.AssertTargetDescriptions(list)
	return list
end

function M.AssertActions(list)
	assert(list)
	assert(type(list) == "table", "Expected Actions to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAction(v)
	end
end

--  
-- List of Action objects
function M.Actions(list)
	M.AssertActions(list)
	return list
end

function M.AssertRulePriorityList(list)
	assert(list)
	assert(type(list) == "table", "Expected RulePriorityList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertRulePriorityPair(v)
	end
end

--  
-- List of RulePriorityPair objects
function M.RulePriorityList(list)
	M.AssertRulePriorityList(list)
	return list
end

function M.AssertAvailabilityZones(list)
	assert(list)
	assert(type(list) == "table", "Expected AvailabilityZones to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAvailabilityZone(v)
	end
end

--  
-- List of AvailabilityZone objects
function M.AvailabilityZones(list)
	M.AssertAvailabilityZones(list)
	return list
end

function M.AssertTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagList to be of type ''table")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertTag(v)
	end
end

--  
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
			return "elasticloadbalancing.amazonaws.com"
		end
	end
	local ss = { "elasticloadbalancing" }
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
--- RegisterTargets
-- @param RegisterTargetsInput
-- @param cb Callback function accepting two args: response, error_message
function M.RegisterTargetsAsync(RegisterTargetsInput, cb)
	assert(RegisterTargetsInput, "You must provide a RegisterTargetsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".RegisterTargets",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RegisterTargetsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeSSLPolicies
-- @param DescribeSSLPoliciesInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeSSLPoliciesAsync(DescribeSSLPoliciesInput, cb)
	assert(DescribeSSLPoliciesInput, "You must provide a DescribeSSLPoliciesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeSSLPolicies",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeSSLPoliciesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SetSecurityGroups
-- @param SetSecurityGroupsInput
-- @param cb Callback function accepting two args: response, error_message
function M.SetSecurityGroupsAsync(SetSecurityGroupsInput, cb)
	assert(SetSecurityGroupsInput, "You must provide a SetSecurityGroupsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".SetSecurityGroups",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SetSecurityGroupsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteListener
-- @param DeleteListenerInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteListenerAsync(DeleteListenerInput, cb)
	assert(DeleteListenerInput, "You must provide a DeleteListenerInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteListener",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteListenerInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ModifyTargetGroup
-- @param ModifyTargetGroupInput
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyTargetGroupAsync(ModifyTargetGroupInput, cb)
	assert(ModifyTargetGroupInput, "You must provide a ModifyTargetGroupInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ModifyTargetGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ModifyTargetGroupInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateRule
-- @param CreateRuleInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateRuleAsync(CreateRuleInput, cb)
	assert(CreateRuleInput, "You must provide a CreateRuleInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateRule",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateRuleInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SetRulePriorities
-- @param SetRulePrioritiesInput
-- @param cb Callback function accepting two args: response, error_message
function M.SetRulePrioritiesAsync(SetRulePrioritiesInput, cb)
	assert(SetRulePrioritiesInput, "You must provide a SetRulePrioritiesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".SetRulePriorities",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SetRulePrioritiesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ModifyTargetGroupAttributes
-- @param ModifyTargetGroupAttributesInput
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyTargetGroupAttributesAsync(ModifyTargetGroupAttributesInput, cb)
	assert(ModifyTargetGroupAttributesInput, "You must provide a ModifyTargetGroupAttributesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ModifyTargetGroupAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ModifyTargetGroupAttributesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeLoadBalancerAttributes
-- @param DescribeLoadBalancerAttributesInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeLoadBalancerAttributesAsync(DescribeLoadBalancerAttributesInput, cb)
	assert(DescribeLoadBalancerAttributesInput, "You must provide a DescribeLoadBalancerAttributesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeLoadBalancerAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeLoadBalancerAttributesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SetIpAddressType
-- @param SetIpAddressTypeInput
-- @param cb Callback function accepting two args: response, error_message
function M.SetIpAddressTypeAsync(SetIpAddressTypeInput, cb)
	assert(SetIpAddressTypeInput, "You must provide a SetIpAddressTypeInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".SetIpAddressType",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SetIpAddressTypeInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ModifyListener
-- @param ModifyListenerInput
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyListenerAsync(ModifyListenerInput, cb)
	assert(ModifyListenerInput, "You must provide a ModifyListenerInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ModifyListener",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ModifyListenerInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteLoadBalancer
-- @param DeleteLoadBalancerInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteLoadBalancerAsync(DeleteLoadBalancerInput, cb)
	assert(DeleteLoadBalancerInput, "You must provide a DeleteLoadBalancerInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteLoadBalancer",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteLoadBalancerInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteRule
-- @param DeleteRuleInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteRuleAsync(DeleteRuleInput, cb)
	assert(DeleteRuleInput, "You must provide a DeleteRuleInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteRule",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteRuleInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteTargetGroup
-- @param DeleteTargetGroupInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteTargetGroupAsync(DeleteTargetGroupInput, cb)
	assert(DeleteTargetGroupInput, "You must provide a DeleteTargetGroupInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteTargetGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteTargetGroupInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeTargetGroupAttributes
-- @param DescribeTargetGroupAttributesInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeTargetGroupAttributesAsync(DescribeTargetGroupAttributesInput, cb)
	assert(DescribeTargetGroupAttributesInput, "You must provide a DescribeTargetGroupAttributesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeTargetGroupAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeTargetGroupAttributesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeLoadBalancers
-- @param DescribeLoadBalancersInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeLoadBalancersAsync(DescribeLoadBalancersInput, cb)
	assert(DescribeLoadBalancersInput, "You must provide a DescribeLoadBalancersInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeLoadBalancers",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeLoadBalancersInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeListeners
-- @param DescribeListenersInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeListenersAsync(DescribeListenersInput, cb)
	assert(DescribeListenersInput, "You must provide a DescribeListenersInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeListeners",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeListenersInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RemoveTags
-- @param RemoveTagsInput
-- @param cb Callback function accepting two args: response, error_message
function M.RemoveTagsAsync(RemoveTagsInput, cb)
	assert(RemoveTagsInput, "You must provide a RemoveTagsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".RemoveTags",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RemoveTagsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateListener
-- @param CreateListenerInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateListenerAsync(CreateListenerInput, cb)
	assert(CreateListenerInput, "You must provide a CreateListenerInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateListener",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateListenerInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SetSubnets
-- @param SetSubnetsInput
-- @param cb Callback function accepting two args: response, error_message
function M.SetSubnetsAsync(SetSubnetsInput, cb)
	assert(SetSubnetsInput, "You must provide a SetSubnetsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".SetSubnets",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SetSubnetsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeTags
-- @param DescribeTagsInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeTagsAsync(DescribeTagsInput, cb)
	assert(DescribeTagsInput, "You must provide a DescribeTagsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeTags",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeTagsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ModifyRule
-- @param ModifyRuleInput
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyRuleAsync(ModifyRuleInput, cb)
	assert(ModifyRuleInput, "You must provide a ModifyRuleInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ModifyRule",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ModifyRuleInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateTargetGroup
-- @param CreateTargetGroupInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateTargetGroupAsync(CreateTargetGroupInput, cb)
	assert(CreateTargetGroupInput, "You must provide a CreateTargetGroupInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateTargetGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateTargetGroupInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AddTags
-- @param AddTagsInput
-- @param cb Callback function accepting two args: response, error_message
function M.AddTagsAsync(AddTagsInput, cb)
	assert(AddTagsInput, "You must provide a AddTagsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".AddTags",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AddTagsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeTargetGroups
-- @param DescribeTargetGroupsInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeTargetGroupsAsync(DescribeTargetGroupsInput, cb)
	assert(DescribeTargetGroupsInput, "You must provide a DescribeTargetGroupsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeTargetGroups",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeTargetGroupsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeregisterTargets
-- @param DeregisterTargetsInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeregisterTargetsAsync(DeregisterTargetsInput, cb)
	assert(DeregisterTargetsInput, "You must provide a DeregisterTargetsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeregisterTargets",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeregisterTargetsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ModifyLoadBalancerAttributes
-- @param ModifyLoadBalancerAttributesInput
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyLoadBalancerAttributesAsync(ModifyLoadBalancerAttributesInput, cb)
	assert(ModifyLoadBalancerAttributesInput, "You must provide a ModifyLoadBalancerAttributesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ModifyLoadBalancerAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ModifyLoadBalancerAttributesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeRules
-- @param DescribeRulesInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeRulesAsync(DescribeRulesInput, cb)
	assert(DescribeRulesInput, "You must provide a DescribeRulesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeRules",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeRulesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeTargetHealth
-- @param DescribeTargetHealthInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeTargetHealthAsync(DescribeTargetHealthInput, cb)
	assert(DescribeTargetHealthInput, "You must provide a DescribeTargetHealthInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeTargetHealth",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeTargetHealthInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateLoadBalancer
-- @param CreateLoadBalancerInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateLoadBalancerAsync(CreateLoadBalancerInput, cb)
	assert(CreateLoadBalancerInput, "You must provide a CreateLoadBalancerInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateLoadBalancer",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateLoadBalancerInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeAccountLimits
-- @param DescribeAccountLimitsInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeAccountLimitsAsync(DescribeAccountLimitsInput, cb)
	assert(DescribeAccountLimitsInput, "You must provide a DescribeAccountLimitsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeAccountLimits",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeAccountLimitsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
