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

local keys = {}
local asserts = {}

keys.DescribeTargetGroupAttributesInput = { ["TargetGroupArn"] = true, nil }

function asserts.AssertDescribeTargetGroupAttributesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTargetGroupAttributesInput to be of type 'table'")
	assert(struct["TargetGroupArn"], "Expected key TargetGroupArn to exist in table")
	if struct["TargetGroupArn"] then asserts.AssertTargetGroupArn(struct["TargetGroupArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTargetGroupAttributesInput[k], "DescribeTargetGroupAttributesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTargetGroupAttributesInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TargetGroupArn [TargetGroupArn] <p>The Amazon Resource Name (ARN) of the target group.</p>
-- Required key: TargetGroupArn
-- @return DescribeTargetGroupAttributesInput structure as a key-value pair table
function M.DescribeTargetGroupAttributesInput(args)
	assert(args, "You must provide an argument table when creating DescribeTargetGroupAttributesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TargetGroupArn"] = args["TargetGroupArn"],
	}
	asserts.AssertDescribeTargetGroupAttributesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TooManyCertificatesException = { nil }

function asserts.AssertTooManyCertificatesException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyCertificatesException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.TooManyCertificatesException[k], "TooManyCertificatesException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyCertificatesException
-- <p>You've reached the limit on the number of certificates per load balancer.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return TooManyCertificatesException structure as a key-value pair table
function M.TooManyCertificatesException(args)
	assert(args, "You must provide an argument table when creating TooManyCertificatesException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertTooManyCertificatesException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DuplicateTargetGroupNameException = { nil }

function asserts.AssertDuplicateTargetGroupNameException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DuplicateTargetGroupNameException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DuplicateTargetGroupNameException[k], "DuplicateTargetGroupNameException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DuplicateTargetGroupNameException
-- <p>A target group with the specified name already exists.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DuplicateTargetGroupNameException structure as a key-value pair table
function M.DuplicateTargetGroupNameException(args)
	assert(args, "You must provide an argument table when creating DuplicateTargetGroupNameException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDuplicateTargetGroupNameException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidLoadBalancerActionException = { nil }

function asserts.AssertInvalidLoadBalancerActionException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidLoadBalancerActionException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidLoadBalancerActionException[k], "InvalidLoadBalancerActionException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidLoadBalancerActionException
-- <p>The requested action is not valid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidLoadBalancerActionException structure as a key-value pair table
function M.InvalidLoadBalancerActionException(args)
	assert(args, "You must provide an argument table when creating InvalidLoadBalancerActionException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidLoadBalancerActionException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DuplicateTagKeysException = { nil }

function asserts.AssertDuplicateTagKeysException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DuplicateTagKeysException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DuplicateTagKeysException[k], "DuplicateTagKeysException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DuplicateTagKeysException
-- <p>A tag key was specified more than once.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DuplicateTagKeysException structure as a key-value pair table
function M.DuplicateTagKeysException(args)
	assert(args, "You must provide an argument table when creating DuplicateTagKeysException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDuplicateTagKeysException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListenerNotFoundException = { nil }

function asserts.AssertListenerNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListenerNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ListenerNotFoundException[k], "ListenerNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListenerNotFoundException
-- <p>The specified listener does not exist.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ListenerNotFoundException structure as a key-value pair table
function M.ListenerNotFoundException(args)
	assert(args, "You must provide an argument table when creating ListenerNotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertListenerNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeLoadBalancersInput = { ["Marker"] = true, ["LoadBalancerArns"] = true, ["Names"] = true, ["PageSize"] = true, nil }

function asserts.AssertDescribeLoadBalancersInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLoadBalancersInput to be of type 'table'")
	if struct["Marker"] then asserts.AssertMarker(struct["Marker"]) end
	if struct["LoadBalancerArns"] then asserts.AssertLoadBalancerArns(struct["LoadBalancerArns"]) end
	if struct["Names"] then asserts.AssertLoadBalancerNames(struct["Names"]) end
	if struct["PageSize"] then asserts.AssertPageSize(struct["PageSize"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeLoadBalancersInput[k], "DescribeLoadBalancersInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLoadBalancersInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [Marker] <p>The marker for the next set of results. (You received this marker from a previous call.)</p>
-- * LoadBalancerArns [LoadBalancerArns] <p>The Amazon Resource Names (ARN) of the load balancers. You can specify up to 20 load balancers in a single call.</p>
-- * Names [LoadBalancerNames] <p>The names of the load balancers.</p>
-- * PageSize [PageSize] <p>The maximum number of results to return with this call.</p>
-- @return DescribeLoadBalancersInput structure as a key-value pair table
function M.DescribeLoadBalancersInput(args)
	assert(args, "You must provide an argument table when creating DescribeLoadBalancersInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["LoadBalancerArns"] = args["LoadBalancerArns"],
		["Names"] = args["Names"],
		["PageSize"] = args["PageSize"],
	}
	asserts.AssertDescribeLoadBalancersInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeLoadBalancerAttributesOutput = { ["Attributes"] = true, nil }

function asserts.AssertDescribeLoadBalancerAttributesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLoadBalancerAttributesOutput to be of type 'table'")
	if struct["Attributes"] then asserts.AssertLoadBalancerAttributes(struct["Attributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeLoadBalancerAttributesOutput[k], "DescribeLoadBalancerAttributesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLoadBalancerAttributesOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Attributes [LoadBalancerAttributes] <p>Information about the load balancer attributes.</p>
-- @return DescribeLoadBalancerAttributesOutput structure as a key-value pair table
function M.DescribeLoadBalancerAttributesOutput(args)
	assert(args, "You must provide an argument table when creating DescribeLoadBalancerAttributesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Attributes"] = args["Attributes"],
	}
	asserts.AssertDescribeLoadBalancerAttributesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SubnetNotFoundException = { nil }

function asserts.AssertSubnetNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubnetNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SubnetNotFoundException[k], "SubnetNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubnetNotFoundException
-- <p>The specified subnet does not exist.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return SubnetNotFoundException structure as a key-value pair table
function M.SubnetNotFoundException(args)
	assert(args, "You must provide an argument table when creating SubnetNotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertSubnetNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeregisterTargetsInput = { ["TargetGroupArn"] = true, ["Targets"] = true, nil }

function asserts.AssertDeregisterTargetsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterTargetsInput to be of type 'table'")
	assert(struct["TargetGroupArn"], "Expected key TargetGroupArn to exist in table")
	assert(struct["Targets"], "Expected key Targets to exist in table")
	if struct["TargetGroupArn"] then asserts.AssertTargetGroupArn(struct["TargetGroupArn"]) end
	if struct["Targets"] then asserts.AssertTargetDescriptions(struct["Targets"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeregisterTargetsInput[k], "DeregisterTargetsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterTargetsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TargetGroupArn [TargetGroupArn] <p>The Amazon Resource Name (ARN) of the target group.</p>
-- * Targets [TargetDescriptions] <p>The targets. If you specified a port override when you registered a target, you must specify both the target ID and the port when you deregister it.</p>
-- Required key: TargetGroupArn
-- Required key: Targets
-- @return DeregisterTargetsInput structure as a key-value pair table
function M.DeregisterTargetsInput(args)
	assert(args, "You must provide an argument table when creating DeregisterTargetsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TargetGroupArn"] = args["TargetGroupArn"],
		["Targets"] = args["Targets"],
	}
	asserts.AssertDeregisterTargetsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RulePriorityPair = { ["Priority"] = true, ["RuleArn"] = true, nil }

function asserts.AssertRulePriorityPair(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RulePriorityPair to be of type 'table'")
	if struct["Priority"] then asserts.AssertRulePriority(struct["Priority"]) end
	if struct["RuleArn"] then asserts.AssertRuleArn(struct["RuleArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.RulePriorityPair[k], "RulePriorityPair contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RulePriorityPair
-- <p>Information about the priorities for the rules for a listener.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Priority [RulePriority] <p>The rule priority.</p>
-- * RuleArn [RuleArn] <p>The Amazon Resource Name (ARN) of the rule.</p>
-- @return RulePriorityPair structure as a key-value pair table
function M.RulePriorityPair(args)
	assert(args, "You must provide an argument table when creating RulePriorityPair")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Priority"] = args["Priority"],
		["RuleArn"] = args["RuleArn"],
	}
	asserts.AssertRulePriorityPair(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteTargetGroupOutput = { nil }

function asserts.AssertDeleteTargetGroupOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTargetGroupOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteTargetGroupOutput[k], "DeleteTargetGroupOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTargetGroupOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteTargetGroupOutput structure as a key-value pair table
function M.DeleteTargetGroupOutput(args)
	assert(args, "You must provide an argument table when creating DeleteTargetGroupOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteTargetGroupOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DuplicateLoadBalancerNameException = { nil }

function asserts.AssertDuplicateLoadBalancerNameException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DuplicateLoadBalancerNameException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DuplicateLoadBalancerNameException[k], "DuplicateLoadBalancerNameException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DuplicateLoadBalancerNameException
-- <p>A load balancer with the specified name already exists.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DuplicateLoadBalancerNameException structure as a key-value pair table
function M.DuplicateLoadBalancerNameException(args)
	assert(args, "You must provide an argument table when creating DuplicateLoadBalancerNameException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDuplicateLoadBalancerNameException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidConfigurationRequestException = { nil }

function asserts.AssertInvalidConfigurationRequestException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidConfigurationRequestException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidConfigurationRequestException[k], "InvalidConfigurationRequestException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidConfigurationRequestException
-- <p>The requested configuration is not valid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidConfigurationRequestException structure as a key-value pair table
function M.InvalidConfigurationRequestException(args)
	assert(args, "You must provide an argument table when creating InvalidConfigurationRequestException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidConfigurationRequestException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyTargetGroupAttributesInput = { ["Attributes"] = true, ["TargetGroupArn"] = true, nil }

function asserts.AssertModifyTargetGroupAttributesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyTargetGroupAttributesInput to be of type 'table'")
	assert(struct["TargetGroupArn"], "Expected key TargetGroupArn to exist in table")
	assert(struct["Attributes"], "Expected key Attributes to exist in table")
	if struct["Attributes"] then asserts.AssertTargetGroupAttributes(struct["Attributes"]) end
	if struct["TargetGroupArn"] then asserts.AssertTargetGroupArn(struct["TargetGroupArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyTargetGroupAttributesInput[k], "ModifyTargetGroupAttributesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyTargetGroupAttributesInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Attributes [TargetGroupAttributes] <p>The attributes.</p>
-- * TargetGroupArn [TargetGroupArn] <p>The Amazon Resource Name (ARN) of the target group.</p>
-- Required key: TargetGroupArn
-- Required key: Attributes
-- @return ModifyTargetGroupAttributesInput structure as a key-value pair table
function M.ModifyTargetGroupAttributesInput(args)
	assert(args, "You must provide an argument table when creating ModifyTargetGroupAttributesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Attributes"] = args["Attributes"],
		["TargetGroupArn"] = args["TargetGroupArn"],
	}
	asserts.AssertModifyTargetGroupAttributesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Cipher = { ["Priority"] = true, ["Name"] = true, nil }

function asserts.AssertCipher(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Cipher to be of type 'table'")
	if struct["Priority"] then asserts.AssertCipherPriority(struct["Priority"]) end
	if struct["Name"] then asserts.AssertCipherName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.Cipher[k], "Cipher contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Cipher
-- <p>Information about a cipher used in a policy.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Priority [CipherPriority] <p>The priority of the cipher.</p>
-- * Name [CipherName] <p>The name of the cipher.</p>
-- @return Cipher structure as a key-value pair table
function M.Cipher(args)
	assert(args, "You must provide an argument table when creating Cipher")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Priority"] = args["Priority"],
		["Name"] = args["Name"],
	}
	asserts.AssertCipher(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RuleCondition = { ["Field"] = true, ["Values"] = true, nil }

function asserts.AssertRuleCondition(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RuleCondition to be of type 'table'")
	if struct["Field"] then asserts.AssertConditionFieldName(struct["Field"]) end
	if struct["Values"] then asserts.AssertListOfString(struct["Values"]) end
	for k,_ in pairs(struct) do
		assert(keys.RuleCondition[k], "RuleCondition contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RuleCondition
-- <p>Information about a condition for a rule.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Field [ConditionFieldName] <p>The name of the field. The possible values are <code>host-header</code> and <code>path-pattern</code>.</p>
-- * Values [ListOfString] <p>The condition value.</p> <p>If the field name is <code>host-header</code>, you can specify a single host name (for example, my.example.com). A host name is case insensitive, can be up to 128 characters in length, and can contain any of the following characters. You can include up to three wildcard characters.</p> <ul> <li> <p>A-Z, a-z, 0-9</p> </li> <li> <p>- .</p> </li> <li> <p>* (matches 0 or more characters)</p> </li> <li> <p>? (matches exactly 1 character)</p> </li> </ul> <p>If the field name is <code>path-pattern</code>, you can specify a single path pattern (for example, /img/*). A path pattern is case-sensitive, can be up to 128 characters in length, and can contain any of the following characters. You can include up to three wildcard characters.</p> <ul> <li> <p>A-Z, a-z, 0-9</p> </li> <li> <p>_ - . $ / ~ " ' @ : +</p> </li> <li> <p>&amp; (using &amp;amp;)</p> </li> <li> <p>* (matches 0 or more characters)</p> </li> <li> <p>? (matches exactly 1 character)</p> </li> </ul>
-- @return RuleCondition structure as a key-value pair table
function M.RuleCondition(args)
	assert(args, "You must provide an argument table when creating RuleCondition")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Field"] = args["Field"],
		["Values"] = args["Values"],
	}
	asserts.AssertRuleCondition(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeSSLPoliciesOutput = { ["NextMarker"] = true, ["SslPolicies"] = true, nil }

function asserts.AssertDescribeSSLPoliciesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSSLPoliciesOutput to be of type 'table'")
	if struct["NextMarker"] then asserts.AssertMarker(struct["NextMarker"]) end
	if struct["SslPolicies"] then asserts.AssertSslPolicies(struct["SslPolicies"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeSSLPoliciesOutput[k], "DescribeSSLPoliciesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSSLPoliciesOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextMarker [Marker] <p>The marker to use when requesting the next set of results. If there are no additional results, the string is empty.</p>
-- * SslPolicies [SslPolicies] <p>Information about the policies.</p>
-- @return DescribeSSLPoliciesOutput structure as a key-value pair table
function M.DescribeSSLPoliciesOutput(args)
	assert(args, "You must provide an argument table when creating DescribeSSLPoliciesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextMarker"] = args["NextMarker"],
		["SslPolicies"] = args["SslPolicies"],
	}
	asserts.AssertDescribeSSLPoliciesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AddListenerCertificatesOutput = { ["Certificates"] = true, nil }

function asserts.AssertAddListenerCertificatesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddListenerCertificatesOutput to be of type 'table'")
	if struct["Certificates"] then asserts.AssertCertificateList(struct["Certificates"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddListenerCertificatesOutput[k], "AddListenerCertificatesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddListenerCertificatesOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Certificates [CertificateList] <p>Information about the certificates.</p>
-- @return AddListenerCertificatesOutput structure as a key-value pair table
function M.AddListenerCertificatesOutput(args)
	assert(args, "You must provide an argument table when creating AddListenerCertificatesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Certificates"] = args["Certificates"],
	}
	asserts.AssertAddListenerCertificatesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeTagsInput = { ["ResourceArns"] = true, nil }

function asserts.AssertDescribeTagsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTagsInput to be of type 'table'")
	assert(struct["ResourceArns"], "Expected key ResourceArns to exist in table")
	if struct["ResourceArns"] then asserts.AssertResourceArns(struct["ResourceArns"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTagsInput[k], "DescribeTagsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTagsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceArns [ResourceArns] <p>The Amazon Resource Names (ARN) of the resources.</p>
-- Required key: ResourceArns
-- @return DescribeTagsInput structure as a key-value pair table
function M.DescribeTagsInput(args)
	assert(args, "You must provide an argument table when creating DescribeTagsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceArns"] = args["ResourceArns"],
	}
	asserts.AssertDescribeTagsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SetSecurityGroupsOutput = { ["SecurityGroupIds"] = true, nil }

function asserts.AssertSetSecurityGroupsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetSecurityGroupsOutput to be of type 'table'")
	if struct["SecurityGroupIds"] then asserts.AssertSecurityGroups(struct["SecurityGroupIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetSecurityGroupsOutput[k], "SetSecurityGroupsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetSecurityGroupsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SecurityGroupIds [SecurityGroups] <p>The IDs of the security groups associated with the load balancer.</p>
-- @return SetSecurityGroupsOutput structure as a key-value pair table
function M.SetSecurityGroupsOutput(args)
	assert(args, "You must provide an argument table when creating SetSecurityGroupsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SecurityGroupIds"] = args["SecurityGroupIds"],
	}
	asserts.AssertSetSecurityGroupsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeAccountLimitsInput = { ["Marker"] = true, ["PageSize"] = true, nil }

function asserts.AssertDescribeAccountLimitsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAccountLimitsInput to be of type 'table'")
	if struct["Marker"] then asserts.AssertMarker(struct["Marker"]) end
	if struct["PageSize"] then asserts.AssertPageSize(struct["PageSize"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAccountLimitsInput[k], "DescribeAccountLimitsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAccountLimitsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [Marker] <p>The marker for the next set of results. (You received this marker from a previous call.)</p>
-- * PageSize [PageSize] <p>The maximum number of results to return with this call.</p>
-- @return DescribeAccountLimitsInput structure as a key-value pair table
function M.DescribeAccountLimitsInput(args)
	assert(args, "You must provide an argument table when creating DescribeAccountLimitsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["PageSize"] = args["PageSize"],
	}
	asserts.AssertDescribeAccountLimitsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Limit = { ["Max"] = true, ["Name"] = true, nil }

function asserts.AssertLimit(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Limit to be of type 'table'")
	if struct["Max"] then asserts.AssertMax(struct["Max"]) end
	if struct["Name"] then asserts.AssertName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.Limit[k], "Limit contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Limit
-- <p>Information about an Elastic Load Balancing resource limit for your AWS account.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Max [Max] <p>The maximum value of the limit.</p>
-- * Name [Name] <p>The name of the limit. The possible values are:</p> <ul> <li> <p>application-load-balancers</p> </li> <li> <p>listeners-per-application-load-balancer</p> </li> <li> <p>listeners-per-network-load-balancer</p> </li> <li> <p>network-load-balancers</p> </li> <li> <p>rules-per-application-load-balancer</p> </li> <li> <p>target-groups</p> </li> <li> <p>targets-per-application-load-balancer</p> </li> <li> <p>targets-per-availability-zone-per-network-load-balancer</p> </li> <li> <p>targets-per-network-load-balancer</p> </li> </ul>
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
		["Name"] = args["Name"],
	}
	asserts.AssertLimit(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteRuleInput = { ["RuleArn"] = true, nil }

function asserts.AssertDeleteRuleInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRuleInput to be of type 'table'")
	assert(struct["RuleArn"], "Expected key RuleArn to exist in table")
	if struct["RuleArn"] then asserts.AssertRuleArn(struct["RuleArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteRuleInput[k], "DeleteRuleInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRuleInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RuleArn [RuleArn] <p>The Amazon Resource Name (ARN) of the rule.</p>
-- Required key: RuleArn
-- @return DeleteRuleInput structure as a key-value pair table
function M.DeleteRuleInput(args)
	assert(args, "You must provide an argument table when creating DeleteRuleInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RuleArn"] = args["RuleArn"],
	}
	asserts.AssertDeleteRuleInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TargetGroup = { ["HealthCheckPath"] = true, ["HealthCheckIntervalSeconds"] = true, ["VpcId"] = true, ["Protocol"] = true, ["HealthCheckTimeoutSeconds"] = true, ["TargetType"] = true, ["HealthCheckProtocol"] = true, ["LoadBalancerArns"] = true, ["UnhealthyThresholdCount"] = true, ["HealthyThresholdCount"] = true, ["TargetGroupArn"] = true, ["Matcher"] = true, ["HealthCheckPort"] = true, ["Port"] = true, ["TargetGroupName"] = true, nil }

function asserts.AssertTargetGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TargetGroup to be of type 'table'")
	if struct["HealthCheckPath"] then asserts.AssertPath(struct["HealthCheckPath"]) end
	if struct["HealthCheckIntervalSeconds"] then asserts.AssertHealthCheckIntervalSeconds(struct["HealthCheckIntervalSeconds"]) end
	if struct["VpcId"] then asserts.AssertVpcId(struct["VpcId"]) end
	if struct["Protocol"] then asserts.AssertProtocolEnum(struct["Protocol"]) end
	if struct["HealthCheckTimeoutSeconds"] then asserts.AssertHealthCheckTimeoutSeconds(struct["HealthCheckTimeoutSeconds"]) end
	if struct["TargetType"] then asserts.AssertTargetTypeEnum(struct["TargetType"]) end
	if struct["HealthCheckProtocol"] then asserts.AssertProtocolEnum(struct["HealthCheckProtocol"]) end
	if struct["LoadBalancerArns"] then asserts.AssertLoadBalancerArns(struct["LoadBalancerArns"]) end
	if struct["UnhealthyThresholdCount"] then asserts.AssertHealthCheckThresholdCount(struct["UnhealthyThresholdCount"]) end
	if struct["HealthyThresholdCount"] then asserts.AssertHealthCheckThresholdCount(struct["HealthyThresholdCount"]) end
	if struct["TargetGroupArn"] then asserts.AssertTargetGroupArn(struct["TargetGroupArn"]) end
	if struct["Matcher"] then asserts.AssertMatcher(struct["Matcher"]) end
	if struct["HealthCheckPort"] then asserts.AssertHealthCheckPort(struct["HealthCheckPort"]) end
	if struct["Port"] then asserts.AssertPort(struct["Port"]) end
	if struct["TargetGroupName"] then asserts.AssertTargetGroupName(struct["TargetGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.TargetGroup[k], "TargetGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TargetGroup
-- <p>Information about a target group.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HealthCheckPath [Path] <p>The destination for the health check request.</p>
-- * HealthCheckIntervalSeconds [HealthCheckIntervalSeconds] <p>The approximate amount of time, in seconds, between health checks of an individual target.</p>
-- * VpcId [VpcId] <p>The ID of the VPC for the targets.</p>
-- * Protocol [ProtocolEnum] <p>The protocol to use for routing traffic to the targets.</p>
-- * HealthCheckTimeoutSeconds [HealthCheckTimeoutSeconds] <p>The amount of time, in seconds, during which no response means a failed health check.</p>
-- * TargetType [TargetTypeEnum] <p>The type of target that you must specify when registering targets with this target group. The possible values are <code>instance</code> (targets are specified by instance ID) or <code>ip</code> (targets are specified by IP address).</p>
-- * HealthCheckProtocol [ProtocolEnum] <p>The protocol to use to connect with the target.</p>
-- * LoadBalancerArns [LoadBalancerArns] <p>The Amazon Resource Names (ARN) of the load balancers that route traffic to this target group.</p>
-- * UnhealthyThresholdCount [HealthCheckThresholdCount] <p>The number of consecutive health check failures required before considering the target unhealthy.</p>
-- * HealthyThresholdCount [HealthCheckThresholdCount] <p>The number of consecutive health checks successes required before considering an unhealthy target healthy.</p>
-- * TargetGroupArn [TargetGroupArn] <p>The Amazon Resource Name (ARN) of the target group.</p>
-- * Matcher [Matcher] <p>The HTTP codes to use when checking for a successful response from a target.</p>
-- * HealthCheckPort [HealthCheckPort] <p>The port to use to connect with the target.</p>
-- * Port [Port] <p>The port on which the targets are listening.</p>
-- * TargetGroupName [TargetGroupName] <p>The name of the target group.</p>
-- @return TargetGroup structure as a key-value pair table
function M.TargetGroup(args)
	assert(args, "You must provide an argument table when creating TargetGroup")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HealthCheckPath"] = args["HealthCheckPath"],
		["HealthCheckIntervalSeconds"] = args["HealthCheckIntervalSeconds"],
		["VpcId"] = args["VpcId"],
		["Protocol"] = args["Protocol"],
		["HealthCheckTimeoutSeconds"] = args["HealthCheckTimeoutSeconds"],
		["TargetType"] = args["TargetType"],
		["HealthCheckProtocol"] = args["HealthCheckProtocol"],
		["LoadBalancerArns"] = args["LoadBalancerArns"],
		["UnhealthyThresholdCount"] = args["UnhealthyThresholdCount"],
		["HealthyThresholdCount"] = args["HealthyThresholdCount"],
		["TargetGroupArn"] = args["TargetGroupArn"],
		["Matcher"] = args["Matcher"],
		["HealthCheckPort"] = args["HealthCheckPort"],
		["Port"] = args["Port"],
		["TargetGroupName"] = args["TargetGroupName"],
	}
	asserts.AssertTargetGroup(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SslPolicy = { ["SslProtocols"] = true, ["Ciphers"] = true, ["Name"] = true, nil }

function asserts.AssertSslPolicy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SslPolicy to be of type 'table'")
	if struct["SslProtocols"] then asserts.AssertSslProtocols(struct["SslProtocols"]) end
	if struct["Ciphers"] then asserts.AssertCiphers(struct["Ciphers"]) end
	if struct["Name"] then asserts.AssertSslPolicyName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.SslPolicy[k], "SslPolicy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SslPolicy
-- <p>Information about a policy used for SSL negotiation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SslProtocols [SslProtocols] <p>The protocols.</p>
-- * Ciphers [Ciphers] <p>The ciphers.</p>
-- * Name [SslPolicyName] <p>The name of the policy.</p>
-- @return SslPolicy structure as a key-value pair table
function M.SslPolicy(args)
	assert(args, "You must provide an argument table when creating SslPolicy")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SslProtocols"] = args["SslProtocols"],
		["Ciphers"] = args["Ciphers"],
		["Name"] = args["Name"],
	}
	asserts.AssertSslPolicy(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeListenerCertificatesOutput = { ["Certificates"] = true, ["NextMarker"] = true, nil }

function asserts.AssertDescribeListenerCertificatesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeListenerCertificatesOutput to be of type 'table'")
	if struct["Certificates"] then asserts.AssertCertificateList(struct["Certificates"]) end
	if struct["NextMarker"] then asserts.AssertMarker(struct["NextMarker"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeListenerCertificatesOutput[k], "DescribeListenerCertificatesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeListenerCertificatesOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Certificates [CertificateList] <p>Information about the certificates.</p>
-- * NextMarker [Marker] <p>The marker to use when requesting the next set of results. If there are no additional results, the string is empty.</p>
-- @return DescribeListenerCertificatesOutput structure as a key-value pair table
function M.DescribeListenerCertificatesOutput(args)
	assert(args, "You must provide an argument table when creating DescribeListenerCertificatesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Certificates"] = args["Certificates"],
		["NextMarker"] = args["NextMarker"],
	}
	asserts.AssertDescribeListenerCertificatesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidSubnetException = { nil }

function asserts.AssertInvalidSubnetException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidSubnetException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidSubnetException[k], "InvalidSubnetException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidSubnetException
-- <p>The specified subnet is out of available addresses.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidSubnetException structure as a key-value pair table
function M.InvalidSubnetException(args)
	assert(args, "You must provide an argument table when creating InvalidSubnetException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidSubnetException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TagDescription = { ["ResourceArn"] = true, ["Tags"] = true, nil }

function asserts.AssertTagDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagDescription to be of type 'table'")
	if struct["ResourceArn"] then asserts.AssertResourceArn(struct["ResourceArn"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.TagDescription[k], "TagDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagDescription
-- <p>The tags associated with a resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceArn [ResourceArn] <p>The Amazon Resource Name (ARN) of the resource.</p>
-- * Tags [TagList] <p>Information about the tags.</p>
-- @return TagDescription structure as a key-value pair table
function M.TagDescription(args)
	assert(args, "You must provide an argument table when creating TagDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceArn"] = args["ResourceArn"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertTagDescription(all_args)
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
	if struct["Value"] then asserts.AssertTagValue(struct["Value"]) end
	if struct["Key"] then asserts.AssertTagKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.Tag[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- <p>Information about a tag.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [TagValue] <p>The value of the tag.</p>
-- * Key [TagKey] <p>The key of the tag.</p>
-- Required key: Key
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

keys.DescribeTargetGroupAttributesOutput = { ["Attributes"] = true, nil }

function asserts.AssertDescribeTargetGroupAttributesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTargetGroupAttributesOutput to be of type 'table'")
	if struct["Attributes"] then asserts.AssertTargetGroupAttributes(struct["Attributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTargetGroupAttributesOutput[k], "DescribeTargetGroupAttributesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTargetGroupAttributesOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Attributes [TargetGroupAttributes] <p>Information about the target group attributes</p>
-- @return DescribeTargetGroupAttributesOutput structure as a key-value pair table
function M.DescribeTargetGroupAttributesOutput(args)
	assert(args, "You must provide an argument table when creating DescribeTargetGroupAttributesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Attributes"] = args["Attributes"],
	}
	asserts.AssertDescribeTargetGroupAttributesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CertificateNotFoundException = { nil }

function asserts.AssertCertificateNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CertificateNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CertificateNotFoundException[k], "CertificateNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CertificateNotFoundException
-- <p>The specified certificate does not exist.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CertificateNotFoundException structure as a key-value pair table
function M.CertificateNotFoundException(args)
	assert(args, "You must provide an argument table when creating CertificateNotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertCertificateNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateLoadBalancerInput = { ["IpAddressType"] = true, ["Subnets"] = true, ["Name"] = true, ["Tags"] = true, ["SubnetMappings"] = true, ["SecurityGroups"] = true, ["Scheme"] = true, ["Type"] = true, nil }

function asserts.AssertCreateLoadBalancerInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateLoadBalancerInput to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["IpAddressType"] then asserts.AssertIpAddressType(struct["IpAddressType"]) end
	if struct["Subnets"] then asserts.AssertSubnets(struct["Subnets"]) end
	if struct["Name"] then asserts.AssertLoadBalancerName(struct["Name"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["SubnetMappings"] then asserts.AssertSubnetMappings(struct["SubnetMappings"]) end
	if struct["SecurityGroups"] then asserts.AssertSecurityGroups(struct["SecurityGroups"]) end
	if struct["Scheme"] then asserts.AssertLoadBalancerSchemeEnum(struct["Scheme"]) end
	if struct["Type"] then asserts.AssertLoadBalancerTypeEnum(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateLoadBalancerInput[k], "CreateLoadBalancerInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateLoadBalancerInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IpAddressType [IpAddressType] <p>[Application Load Balancers] The type of IP addresses used by the subnets for your load balancer. The possible values are <code>ipv4</code> (for IPv4 addresses) and <code>dualstack</code> (for IPv4 and IPv6 addresses). Internal load balancers must use <code>ipv4</code>.</p>
-- * Subnets [Subnets] <p>The IDs of the public subnets. You can specify only one subnet per Availability Zone. You must specify either subnets or subnet mappings.</p> <p>[Application Load Balancers] You must specify subnets from at least two Availability Zones.</p> <p>[Network Load Balancers] You can specify subnets from one or more Availability Zones.</p>
-- * Name [LoadBalancerName] <p>The name of the load balancer.</p> <p>This name must be unique per region per account, can have a maximum of 32 characters, must contain only alphanumeric characters or hyphens, must not begin or end with a hyphen, and must not begin with "internal-".</p>
-- * Tags [TagList] <p>One or more tags to assign to the load balancer.</p>
-- * SubnetMappings [SubnetMappings] <p>The IDs of the public subnets. You can specify only one subnet per Availability Zone. You must specify either subnets or subnet mappings.</p> <p>[Application Load Balancers] You must specify subnets from at least two Availability Zones. You cannot specify Elastic IP addresses for your subnets.</p> <p>[Network Load Balancers] You can specify subnets from one or more Availability Zones. You can specify one Elastic IP address per subnet.</p>
-- * SecurityGroups [SecurityGroups] <p>[Application Load Balancers] The IDs of the security groups for the load balancer.</p>
-- * Scheme [LoadBalancerSchemeEnum] <p>The nodes of an Internet-facing load balancer have public IP addresses. The DNS name of an Internet-facing load balancer is publicly resolvable to the public IP addresses of the nodes. Therefore, Internet-facing load balancers can route requests from clients over the internet.</p> <p>The nodes of an internal load balancer have only private IP addresses. The DNS name of an internal load balancer is publicly resolvable to the private IP addresses of the nodes. Therefore, internal load balancers can only route requests from clients with access to the VPC for the load balancer.</p> <p>The default is an Internet-facing load balancer.</p>
-- * Type [LoadBalancerTypeEnum] <p>The type of load balancer. The default is <code>application</code>.</p>
-- Required key: Name
-- @return CreateLoadBalancerInput structure as a key-value pair table
function M.CreateLoadBalancerInput(args)
	assert(args, "You must provide an argument table when creating CreateLoadBalancerInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IpAddressType"] = args["IpAddressType"],
		["Subnets"] = args["Subnets"],
		["Name"] = args["Name"],
		["Tags"] = args["Tags"],
		["SubnetMappings"] = args["SubnetMappings"],
		["SecurityGroups"] = args["SecurityGroups"],
		["Scheme"] = args["Scheme"],
		["Type"] = args["Type"],
	}
	asserts.AssertCreateLoadBalancerInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SetIpAddressTypeInput = { ["IpAddressType"] = true, ["LoadBalancerArn"] = true, nil }

function asserts.AssertSetIpAddressTypeInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetIpAddressTypeInput to be of type 'table'")
	assert(struct["LoadBalancerArn"], "Expected key LoadBalancerArn to exist in table")
	assert(struct["IpAddressType"], "Expected key IpAddressType to exist in table")
	if struct["IpAddressType"] then asserts.AssertIpAddressType(struct["IpAddressType"]) end
	if struct["LoadBalancerArn"] then asserts.AssertLoadBalancerArn(struct["LoadBalancerArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetIpAddressTypeInput[k], "SetIpAddressTypeInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetIpAddressTypeInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IpAddressType [IpAddressType] <p>The IP address type. The possible values are <code>ipv4</code> (for IPv4 addresses) and <code>dualstack</code> (for IPv4 and IPv6 addresses). Internal load balancers must use <code>ipv4</code>.</p>
-- * LoadBalancerArn [LoadBalancerArn] <p>The Amazon Resource Name (ARN) of the load balancer.</p>
-- Required key: LoadBalancerArn
-- Required key: IpAddressType
-- @return SetIpAddressTypeInput structure as a key-value pair table
function M.SetIpAddressTypeInput(args)
	assert(args, "You must provide an argument table when creating SetIpAddressTypeInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IpAddressType"] = args["IpAddressType"],
		["LoadBalancerArn"] = args["LoadBalancerArn"],
	}
	asserts.AssertSetIpAddressTypeInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AvailabilityZoneNotSupportedException = { nil }

function asserts.AssertAvailabilityZoneNotSupportedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AvailabilityZoneNotSupportedException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AvailabilityZoneNotSupportedException[k], "AvailabilityZoneNotSupportedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AvailabilityZoneNotSupportedException
-- <p>The specified Availability Zone is not supported.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AvailabilityZoneNotSupportedException structure as a key-value pair table
function M.AvailabilityZoneNotSupportedException(args)
	assert(args, "You must provide an argument table when creating AvailabilityZoneNotSupportedException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAvailabilityZoneNotSupportedException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeregisterTargetsOutput = { nil }

function asserts.AssertDeregisterTargetsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterTargetsOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeregisterTargetsOutput[k], "DeregisterTargetsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterTargetsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeregisterTargetsOutput structure as a key-value pair table
function M.DeregisterTargetsOutput(args)
	assert(args, "You must provide an argument table when creating DeregisterTargetsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeregisterTargetsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeListenerCertificatesInput = { ["Marker"] = true, ["PageSize"] = true, ["ListenerArn"] = true, nil }

function asserts.AssertDescribeListenerCertificatesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeListenerCertificatesInput to be of type 'table'")
	assert(struct["ListenerArn"], "Expected key ListenerArn to exist in table")
	if struct["Marker"] then asserts.AssertMarker(struct["Marker"]) end
	if struct["PageSize"] then asserts.AssertPageSize(struct["PageSize"]) end
	if struct["ListenerArn"] then asserts.AssertListenerArn(struct["ListenerArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeListenerCertificatesInput[k], "DescribeListenerCertificatesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeListenerCertificatesInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [Marker] <p>The marker for the next set of results. (You received this marker from a previous call.)</p>
-- * PageSize [PageSize] <p>The maximum number of results to return with this call.</p>
-- * ListenerArn [ListenerArn] <p>The Amazon Resource Names (ARN) of the listener.</p>
-- Required key: ListenerArn
-- @return DescribeListenerCertificatesInput structure as a key-value pair table
function M.DescribeListenerCertificatesInput(args)
	assert(args, "You must provide an argument table when creating DescribeListenerCertificatesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["PageSize"] = args["PageSize"],
		["ListenerArn"] = args["ListenerArn"],
	}
	asserts.AssertDescribeListenerCertificatesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidSchemeException = { nil }

function asserts.AssertInvalidSchemeException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidSchemeException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidSchemeException[k], "InvalidSchemeException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidSchemeException
-- <p>The requested scheme is not valid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidSchemeException structure as a key-value pair table
function M.InvalidSchemeException(args)
	assert(args, "You must provide an argument table when creating InvalidSchemeException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidSchemeException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TooManyLoadBalancersException = { nil }

function asserts.AssertTooManyLoadBalancersException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyLoadBalancersException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.TooManyLoadBalancersException[k], "TooManyLoadBalancersException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyLoadBalancersException
-- <p>You've reached the limit on the number of load balancers for your AWS account.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return TooManyLoadBalancersException structure as a key-value pair table
function M.TooManyLoadBalancersException(args)
	assert(args, "You must provide an argument table when creating TooManyLoadBalancersException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertTooManyLoadBalancersException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AllocationIdNotFoundException = { nil }

function asserts.AssertAllocationIdNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AllocationIdNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AllocationIdNotFoundException[k], "AllocationIdNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AllocationIdNotFoundException
-- <p>The specified allocation ID does not exist.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AllocationIdNotFoundException structure as a key-value pair table
function M.AllocationIdNotFoundException(args)
	assert(args, "You must provide an argument table when creating AllocationIdNotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAllocationIdNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Listener = { ["Protocol"] = true, ["DefaultActions"] = true, ["SslPolicy"] = true, ["Certificates"] = true, ["LoadBalancerArn"] = true, ["Port"] = true, ["ListenerArn"] = true, nil }

function asserts.AssertListener(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Listener to be of type 'table'")
	if struct["Protocol"] then asserts.AssertProtocolEnum(struct["Protocol"]) end
	if struct["DefaultActions"] then asserts.AssertActions(struct["DefaultActions"]) end
	if struct["SslPolicy"] then asserts.AssertSslPolicyName(struct["SslPolicy"]) end
	if struct["Certificates"] then asserts.AssertCertificateList(struct["Certificates"]) end
	if struct["LoadBalancerArn"] then asserts.AssertLoadBalancerArn(struct["LoadBalancerArn"]) end
	if struct["Port"] then asserts.AssertPort(struct["Port"]) end
	if struct["ListenerArn"] then asserts.AssertListenerArn(struct["ListenerArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.Listener[k], "Listener contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Listener
-- <p>Information about a listener.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Protocol [ProtocolEnum] <p>The protocol for connections from clients to the load balancer.</p>
-- * DefaultActions [Actions] <p>The default actions for the listener.</p>
-- * SslPolicy [SslPolicyName] <p>The security policy that defines which ciphers and protocols are supported. The default is the current predefined security policy.</p>
-- * Certificates [CertificateList] <p>The SSL server certificate. You must provide a certificate if the protocol is HTTPS.</p>
-- * LoadBalancerArn [LoadBalancerArn] <p>The Amazon Resource Name (ARN) of the load balancer.</p>
-- * Port [Port] <p>The port on which the load balancer is listening.</p>
-- * ListenerArn [ListenerArn] <p>The Amazon Resource Name (ARN) of the listener.</p>
-- @return Listener structure as a key-value pair table
function M.Listener(args)
	assert(args, "You must provide an argument table when creating Listener")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Protocol"] = args["Protocol"],
		["DefaultActions"] = args["DefaultActions"],
		["SslPolicy"] = args["SslPolicy"],
		["Certificates"] = args["Certificates"],
		["LoadBalancerArn"] = args["LoadBalancerArn"],
		["Port"] = args["Port"],
		["ListenerArn"] = args["ListenerArn"],
	}
	asserts.AssertListener(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AuthenticateCognitoActionConfig = { ["UserPoolDomain"] = true, ["UserPoolArn"] = true, ["AuthenticationRequestExtraParams"] = true, ["SessionTimeout"] = true, ["Scope"] = true, ["SessionCookieName"] = true, ["UserPoolClientId"] = true, ["OnUnauthenticatedRequest"] = true, nil }

function asserts.AssertAuthenticateCognitoActionConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AuthenticateCognitoActionConfig to be of type 'table'")
	assert(struct["UserPoolArn"], "Expected key UserPoolArn to exist in table")
	assert(struct["UserPoolClientId"], "Expected key UserPoolClientId to exist in table")
	assert(struct["UserPoolDomain"], "Expected key UserPoolDomain to exist in table")
	if struct["UserPoolDomain"] then asserts.AssertAuthenticateCognitoActionUserPoolDomain(struct["UserPoolDomain"]) end
	if struct["UserPoolArn"] then asserts.AssertAuthenticateCognitoActionUserPoolArn(struct["UserPoolArn"]) end
	if struct["AuthenticationRequestExtraParams"] then asserts.AssertAuthenticateCognitoActionAuthenticationRequestExtraParams(struct["AuthenticationRequestExtraParams"]) end
	if struct["SessionTimeout"] then asserts.AssertAuthenticateCognitoActionSessionTimeout(struct["SessionTimeout"]) end
	if struct["Scope"] then asserts.AssertAuthenticateCognitoActionScope(struct["Scope"]) end
	if struct["SessionCookieName"] then asserts.AssertAuthenticateCognitoActionSessionCookieName(struct["SessionCookieName"]) end
	if struct["UserPoolClientId"] then asserts.AssertAuthenticateCognitoActionUserPoolClientId(struct["UserPoolClientId"]) end
	if struct["OnUnauthenticatedRequest"] then asserts.AssertAuthenticateCognitoActionConditionalBehaviorEnum(struct["OnUnauthenticatedRequest"]) end
	for k,_ in pairs(struct) do
		assert(keys.AuthenticateCognitoActionConfig[k], "AuthenticateCognitoActionConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AuthenticateCognitoActionConfig
-- <p>Request parameters to use when integrating with Amazon Cognito to authenticate users.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserPoolDomain [AuthenticateCognitoActionUserPoolDomain] <p>The domain prefix or fully-qualified domain name of the Amazon Cognito user pool.</p>
-- * UserPoolArn [AuthenticateCognitoActionUserPoolArn] <p>The Amazon Resource Name (ARN) of the Amazon Cognito user pool.</p>
-- * AuthenticationRequestExtraParams [AuthenticateCognitoActionAuthenticationRequestExtraParams] <p>The query parameters (up to 10) to include in the redirect request to the authorization endpoint.</p>
-- * SessionTimeout [AuthenticateCognitoActionSessionTimeout] <p>The maximum duration of the authentication session, in seconds. The default is 604800 seconds (7 days).</p>
-- * Scope [AuthenticateCognitoActionScope] <p>The set of user claims to be requested from the IdP. The default is <code>openid</code>.</p> <p>To verify which scope values your IdP supports and how to separate multiple values, see the documentation for your IdP.</p>
-- * SessionCookieName [AuthenticateCognitoActionSessionCookieName] <p>The name of the cookie used to maintain session information. The default is AWSELBAuthSessionCookie.</p>
-- * UserPoolClientId [AuthenticateCognitoActionUserPoolClientId] <p>The ID of the Amazon Cognito user pool client.</p>
-- * OnUnauthenticatedRequest [AuthenticateCognitoActionConditionalBehaviorEnum] <p>The behavior if the user is not authenticated. The following are possible values:</p> <ul> <li> <p>deny<code/> - Return an HTTP 401 Unauthorized error.</p> </li> <li> <p>allow<code/> - Allow the request to be forwarded to the target.</p> </li> <li> <p>authenticate<code/> - Redirect the request to the IdP authorization endpoint. This is the default value.</p> </li> </ul>
-- Required key: UserPoolArn
-- Required key: UserPoolClientId
-- Required key: UserPoolDomain
-- @return AuthenticateCognitoActionConfig structure as a key-value pair table
function M.AuthenticateCognitoActionConfig(args)
	assert(args, "You must provide an argument table when creating AuthenticateCognitoActionConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserPoolDomain"] = args["UserPoolDomain"],
		["UserPoolArn"] = args["UserPoolArn"],
		["AuthenticationRequestExtraParams"] = args["AuthenticationRequestExtraParams"],
		["SessionTimeout"] = args["SessionTimeout"],
		["Scope"] = args["Scope"],
		["SessionCookieName"] = args["SessionCookieName"],
		["UserPoolClientId"] = args["UserPoolClientId"],
		["OnUnauthenticatedRequest"] = args["OnUnauthenticatedRequest"],
	}
	asserts.AssertAuthenticateCognitoActionConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TooManyRulesException = { nil }

function asserts.AssertTooManyRulesException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyRulesException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.TooManyRulesException[k], "TooManyRulesException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyRulesException
-- <p>You've reached the limit on the number of rules per load balancer.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return TooManyRulesException structure as a key-value pair table
function M.TooManyRulesException(args)
	assert(args, "You must provide an argument table when creating TooManyRulesException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertTooManyRulesException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TargetHealth = { ["State"] = true, ["Reason"] = true, ["Description"] = true, nil }

function asserts.AssertTargetHealth(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TargetHealth to be of type 'table'")
	if struct["State"] then asserts.AssertTargetHealthStateEnum(struct["State"]) end
	if struct["Reason"] then asserts.AssertTargetHealthReasonEnum(struct["Reason"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.TargetHealth[k], "TargetHealth contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TargetHealth
-- <p>Information about the current health of a target.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * State [TargetHealthStateEnum] <p>The state of the target.</p>
-- * Reason [TargetHealthReasonEnum] <p>The reason code. If the target state is <code>healthy</code>, a reason code is not provided.</p> <p>If the target state is <code>initial</code>, the reason code can be one of the following values:</p> <ul> <li> <p> <code>Elb.RegistrationInProgress</code> - The target is in the process of being registered with the load balancer.</p> </li> <li> <p> <code>Elb.InitialHealthChecking</code> - The load balancer is still sending the target the minimum number of health checks required to determine its health status.</p> </li> </ul> <p>If the target state is <code>unhealthy</code>, the reason code can be one of the following values:</p> <ul> <li> <p> <code>Target.ResponseCodeMismatch</code> - The health checks did not return an expected HTTP code.</p> </li> <li> <p> <code>Target.Timeout</code> - The health check requests timed out.</p> </li> <li> <p> <code>Target.FailedHealthChecks</code> - The health checks failed because the connection to the target timed out, the target response was malformed, or the target failed the health check for an unknown reason.</p> </li> <li> <p> <code>Elb.InternalError</code> - The health checks failed due to an internal error.</p> </li> </ul> <p>If the target state is <code>unused</code>, the reason code can be one of the following values:</p> <ul> <li> <p> <code>Target.NotRegistered</code> - The target is not registered with the target group.</p> </li> <li> <p> <code>Target.NotInUse</code> - The target group is not used by any load balancer or the target is in an Availability Zone that is not enabled for its load balancer.</p> </li> <li> <p> <code>Target.IpUnusable</code> - The target IP address is reserved for use by a load balancer.</p> </li> <li> <p> <code>Target.InvalidState</code> - The target is in the stopped or terminated state.</p> </li> </ul> <p>If the target state is <code>draining</code>, the reason code can be the following value:</p> <ul> <li> <p> <code>Target.DeregistrationInProgress</code> - The target is in the process of being deregistered and the deregistration delay period has not expired.</p> </li> </ul>
-- * Description [Description] <p>A description of the target health that provides additional details. If the state is <code>healthy</code>, a description is not provided.</p>
-- @return TargetHealth structure as a key-value pair table
function M.TargetHealth(args)
	assert(args, "You must provide an argument table when creating TargetHealth")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["State"] = args["State"],
		["Reason"] = args["Reason"],
		["Description"] = args["Description"],
	}
	asserts.AssertTargetHealth(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeLoadBalancerAttributesInput = { ["LoadBalancerArn"] = true, nil }

function asserts.AssertDescribeLoadBalancerAttributesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLoadBalancerAttributesInput to be of type 'table'")
	assert(struct["LoadBalancerArn"], "Expected key LoadBalancerArn to exist in table")
	if struct["LoadBalancerArn"] then asserts.AssertLoadBalancerArn(struct["LoadBalancerArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeLoadBalancerAttributesInput[k], "DescribeLoadBalancerAttributesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLoadBalancerAttributesInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LoadBalancerArn [LoadBalancerArn] <p>The Amazon Resource Name (ARN) of the load balancer.</p>
-- Required key: LoadBalancerArn
-- @return DescribeLoadBalancerAttributesInput structure as a key-value pair table
function M.DescribeLoadBalancerAttributesInput(args)
	assert(args, "You must provide an argument table when creating DescribeLoadBalancerAttributesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LoadBalancerArn"] = args["LoadBalancerArn"],
	}
	asserts.AssertDescribeLoadBalancerAttributesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UnsupportedProtocolException = { nil }

function asserts.AssertUnsupportedProtocolException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsupportedProtocolException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UnsupportedProtocolException[k], "UnsupportedProtocolException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsupportedProtocolException
-- <p>The specified protocol is not supported.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UnsupportedProtocolException structure as a key-value pair table
function M.UnsupportedProtocolException(args)
	assert(args, "You must provide an argument table when creating UnsupportedProtocolException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUnsupportedProtocolException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyRuleOutput = { ["Rules"] = true, nil }

function asserts.AssertModifyRuleOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyRuleOutput to be of type 'table'")
	if struct["Rules"] then asserts.AssertRules(struct["Rules"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyRuleOutput[k], "ModifyRuleOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyRuleOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Rules [Rules] <p>Information about the modified rule.</p>
-- @return ModifyRuleOutput structure as a key-value pair table
function M.ModifyRuleOutput(args)
	assert(args, "You must provide an argument table when creating ModifyRuleOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Rules"] = args["Rules"],
	}
	asserts.AssertModifyRuleOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RemoveListenerCertificatesInput = { ["Certificates"] = true, ["ListenerArn"] = true, nil }

function asserts.AssertRemoveListenerCertificatesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveListenerCertificatesInput to be of type 'table'")
	assert(struct["ListenerArn"], "Expected key ListenerArn to exist in table")
	assert(struct["Certificates"], "Expected key Certificates to exist in table")
	if struct["Certificates"] then asserts.AssertCertificateList(struct["Certificates"]) end
	if struct["ListenerArn"] then asserts.AssertListenerArn(struct["ListenerArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.RemoveListenerCertificatesInput[k], "RemoveListenerCertificatesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveListenerCertificatesInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Certificates [CertificateList] <p>The certificate to remove. You can specify one certificate per call.</p>
-- * ListenerArn [ListenerArn] <p>The Amazon Resource Name (ARN) of the listener.</p>
-- Required key: ListenerArn
-- Required key: Certificates
-- @return RemoveListenerCertificatesInput structure as a key-value pair table
function M.RemoveListenerCertificatesInput(args)
	assert(args, "You must provide an argument table when creating RemoveListenerCertificatesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Certificates"] = args["Certificates"],
		["ListenerArn"] = args["ListenerArn"],
	}
	asserts.AssertRemoveListenerCertificatesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteRuleOutput = { nil }

function asserts.AssertDeleteRuleOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRuleOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteRuleOutput[k], "DeleteRuleOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRuleOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteRuleOutput structure as a key-value pair table
function M.DeleteRuleOutput(args)
	assert(args, "You must provide an argument table when creating DeleteRuleOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteRuleOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AvailabilityZone = { ["SubnetId"] = true, ["LoadBalancerAddresses"] = true, ["ZoneName"] = true, nil }

function asserts.AssertAvailabilityZone(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AvailabilityZone to be of type 'table'")
	if struct["SubnetId"] then asserts.AssertSubnetId(struct["SubnetId"]) end
	if struct["LoadBalancerAddresses"] then asserts.AssertLoadBalancerAddresses(struct["LoadBalancerAddresses"]) end
	if struct["ZoneName"] then asserts.AssertZoneName(struct["ZoneName"]) end
	for k,_ in pairs(struct) do
		assert(keys.AvailabilityZone[k], "AvailabilityZone contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AvailabilityZone
-- <p>Information about an Availability Zone.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SubnetId [SubnetId] <p>The ID of the subnet.</p>
-- * LoadBalancerAddresses [LoadBalancerAddresses] <p>[Network Load Balancers] The static IP address.</p>
-- * ZoneName [ZoneName] <p>The name of the Availability Zone.</p>
-- @return AvailabilityZone structure as a key-value pair table
function M.AvailabilityZone(args)
	assert(args, "You must provide an argument table when creating AvailabilityZone")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SubnetId"] = args["SubnetId"],
		["LoadBalancerAddresses"] = args["LoadBalancerAddresses"],
		["ZoneName"] = args["ZoneName"],
	}
	asserts.AssertAvailabilityZone(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TooManyRegistrationsForTargetIdException = { nil }

function asserts.AssertTooManyRegistrationsForTargetIdException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyRegistrationsForTargetIdException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.TooManyRegistrationsForTargetIdException[k], "TooManyRegistrationsForTargetIdException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyRegistrationsForTargetIdException
-- <p>You've reached the limit on the number of times a target can be registered with a load balancer.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return TooManyRegistrationsForTargetIdException structure as a key-value pair table
function M.TooManyRegistrationsForTargetIdException(args)
	assert(args, "You must provide an argument table when creating TooManyRegistrationsForTargetIdException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertTooManyRegistrationsForTargetIdException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>A specified resource is in use.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ResourceInUseException structure as a key-value pair table
function M.ResourceInUseException(args)
	assert(args, "You must provide an argument table when creating ResourceInUseException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertResourceInUseException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeLoadBalancersOutput = { ["LoadBalancers"] = true, ["NextMarker"] = true, nil }

function asserts.AssertDescribeLoadBalancersOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLoadBalancersOutput to be of type 'table'")
	if struct["LoadBalancers"] then asserts.AssertLoadBalancers(struct["LoadBalancers"]) end
	if struct["NextMarker"] then asserts.AssertMarker(struct["NextMarker"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeLoadBalancersOutput[k], "DescribeLoadBalancersOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLoadBalancersOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LoadBalancers [LoadBalancers] <p>Information about the load balancers.</p>
-- * NextMarker [Marker] <p>The marker to use when requesting the next set of results. If there are no additional results, the string is empty.</p>
-- @return DescribeLoadBalancersOutput structure as a key-value pair table
function M.DescribeLoadBalancersOutput(args)
	assert(args, "You must provide an argument table when creating DescribeLoadBalancersOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LoadBalancers"] = args["LoadBalancers"],
		["NextMarker"] = args["NextMarker"],
	}
	asserts.AssertDescribeLoadBalancersOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.IncompatibleProtocolsException = { nil }

function asserts.AssertIncompatibleProtocolsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IncompatibleProtocolsException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.IncompatibleProtocolsException[k], "IncompatibleProtocolsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IncompatibleProtocolsException
-- <p>The specified configuration is not valid with this protocol.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return IncompatibleProtocolsException structure as a key-value pair table
function M.IncompatibleProtocolsException(args)
	assert(args, "You must provide an argument table when creating IncompatibleProtocolsException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertIncompatibleProtocolsException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RemoveTagsOutput = { nil }

function asserts.AssertRemoveTagsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveTagsOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.RemoveTagsOutput[k], "RemoveTagsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveTagsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return RemoveTagsOutput structure as a key-value pair table
function M.RemoveTagsOutput(args)
	assert(args, "You must provide an argument table when creating RemoveTagsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertRemoveTagsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TooManyTargetGroupsException = { nil }

function asserts.AssertTooManyTargetGroupsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyTargetGroupsException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.TooManyTargetGroupsException[k], "TooManyTargetGroupsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyTargetGroupsException
-- <p>You've reached the limit on the number of target groups for your AWS account.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return TooManyTargetGroupsException structure as a key-value pair table
function M.TooManyTargetGroupsException(args)
	assert(args, "You must provide an argument table when creating TooManyTargetGroupsException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertTooManyTargetGroupsException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TargetGroupNotFoundException = { nil }

function asserts.AssertTargetGroupNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TargetGroupNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.TargetGroupNotFoundException[k], "TargetGroupNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TargetGroupNotFoundException
-- <p>The specified target group does not exist.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return TargetGroupNotFoundException structure as a key-value pair table
function M.TargetGroupNotFoundException(args)
	assert(args, "You must provide an argument table when creating TargetGroupNotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertTargetGroupNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateLoadBalancerOutput = { ["LoadBalancers"] = true, nil }

function asserts.AssertCreateLoadBalancerOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateLoadBalancerOutput to be of type 'table'")
	if struct["LoadBalancers"] then asserts.AssertLoadBalancers(struct["LoadBalancers"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateLoadBalancerOutput[k], "CreateLoadBalancerOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateLoadBalancerOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LoadBalancers [LoadBalancers] <p>Information about the load balancer.</p>
-- @return CreateLoadBalancerOutput structure as a key-value pair table
function M.CreateLoadBalancerOutput(args)
	assert(args, "You must provide an argument table when creating CreateLoadBalancerOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LoadBalancers"] = args["LoadBalancers"],
	}
	asserts.AssertCreateLoadBalancerOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeTargetHealthInput = { ["TargetGroupArn"] = true, ["Targets"] = true, nil }

function asserts.AssertDescribeTargetHealthInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTargetHealthInput to be of type 'table'")
	assert(struct["TargetGroupArn"], "Expected key TargetGroupArn to exist in table")
	if struct["TargetGroupArn"] then asserts.AssertTargetGroupArn(struct["TargetGroupArn"]) end
	if struct["Targets"] then asserts.AssertTargetDescriptions(struct["Targets"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTargetHealthInput[k], "DescribeTargetHealthInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTargetHealthInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TargetGroupArn [TargetGroupArn] <p>The Amazon Resource Name (ARN) of the target group.</p>
-- * Targets [TargetDescriptions] <p>The targets.</p>
-- Required key: TargetGroupArn
-- @return DescribeTargetHealthInput structure as a key-value pair table
function M.DescribeTargetHealthInput(args)
	assert(args, "You must provide an argument table when creating DescribeTargetHealthInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TargetGroupArn"] = args["TargetGroupArn"],
		["Targets"] = args["Targets"],
	}
	asserts.AssertDescribeTargetHealthInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Certificate = { ["CertificateArn"] = true, ["IsDefault"] = true, nil }

function asserts.AssertCertificate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Certificate to be of type 'table'")
	if struct["CertificateArn"] then asserts.AssertCertificateArn(struct["CertificateArn"]) end
	if struct["IsDefault"] then asserts.AssertDefault(struct["IsDefault"]) end
	for k,_ in pairs(struct) do
		assert(keys.Certificate[k], "Certificate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Certificate
-- <p>Information about an SSL server certificate.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CertificateArn [CertificateArn] <p>The Amazon Resource Name (ARN) of the certificate.</p>
-- * IsDefault [Default] <p>Indicates whether the certificate is the default certificate.</p>
-- @return Certificate structure as a key-value pair table
function M.Certificate(args)
	assert(args, "You must provide an argument table when creating Certificate")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CertificateArn"] = args["CertificateArn"],
		["IsDefault"] = args["IsDefault"],
	}
	asserts.AssertCertificate(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TooManyListenersException = { nil }

function asserts.AssertTooManyListenersException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyListenersException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.TooManyListenersException[k], "TooManyListenersException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyListenersException
-- <p>You've reached the limit on the number of listeners per load balancer.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return TooManyListenersException structure as a key-value pair table
function M.TooManyListenersException(args)
	assert(args, "You must provide an argument table when creating TooManyListenersException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertTooManyListenersException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SetSubnetsOutput = { ["AvailabilityZones"] = true, nil }

function asserts.AssertSetSubnetsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetSubnetsOutput to be of type 'table'")
	if struct["AvailabilityZones"] then asserts.AssertAvailabilityZones(struct["AvailabilityZones"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetSubnetsOutput[k], "SetSubnetsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetSubnetsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AvailabilityZones [AvailabilityZones] <p>Information about the subnet and Availability Zone.</p>
-- @return SetSubnetsOutput structure as a key-value pair table
function M.SetSubnetsOutput(args)
	assert(args, "You must provide an argument table when creating SetSubnetsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AvailabilityZones"] = args["AvailabilityZones"],
	}
	asserts.AssertSetSubnetsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TargetHealthDescription = { ["HealthCheckPort"] = true, ["Target"] = true, ["TargetHealth"] = true, nil }

function asserts.AssertTargetHealthDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TargetHealthDescription to be of type 'table'")
	if struct["HealthCheckPort"] then asserts.AssertHealthCheckPort(struct["HealthCheckPort"]) end
	if struct["Target"] then asserts.AssertTargetDescription(struct["Target"]) end
	if struct["TargetHealth"] then asserts.AssertTargetHealth(struct["TargetHealth"]) end
	for k,_ in pairs(struct) do
		assert(keys.TargetHealthDescription[k], "TargetHealthDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TargetHealthDescription
-- <p>Information about the health of a target.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HealthCheckPort [HealthCheckPort] <p>The port to use to connect with the target.</p>
-- * Target [TargetDescription] <p>The description of the target.</p>
-- * TargetHealth [TargetHealth] <p>The health information for the target.</p>
-- @return TargetHealthDescription structure as a key-value pair table
function M.TargetHealthDescription(args)
	assert(args, "You must provide an argument table when creating TargetHealthDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HealthCheckPort"] = args["HealthCheckPort"],
		["Target"] = args["Target"],
		["TargetHealth"] = args["TargetHealth"],
	}
	asserts.AssertTargetHealthDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeTargetHealthOutput = { ["TargetHealthDescriptions"] = true, nil }

function asserts.AssertDescribeTargetHealthOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTargetHealthOutput to be of type 'table'")
	if struct["TargetHealthDescriptions"] then asserts.AssertTargetHealthDescriptions(struct["TargetHealthDescriptions"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTargetHealthOutput[k], "DescribeTargetHealthOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTargetHealthOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TargetHealthDescriptions [TargetHealthDescriptions] <p>Information about the health of the targets.</p>
-- @return DescribeTargetHealthOutput structure as a key-value pair table
function M.DescribeTargetHealthOutput(args)
	assert(args, "You must provide an argument table when creating DescribeTargetHealthOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TargetHealthDescriptions"] = args["TargetHealthDescriptions"],
	}
	asserts.AssertDescribeTargetHealthOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteListenerInput = { ["ListenerArn"] = true, nil }

function asserts.AssertDeleteListenerInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteListenerInput to be of type 'table'")
	assert(struct["ListenerArn"], "Expected key ListenerArn to exist in table")
	if struct["ListenerArn"] then asserts.AssertListenerArn(struct["ListenerArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteListenerInput[k], "DeleteListenerInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteListenerInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ListenerArn [ListenerArn] <p>The Amazon Resource Name (ARN) of the listener.</p>
-- Required key: ListenerArn
-- @return DeleteListenerInput structure as a key-value pair table
function M.DeleteListenerInput(args)
	assert(args, "You must provide an argument table when creating DeleteListenerInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ListenerArn"] = args["ListenerArn"],
	}
	asserts.AssertDeleteListenerInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TargetGroupAttribute = { ["Value"] = true, ["Key"] = true, nil }

function asserts.AssertTargetGroupAttribute(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TargetGroupAttribute to be of type 'table'")
	if struct["Value"] then asserts.AssertTargetGroupAttributeValue(struct["Value"]) end
	if struct["Key"] then asserts.AssertTargetGroupAttributeKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.TargetGroupAttribute[k], "TargetGroupAttribute contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TargetGroupAttribute
-- <p>Information about a target group attribute.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [TargetGroupAttributeValue] <p>The value of the attribute.</p>
-- * Key [TargetGroupAttributeKey] <p>The name of the attribute.</p> <p>The following attributes are supported by both Application Load Balancers and Network Load Balancers:</p> <ul> <li> <p> <code>deregistration_delay.timeout_seconds</code> - The amount of time, in seconds, for Elastic Load Balancing to wait before changing the state of a deregistering target from <code>draining</code> to <code>unused</code>. The range is 0-3600 seconds. The default value is 300 seconds.</p> </li> </ul> <p>The following attributes are supported by only Application Load Balancers:</p> <ul> <li> <p> <code>slow_start.duration_seconds</code> - The time period, in seconds, during which a newly registered target receives a linearly increasing share of the traffic to the target group. After this time period ends, the target receives its full share of traffic. The range is 30-900 seconds (15 minutes). Slow start mode is disabled by default.</p> </li> <li> <p> <code>stickiness.enabled</code> - Indicates whether sticky sessions are enabled. The value is <code>true</code> or <code>false</code>. The default is <code>false</code>.</p> </li> <li> <p> <code>stickiness.type</code> - The type of sticky sessions. The possible value is <code>lb_cookie</code>.</p> </li> <li> <p> <code>stickiness.lb_cookie.duration_seconds</code> - The time period, in seconds, during which requests from a client should be routed to the same target. After this time period expires, the load balancer-generated cookie is considered stale. The range is 1 second to 1 week (604800 seconds). The default value is 1 day (86400 seconds).</p> </li> </ul> <p>The following attributes are supported by only Network Load Balancers:</p> <ul> <li> <p> <code>proxy_protocol_v2.enabled</code> - Indicates whether Proxy Protocol version 2 is enabled. The value is <code>true</code> or <code>false</code>. The default is <code>false</code>.</p> </li> </ul>
-- @return TargetGroupAttribute structure as a key-value pair table
function M.TargetGroupAttribute(args)
	assert(args, "You must provide an argument table when creating TargetGroupAttribute")
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
	asserts.AssertTargetGroupAttribute(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateListenerInput = { ["Protocol"] = true, ["DefaultActions"] = true, ["SslPolicy"] = true, ["Certificates"] = true, ["LoadBalancerArn"] = true, ["Port"] = true, nil }

function asserts.AssertCreateListenerInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateListenerInput to be of type 'table'")
	assert(struct["LoadBalancerArn"], "Expected key LoadBalancerArn to exist in table")
	assert(struct["Protocol"], "Expected key Protocol to exist in table")
	assert(struct["Port"], "Expected key Port to exist in table")
	assert(struct["DefaultActions"], "Expected key DefaultActions to exist in table")
	if struct["Protocol"] then asserts.AssertProtocolEnum(struct["Protocol"]) end
	if struct["DefaultActions"] then asserts.AssertActions(struct["DefaultActions"]) end
	if struct["SslPolicy"] then asserts.AssertSslPolicyName(struct["SslPolicy"]) end
	if struct["Certificates"] then asserts.AssertCertificateList(struct["Certificates"]) end
	if struct["LoadBalancerArn"] then asserts.AssertLoadBalancerArn(struct["LoadBalancerArn"]) end
	if struct["Port"] then asserts.AssertPort(struct["Port"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateListenerInput[k], "CreateListenerInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateListenerInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Protocol [ProtocolEnum] <p>The protocol for connections from clients to the load balancer. For Application Load Balancers, the supported protocols are HTTP and HTTPS. For Network Load Balancers, the supported protocol is TCP.</p>
-- * DefaultActions [Actions] <p>The actions for the default rule. The rule must include one forward action or one or more fixed-response actions.</p> <p>If the action type is <code>forward</code>, you can specify a single target group. The protocol of the target group must be HTTP or HTTPS for an Application Load Balancer or TCP for a Network Load Balancer.</p> <p>[HTTPS listener] If the action type is <code>authenticate-oidc</code>, you can use an identity provider that is OpenID Connect (OIDC) compliant to authenticate users as they access your application.</p> <p>[HTTPS listener] If the action type is <code>authenticate-cognito</code>, you can use Amazon Cognito to authenticate users as they access your application.</p> <p>[Application Load Balancer] If the action type is <code>redirect</code>, you can redirect HTTP and HTTPS requests.</p> <p>[Application Load Balancer] If the action type is <code>fixed-response</code>, you can return a custom HTTP response.</p>
-- * SslPolicy [SslPolicyName] <p>[HTTPS listeners] The security policy that defines which ciphers and protocols are supported. The default is the current predefined security policy.</p>
-- * Certificates [CertificateList] <p>[HTTPS listeners] The default SSL server certificate. You must provide exactly one default certificate. To create a certificate list, use <a>AddListenerCertificates</a>.</p>
-- * LoadBalancerArn [LoadBalancerArn] <p>The Amazon Resource Name (ARN) of the load balancer.</p>
-- * Port [Port] <p>The port on which the load balancer is listening.</p>
-- Required key: LoadBalancerArn
-- Required key: Protocol
-- Required key: Port
-- Required key: DefaultActions
-- @return CreateListenerInput structure as a key-value pair table
function M.CreateListenerInput(args)
	assert(args, "You must provide an argument table when creating CreateListenerInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Protocol"] = args["Protocol"],
		["DefaultActions"] = args["DefaultActions"],
		["SslPolicy"] = args["SslPolicy"],
		["Certificates"] = args["Certificates"],
		["LoadBalancerArn"] = args["LoadBalancerArn"],
		["Port"] = args["Port"],
	}
	asserts.AssertCreateListenerInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateTargetGroupInput = { ["HealthyThresholdCount"] = true, ["HealthCheckIntervalSeconds"] = true, ["VpcId"] = true, ["Protocol"] = true, ["Name"] = true, ["TargetType"] = true, ["HealthCheckProtocol"] = true, ["UnhealthyThresholdCount"] = true, ["HealthCheckPath"] = true, ["HealthCheckTimeoutSeconds"] = true, ["Matcher"] = true, ["HealthCheckPort"] = true, ["Port"] = true, nil }

function asserts.AssertCreateTargetGroupInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTargetGroupInput to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Protocol"], "Expected key Protocol to exist in table")
	assert(struct["Port"], "Expected key Port to exist in table")
	assert(struct["VpcId"], "Expected key VpcId to exist in table")
	if struct["HealthyThresholdCount"] then asserts.AssertHealthCheckThresholdCount(struct["HealthyThresholdCount"]) end
	if struct["HealthCheckIntervalSeconds"] then asserts.AssertHealthCheckIntervalSeconds(struct["HealthCheckIntervalSeconds"]) end
	if struct["VpcId"] then asserts.AssertVpcId(struct["VpcId"]) end
	if struct["Protocol"] then asserts.AssertProtocolEnum(struct["Protocol"]) end
	if struct["Name"] then asserts.AssertTargetGroupName(struct["Name"]) end
	if struct["TargetType"] then asserts.AssertTargetTypeEnum(struct["TargetType"]) end
	if struct["HealthCheckProtocol"] then asserts.AssertProtocolEnum(struct["HealthCheckProtocol"]) end
	if struct["UnhealthyThresholdCount"] then asserts.AssertHealthCheckThresholdCount(struct["UnhealthyThresholdCount"]) end
	if struct["HealthCheckPath"] then asserts.AssertPath(struct["HealthCheckPath"]) end
	if struct["HealthCheckTimeoutSeconds"] then asserts.AssertHealthCheckTimeoutSeconds(struct["HealthCheckTimeoutSeconds"]) end
	if struct["Matcher"] then asserts.AssertMatcher(struct["Matcher"]) end
	if struct["HealthCheckPort"] then asserts.AssertHealthCheckPort(struct["HealthCheckPort"]) end
	if struct["Port"] then asserts.AssertPort(struct["Port"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateTargetGroupInput[k], "CreateTargetGroupInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTargetGroupInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HealthyThresholdCount [HealthCheckThresholdCount] <p>The number of consecutive health checks successes required before considering an unhealthy target healthy. For Application Load Balancers, the default is 5. For Network Load Balancers, the default is 3.</p>
-- * HealthCheckIntervalSeconds [HealthCheckIntervalSeconds] <p>The approximate amount of time, in seconds, between health checks of an individual target. For Application Load Balancers, the range is 5–300 seconds. For Network Load Balancers, the supported values are 10 or 30 seconds. The default is 30 seconds.</p>
-- * VpcId [VpcId] <p>The identifier of the virtual private cloud (VPC).</p>
-- * Protocol [ProtocolEnum] <p>The protocol to use for routing traffic to the targets. For Application Load Balancers, the supported protocols are HTTP and HTTPS. For Network Load Balancers, the supported protocol is TCP.</p>
-- * Name [TargetGroupName] <p>The name of the target group.</p> <p>This name must be unique per region per account, can have a maximum of 32 characters, must contain only alphanumeric characters or hyphens, and must not begin or end with a hyphen.</p>
-- * TargetType [TargetTypeEnum] <p>The type of target that you must specify when registering targets with this target group. The possible values are <code>instance</code> (targets are specified by instance ID) or <code>ip</code> (targets are specified by IP address). The default is <code>instance</code>. You can't specify targets for a target group using both instance IDs and IP addresses.</p> <p>If the target type is <code>ip</code>, specify IP addresses from the subnets of the virtual private cloud (VPC) for the target group, the RFC 1918 range (10.0.0.0/8, 172.16.0.0/12, and 192.168.0.0/16), and the RFC 6598 range (100.64.0.0/10). You can't specify publicly routable IP addresses.</p>
-- * HealthCheckProtocol [ProtocolEnum] <p>The protocol the load balancer uses when performing health checks on targets. The TCP protocol is supported only if the protocol of the target group is TCP. For Application Load Balancers, the default is HTTP. For Network Load Balancers, the default is TCP.</p>
-- * UnhealthyThresholdCount [HealthCheckThresholdCount] <p>The number of consecutive health check failures required before considering a target unhealthy. For Application Load Balancers, the default is 2. For Network Load Balancers, this value must be the same as the healthy threshold count.</p>
-- * HealthCheckPath [Path] <p>[HTTP/HTTPS health checks] The ping path that is the destination on the targets for health checks. The default is /.</p>
-- * HealthCheckTimeoutSeconds [HealthCheckTimeoutSeconds] <p>The amount of time, in seconds, during which no response from a target means a failed health check. For Application Load Balancers, the range is 2–60 seconds and the default is 5 seconds. For Network Load Balancers, this is 10 seconds for TCP and HTTPS health checks and 6 seconds for HTTP health checks.</p>
-- * Matcher [Matcher] <p>[HTTP/HTTPS health checks] The HTTP codes to use when checking for a successful response from a target.</p>
-- * HealthCheckPort [HealthCheckPort] <p>The port the load balancer uses when performing health checks on targets. The default is <code>traffic-port</code>, which is the port on which each target receives traffic from the load balancer.</p>
-- * Port [Port] <p>The port on which the targets receive traffic. This port is used unless you specify a port override when registering the target.</p>
-- Required key: Name
-- Required key: Protocol
-- Required key: Port
-- Required key: VpcId
-- @return CreateTargetGroupInput structure as a key-value pair table
function M.CreateTargetGroupInput(args)
	assert(args, "You must provide an argument table when creating CreateTargetGroupInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HealthyThresholdCount"] = args["HealthyThresholdCount"],
		["HealthCheckIntervalSeconds"] = args["HealthCheckIntervalSeconds"],
		["VpcId"] = args["VpcId"],
		["Protocol"] = args["Protocol"],
		["Name"] = args["Name"],
		["TargetType"] = args["TargetType"],
		["HealthCheckProtocol"] = args["HealthCheckProtocol"],
		["UnhealthyThresholdCount"] = args["UnhealthyThresholdCount"],
		["HealthCheckPath"] = args["HealthCheckPath"],
		["HealthCheckTimeoutSeconds"] = args["HealthCheckTimeoutSeconds"],
		["Matcher"] = args["Matcher"],
		["HealthCheckPort"] = args["HealthCheckPort"],
		["Port"] = args["Port"],
	}
	asserts.AssertCreateTargetGroupInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyLoadBalancerAttributesOutput = { ["Attributes"] = true, nil }

function asserts.AssertModifyLoadBalancerAttributesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyLoadBalancerAttributesOutput to be of type 'table'")
	if struct["Attributes"] then asserts.AssertLoadBalancerAttributes(struct["Attributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyLoadBalancerAttributesOutput[k], "ModifyLoadBalancerAttributesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyLoadBalancerAttributesOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Attributes [LoadBalancerAttributes] <p>Information about the load balancer attributes.</p>
-- @return ModifyLoadBalancerAttributesOutput structure as a key-value pair table
function M.ModifyLoadBalancerAttributesOutput(args)
	assert(args, "You must provide an argument table when creating ModifyLoadBalancerAttributesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Attributes"] = args["Attributes"],
	}
	asserts.AssertModifyLoadBalancerAttributesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RegisterTargetsOutput = { nil }

function asserts.AssertRegisterTargetsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterTargetsOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.RegisterTargetsOutput[k], "RegisterTargetsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterTargetsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return RegisterTargetsOutput structure as a key-value pair table
function M.RegisterTargetsOutput(args)
	assert(args, "You must provide an argument table when creating RegisterTargetsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertRegisterTargetsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AuthenticateOidcActionConfig = { ["ClientSecret"] = true, ["OnUnauthenticatedRequest"] = true, ["TokenEndpoint"] = true, ["AuthenticationRequestExtraParams"] = true, ["ClientId"] = true, ["SessionTimeout"] = true, ["AuthorizationEndpoint"] = true, ["Scope"] = true, ["SessionCookieName"] = true, ["UserInfoEndpoint"] = true, ["Issuer"] = true, nil }

function asserts.AssertAuthenticateOidcActionConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AuthenticateOidcActionConfig to be of type 'table'")
	assert(struct["Issuer"], "Expected key Issuer to exist in table")
	assert(struct["AuthorizationEndpoint"], "Expected key AuthorizationEndpoint to exist in table")
	assert(struct["TokenEndpoint"], "Expected key TokenEndpoint to exist in table")
	assert(struct["UserInfoEndpoint"], "Expected key UserInfoEndpoint to exist in table")
	assert(struct["ClientId"], "Expected key ClientId to exist in table")
	assert(struct["ClientSecret"], "Expected key ClientSecret to exist in table")
	if struct["ClientSecret"] then asserts.AssertAuthenticateOidcActionClientSecret(struct["ClientSecret"]) end
	if struct["OnUnauthenticatedRequest"] then asserts.AssertAuthenticateOidcActionConditionalBehaviorEnum(struct["OnUnauthenticatedRequest"]) end
	if struct["TokenEndpoint"] then asserts.AssertAuthenticateOidcActionTokenEndpoint(struct["TokenEndpoint"]) end
	if struct["AuthenticationRequestExtraParams"] then asserts.AssertAuthenticateOidcActionAuthenticationRequestExtraParams(struct["AuthenticationRequestExtraParams"]) end
	if struct["ClientId"] then asserts.AssertAuthenticateOidcActionClientId(struct["ClientId"]) end
	if struct["SessionTimeout"] then asserts.AssertAuthenticateOidcActionSessionTimeout(struct["SessionTimeout"]) end
	if struct["AuthorizationEndpoint"] then asserts.AssertAuthenticateOidcActionAuthorizationEndpoint(struct["AuthorizationEndpoint"]) end
	if struct["Scope"] then asserts.AssertAuthenticateOidcActionScope(struct["Scope"]) end
	if struct["SessionCookieName"] then asserts.AssertAuthenticateOidcActionSessionCookieName(struct["SessionCookieName"]) end
	if struct["UserInfoEndpoint"] then asserts.AssertAuthenticateOidcActionUserInfoEndpoint(struct["UserInfoEndpoint"]) end
	if struct["Issuer"] then asserts.AssertAuthenticateOidcActionIssuer(struct["Issuer"]) end
	for k,_ in pairs(struct) do
		assert(keys.AuthenticateOidcActionConfig[k], "AuthenticateOidcActionConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AuthenticateOidcActionConfig
-- <p>Request parameters when using an identity provider (IdP) that is compliant with OpenID Connect (OIDC) to authenticate users.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClientSecret [AuthenticateOidcActionClientSecret] <p>The OAuth 2.0 client secret.</p>
-- * OnUnauthenticatedRequest [AuthenticateOidcActionConditionalBehaviorEnum] <p>The behavior if the user is not authenticated. The following are possible values:</p> <ul> <li> <p>deny<code/> - Return an HTTP 401 Unauthorized error.</p> </li> <li> <p>allow<code/> - Allow the request to be forwarded to the target.</p> </li> <li> <p>authenticate<code/> - Redirect the request to the IdP authorization endpoint. This is the default value.</p> </li> </ul>
-- * TokenEndpoint [AuthenticateOidcActionTokenEndpoint] <p>The token endpoint of the IdP. This must be a full URL, including the HTTPS protocol, the domain, and the path.</p>
-- * AuthenticationRequestExtraParams [AuthenticateOidcActionAuthenticationRequestExtraParams] <p>The query parameters (up to 10) to include in the redirect request to the authorization endpoint.</p>
-- * ClientId [AuthenticateOidcActionClientId] <p>The OAuth 2.0 client identifier.</p>
-- * SessionTimeout [AuthenticateOidcActionSessionTimeout] <p>The maximum duration of the authentication session, in seconds. The default is 604800 seconds (7 days).</p>
-- * AuthorizationEndpoint [AuthenticateOidcActionAuthorizationEndpoint] <p>The authorization endpoint of the IdP. This must be a full URL, including the HTTPS protocol, the domain, and the path.</p>
-- * Scope [AuthenticateOidcActionScope] <p>The set of user claims to be requested from the IdP. The default is <code>openid</code>.</p> <p>To verify which scope values your IdP supports and how to separate multiple values, see the documentation for your IdP.</p>
-- * SessionCookieName [AuthenticateOidcActionSessionCookieName] <p>The name of the cookie used to maintain session information. The default is AWSELBAuthSessionCookie.</p>
-- * UserInfoEndpoint [AuthenticateOidcActionUserInfoEndpoint] <p>The user info endpoint of the IdP. This must be a full URL, including the HTTPS protocol, the domain, and the path.</p>
-- * Issuer [AuthenticateOidcActionIssuer] <p>The OIDC issuer identifier of the IdP. This must be a full URL, including the HTTPS protocol, the domain, and the path.</p>
-- Required key: Issuer
-- Required key: AuthorizationEndpoint
-- Required key: TokenEndpoint
-- Required key: UserInfoEndpoint
-- Required key: ClientId
-- Required key: ClientSecret
-- @return AuthenticateOidcActionConfig structure as a key-value pair table
function M.AuthenticateOidcActionConfig(args)
	assert(args, "You must provide an argument table when creating AuthenticateOidcActionConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ClientSecret"] = args["ClientSecret"],
		["OnUnauthenticatedRequest"] = args["OnUnauthenticatedRequest"],
		["TokenEndpoint"] = args["TokenEndpoint"],
		["AuthenticationRequestExtraParams"] = args["AuthenticationRequestExtraParams"],
		["ClientId"] = args["ClientId"],
		["SessionTimeout"] = args["SessionTimeout"],
		["AuthorizationEndpoint"] = args["AuthorizationEndpoint"],
		["Scope"] = args["Scope"],
		["SessionCookieName"] = args["SessionCookieName"],
		["UserInfoEndpoint"] = args["UserInfoEndpoint"],
		["Issuer"] = args["Issuer"],
	}
	asserts.AssertAuthenticateOidcActionConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Matcher = { ["HttpCode"] = true, nil }

function asserts.AssertMatcher(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Matcher to be of type 'table'")
	assert(struct["HttpCode"], "Expected key HttpCode to exist in table")
	if struct["HttpCode"] then asserts.AssertHttpCode(struct["HttpCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.Matcher[k], "Matcher contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Matcher
-- <p>Information to use when checking for a successful response from a target.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HttpCode [HttpCode] <p>The HTTP codes.</p> <p>For Application Load Balancers, you can specify values between 200 and 499, and the default value is 200. You can specify multiple values (for example, "200,202") or a range of values (for example, "200-299").</p> <p>For Network Load Balancers, this is 200–399.</p>
-- Required key: HttpCode
-- @return Matcher structure as a key-value pair table
function M.Matcher(args)
	assert(args, "You must provide an argument table when creating Matcher")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HttpCode"] = args["HttpCode"],
	}
	asserts.AssertMatcher(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidSecurityGroupException = { nil }

function asserts.AssertInvalidSecurityGroupException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidSecurityGroupException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidSecurityGroupException[k], "InvalidSecurityGroupException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidSecurityGroupException
-- <p>The specified security group does not exist.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidSecurityGroupException structure as a key-value pair table
function M.InvalidSecurityGroupException(args)
	assert(args, "You must provide an argument table when creating InvalidSecurityGroupException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidSecurityGroupException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TooManyActionsException = { nil }

function asserts.AssertTooManyActionsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyActionsException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.TooManyActionsException[k], "TooManyActionsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyActionsException
-- <p>You've reached the limit on the number of actions per rule.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return TooManyActionsException structure as a key-value pair table
function M.TooManyActionsException(args)
	assert(args, "You must provide an argument table when creating TooManyActionsException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertTooManyActionsException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeAccountLimitsOutput = { ["NextMarker"] = true, ["Limits"] = true, nil }

function asserts.AssertDescribeAccountLimitsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAccountLimitsOutput to be of type 'table'")
	if struct["NextMarker"] then asserts.AssertMarker(struct["NextMarker"]) end
	if struct["Limits"] then asserts.AssertLimits(struct["Limits"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAccountLimitsOutput[k], "DescribeAccountLimitsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAccountLimitsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextMarker [Marker] <p>The marker to use when requesting the next set of results. If there are no additional results, the string is empty.</p>
-- * Limits [Limits] <p>Information about the limits.</p>
-- @return DescribeAccountLimitsOutput structure as a key-value pair table
function M.DescribeAccountLimitsOutput(args)
	assert(args, "You must provide an argument table when creating DescribeAccountLimitsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextMarker"] = args["NextMarker"],
		["Limits"] = args["Limits"],
	}
	asserts.AssertDescribeAccountLimitsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyListenerInput = { ["Protocol"] = true, ["DefaultActions"] = true, ["SslPolicy"] = true, ["Certificates"] = true, ["Port"] = true, ["ListenerArn"] = true, nil }

function asserts.AssertModifyListenerInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyListenerInput to be of type 'table'")
	assert(struct["ListenerArn"], "Expected key ListenerArn to exist in table")
	if struct["Protocol"] then asserts.AssertProtocolEnum(struct["Protocol"]) end
	if struct["DefaultActions"] then asserts.AssertActions(struct["DefaultActions"]) end
	if struct["SslPolicy"] then asserts.AssertSslPolicyName(struct["SslPolicy"]) end
	if struct["Certificates"] then asserts.AssertCertificateList(struct["Certificates"]) end
	if struct["Port"] then asserts.AssertPort(struct["Port"]) end
	if struct["ListenerArn"] then asserts.AssertListenerArn(struct["ListenerArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyListenerInput[k], "ModifyListenerInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyListenerInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Protocol [ProtocolEnum] <p>The protocol for connections from clients to the load balancer. Application Load Balancers support HTTP and HTTPS and Network Load Balancers support TCP.</p>
-- * DefaultActions [Actions] <p>The actions for the default rule. The rule must include one forward action or one or more fixed-response actions.</p> <p>If the action type is <code>forward</code>, you can specify a single target group. The protocol of the target group must be HTTP or HTTPS for an Application Load Balancer or TCP for a Network Load Balancer.</p> <p>[HTTPS listener] If the action type is <code>authenticate-oidc</code>, you can use an identity provider that is OpenID Connect (OIDC) compliant to authenticate users as they access your application.</p> <p>[HTTPS listener] If the action type is <code>authenticate-cognito</code>, you can use Amazon Cognito to authenticate users as they access your application.</p> <p>[Application Load Balancer] If the action type is <code>redirect</code>, you can redirect HTTP and HTTPS requests.</p> <p>[Application Load Balancer] If the action type is <code>fixed-response</code>, you can return a custom HTTP response.</p>
-- * SslPolicy [SslPolicyName] <p>[HTTPS listeners] The security policy that defines which protocols and ciphers are supported. For more information, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html#describe-ssl-policies">Security Policies</a> in the <i>Application Load Balancers Guide</i>.</p>
-- * Certificates [CertificateList] <p>[HTTPS listeners] The default SSL server certificate. You must provide exactly one default certificate. To create a certificate list, use <a>AddListenerCertificates</a>.</p>
-- * Port [Port] <p>The port for connections from clients to the load balancer.</p>
-- * ListenerArn [ListenerArn] <p>The Amazon Resource Name (ARN) of the listener.</p>
-- Required key: ListenerArn
-- @return ModifyListenerInput structure as a key-value pair table
function M.ModifyListenerInput(args)
	assert(args, "You must provide an argument table when creating ModifyListenerInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Protocol"] = args["Protocol"],
		["DefaultActions"] = args["DefaultActions"],
		["SslPolicy"] = args["SslPolicy"],
		["Certificates"] = args["Certificates"],
		["Port"] = args["Port"],
		["ListenerArn"] = args["ListenerArn"],
	}
	asserts.AssertModifyListenerInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyLoadBalancerAttributesInput = { ["Attributes"] = true, ["LoadBalancerArn"] = true, nil }

function asserts.AssertModifyLoadBalancerAttributesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyLoadBalancerAttributesInput to be of type 'table'")
	assert(struct["LoadBalancerArn"], "Expected key LoadBalancerArn to exist in table")
	assert(struct["Attributes"], "Expected key Attributes to exist in table")
	if struct["Attributes"] then asserts.AssertLoadBalancerAttributes(struct["Attributes"]) end
	if struct["LoadBalancerArn"] then asserts.AssertLoadBalancerArn(struct["LoadBalancerArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyLoadBalancerAttributesInput[k], "ModifyLoadBalancerAttributesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyLoadBalancerAttributesInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Attributes [LoadBalancerAttributes] <p>The load balancer attributes.</p>
-- * LoadBalancerArn [LoadBalancerArn] <p>The Amazon Resource Name (ARN) of the load balancer.</p>
-- Required key: LoadBalancerArn
-- Required key: Attributes
-- @return ModifyLoadBalancerAttributesInput structure as a key-value pair table
function M.ModifyLoadBalancerAttributesInput(args)
	assert(args, "You must provide an argument table when creating ModifyLoadBalancerAttributesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Attributes"] = args["Attributes"],
		["LoadBalancerArn"] = args["LoadBalancerArn"],
	}
	asserts.AssertModifyLoadBalancerAttributesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteLoadBalancerOutput = { nil }

function asserts.AssertDeleteLoadBalancerOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteLoadBalancerOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteLoadBalancerOutput[k], "DeleteLoadBalancerOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteLoadBalancerOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteLoadBalancerOutput structure as a key-value pair table
function M.DeleteLoadBalancerOutput(args)
	assert(args, "You must provide an argument table when creating DeleteLoadBalancerOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteLoadBalancerOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyTargetGroupInput = { ["HealthyThresholdCount"] = true, ["HealthCheckIntervalSeconds"] = true, ["TargetGroupArn"] = true, ["HealthCheckPort"] = true, ["HealthCheckProtocol"] = true, ["HealthCheckPath"] = true, ["HealthCheckTimeoutSeconds"] = true, ["Matcher"] = true, ["UnhealthyThresholdCount"] = true, nil }

function asserts.AssertModifyTargetGroupInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyTargetGroupInput to be of type 'table'")
	assert(struct["TargetGroupArn"], "Expected key TargetGroupArn to exist in table")
	if struct["HealthyThresholdCount"] then asserts.AssertHealthCheckThresholdCount(struct["HealthyThresholdCount"]) end
	if struct["HealthCheckIntervalSeconds"] then asserts.AssertHealthCheckIntervalSeconds(struct["HealthCheckIntervalSeconds"]) end
	if struct["TargetGroupArn"] then asserts.AssertTargetGroupArn(struct["TargetGroupArn"]) end
	if struct["HealthCheckPort"] then asserts.AssertHealthCheckPort(struct["HealthCheckPort"]) end
	if struct["HealthCheckProtocol"] then asserts.AssertProtocolEnum(struct["HealthCheckProtocol"]) end
	if struct["HealthCheckPath"] then asserts.AssertPath(struct["HealthCheckPath"]) end
	if struct["HealthCheckTimeoutSeconds"] then asserts.AssertHealthCheckTimeoutSeconds(struct["HealthCheckTimeoutSeconds"]) end
	if struct["Matcher"] then asserts.AssertMatcher(struct["Matcher"]) end
	if struct["UnhealthyThresholdCount"] then asserts.AssertHealthCheckThresholdCount(struct["UnhealthyThresholdCount"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyTargetGroupInput[k], "ModifyTargetGroupInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyTargetGroupInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HealthyThresholdCount [HealthCheckThresholdCount] <p>The number of consecutive health checks successes required before considering an unhealthy target healthy.</p>
-- * HealthCheckIntervalSeconds [HealthCheckIntervalSeconds] <p>The approximate amount of time, in seconds, between health checks of an individual target. For Application Load Balancers, the range is 5–300 seconds. For Network Load Balancers, the supported values are 10 or 30 seconds.</p>
-- * TargetGroupArn [TargetGroupArn] <p>The Amazon Resource Name (ARN) of the target group.</p>
-- * HealthCheckPort [HealthCheckPort] <p>The port the load balancer uses when performing health checks on targets.</p>
-- * HealthCheckProtocol [ProtocolEnum] <p>The protocol the load balancer uses when performing health checks on targets. The TCP protocol is supported only if the protocol of the target group is TCP.</p>
-- * HealthCheckPath [Path] <p>[HTTP/HTTPS health checks] The ping path that is the destination for the health check request.</p>
-- * HealthCheckTimeoutSeconds [HealthCheckTimeoutSeconds] <p>[HTTP/HTTPS health checks] The amount of time, in seconds, during which no response means a failed health check.</p>
-- * Matcher [Matcher] <p>[HTTP/HTTPS health checks] The HTTP codes to use when checking for a successful response from a target.</p>
-- * UnhealthyThresholdCount [HealthCheckThresholdCount] <p>The number of consecutive health check failures required before considering the target unhealthy. For Network Load Balancers, this value must be the same as the healthy threshold count.</p>
-- Required key: TargetGroupArn
-- @return ModifyTargetGroupInput structure as a key-value pair table
function M.ModifyTargetGroupInput(args)
	assert(args, "You must provide an argument table when creating ModifyTargetGroupInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HealthyThresholdCount"] = args["HealthyThresholdCount"],
		["HealthCheckIntervalSeconds"] = args["HealthCheckIntervalSeconds"],
		["TargetGroupArn"] = args["TargetGroupArn"],
		["HealthCheckPort"] = args["HealthCheckPort"],
		["HealthCheckProtocol"] = args["HealthCheckProtocol"],
		["HealthCheckPath"] = args["HealthCheckPath"],
		["HealthCheckTimeoutSeconds"] = args["HealthCheckTimeoutSeconds"],
		["Matcher"] = args["Matcher"],
		["UnhealthyThresholdCount"] = args["UnhealthyThresholdCount"],
	}
	asserts.AssertModifyTargetGroupInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateRuleInput = { ["Priority"] = true, ["Conditions"] = true, ["Actions"] = true, ["ListenerArn"] = true, nil }

function asserts.AssertCreateRuleInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateRuleInput to be of type 'table'")
	assert(struct["ListenerArn"], "Expected key ListenerArn to exist in table")
	assert(struct["Conditions"], "Expected key Conditions to exist in table")
	assert(struct["Priority"], "Expected key Priority to exist in table")
	assert(struct["Actions"], "Expected key Actions to exist in table")
	if struct["Priority"] then asserts.AssertRulePriority(struct["Priority"]) end
	if struct["Conditions"] then asserts.AssertRuleConditionList(struct["Conditions"]) end
	if struct["Actions"] then asserts.AssertActions(struct["Actions"]) end
	if struct["ListenerArn"] then asserts.AssertListenerArn(struct["ListenerArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateRuleInput[k], "CreateRuleInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateRuleInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Priority [RulePriority] <p>The rule priority. A listener can't have multiple rules with the same priority.</p>
-- * Conditions [RuleConditionList] <p>The conditions. Each condition specifies a field name and a single value.</p> <p>If the field name is <code>host-header</code>, you can specify a single host name (for example, my.example.com). A host name is case insensitive, can be up to 128 characters in length, and can contain any of the following characters. You can include up to three wildcard characters.</p> <ul> <li> <p>A-Z, a-z, 0-9</p> </li> <li> <p>- .</p> </li> <li> <p>* (matches 0 or more characters)</p> </li> <li> <p>? (matches exactly 1 character)</p> </li> </ul> <p>If the field name is <code>path-pattern</code>, you can specify a single path pattern. A path pattern is case-sensitive, can be up to 128 characters in length, and can contain any of the following characters. You can include up to three wildcard characters.</p> <ul> <li> <p>A-Z, a-z, 0-9</p> </li> <li> <p>_ - . $ / ~ " ' @ : +</p> </li> <li> <p>&amp; (using &amp;amp;)</p> </li> <li> <p>* (matches 0 or more characters)</p> </li> <li> <p>? (matches exactly 1 character)</p> </li> </ul>
-- * Actions [Actions] <p>The actions. Each rule must include exactly one of the following types of actions: <code>forward</code>, <code>fixed-response</code>, or <code>redirect</code>.</p> <p>If the action type is <code>forward</code>, you can specify a single target group.</p> <p>[HTTPS listener] If the action type is <code>authenticate-oidc</code>, you can use an identity provider that is OpenID Connect (OIDC) compliant to authenticate users as they access your application.</p> <p>[HTTPS listener] If the action type is <code>authenticate-cognito</code>, you can use Amazon Cognito to authenticate users as they access your application.</p> <p>[Application Load Balancer] If the action type is <code>redirect</code>, you can redirect HTTP and HTTPS requests.</p> <p>[Application Load Balancer] If the action type is <code>fixed-response</code>, you can return a custom HTTP response.</p>
-- * ListenerArn [ListenerArn] <p>The Amazon Resource Name (ARN) of the listener.</p>
-- Required key: ListenerArn
-- Required key: Conditions
-- Required key: Priority
-- Required key: Actions
-- @return CreateRuleInput structure as a key-value pair table
function M.CreateRuleInput(args)
	assert(args, "You must provide an argument table when creating CreateRuleInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Priority"] = args["Priority"],
		["Conditions"] = args["Conditions"],
		["Actions"] = args["Actions"],
		["ListenerArn"] = args["ListenerArn"],
	}
	asserts.AssertCreateRuleInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RemoveListenerCertificatesOutput = { nil }

function asserts.AssertRemoveListenerCertificatesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveListenerCertificatesOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.RemoveListenerCertificatesOutput[k], "RemoveListenerCertificatesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveListenerCertificatesOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return RemoveListenerCertificatesOutput structure as a key-value pair table
function M.RemoveListenerCertificatesOutput(args)
	assert(args, "You must provide an argument table when creating RemoveListenerCertificatesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertRemoveListenerCertificatesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeListenersInput = { ["ListenerArns"] = true, ["Marker"] = true, ["LoadBalancerArn"] = true, ["PageSize"] = true, nil }

function asserts.AssertDescribeListenersInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeListenersInput to be of type 'table'")
	if struct["ListenerArns"] then asserts.AssertListenerArns(struct["ListenerArns"]) end
	if struct["Marker"] then asserts.AssertMarker(struct["Marker"]) end
	if struct["LoadBalancerArn"] then asserts.AssertLoadBalancerArn(struct["LoadBalancerArn"]) end
	if struct["PageSize"] then asserts.AssertPageSize(struct["PageSize"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeListenersInput[k], "DescribeListenersInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeListenersInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ListenerArns [ListenerArns] <p>The Amazon Resource Names (ARN) of the listeners.</p>
-- * Marker [Marker] <p>The marker for the next set of results. (You received this marker from a previous call.)</p>
-- * LoadBalancerArn [LoadBalancerArn] <p>The Amazon Resource Name (ARN) of the load balancer.</p>
-- * PageSize [PageSize] <p>The maximum number of results to return with this call.</p>
-- @return DescribeListenersInput structure as a key-value pair table
function M.DescribeListenersInput(args)
	assert(args, "You must provide an argument table when creating DescribeListenersInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ListenerArns"] = args["ListenerArns"],
		["Marker"] = args["Marker"],
		["LoadBalancerArn"] = args["LoadBalancerArn"],
		["PageSize"] = args["PageSize"],
	}
	asserts.AssertDescribeListenersInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteLoadBalancerInput = { ["LoadBalancerArn"] = true, nil }

function asserts.AssertDeleteLoadBalancerInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteLoadBalancerInput to be of type 'table'")
	assert(struct["LoadBalancerArn"], "Expected key LoadBalancerArn to exist in table")
	if struct["LoadBalancerArn"] then asserts.AssertLoadBalancerArn(struct["LoadBalancerArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteLoadBalancerInput[k], "DeleteLoadBalancerInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteLoadBalancerInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LoadBalancerArn [LoadBalancerArn] <p>The Amazon Resource Name (ARN) of the load balancer.</p>
-- Required key: LoadBalancerArn
-- @return DeleteLoadBalancerInput structure as a key-value pair table
function M.DeleteLoadBalancerInput(args)
	assert(args, "You must provide an argument table when creating DeleteLoadBalancerInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LoadBalancerArn"] = args["LoadBalancerArn"],
	}
	asserts.AssertDeleteLoadBalancerInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SetRulePrioritiesInput = { ["RulePriorities"] = true, nil }

function asserts.AssertSetRulePrioritiesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetRulePrioritiesInput to be of type 'table'")
	assert(struct["RulePriorities"], "Expected key RulePriorities to exist in table")
	if struct["RulePriorities"] then asserts.AssertRulePriorityList(struct["RulePriorities"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetRulePrioritiesInput[k], "SetRulePrioritiesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetRulePrioritiesInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RulePriorities [RulePriorityList] <p>The rule priorities.</p>
-- Required key: RulePriorities
-- @return SetRulePrioritiesInput structure as a key-value pair table
function M.SetRulePrioritiesInput(args)
	assert(args, "You must provide an argument table when creating SetRulePrioritiesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RulePriorities"] = args["RulePriorities"],
	}
	asserts.AssertSetRulePrioritiesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SetRulePrioritiesOutput = { ["Rules"] = true, nil }

function asserts.AssertSetRulePrioritiesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetRulePrioritiesOutput to be of type 'table'")
	if struct["Rules"] then asserts.AssertRules(struct["Rules"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetRulePrioritiesOutput[k], "SetRulePrioritiesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetRulePrioritiesOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Rules [Rules] <p>Information about the rules.</p>
-- @return SetRulePrioritiesOutput structure as a key-value pair table
function M.SetRulePrioritiesOutput(args)
	assert(args, "You must provide an argument table when creating SetRulePrioritiesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Rules"] = args["Rules"],
	}
	asserts.AssertSetRulePrioritiesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Action = { ["TargetGroupArn"] = true, ["FixedResponseConfig"] = true, ["Type"] = true, ["AuthenticateCognitoConfig"] = true, ["AuthenticateOidcConfig"] = true, ["RedirectConfig"] = true, ["Order"] = true, nil }

function asserts.AssertAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Action to be of type 'table'")
	assert(struct["Type"], "Expected key Type to exist in table")
	if struct["TargetGroupArn"] then asserts.AssertTargetGroupArn(struct["TargetGroupArn"]) end
	if struct["FixedResponseConfig"] then asserts.AssertFixedResponseActionConfig(struct["FixedResponseConfig"]) end
	if struct["Type"] then asserts.AssertActionTypeEnum(struct["Type"]) end
	if struct["AuthenticateCognitoConfig"] then asserts.AssertAuthenticateCognitoActionConfig(struct["AuthenticateCognitoConfig"]) end
	if struct["AuthenticateOidcConfig"] then asserts.AssertAuthenticateOidcActionConfig(struct["AuthenticateOidcConfig"]) end
	if struct["RedirectConfig"] then asserts.AssertRedirectActionConfig(struct["RedirectConfig"]) end
	if struct["Order"] then asserts.AssertActionOrder(struct["Order"]) end
	for k,_ in pairs(struct) do
		assert(keys.Action[k], "Action contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Action
-- <p>Information about an action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TargetGroupArn [TargetGroupArn] <p>The Amazon Resource Name (ARN) of the target group. Specify only when <code>Type</code> is <code>forward</code>.</p>
-- * FixedResponseConfig [FixedResponseActionConfig] <p>[Application Load Balancer] Information for creating an action that returns a custom HTTP response. Specify only when <code>Type</code> is <code>fixed-response</code>.</p>
-- * Type [ActionTypeEnum] <p>The type of action. Each rule must include exactly one of the following types of actions: <code>forward</code>, <code>fixed-response</code>, or <code>redirect</code>.</p>
-- * AuthenticateCognitoConfig [AuthenticateCognitoActionConfig] <p>[HTTPS listener] Information for using Amazon Cognito to authenticate users. Specify only when <code>Type</code> is <code>authenticate-cognito</code>.</p>
-- * AuthenticateOidcConfig [AuthenticateOidcActionConfig] <p>[HTTPS listener] Information about an identity provider that is compliant with OpenID Connect (OIDC). Specify only when <code>Type</code> is <code>authenticate-oidc</code>.</p>
-- * RedirectConfig [RedirectActionConfig] <p>[Application Load Balancer] Information for creating a redirect action. Specify only when <code>Type</code> is <code>redirect</code>.</p>
-- * Order [ActionOrder] <p>The order for the action. This value is required for rules with multiple actions. The action with the lowest value for order is performed first. The final action to be performed must be a <code>forward</code> or a <code>fixed-response</code> action.</p>
-- Required key: Type
-- @return Action structure as a key-value pair table
function M.Action(args)
	assert(args, "You must provide an argument table when creating Action")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TargetGroupArn"] = args["TargetGroupArn"],
		["FixedResponseConfig"] = args["FixedResponseConfig"],
		["Type"] = args["Type"],
		["AuthenticateCognitoConfig"] = args["AuthenticateCognitoConfig"],
		["AuthenticateOidcConfig"] = args["AuthenticateOidcConfig"],
		["RedirectConfig"] = args["RedirectConfig"],
		["Order"] = args["Order"],
	}
	asserts.AssertAction(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PriorityInUseException = { nil }

function asserts.AssertPriorityInUseException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PriorityInUseException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.PriorityInUseException[k], "PriorityInUseException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PriorityInUseException
-- <p>The specified priority is in use.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return PriorityInUseException structure as a key-value pair table
function M.PriorityInUseException(args)
	assert(args, "You must provide an argument table when creating PriorityInUseException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertPriorityInUseException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RegisterTargetsInput = { ["TargetGroupArn"] = true, ["Targets"] = true, nil }

function asserts.AssertRegisterTargetsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterTargetsInput to be of type 'table'")
	assert(struct["TargetGroupArn"], "Expected key TargetGroupArn to exist in table")
	assert(struct["Targets"], "Expected key Targets to exist in table")
	if struct["TargetGroupArn"] then asserts.AssertTargetGroupArn(struct["TargetGroupArn"]) end
	if struct["Targets"] then asserts.AssertTargetDescriptions(struct["Targets"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegisterTargetsInput[k], "RegisterTargetsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterTargetsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TargetGroupArn [TargetGroupArn] <p>The Amazon Resource Name (ARN) of the target group.</p>
-- * Targets [TargetDescriptions] <p>The targets.</p>
-- Required key: TargetGroupArn
-- Required key: Targets
-- @return RegisterTargetsInput structure as a key-value pair table
function M.RegisterTargetsInput(args)
	assert(args, "You must provide an argument table when creating RegisterTargetsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TargetGroupArn"] = args["TargetGroupArn"],
		["Targets"] = args["Targets"],
	}
	asserts.AssertRegisterTargetsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteTargetGroupInput = { ["TargetGroupArn"] = true, nil }

function asserts.AssertDeleteTargetGroupInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTargetGroupInput to be of type 'table'")
	assert(struct["TargetGroupArn"], "Expected key TargetGroupArn to exist in table")
	if struct["TargetGroupArn"] then asserts.AssertTargetGroupArn(struct["TargetGroupArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteTargetGroupInput[k], "DeleteTargetGroupInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTargetGroupInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TargetGroupArn [TargetGroupArn] <p>The Amazon Resource Name (ARN) of the target group.</p>
-- Required key: TargetGroupArn
-- @return DeleteTargetGroupInput structure as a key-value pair table
function M.DeleteTargetGroupInput(args)
	assert(args, "You must provide an argument table when creating DeleteTargetGroupInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TargetGroupArn"] = args["TargetGroupArn"],
	}
	asserts.AssertDeleteTargetGroupInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RuleNotFoundException = { nil }

function asserts.AssertRuleNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RuleNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.RuleNotFoundException[k], "RuleNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RuleNotFoundException
-- <p>The specified rule does not exist.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return RuleNotFoundException structure as a key-value pair table
function M.RuleNotFoundException(args)
	assert(args, "You must provide an argument table when creating RuleNotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertRuleNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TooManyTargetsException = { nil }

function asserts.AssertTooManyTargetsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyTargetsException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.TooManyTargetsException[k], "TooManyTargetsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyTargetsException
-- <p>You've reached the limit on the number of targets.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return TooManyTargetsException structure as a key-value pair table
function M.TooManyTargetsException(args)
	assert(args, "You must provide an argument table when creating TooManyTargetsException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertTooManyTargetsException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OperationNotPermittedException = { nil }

function asserts.AssertOperationNotPermittedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OperationNotPermittedException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.OperationNotPermittedException[k], "OperationNotPermittedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OperationNotPermittedException
-- <p>This operation is not allowed.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return OperationNotPermittedException structure as a key-value pair table
function M.OperationNotPermittedException(args)
	assert(args, "You must provide an argument table when creating OperationNotPermittedException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertOperationNotPermittedException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AddTagsInput = { ["ResourceArns"] = true, ["Tags"] = true, nil }

function asserts.AssertAddTagsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddTagsInput to be of type 'table'")
	assert(struct["ResourceArns"], "Expected key ResourceArns to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["ResourceArns"] then asserts.AssertResourceArns(struct["ResourceArns"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddTagsInput[k], "AddTagsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddTagsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceArns [ResourceArns] <p>The Amazon Resource Name (ARN) of the resource.</p>
-- * Tags [TagList] <p>The tags. Each resource can have a maximum of 10 tags.</p>
-- Required key: ResourceArns
-- Required key: Tags
-- @return AddTagsInput structure as a key-value pair table
function M.AddTagsInput(args)
	assert(args, "You must provide an argument table when creating AddTagsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceArns"] = args["ResourceArns"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertAddTagsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.HealthUnavailableException = { nil }

function asserts.AssertHealthUnavailableException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HealthUnavailableException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.HealthUnavailableException[k], "HealthUnavailableException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HealthUnavailableException
-- <p>The health of the specified targets could not be retrieved due to an internal error.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return HealthUnavailableException structure as a key-value pair table
function M.HealthUnavailableException(args)
	assert(args, "You must provide an argument table when creating HealthUnavailableException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertHealthUnavailableException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyRuleInput = { ["Conditions"] = true, ["RuleArn"] = true, ["Actions"] = true, nil }

function asserts.AssertModifyRuleInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyRuleInput to be of type 'table'")
	assert(struct["RuleArn"], "Expected key RuleArn to exist in table")
	if struct["Conditions"] then asserts.AssertRuleConditionList(struct["Conditions"]) end
	if struct["RuleArn"] then asserts.AssertRuleArn(struct["RuleArn"]) end
	if struct["Actions"] then asserts.AssertActions(struct["Actions"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyRuleInput[k], "ModifyRuleInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyRuleInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Conditions [RuleConditionList] <p>The conditions. Each condition specifies a field name and a single value.</p> <p>If the field name is <code>host-header</code>, you can specify a single host name (for example, my.example.com). A host name is case insensitive, can be up to 128 characters in length, and can contain any of the following characters. You can include up to three wildcard characters.</p> <ul> <li> <p>A-Z, a-z, 0-9</p> </li> <li> <p>- .</p> </li> <li> <p>* (matches 0 or more characters)</p> </li> <li> <p>? (matches exactly 1 character)</p> </li> </ul> <p>If the field name is <code>path-pattern</code>, you can specify a single path pattern. A path pattern is case-sensitive, can be up to 128 characters in length, and can contain any of the following characters. You can include up to three wildcard characters.</p> <ul> <li> <p>A-Z, a-z, 0-9</p> </li> <li> <p>_ - . $ / ~ " ' @ : +</p> </li> <li> <p>&amp; (using &amp;amp;)</p> </li> <li> <p>* (matches 0 or more characters)</p> </li> <li> <p>? (matches exactly 1 character)</p> </li> </ul>
-- * RuleArn [RuleArn] <p>The Amazon Resource Name (ARN) of the rule.</p>
-- * Actions [Actions] <p>The actions.</p> <p>If the action type is <code>forward</code>, you can specify a single target group.</p> <p>If the action type is <code>authenticate-oidc</code>, you can use an identity provider that is OpenID Connect (OIDC) compliant to authenticate users as they access your application.</p> <p>If the action type is <code>authenticate-cognito</code>, you can use Amazon Cognito to authenticate users as they access your application.</p>
-- Required key: RuleArn
-- @return ModifyRuleInput structure as a key-value pair table
function M.ModifyRuleInput(args)
	assert(args, "You must provide an argument table when creating ModifyRuleInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Conditions"] = args["Conditions"],
		["RuleArn"] = args["RuleArn"],
		["Actions"] = args["Actions"],
	}
	asserts.AssertModifyRuleInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TooManyTagsException = { nil }

function asserts.AssertTooManyTagsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyTagsException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.TooManyTagsException[k], "TooManyTagsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyTagsException
-- <p>You've reached the limit on the number of tags per load balancer.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return TooManyTagsException structure as a key-value pair table
function M.TooManyTagsException(args)
	assert(args, "You must provide an argument table when creating TooManyTagsException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertTooManyTagsException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeRulesOutput = { ["Rules"] = true, ["NextMarker"] = true, nil }

function asserts.AssertDescribeRulesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeRulesOutput to be of type 'table'")
	if struct["Rules"] then asserts.AssertRules(struct["Rules"]) end
	if struct["NextMarker"] then asserts.AssertMarker(struct["NextMarker"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeRulesOutput[k], "DescribeRulesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeRulesOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Rules [Rules] <p>Information about the rules.</p>
-- * NextMarker [Marker] <p>The marker to use when requesting the next set of results. If there are no additional results, the string is empty.</p>
-- @return DescribeRulesOutput structure as a key-value pair table
function M.DescribeRulesOutput(args)
	assert(args, "You must provide an argument table when creating DescribeRulesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Rules"] = args["Rules"],
		["NextMarker"] = args["NextMarker"],
	}
	asserts.AssertDescribeRulesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SSLPolicyNotFoundException = { nil }

function asserts.AssertSSLPolicyNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SSLPolicyNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SSLPolicyNotFoundException[k], "SSLPolicyNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SSLPolicyNotFoundException
-- <p>The specified SSL policy does not exist.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return SSLPolicyNotFoundException structure as a key-value pair table
function M.SSLPolicyNotFoundException(args)
	assert(args, "You must provide an argument table when creating SSLPolicyNotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertSSLPolicyNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DuplicateListenerException = { nil }

function asserts.AssertDuplicateListenerException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DuplicateListenerException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DuplicateListenerException[k], "DuplicateListenerException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DuplicateListenerException
-- <p>A listener with the specified port already exists.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DuplicateListenerException structure as a key-value pair table
function M.DuplicateListenerException(args)
	assert(args, "You must provide an argument table when creating DuplicateListenerException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDuplicateListenerException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeTargetGroupsOutput = { ["NextMarker"] = true, ["TargetGroups"] = true, nil }

function asserts.AssertDescribeTargetGroupsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTargetGroupsOutput to be of type 'table'")
	if struct["NextMarker"] then asserts.AssertMarker(struct["NextMarker"]) end
	if struct["TargetGroups"] then asserts.AssertTargetGroups(struct["TargetGroups"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTargetGroupsOutput[k], "DescribeTargetGroupsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTargetGroupsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextMarker [Marker] <p>The marker to use when requesting the next set of results. If there are no additional results, the string is empty.</p>
-- * TargetGroups [TargetGroups] <p>Information about the target groups.</p>
-- @return DescribeTargetGroupsOutput structure as a key-value pair table
function M.DescribeTargetGroupsOutput(args)
	assert(args, "You must provide an argument table when creating DescribeTargetGroupsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextMarker"] = args["NextMarker"],
		["TargetGroups"] = args["TargetGroups"],
	}
	asserts.AssertDescribeTargetGroupsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyTargetGroupOutput = { ["TargetGroups"] = true, nil }

function asserts.AssertModifyTargetGroupOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyTargetGroupOutput to be of type 'table'")
	if struct["TargetGroups"] then asserts.AssertTargetGroups(struct["TargetGroups"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyTargetGroupOutput[k], "ModifyTargetGroupOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyTargetGroupOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TargetGroups [TargetGroups] <p>Information about the modified target group.</p>
-- @return ModifyTargetGroupOutput structure as a key-value pair table
function M.ModifyTargetGroupOutput(args)
	assert(args, "You must provide an argument table when creating ModifyTargetGroupOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TargetGroups"] = args["TargetGroups"],
	}
	asserts.AssertModifyTargetGroupOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyTargetGroupAttributesOutput = { ["Attributes"] = true, nil }

function asserts.AssertModifyTargetGroupAttributesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyTargetGroupAttributesOutput to be of type 'table'")
	if struct["Attributes"] then asserts.AssertTargetGroupAttributes(struct["Attributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyTargetGroupAttributesOutput[k], "ModifyTargetGroupAttributesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyTargetGroupAttributesOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Attributes [TargetGroupAttributes] <p>Information about the attributes.</p>
-- @return ModifyTargetGroupAttributesOutput structure as a key-value pair table
function M.ModifyTargetGroupAttributesOutput(args)
	assert(args, "You must provide an argument table when creating ModifyTargetGroupAttributesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Attributes"] = args["Attributes"],
	}
	asserts.AssertModifyTargetGroupAttributesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateTargetGroupOutput = { ["TargetGroups"] = true, nil }

function asserts.AssertCreateTargetGroupOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTargetGroupOutput to be of type 'table'")
	if struct["TargetGroups"] then asserts.AssertTargetGroups(struct["TargetGroups"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateTargetGroupOutput[k], "CreateTargetGroupOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTargetGroupOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TargetGroups [TargetGroups] <p>Information about the target group.</p>
-- @return CreateTargetGroupOutput structure as a key-value pair table
function M.CreateTargetGroupOutput(args)
	assert(args, "You must provide an argument table when creating CreateTargetGroupOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TargetGroups"] = args["TargetGroups"],
	}
	asserts.AssertCreateTargetGroupOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateListenerOutput = { ["Listeners"] = true, nil }

function asserts.AssertCreateListenerOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateListenerOutput to be of type 'table'")
	if struct["Listeners"] then asserts.AssertListeners(struct["Listeners"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateListenerOutput[k], "CreateListenerOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateListenerOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Listeners [Listeners] <p>Information about the listener.</p>
-- @return CreateListenerOutput structure as a key-value pair table
function M.CreateListenerOutput(args)
	assert(args, "You must provide an argument table when creating CreateListenerOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Listeners"] = args["Listeners"],
	}
	asserts.AssertCreateListenerOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LoadBalancerAddress = { ["IpAddress"] = true, ["AllocationId"] = true, nil }

function asserts.AssertLoadBalancerAddress(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LoadBalancerAddress to be of type 'table'")
	if struct["IpAddress"] then asserts.AssertIpAddress(struct["IpAddress"]) end
	if struct["AllocationId"] then asserts.AssertAllocationId(struct["AllocationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.LoadBalancerAddress[k], "LoadBalancerAddress contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LoadBalancerAddress
-- <p>Information about a static IP address for a load balancer.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IpAddress [IpAddress] <p>The static IP address.</p>
-- * AllocationId [AllocationId] <p>[Network Load Balancers] The allocation ID of the Elastic IP address.</p>
-- @return LoadBalancerAddress structure as a key-value pair table
function M.LoadBalancerAddress(args)
	assert(args, "You must provide an argument table when creating LoadBalancerAddress")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IpAddress"] = args["IpAddress"],
		["AllocationId"] = args["AllocationId"],
	}
	asserts.AssertLoadBalancerAddress(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeRulesInput = { ["Marker"] = true, ["RuleArns"] = true, ["PageSize"] = true, ["ListenerArn"] = true, nil }

function asserts.AssertDescribeRulesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeRulesInput to be of type 'table'")
	if struct["Marker"] then asserts.AssertMarker(struct["Marker"]) end
	if struct["RuleArns"] then asserts.AssertRuleArns(struct["RuleArns"]) end
	if struct["PageSize"] then asserts.AssertPageSize(struct["PageSize"]) end
	if struct["ListenerArn"] then asserts.AssertListenerArn(struct["ListenerArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeRulesInput[k], "DescribeRulesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeRulesInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [Marker] <p>The marker for the next set of results. (You received this marker from a previous call.)</p>
-- * RuleArns [RuleArns] <p>The Amazon Resource Names (ARN) of the rules.</p>
-- * PageSize [PageSize] <p>The maximum number of results to return with this call.</p>
-- * ListenerArn [ListenerArn] <p>The Amazon Resource Name (ARN) of the listener.</p>
-- @return DescribeRulesInput structure as a key-value pair table
function M.DescribeRulesInput(args)
	assert(args, "You must provide an argument table when creating DescribeRulesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["RuleArns"] = args["RuleArns"],
		["PageSize"] = args["PageSize"],
		["ListenerArn"] = args["ListenerArn"],
	}
	asserts.AssertDescribeRulesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteListenerOutput = { nil }

function asserts.AssertDeleteListenerOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteListenerOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteListenerOutput[k], "DeleteListenerOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteListenerOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteListenerOutput structure as a key-value pair table
function M.DeleteListenerOutput(args)
	assert(args, "You must provide an argument table when creating DeleteListenerOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteListenerOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AddTagsOutput = { nil }

function asserts.AssertAddTagsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddTagsOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AddTagsOutput[k], "AddTagsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddTagsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AddTagsOutput structure as a key-value pair table
function M.AddTagsOutput(args)
	assert(args, "You must provide an argument table when creating AddTagsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAddTagsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeTagsOutput = { ["TagDescriptions"] = true, nil }

function asserts.AssertDescribeTagsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTagsOutput to be of type 'table'")
	if struct["TagDescriptions"] then asserts.AssertTagDescriptions(struct["TagDescriptions"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTagsOutput[k], "DescribeTagsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTagsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TagDescriptions [TagDescriptions] <p>Information about the tags.</p>
-- @return DescribeTagsOutput structure as a key-value pair table
function M.DescribeTagsOutput(args)
	assert(args, "You must provide an argument table when creating DescribeTagsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TagDescriptions"] = args["TagDescriptions"],
	}
	asserts.AssertDescribeTagsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyListenerOutput = { ["Listeners"] = true, nil }

function asserts.AssertModifyListenerOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyListenerOutput to be of type 'table'")
	if struct["Listeners"] then asserts.AssertListeners(struct["Listeners"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyListenerOutput[k], "ModifyListenerOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyListenerOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Listeners [Listeners] <p>Information about the modified listener.</p>
-- @return ModifyListenerOutput structure as a key-value pair table
function M.ModifyListenerOutput(args)
	assert(args, "You must provide an argument table when creating ModifyListenerOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Listeners"] = args["Listeners"],
	}
	asserts.AssertModifyListenerOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SetSubnetsInput = { ["SubnetMappings"] = true, ["Subnets"] = true, ["LoadBalancerArn"] = true, nil }

function asserts.AssertSetSubnetsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetSubnetsInput to be of type 'table'")
	assert(struct["LoadBalancerArn"], "Expected key LoadBalancerArn to exist in table")
	if struct["SubnetMappings"] then asserts.AssertSubnetMappings(struct["SubnetMappings"]) end
	if struct["Subnets"] then asserts.AssertSubnets(struct["Subnets"]) end
	if struct["LoadBalancerArn"] then asserts.AssertLoadBalancerArn(struct["LoadBalancerArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetSubnetsInput[k], "SetSubnetsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetSubnetsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SubnetMappings [SubnetMappings] <p>The IDs of the public subnets. You must specify subnets from at least two Availability Zones. You can specify only one subnet per Availability Zone. You must specify either subnets or subnet mappings.</p> <p>You cannot specify Elastic IP addresses for your subnets.</p>
-- * Subnets [Subnets] <p>The IDs of the public subnets. You must specify subnets from at least two Availability Zones. You can specify only one subnet per Availability Zone. You must specify either subnets or subnet mappings.</p>
-- * LoadBalancerArn [LoadBalancerArn] <p>The Amazon Resource Name (ARN) of the load balancer.</p>
-- Required key: LoadBalancerArn
-- @return SetSubnetsInput structure as a key-value pair table
function M.SetSubnetsInput(args)
	assert(args, "You must provide an argument table when creating SetSubnetsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SubnetMappings"] = args["SubnetMappings"],
		["Subnets"] = args["Subnets"],
		["LoadBalancerArn"] = args["LoadBalancerArn"],
	}
	asserts.AssertSetSubnetsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LoadBalancerState = { ["Reason"] = true, ["Code"] = true, nil }

function asserts.AssertLoadBalancerState(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LoadBalancerState to be of type 'table'")
	if struct["Reason"] then asserts.AssertStateReason(struct["Reason"]) end
	if struct["Code"] then asserts.AssertLoadBalancerStateEnum(struct["Code"]) end
	for k,_ in pairs(struct) do
		assert(keys.LoadBalancerState[k], "LoadBalancerState contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LoadBalancerState
-- <p>Information about the state of the load balancer.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Reason [StateReason] <p>A description of the state.</p>
-- * Code [LoadBalancerStateEnum] <p>The state code. The initial state of the load balancer is <code>provisioning</code>. After the load balancer is fully set up and ready to route traffic, its state is <code>active</code>. If the load balancer could not be set up, its state is <code>failed</code>.</p>
-- @return LoadBalancerState structure as a key-value pair table
function M.LoadBalancerState(args)
	assert(args, "You must provide an argument table when creating LoadBalancerState")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Reason"] = args["Reason"],
		["Code"] = args["Code"],
	}
	asserts.AssertLoadBalancerState(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TargetGroupAssociationLimitException = { nil }

function asserts.AssertTargetGroupAssociationLimitException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TargetGroupAssociationLimitException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.TargetGroupAssociationLimitException[k], "TargetGroupAssociationLimitException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TargetGroupAssociationLimitException
-- <p>You've reached the limit on the number of load balancers per target group.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return TargetGroupAssociationLimitException structure as a key-value pair table
function M.TargetGroupAssociationLimitException(args)
	assert(args, "You must provide an argument table when creating TargetGroupAssociationLimitException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertTargetGroupAssociationLimitException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidTargetException = { nil }

function asserts.AssertInvalidTargetException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidTargetException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidTargetException[k], "InvalidTargetException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidTargetException
-- <p>The specified target does not exist, is not in the same VPC as the target group, or has an unsupported instance type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidTargetException structure as a key-value pair table
function M.InvalidTargetException(args)
	assert(args, "You must provide an argument table when creating InvalidTargetException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidTargetException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SubnetMapping = { ["SubnetId"] = true, ["AllocationId"] = true, nil }

function asserts.AssertSubnetMapping(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubnetMapping to be of type 'table'")
	if struct["SubnetId"] then asserts.AssertSubnetId(struct["SubnetId"]) end
	if struct["AllocationId"] then asserts.AssertAllocationId(struct["AllocationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.SubnetMapping[k], "SubnetMapping contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubnetMapping
-- <p>Information about a subnet mapping.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SubnetId [SubnetId] <p>The ID of the subnet.</p>
-- * AllocationId [AllocationId] <p>[Network Load Balancers] The allocation ID of the Elastic IP address.</p>
-- @return SubnetMapping structure as a key-value pair table
function M.SubnetMapping(args)
	assert(args, "You must provide an argument table when creating SubnetMapping")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SubnetId"] = args["SubnetId"],
		["AllocationId"] = args["AllocationId"],
	}
	asserts.AssertSubnetMapping(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SetSecurityGroupsInput = { ["SecurityGroups"] = true, ["LoadBalancerArn"] = true, nil }

function asserts.AssertSetSecurityGroupsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetSecurityGroupsInput to be of type 'table'")
	assert(struct["LoadBalancerArn"], "Expected key LoadBalancerArn to exist in table")
	assert(struct["SecurityGroups"], "Expected key SecurityGroups to exist in table")
	if struct["SecurityGroups"] then asserts.AssertSecurityGroups(struct["SecurityGroups"]) end
	if struct["LoadBalancerArn"] then asserts.AssertLoadBalancerArn(struct["LoadBalancerArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetSecurityGroupsInput[k], "SetSecurityGroupsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetSecurityGroupsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SecurityGroups [SecurityGroups] <p>The IDs of the security groups.</p>
-- * LoadBalancerArn [LoadBalancerArn] <p>The Amazon Resource Name (ARN) of the load balancer.</p>
-- Required key: LoadBalancerArn
-- Required key: SecurityGroups
-- @return SetSecurityGroupsInput structure as a key-value pair table
function M.SetSecurityGroupsInput(args)
	assert(args, "You must provide an argument table when creating SetSecurityGroupsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SecurityGroups"] = args["SecurityGroups"],
		["LoadBalancerArn"] = args["LoadBalancerArn"],
	}
	asserts.AssertSetSecurityGroupsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LoadBalancerAttribute = { ["Value"] = true, ["Key"] = true, nil }

function asserts.AssertLoadBalancerAttribute(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LoadBalancerAttribute to be of type 'table'")
	if struct["Value"] then asserts.AssertLoadBalancerAttributeValue(struct["Value"]) end
	if struct["Key"] then asserts.AssertLoadBalancerAttributeKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.LoadBalancerAttribute[k], "LoadBalancerAttribute contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LoadBalancerAttribute
-- <p>Information about a load balancer attribute.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [LoadBalancerAttributeValue] <p>The value of the attribute.</p>
-- * Key [LoadBalancerAttributeKey] <p>The name of the attribute.</p> <p>The following attributes are supported by both Application Load Balancers and Network Load Balancers:</p> <ul> <li> <p> <code>deletion_protection.enabled</code> - Indicates whether deletion protection is enabled. The value is <code>true</code> or <code>false</code>. The default is <code>false</code>.</p> </li> </ul> <p>The following attributes are supported by only Application Load Balancers:</p> <ul> <li> <p> <code>access_logs.s3.enabled</code> - Indicates whether access logs are enabled. The value is <code>true</code> or <code>false</code>. The default is <code>false</code>.</p> </li> <li> <p> <code>access_logs.s3.bucket</code> - The name of the S3 bucket for the access logs. This attribute is required if access logs are enabled. The bucket must exist in the same region as the load balancer and have a bucket policy that grants Elastic Load Balancing permissions to write to the bucket.</p> </li> <li> <p> <code>access_logs.s3.prefix</code> - The prefix for the location in the S3 bucket for the access logs.</p> </li> <li> <p> <code>idle_timeout.timeout_seconds</code> - The idle timeout value, in seconds. The valid range is 1-4000 seconds. The default is 60 seconds.</p> </li> <li> <p> <code>routing.http2.enabled</code> - Indicates whether HTTP/2 is enabled. The value is <code>true</code> or <code>false</code>. The default is <code>true</code>.</p> </li> </ul> <p>The following attributes are supported by only Network Load Balancers:</p> <ul> <li> <p> <code>load_balancing.cross_zone.enabled</code> - Indicates whether cross-zone load balancing is enabled. The value is <code>true</code> or <code>false</code>. The default is <code>false</code>.</p> </li> </ul>
-- @return LoadBalancerAttribute structure as a key-value pair table
function M.LoadBalancerAttribute(args)
	assert(args, "You must provide an argument table when creating LoadBalancerAttribute")
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
	asserts.AssertLoadBalancerAttribute(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeTargetGroupsInput = { ["Marker"] = true, ["TargetGroupArns"] = true, ["LoadBalancerArn"] = true, ["Names"] = true, ["PageSize"] = true, nil }

function asserts.AssertDescribeTargetGroupsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTargetGroupsInput to be of type 'table'")
	if struct["Marker"] then asserts.AssertMarker(struct["Marker"]) end
	if struct["TargetGroupArns"] then asserts.AssertTargetGroupArns(struct["TargetGroupArns"]) end
	if struct["LoadBalancerArn"] then asserts.AssertLoadBalancerArn(struct["LoadBalancerArn"]) end
	if struct["Names"] then asserts.AssertTargetGroupNames(struct["Names"]) end
	if struct["PageSize"] then asserts.AssertPageSize(struct["PageSize"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTargetGroupsInput[k], "DescribeTargetGroupsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTargetGroupsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [Marker] <p>The marker for the next set of results. (You received this marker from a previous call.)</p>
-- * TargetGroupArns [TargetGroupArns] <p>The Amazon Resource Names (ARN) of the target groups.</p>
-- * LoadBalancerArn [LoadBalancerArn] <p>The Amazon Resource Name (ARN) of the load balancer.</p>
-- * Names [TargetGroupNames] <p>The names of the target groups.</p>
-- * PageSize [PageSize] <p>The maximum number of results to return with this call.</p>
-- @return DescribeTargetGroupsInput structure as a key-value pair table
function M.DescribeTargetGroupsInput(args)
	assert(args, "You must provide an argument table when creating DescribeTargetGroupsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["TargetGroupArns"] = args["TargetGroupArns"],
		["LoadBalancerArn"] = args["LoadBalancerArn"],
		["Names"] = args["Names"],
		["PageSize"] = args["PageSize"],
	}
	asserts.AssertDescribeTargetGroupsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeListenersOutput = { ["Listeners"] = true, ["NextMarker"] = true, nil }

function asserts.AssertDescribeListenersOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeListenersOutput to be of type 'table'")
	if struct["Listeners"] then asserts.AssertListeners(struct["Listeners"]) end
	if struct["NextMarker"] then asserts.AssertMarker(struct["NextMarker"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeListenersOutput[k], "DescribeListenersOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeListenersOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Listeners [Listeners] <p>Information about the listeners.</p>
-- * NextMarker [Marker] <p>The marker to use when requesting the next set of results. If there are no additional results, the string is empty.</p>
-- @return DescribeListenersOutput structure as a key-value pair table
function M.DescribeListenersOutput(args)
	assert(args, "You must provide an argument table when creating DescribeListenersOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Listeners"] = args["Listeners"],
		["NextMarker"] = args["NextMarker"],
	}
	asserts.AssertDescribeListenersOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RemoveTagsInput = { ["TagKeys"] = true, ["ResourceArns"] = true, nil }

function asserts.AssertRemoveTagsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveTagsInput to be of type 'table'")
	assert(struct["ResourceArns"], "Expected key ResourceArns to exist in table")
	assert(struct["TagKeys"], "Expected key TagKeys to exist in table")
	if struct["TagKeys"] then asserts.AssertTagKeys(struct["TagKeys"]) end
	if struct["ResourceArns"] then asserts.AssertResourceArns(struct["ResourceArns"]) end
	for k,_ in pairs(struct) do
		assert(keys.RemoveTagsInput[k], "RemoveTagsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveTagsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TagKeys [TagKeys] <p>The tag keys for the tags to remove.</p>
-- * ResourceArns [ResourceArns] <p>The Amazon Resource Name (ARN) of the resource.</p>
-- Required key: ResourceArns
-- Required key: TagKeys
-- @return RemoveTagsInput structure as a key-value pair table
function M.RemoveTagsInput(args)
	assert(args, "You must provide an argument table when creating RemoveTagsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TagKeys"] = args["TagKeys"],
		["ResourceArns"] = args["ResourceArns"],
	}
	asserts.AssertRemoveTagsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Rule = { ["Priority"] = true, ["Conditions"] = true, ["RuleArn"] = true, ["IsDefault"] = true, ["Actions"] = true, nil }

function asserts.AssertRule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Rule to be of type 'table'")
	if struct["Priority"] then asserts.AssertString(struct["Priority"]) end
	if struct["Conditions"] then asserts.AssertRuleConditionList(struct["Conditions"]) end
	if struct["RuleArn"] then asserts.AssertRuleArn(struct["RuleArn"]) end
	if struct["IsDefault"] then asserts.AssertIsDefault(struct["IsDefault"]) end
	if struct["Actions"] then asserts.AssertActions(struct["Actions"]) end
	for k,_ in pairs(struct) do
		assert(keys.Rule[k], "Rule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Rule
-- <p>Information about a rule.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Priority [String] <p>The priority.</p>
-- * Conditions [RuleConditionList] <p>The conditions.</p>
-- * RuleArn [RuleArn] <p>The Amazon Resource Name (ARN) of the rule.</p>
-- * IsDefault [IsDefault] <p>Indicates whether this is the default rule.</p>
-- * Actions [Actions] <p>The actions.</p>
-- @return Rule structure as a key-value pair table
function M.Rule(args)
	assert(args, "You must provide an argument table when creating Rule")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Priority"] = args["Priority"],
		["Conditions"] = args["Conditions"],
		["RuleArn"] = args["RuleArn"],
		["IsDefault"] = args["IsDefault"],
		["Actions"] = args["Actions"],
	}
	asserts.AssertRule(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LoadBalancerNotFoundException = { nil }

function asserts.AssertLoadBalancerNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LoadBalancerNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.LoadBalancerNotFoundException[k], "LoadBalancerNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LoadBalancerNotFoundException
-- <p>The specified load balancer does not exist.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return LoadBalancerNotFoundException structure as a key-value pair table
function M.LoadBalancerNotFoundException(args)
	assert(args, "You must provide an argument table when creating LoadBalancerNotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertLoadBalancerNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TargetDescription = { ["AvailabilityZone"] = true, ["Id"] = true, ["Port"] = true, nil }

function asserts.AssertTargetDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TargetDescription to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["AvailabilityZone"] then asserts.AssertZoneName(struct["AvailabilityZone"]) end
	if struct["Id"] then asserts.AssertTargetId(struct["Id"]) end
	if struct["Port"] then asserts.AssertPort(struct["Port"]) end
	for k,_ in pairs(struct) do
		assert(keys.TargetDescription[k], "TargetDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TargetDescription
-- <p>Information about a target.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AvailabilityZone [ZoneName] <p>An Availability Zone or <code>all</code>. This determines whether the target receives traffic from the load balancer nodes in the specified Availability Zone or from all enabled Availability Zones for the load balancer.</p> <p>This parameter is not supported if the target type of the target group is <code>instance</code>. If the IP address is in a subnet of the VPC for the target group, the Availability Zone is automatically detected and this parameter is optional. If the IP address is outside the VPC, this parameter is required.</p> <p>With an Application Load Balancer, if the IP address is outside the VPC for the target group, the only supported value is <code>all</code>.</p>
-- * Id [TargetId] <p>The ID of the target. If the target type of the target group is <code>instance</code>, specify an instance ID. If the target type is <code>ip</code>, specify an IP address.</p>
-- * Port [Port] <p>The port on which the target is listening.</p>
-- Required key: Id
-- @return TargetDescription structure as a key-value pair table
function M.TargetDescription(args)
	assert(args, "You must provide an argument table when creating TargetDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AvailabilityZone"] = args["AvailabilityZone"],
		["Id"] = args["Id"],
		["Port"] = args["Port"],
	}
	asserts.AssertTargetDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SetIpAddressTypeOutput = { ["IpAddressType"] = true, nil }

function asserts.AssertSetIpAddressTypeOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetIpAddressTypeOutput to be of type 'table'")
	if struct["IpAddressType"] then asserts.AssertIpAddressType(struct["IpAddressType"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetIpAddressTypeOutput[k], "SetIpAddressTypeOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetIpAddressTypeOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IpAddressType [IpAddressType] <p>The IP address type.</p>
-- @return SetIpAddressTypeOutput structure as a key-value pair table
function M.SetIpAddressTypeOutput(args)
	assert(args, "You must provide an argument table when creating SetIpAddressTypeOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IpAddressType"] = args["IpAddressType"],
	}
	asserts.AssertSetIpAddressTypeOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeSSLPoliciesInput = { ["Marker"] = true, ["Names"] = true, ["PageSize"] = true, nil }

function asserts.AssertDescribeSSLPoliciesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSSLPoliciesInput to be of type 'table'")
	if struct["Marker"] then asserts.AssertMarker(struct["Marker"]) end
	if struct["Names"] then asserts.AssertSslPolicyNames(struct["Names"]) end
	if struct["PageSize"] then asserts.AssertPageSize(struct["PageSize"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeSSLPoliciesInput[k], "DescribeSSLPoliciesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSSLPoliciesInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [Marker] <p>The marker for the next set of results. (You received this marker from a previous call.)</p>
-- * Names [SslPolicyNames] <p>The names of the policies.</p>
-- * PageSize [PageSize] <p>The maximum number of results to return with this call.</p>
-- @return DescribeSSLPoliciesInput structure as a key-value pair table
function M.DescribeSSLPoliciesInput(args)
	assert(args, "You must provide an argument table when creating DescribeSSLPoliciesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["Names"] = args["Names"],
		["PageSize"] = args["PageSize"],
	}
	asserts.AssertDescribeSSLPoliciesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AddListenerCertificatesInput = { ["Certificates"] = true, ["ListenerArn"] = true, nil }

function asserts.AssertAddListenerCertificatesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddListenerCertificatesInput to be of type 'table'")
	assert(struct["ListenerArn"], "Expected key ListenerArn to exist in table")
	assert(struct["Certificates"], "Expected key Certificates to exist in table")
	if struct["Certificates"] then asserts.AssertCertificateList(struct["Certificates"]) end
	if struct["ListenerArn"] then asserts.AssertListenerArn(struct["ListenerArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddListenerCertificatesInput[k], "AddListenerCertificatesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddListenerCertificatesInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Certificates [CertificateList] <p>The certificate to add. You can specify one certificate per call.</p>
-- * ListenerArn [ListenerArn] <p>The Amazon Resource Name (ARN) of the listener.</p>
-- Required key: ListenerArn
-- Required key: Certificates
-- @return AddListenerCertificatesInput structure as a key-value pair table
function M.AddListenerCertificatesInput(args)
	assert(args, "You must provide an argument table when creating AddListenerCertificatesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Certificates"] = args["Certificates"],
		["ListenerArn"] = args["ListenerArn"],
	}
	asserts.AssertAddListenerCertificatesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RedirectActionConfig = { ["Protocol"] = true, ["Host"] = true, ["Query"] = true, ["Path"] = true, ["Port"] = true, ["StatusCode"] = true, nil }

function asserts.AssertRedirectActionConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RedirectActionConfig to be of type 'table'")
	assert(struct["StatusCode"], "Expected key StatusCode to exist in table")
	if struct["Protocol"] then asserts.AssertRedirectActionProtocol(struct["Protocol"]) end
	if struct["Host"] then asserts.AssertRedirectActionHost(struct["Host"]) end
	if struct["Query"] then asserts.AssertRedirectActionQuery(struct["Query"]) end
	if struct["Path"] then asserts.AssertRedirectActionPath(struct["Path"]) end
	if struct["Port"] then asserts.AssertRedirectActionPort(struct["Port"]) end
	if struct["StatusCode"] then asserts.AssertRedirectActionStatusCodeEnum(struct["StatusCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.RedirectActionConfig[k], "RedirectActionConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RedirectActionConfig
-- <p>Information about a redirect action.</p> <p>A URI consists of the following components: protocol://hostname:port/path?query. You must modify at least one of the following components to avoid a redirect loop: protocol, hostname, port, or path. Any components that you do not modify retain their original values.</p> <p>You can reuse URI components using the following reserved keywords:</p> <ul> <li> <p>#{protocol}</p> </li> <li> <p>#{host}</p> </li> <li> <p>#{port}</p> </li> <li> <p>#{path} (the leading "/" is removed)</p> </li> <li> <p>#{query}</p> </li> </ul> <p>For example, you can change the path to "/new/#{path}", the hostname to "example.#{host}", or the query to "#{query}&amp;value=xyz".</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Protocol [RedirectActionProtocol] <p>The protocol. You can specify HTTP, HTTPS, or #{protocol}. You can redirect HTTP to HTTP, HTTP to HTTPS, and HTTPS to HTTPS. You cannot redirect HTTPS to HTTP.</p>
-- * Host [RedirectActionHost] <p>The hostname. This component is not percent-encoded. The hostname can contain #{host}.</p>
-- * Query [RedirectActionQuery] <p>The query parameters, URL-encoded when necessary, but not percent-encoded. Do not include the leading "?", as it is automatically added. You can specify any of the reserved keywords.</p>
-- * Path [RedirectActionPath] <p>The absolute path, starting with the leading "/". This component is not percent-encoded. The path can contain #{host}, #{path}, and #{port}.</p>
-- * Port [RedirectActionPort] <p>The port. You can specify a value from 1 to 65535 or #{port}.</p>
-- * StatusCode [RedirectActionStatusCodeEnum] <p>The HTTP redirect code. The redirect is either permanent (HTTP 301) or temporary (HTTP 302).</p>
-- Required key: StatusCode
-- @return RedirectActionConfig structure as a key-value pair table
function M.RedirectActionConfig(args)
	assert(args, "You must provide an argument table when creating RedirectActionConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Protocol"] = args["Protocol"],
		["Host"] = args["Host"],
		["Query"] = args["Query"],
		["Path"] = args["Path"],
		["Port"] = args["Port"],
		["StatusCode"] = args["StatusCode"],
	}
	asserts.AssertRedirectActionConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FixedResponseActionConfig = { ["ContentType"] = true, ["MessageBody"] = true, ["StatusCode"] = true, nil }

function asserts.AssertFixedResponseActionConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FixedResponseActionConfig to be of type 'table'")
	assert(struct["StatusCode"], "Expected key StatusCode to exist in table")
	if struct["ContentType"] then asserts.AssertFixedResponseActionContentType(struct["ContentType"]) end
	if struct["MessageBody"] then asserts.AssertFixedResponseActionMessage(struct["MessageBody"]) end
	if struct["StatusCode"] then asserts.AssertFixedResponseActionStatusCode(struct["StatusCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.FixedResponseActionConfig[k], "FixedResponseActionConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FixedResponseActionConfig
-- <p>Information about an action that returns a custom HTTP response.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ContentType [FixedResponseActionContentType] <p>The content type.</p> <p>Valid Values: text/plain | text/css | text/html | application/javascript | application/json</p>
-- * MessageBody [FixedResponseActionMessage] <p>The message.</p>
-- * StatusCode [FixedResponseActionStatusCode] <p>The HTTP response code (2XX, 4XX, or 5XX).</p>
-- Required key: StatusCode
-- @return FixedResponseActionConfig structure as a key-value pair table
function M.FixedResponseActionConfig(args)
	assert(args, "You must provide an argument table when creating FixedResponseActionConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ContentType"] = args["ContentType"],
		["MessageBody"] = args["MessageBody"],
		["StatusCode"] = args["StatusCode"],
	}
	asserts.AssertFixedResponseActionConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateRuleOutput = { ["Rules"] = true, nil }

function asserts.AssertCreateRuleOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateRuleOutput to be of type 'table'")
	if struct["Rules"] then asserts.AssertRules(struct["Rules"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateRuleOutput[k], "CreateRuleOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateRuleOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Rules [Rules] <p>Information about the rule.</p>
-- @return CreateRuleOutput structure as a key-value pair table
function M.CreateRuleOutput(args)
	assert(args, "You must provide an argument table when creating CreateRuleOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Rules"] = args["Rules"],
	}
	asserts.AssertCreateRuleOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LoadBalancer = { ["IpAddressType"] = true, ["VpcId"] = true, ["LoadBalancerArn"] = true, ["State"] = true, ["DNSName"] = true, ["SecurityGroups"] = true, ["LoadBalancerName"] = true, ["CreatedTime"] = true, ["Scheme"] = true, ["Type"] = true, ["CanonicalHostedZoneId"] = true, ["AvailabilityZones"] = true, nil }

function asserts.AssertLoadBalancer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LoadBalancer to be of type 'table'")
	if struct["IpAddressType"] then asserts.AssertIpAddressType(struct["IpAddressType"]) end
	if struct["VpcId"] then asserts.AssertVpcId(struct["VpcId"]) end
	if struct["LoadBalancerArn"] then asserts.AssertLoadBalancerArn(struct["LoadBalancerArn"]) end
	if struct["State"] then asserts.AssertLoadBalancerState(struct["State"]) end
	if struct["DNSName"] then asserts.AssertDNSName(struct["DNSName"]) end
	if struct["SecurityGroups"] then asserts.AssertSecurityGroups(struct["SecurityGroups"]) end
	if struct["LoadBalancerName"] then asserts.AssertLoadBalancerName(struct["LoadBalancerName"]) end
	if struct["CreatedTime"] then asserts.AssertCreatedTime(struct["CreatedTime"]) end
	if struct["Scheme"] then asserts.AssertLoadBalancerSchemeEnum(struct["Scheme"]) end
	if struct["Type"] then asserts.AssertLoadBalancerTypeEnum(struct["Type"]) end
	if struct["CanonicalHostedZoneId"] then asserts.AssertCanonicalHostedZoneId(struct["CanonicalHostedZoneId"]) end
	if struct["AvailabilityZones"] then asserts.AssertAvailabilityZones(struct["AvailabilityZones"]) end
	for k,_ in pairs(struct) do
		assert(keys.LoadBalancer[k], "LoadBalancer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LoadBalancer
-- <p>Information about a load balancer.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IpAddressType [IpAddressType] <p>The type of IP addresses used by the subnets for your load balancer. The possible values are <code>ipv4</code> (for IPv4 addresses) and <code>dualstack</code> (for IPv4 and IPv6 addresses).</p>
-- * VpcId [VpcId] <p>The ID of the VPC for the load balancer.</p>
-- * LoadBalancerArn [LoadBalancerArn] <p>The Amazon Resource Name (ARN) of the load balancer.</p>
-- * State [LoadBalancerState] <p>The state of the load balancer.</p>
-- * DNSName [DNSName] <p>The public DNS name of the load balancer.</p>
-- * SecurityGroups [SecurityGroups] <p>The IDs of the security groups for the load balancer.</p>
-- * LoadBalancerName [LoadBalancerName] <p>The name of the load balancer.</p>
-- * CreatedTime [CreatedTime] <p>The date and time the load balancer was created.</p>
-- * Scheme [LoadBalancerSchemeEnum] <p>The nodes of an Internet-facing load balancer have public IP addresses. The DNS name of an Internet-facing load balancer is publicly resolvable to the public IP addresses of the nodes. Therefore, Internet-facing load balancers can route requests from clients over the internet.</p> <p>The nodes of an internal load balancer have only private IP addresses. The DNS name of an internal load balancer is publicly resolvable to the private IP addresses of the nodes. Therefore, internal load balancers can only route requests from clients with access to the VPC for the load balancer.</p>
-- * Type [LoadBalancerTypeEnum] <p>The type of load balancer.</p>
-- * CanonicalHostedZoneId [CanonicalHostedZoneId] <p>The ID of the Amazon Route 53 hosted zone associated with the load balancer.</p>
-- * AvailabilityZones [AvailabilityZones] <p>The Availability Zones for the load balancer.</p>
-- @return LoadBalancer structure as a key-value pair table
function M.LoadBalancer(args)
	assert(args, "You must provide an argument table when creating LoadBalancer")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IpAddressType"] = args["IpAddressType"],
		["VpcId"] = args["VpcId"],
		["LoadBalancerArn"] = args["LoadBalancerArn"],
		["State"] = args["State"],
		["DNSName"] = args["DNSName"],
		["SecurityGroups"] = args["SecurityGroups"],
		["LoadBalancerName"] = args["LoadBalancerName"],
		["CreatedTime"] = args["CreatedTime"],
		["Scheme"] = args["Scheme"],
		["Type"] = args["Type"],
		["CanonicalHostedZoneId"] = args["CanonicalHostedZoneId"],
		["AvailabilityZones"] = args["AvailabilityZones"],
	}
	asserts.AssertLoadBalancer(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertAuthenticateCognitoActionAuthenticationRequestParamValue(str)
	assert(str)
	assert(type(str) == "string", "Expected AuthenticateCognitoActionAuthenticationRequestParamValue to be of type 'string'")
end

--  
function M.AuthenticateCognitoActionAuthenticationRequestParamValue(str)
	asserts.AssertAuthenticateCognitoActionAuthenticationRequestParamValue(str)
	return str
end

function asserts.AssertDNSName(str)
	assert(str)
	assert(type(str) == "string", "Expected DNSName to be of type 'string'")
end

--  
function M.DNSName(str)
	asserts.AssertDNSName(str)
	return str
end

function asserts.AssertLoadBalancerSchemeEnum(str)
	assert(str)
	assert(type(str) == "string", "Expected LoadBalancerSchemeEnum to be of type 'string'")
end

--  
function M.LoadBalancerSchemeEnum(str)
	asserts.AssertLoadBalancerSchemeEnum(str)
	return str
end

function asserts.AssertTagKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TagKey to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TagKey(str)
	asserts.AssertTagKey(str)
	return str
end

function asserts.AssertPath(str)
	assert(str)
	assert(type(str) == "string", "Expected Path to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Path(str)
	asserts.AssertPath(str)
	return str
end

function asserts.AssertConditionFieldName(str)
	assert(str)
	assert(type(str) == "string", "Expected ConditionFieldName to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
end

--  
function M.ConditionFieldName(str)
	asserts.AssertConditionFieldName(str)
	return str
end

function asserts.AssertAuthenticateOidcActionTokenEndpoint(str)
	assert(str)
	assert(type(str) == "string", "Expected AuthenticateOidcActionTokenEndpoint to be of type 'string'")
end

--  
function M.AuthenticateOidcActionTokenEndpoint(str)
	asserts.AssertAuthenticateOidcActionTokenEndpoint(str)
	return str
end

function asserts.AssertTargetGroupArn(str)
	assert(str)
	assert(type(str) == "string", "Expected TargetGroupArn to be of type 'string'")
end

--  
function M.TargetGroupArn(str)
	asserts.AssertTargetGroupArn(str)
	return str
end

function asserts.AssertIpAddressType(str)
	assert(str)
	assert(type(str) == "string", "Expected IpAddressType to be of type 'string'")
end

--  
function M.IpAddressType(str)
	asserts.AssertIpAddressType(str)
	return str
end

function asserts.AssertTargetGroupAttributeKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TargetGroupAttributeKey to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.TargetGroupAttributeKey(str)
	asserts.AssertTargetGroupAttributeKey(str)
	return str
end

function asserts.AssertAuthenticateOidcActionUserInfoEndpoint(str)
	assert(str)
	assert(type(str) == "string", "Expected AuthenticateOidcActionUserInfoEndpoint to be of type 'string'")
end

--  
function M.AuthenticateOidcActionUserInfoEndpoint(str)
	asserts.AssertAuthenticateOidcActionUserInfoEndpoint(str)
	return str
end

function asserts.AssertLoadBalancerName(str)
	assert(str)
	assert(type(str) == "string", "Expected LoadBalancerName to be of type 'string'")
end

--  
function M.LoadBalancerName(str)
	asserts.AssertLoadBalancerName(str)
	return str
end

function asserts.AssertStringValue(str)
	assert(str)
	assert(type(str) == "string", "Expected StringValue to be of type 'string'")
end

--  
function M.StringValue(str)
	asserts.AssertStringValue(str)
	return str
end

function asserts.AssertLoadBalancerAttributeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected LoadBalancerAttributeValue to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

--  
function M.LoadBalancerAttributeValue(str)
	asserts.AssertLoadBalancerAttributeValue(str)
	return str
end

function asserts.AssertAuthenticateOidcActionAuthenticationRequestParamValue(str)
	assert(str)
	assert(type(str) == "string", "Expected AuthenticateOidcActionAuthenticationRequestParamValue to be of type 'string'")
end

--  
function M.AuthenticateOidcActionAuthenticationRequestParamValue(str)
	asserts.AssertAuthenticateOidcActionAuthenticationRequestParamValue(str)
	return str
end

function asserts.AssertFixedResponseActionMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected FixedResponseActionMessage to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

--  
function M.FixedResponseActionMessage(str)
	asserts.AssertFixedResponseActionMessage(str)
	return str
end

function asserts.AssertTargetHealthReasonEnum(str)
	assert(str)
	assert(type(str) == "string", "Expected TargetHealthReasonEnum to be of type 'string'")
end

--  
function M.TargetHealthReasonEnum(str)
	asserts.AssertTargetHealthReasonEnum(str)
	return str
end

function asserts.AssertLoadBalancerAttributeKey(str)
	assert(str)
	assert(type(str) == "string", "Expected LoadBalancerAttributeKey to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.LoadBalancerAttributeKey(str)
	asserts.AssertLoadBalancerAttributeKey(str)
	return str
end

function asserts.AssertAuthenticateOidcActionIssuer(str)
	assert(str)
	assert(type(str) == "string", "Expected AuthenticateOidcActionIssuer to be of type 'string'")
end

--  
function M.AuthenticateOidcActionIssuer(str)
	asserts.AssertAuthenticateOidcActionIssuer(str)
	return str
end

function asserts.AssertTargetGroupAttributeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TargetGroupAttributeValue to be of type 'string'")
end

--  
function M.TargetGroupAttributeValue(str)
	asserts.AssertTargetGroupAttributeValue(str)
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
end

--  
function M.ResourceArn(str)
	asserts.AssertResourceArn(str)
	return str
end

function asserts.AssertZoneName(str)
	assert(str)
	assert(type(str) == "string", "Expected ZoneName to be of type 'string'")
end

--  
function M.ZoneName(str)
	asserts.AssertZoneName(str)
	return str
end

function asserts.AssertSubnetId(str)
	assert(str)
	assert(type(str) == "string", "Expected SubnetId to be of type 'string'")
end

--  
function M.SubnetId(str)
	asserts.AssertSubnetId(str)
	return str
end

function asserts.AssertTargetGroupName(str)
	assert(str)
	assert(type(str) == "string", "Expected TargetGroupName to be of type 'string'")
end

--  
function M.TargetGroupName(str)
	asserts.AssertTargetGroupName(str)
	return str
end

function asserts.AssertAuthenticateCognitoActionSessionCookieName(str)
	assert(str)
	assert(type(str) == "string", "Expected AuthenticateCognitoActionSessionCookieName to be of type 'string'")
end

--  
function M.AuthenticateCognitoActionSessionCookieName(str)
	asserts.AssertAuthenticateCognitoActionSessionCookieName(str)
	return str
end

function asserts.AssertMarker(str)
	assert(str)
	assert(type(str) == "string", "Expected Marker to be of type 'string'")
end

--  
function M.Marker(str)
	asserts.AssertMarker(str)
	return str
end

function asserts.AssertTagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TagValue to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.TagValue(str)
	asserts.AssertTagValue(str)
	return str
end

function asserts.AssertRedirectActionQuery(str)
	assert(str)
	assert(type(str) == "string", "Expected RedirectActionQuery to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
end

--  
function M.RedirectActionQuery(str)
	asserts.AssertRedirectActionQuery(str)
	return str
end

function asserts.AssertCertificateArn(str)
	assert(str)
	assert(type(str) == "string", "Expected CertificateArn to be of type 'string'")
end

--  
function M.CertificateArn(str)
	asserts.AssertCertificateArn(str)
	return str
end

function asserts.AssertRedirectActionHost(str)
	assert(str)
	assert(type(str) == "string", "Expected RedirectActionHost to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RedirectActionHost(str)
	asserts.AssertRedirectActionHost(str)
	return str
end

function asserts.AssertRedirectActionProtocol(str)
	assert(str)
	assert(type(str) == "string", "Expected RedirectActionProtocol to be of type 'string'")
end

--  
function M.RedirectActionProtocol(str)
	asserts.AssertRedirectActionProtocol(str)
	return str
end

function asserts.AssertSslProtocol(str)
	assert(str)
	assert(type(str) == "string", "Expected SslProtocol to be of type 'string'")
end

--  
function M.SslProtocol(str)
	asserts.AssertSslProtocol(str)
	return str
end

function asserts.AssertTargetTypeEnum(str)
	assert(str)
	assert(type(str) == "string", "Expected TargetTypeEnum to be of type 'string'")
end

--  
function M.TargetTypeEnum(str)
	asserts.AssertTargetTypeEnum(str)
	return str
end

function asserts.AssertAuthenticateCognitoActionUserPoolArn(str)
	assert(str)
	assert(type(str) == "string", "Expected AuthenticateCognitoActionUserPoolArn to be of type 'string'")
end

--  
function M.AuthenticateCognitoActionUserPoolArn(str)
	asserts.AssertAuthenticateCognitoActionUserPoolArn(str)
	return str
end

function asserts.AssertAuthenticateCognitoActionUserPoolDomain(str)
	assert(str)
	assert(type(str) == "string", "Expected AuthenticateCognitoActionUserPoolDomain to be of type 'string'")
end

--  
function M.AuthenticateCognitoActionUserPoolDomain(str)
	asserts.AssertAuthenticateCognitoActionUserPoolDomain(str)
	return str
end

function asserts.AssertActionTypeEnum(str)
	assert(str)
	assert(type(str) == "string", "Expected ActionTypeEnum to be of type 'string'")
end

--  
function M.ActionTypeEnum(str)
	asserts.AssertActionTypeEnum(str)
	return str
end

function asserts.AssertAuthenticateCognitoActionUserPoolClientId(str)
	assert(str)
	assert(type(str) == "string", "Expected AuthenticateCognitoActionUserPoolClientId to be of type 'string'")
end

--  
function M.AuthenticateCognitoActionUserPoolClientId(str)
	asserts.AssertAuthenticateCognitoActionUserPoolClientId(str)
	return str
end

function asserts.AssertFixedResponseActionContentType(str)
	assert(str)
	assert(type(str) == "string", "Expected FixedResponseActionContentType to be of type 'string'")
	assert(#str <= 32, "Expected string to be max 32 characters")
end

--  
function M.FixedResponseActionContentType(str)
	asserts.AssertFixedResponseActionContentType(str)
	return str
end

function asserts.AssertRedirectActionStatusCodeEnum(str)
	assert(str)
	assert(type(str) == "string", "Expected RedirectActionStatusCodeEnum to be of type 'string'")
end

--  
function M.RedirectActionStatusCodeEnum(str)
	asserts.AssertRedirectActionStatusCodeEnum(str)
	return str
end

function asserts.AssertHealthCheckPort(str)
	assert(str)
	assert(type(str) == "string", "Expected HealthCheckPort to be of type 'string'")
end

--  
function M.HealthCheckPort(str)
	asserts.AssertHealthCheckPort(str)
	return str
end

function asserts.AssertAuthenticateOidcActionAuthenticationRequestParamName(str)
	assert(str)
	assert(type(str) == "string", "Expected AuthenticateOidcActionAuthenticationRequestParamName to be of type 'string'")
end

--  
function M.AuthenticateOidcActionAuthenticationRequestParamName(str)
	asserts.AssertAuthenticateOidcActionAuthenticationRequestParamName(str)
	return str
end

function asserts.AssertRedirectActionPath(str)
	assert(str)
	assert(type(str) == "string", "Expected RedirectActionPath to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RedirectActionPath(str)
	asserts.AssertRedirectActionPath(str)
	return str
end

function asserts.AssertAuthenticateOidcActionSessionCookieName(str)
	assert(str)
	assert(type(str) == "string", "Expected AuthenticateOidcActionSessionCookieName to be of type 'string'")
end

--  
function M.AuthenticateOidcActionSessionCookieName(str)
	asserts.AssertAuthenticateOidcActionSessionCookieName(str)
	return str
end

function asserts.AssertListenerArn(str)
	assert(str)
	assert(type(str) == "string", "Expected ListenerArn to be of type 'string'")
end

--  
function M.ListenerArn(str)
	asserts.AssertListenerArn(str)
	return str
end

function asserts.AssertLoadBalancerArn(str)
	assert(str)
	assert(type(str) == "string", "Expected LoadBalancerArn to be of type 'string'")
end

--  
function M.LoadBalancerArn(str)
	asserts.AssertLoadBalancerArn(str)
	return str
end

function asserts.AssertHttpCode(str)
	assert(str)
	assert(type(str) == "string", "Expected HttpCode to be of type 'string'")
end

--  
function M.HttpCode(str)
	asserts.AssertHttpCode(str)
	return str
end

function asserts.AssertAuthenticateOidcActionClientId(str)
	assert(str)
	assert(type(str) == "string", "Expected AuthenticateOidcActionClientId to be of type 'string'")
end

--  
function M.AuthenticateOidcActionClientId(str)
	asserts.AssertAuthenticateOidcActionClientId(str)
	return str
end

function asserts.AssertAuthenticateOidcActionClientSecret(str)
	assert(str)
	assert(type(str) == "string", "Expected AuthenticateOidcActionClientSecret to be of type 'string'")
end

--  
function M.AuthenticateOidcActionClientSecret(str)
	asserts.AssertAuthenticateOidcActionClientSecret(str)
	return str
end

function asserts.AssertAuthenticateCognitoActionConditionalBehaviorEnum(str)
	assert(str)
	assert(type(str) == "string", "Expected AuthenticateCognitoActionConditionalBehaviorEnum to be of type 'string'")
end

--  
function M.AuthenticateCognitoActionConditionalBehaviorEnum(str)
	asserts.AssertAuthenticateCognitoActionConditionalBehaviorEnum(str)
	return str
end

function asserts.AssertRuleArn(str)
	assert(str)
	assert(type(str) == "string", "Expected RuleArn to be of type 'string'")
end

--  
function M.RuleArn(str)
	asserts.AssertRuleArn(str)
	return str
end

function asserts.AssertAuthenticateOidcActionScope(str)
	assert(str)
	assert(type(str) == "string", "Expected AuthenticateOidcActionScope to be of type 'string'")
end

--  
function M.AuthenticateOidcActionScope(str)
	asserts.AssertAuthenticateOidcActionScope(str)
	return str
end

function asserts.AssertSecurityGroupId(str)
	assert(str)
	assert(type(str) == "string", "Expected SecurityGroupId to be of type 'string'")
end

--  
function M.SecurityGroupId(str)
	asserts.AssertSecurityGroupId(str)
	return str
end

function asserts.AssertAuthenticateCognitoActionScope(str)
	assert(str)
	assert(type(str) == "string", "Expected AuthenticateCognitoActionScope to be of type 'string'")
end

--  
function M.AuthenticateCognitoActionScope(str)
	asserts.AssertAuthenticateCognitoActionScope(str)
	return str
end

function asserts.AssertAuthenticateOidcActionAuthorizationEndpoint(str)
	assert(str)
	assert(type(str) == "string", "Expected AuthenticateOidcActionAuthorizationEndpoint to be of type 'string'")
end

--  
function M.AuthenticateOidcActionAuthorizationEndpoint(str)
	asserts.AssertAuthenticateOidcActionAuthorizationEndpoint(str)
	return str
end

function asserts.AssertIpAddress(str)
	assert(str)
	assert(type(str) == "string", "Expected IpAddress to be of type 'string'")
end

--  
function M.IpAddress(str)
	asserts.AssertIpAddress(str)
	return str
end

function asserts.AssertAllocationId(str)
	assert(str)
	assert(type(str) == "string", "Expected AllocationId to be of type 'string'")
end

--  
function M.AllocationId(str)
	asserts.AssertAllocationId(str)
	return str
end

function asserts.AssertAuthenticateOidcActionConditionalBehaviorEnum(str)
	assert(str)
	assert(type(str) == "string", "Expected AuthenticateOidcActionConditionalBehaviorEnum to be of type 'string'")
end

--  
function M.AuthenticateOidcActionConditionalBehaviorEnum(str)
	asserts.AssertAuthenticateOidcActionConditionalBehaviorEnum(str)
	return str
end

function asserts.AssertDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected Description to be of type 'string'")
end

--  
function M.Description(str)
	asserts.AssertDescription(str)
	return str
end

function asserts.AssertAuthenticateCognitoActionAuthenticationRequestParamName(str)
	assert(str)
	assert(type(str) == "string", "Expected AuthenticateCognitoActionAuthenticationRequestParamName to be of type 'string'")
end

--  
function M.AuthenticateCognitoActionAuthenticationRequestParamName(str)
	asserts.AssertAuthenticateCognitoActionAuthenticationRequestParamName(str)
	return str
end

function asserts.AssertTargetId(str)
	assert(str)
	assert(type(str) == "string", "Expected TargetId to be of type 'string'")
end

--  
function M.TargetId(str)
	asserts.AssertTargetId(str)
	return str
end

function asserts.AssertCanonicalHostedZoneId(str)
	assert(str)
	assert(type(str) == "string", "Expected CanonicalHostedZoneId to be of type 'string'")
end

--  
function M.CanonicalHostedZoneId(str)
	asserts.AssertCanonicalHostedZoneId(str)
	return str
end

function asserts.AssertTargetHealthStateEnum(str)
	assert(str)
	assert(type(str) == "string", "Expected TargetHealthStateEnum to be of type 'string'")
end

--  
function M.TargetHealthStateEnum(str)
	asserts.AssertTargetHealthStateEnum(str)
	return str
end

function asserts.AssertLoadBalancerTypeEnum(str)
	assert(str)
	assert(type(str) == "string", "Expected LoadBalancerTypeEnum to be of type 'string'")
end

--  
function M.LoadBalancerTypeEnum(str)
	asserts.AssertLoadBalancerTypeEnum(str)
	return str
end

function asserts.AssertCipherName(str)
	assert(str)
	assert(type(str) == "string", "Expected CipherName to be of type 'string'")
end

--  
function M.CipherName(str)
	asserts.AssertCipherName(str)
	return str
end

function asserts.AssertFixedResponseActionStatusCode(str)
	assert(str)
	assert(type(str) == "string", "Expected FixedResponseActionStatusCode to be of type 'string'")
end

--  
function M.FixedResponseActionStatusCode(str)
	asserts.AssertFixedResponseActionStatusCode(str)
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

function asserts.AssertProtocolEnum(str)
	assert(str)
	assert(type(str) == "string", "Expected ProtocolEnum to be of type 'string'")
end

--  
function M.ProtocolEnum(str)
	asserts.AssertProtocolEnum(str)
	return str
end

function asserts.AssertSslPolicyName(str)
	assert(str)
	assert(type(str) == "string", "Expected SslPolicyName to be of type 'string'")
end

--  
function M.SslPolicyName(str)
	asserts.AssertSslPolicyName(str)
	return str
end

function asserts.AssertStateReason(str)
	assert(str)
	assert(type(str) == "string", "Expected StateReason to be of type 'string'")
end

--  
function M.StateReason(str)
	asserts.AssertStateReason(str)
	return str
end

function asserts.AssertLoadBalancerStateEnum(str)
	assert(str)
	assert(type(str) == "string", "Expected LoadBalancerStateEnum to be of type 'string'")
end

--  
function M.LoadBalancerStateEnum(str)
	asserts.AssertLoadBalancerStateEnum(str)
	return str
end

function asserts.AssertRedirectActionPort(str)
	assert(str)
	assert(type(str) == "string", "Expected RedirectActionPort to be of type 'string'")
end

--  
function M.RedirectActionPort(str)
	asserts.AssertRedirectActionPort(str)
	return str
end

function asserts.AssertVpcId(str)
	assert(str)
	assert(type(str) == "string", "Expected VpcId to be of type 'string'")
end

--  
function M.VpcId(str)
	asserts.AssertVpcId(str)
	return str
end

function asserts.AssertMax(str)
	assert(str)
	assert(type(str) == "string", "Expected Max to be of type 'string'")
end

--  
function M.Max(str)
	asserts.AssertMax(str)
	return str
end

function asserts.AssertAuthenticateOidcActionSessionTimeout(long)
	assert(long)
	assert(type(long) == "number", "Expected AuthenticateOidcActionSessionTimeout to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.AuthenticateOidcActionSessionTimeout(long)
	asserts.AssertAuthenticateOidcActionSessionTimeout(long)
	return long
end

function asserts.AssertAuthenticateCognitoActionSessionTimeout(long)
	assert(long)
	assert(type(long) == "number", "Expected AuthenticateCognitoActionSessionTimeout to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.AuthenticateCognitoActionSessionTimeout(long)
	asserts.AssertAuthenticateCognitoActionSessionTimeout(long)
	return long
end

function asserts.AssertActionOrder(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ActionOrder to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 50000, "Expected integer to be max 50000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.ActionOrder(integer)
	asserts.AssertActionOrder(integer)
	return integer
end

function asserts.AssertHealthCheckThresholdCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected HealthCheckThresholdCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10, "Expected integer to be max 10")
	assert(integer >= 2, "Expected integer to be min 2")
end

function M.HealthCheckThresholdCount(integer)
	asserts.AssertHealthCheckThresholdCount(integer)
	return integer
end

function asserts.AssertHealthCheckIntervalSeconds(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected HealthCheckIntervalSeconds to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 300, "Expected integer to be max 300")
	assert(integer >= 5, "Expected integer to be min 5")
end

function M.HealthCheckIntervalSeconds(integer)
	asserts.AssertHealthCheckIntervalSeconds(integer)
	return integer
end

function asserts.AssertPageSize(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PageSize to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 400, "Expected integer to be max 400")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.PageSize(integer)
	asserts.AssertPageSize(integer)
	return integer
end

function asserts.AssertCipherPriority(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected CipherPriority to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.CipherPriority(integer)
	asserts.AssertCipherPriority(integer)
	return integer
end

function asserts.AssertHealthCheckTimeoutSeconds(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected HealthCheckTimeoutSeconds to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 60, "Expected integer to be max 60")
	assert(integer >= 2, "Expected integer to be min 2")
end

function M.HealthCheckTimeoutSeconds(integer)
	asserts.AssertHealthCheckTimeoutSeconds(integer)
	return integer
end

function asserts.AssertRulePriority(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected RulePriority to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 50000, "Expected integer to be max 50000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.RulePriority(integer)
	asserts.AssertRulePriority(integer)
	return integer
end

function asserts.AssertPort(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Port to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 65535, "Expected integer to be max 65535")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.Port(integer)
	asserts.AssertPort(integer)
	return integer
end

function asserts.AssertIsDefault(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected IsDefault to be of type 'boolean'")
end

function M.IsDefault(boolean)
	asserts.AssertIsDefault(boolean)
	return boolean
end

function asserts.AssertDefault(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Default to be of type 'boolean'")
end

function M.Default(boolean)
	asserts.AssertDefault(boolean)
	return boolean
end

function asserts.AssertAuthenticateCognitoActionAuthenticationRequestExtraParams(map)
	assert(map)
	assert(type(map) == "table", "Expected AuthenticateCognitoActionAuthenticationRequestExtraParams to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertAuthenticateCognitoActionAuthenticationRequestParamName(k)
		asserts.AssertAuthenticateCognitoActionAuthenticationRequestParamValue(v)
	end
end

function M.AuthenticateCognitoActionAuthenticationRequestExtraParams(map)
	asserts.AssertAuthenticateCognitoActionAuthenticationRequestExtraParams(map)
	return map
end

function asserts.AssertAuthenticateOidcActionAuthenticationRequestExtraParams(map)
	assert(map)
	assert(type(map) == "table", "Expected AuthenticateOidcActionAuthenticationRequestExtraParams to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertAuthenticateOidcActionAuthenticationRequestParamName(k)
		asserts.AssertAuthenticateOidcActionAuthenticationRequestParamValue(v)
	end
end

function M.AuthenticateOidcActionAuthenticationRequestExtraParams(map)
	asserts.AssertAuthenticateOidcActionAuthenticationRequestExtraParams(map)
	return map
end

function asserts.AssertCreatedTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected CreatedTime to be of type 'string'")
end

function M.CreatedTime(timestamp)
	asserts.AssertCreatedTime(timestamp)
	return timestamp
end

function asserts.AssertSslProtocols(list)
	assert(list)
	assert(type(list) == "table", "Expected SslProtocols to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSslProtocol(v)
	end
end

--  
-- List of SslProtocol objects
function M.SslProtocols(list)
	asserts.AssertSslProtocols(list)
	return list
end

function asserts.AssertTargetGroups(list)
	assert(list)
	assert(type(list) == "table", "Expected TargetGroups to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTargetGroup(v)
	end
end

--  
-- List of TargetGroup objects
function M.TargetGroups(list)
	asserts.AssertTargetGroups(list)
	return list
end

function asserts.AssertResourceArns(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceArns to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertResourceArn(v)
	end
end

--  
-- List of ResourceArn objects
function M.ResourceArns(list)
	asserts.AssertResourceArns(list)
	return list
end

function asserts.AssertTargetHealthDescriptions(list)
	assert(list)
	assert(type(list) == "table", "Expected TargetHealthDescriptions to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTargetHealthDescription(v)
	end
end

--  
-- List of TargetHealthDescription objects
function M.TargetHealthDescriptions(list)
	asserts.AssertTargetHealthDescriptions(list)
	return list
end

function asserts.AssertLoadBalancers(list)
	assert(list)
	assert(type(list) == "table", "Expected LoadBalancers to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLoadBalancer(v)
	end
end

--  
-- List of LoadBalancer objects
function M.LoadBalancers(list)
	asserts.AssertLoadBalancers(list)
	return list
end

function asserts.AssertRuleConditionList(list)
	assert(list)
	assert(type(list) == "table", "Expected RuleConditionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRuleCondition(v)
	end
end

--  
-- List of RuleCondition objects
function M.RuleConditionList(list)
	asserts.AssertRuleConditionList(list)
	return list
end

function asserts.AssertLoadBalancerAddresses(list)
	assert(list)
	assert(type(list) == "table", "Expected LoadBalancerAddresses to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLoadBalancerAddress(v)
	end
end

--  
-- List of LoadBalancerAddress objects
function M.LoadBalancerAddresses(list)
	asserts.AssertLoadBalancerAddresses(list)
	return list
end

function asserts.AssertListeners(list)
	assert(list)
	assert(type(list) == "table", "Expected Listeners to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertListener(v)
	end
end

--  
-- List of Listener objects
function M.Listeners(list)
	asserts.AssertListeners(list)
	return list
end

function asserts.AssertTagDescriptions(list)
	assert(list)
	assert(type(list) == "table", "Expected TagDescriptions to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTagDescription(v)
	end
end

--  
-- List of TagDescription objects
function M.TagDescriptions(list)
	asserts.AssertTagDescriptions(list)
	return list
end

function asserts.AssertTargetGroupArns(list)
	assert(list)
	assert(type(list) == "table", "Expected TargetGroupArns to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTargetGroupArn(v)
	end
end

--  
-- List of TargetGroupArn objects
function M.TargetGroupArns(list)
	asserts.AssertTargetGroupArns(list)
	return list
end

function asserts.AssertLoadBalancerNames(list)
	assert(list)
	assert(type(list) == "table", "Expected LoadBalancerNames to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLoadBalancerName(v)
	end
end

--  
-- List of LoadBalancerName objects
function M.LoadBalancerNames(list)
	asserts.AssertLoadBalancerNames(list)
	return list
end

function asserts.AssertListenerArns(list)
	assert(list)
	assert(type(list) == "table", "Expected ListenerArns to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertListenerArn(v)
	end
end

--  
-- List of ListenerArn objects
function M.ListenerArns(list)
	asserts.AssertListenerArns(list)
	return list
end

function asserts.AssertSubnets(list)
	assert(list)
	assert(type(list) == "table", "Expected Subnets to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSubnetId(v)
	end
end

--  
-- List of SubnetId objects
function M.Subnets(list)
	asserts.AssertSubnets(list)
	return list
end

function asserts.AssertTargetGroupAttributes(list)
	assert(list)
	assert(type(list) == "table", "Expected TargetGroupAttributes to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTargetGroupAttribute(v)
	end
end

--  
-- List of TargetGroupAttribute objects
function M.TargetGroupAttributes(list)
	asserts.AssertTargetGroupAttributes(list)
	return list
end

function asserts.AssertSubnetMappings(list)
	assert(list)
	assert(type(list) == "table", "Expected SubnetMappings to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSubnetMapping(v)
	end
end

--  
-- List of SubnetMapping objects
function M.SubnetMappings(list)
	asserts.AssertSubnetMappings(list)
	return list
end

function asserts.AssertRules(list)
	assert(list)
	assert(type(list) == "table", "Expected Rules to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRule(v)
	end
end

--  
-- List of Rule objects
function M.Rules(list)
	asserts.AssertRules(list)
	return list
end

function asserts.AssertSslPolicies(list)
	assert(list)
	assert(type(list) == "table", "Expected SslPolicies to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSslPolicy(v)
	end
end

--  
-- List of SslPolicy objects
function M.SslPolicies(list)
	asserts.AssertSslPolicies(list)
	return list
end

function asserts.AssertTagKeys(list)
	assert(list)
	assert(type(list) == "table", "Expected TagKeys to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTagKey(v)
	end
end

--  
-- List of TagKey objects
function M.TagKeys(list)
	asserts.AssertTagKeys(list)
	return list
end

function asserts.AssertListOfString(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfString to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertStringValue(v)
	end
end

--  
-- List of StringValue objects
function M.ListOfString(list)
	asserts.AssertListOfString(list)
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

function asserts.AssertLoadBalancerAttributes(list)
	assert(list)
	assert(type(list) == "table", "Expected LoadBalancerAttributes to be of type ''table")
	assert(#list <= 20, "Expected list to be contain 20 elements")
	for _,v in ipairs(list) do
		asserts.AssertLoadBalancerAttribute(v)
	end
end

--  
-- List of LoadBalancerAttribute objects
function M.LoadBalancerAttributes(list)
	asserts.AssertLoadBalancerAttributes(list)
	return list
end

function asserts.AssertRuleArns(list)
	assert(list)
	assert(type(list) == "table", "Expected RuleArns to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRuleArn(v)
	end
end

--  
-- List of RuleArn objects
function M.RuleArns(list)
	asserts.AssertRuleArns(list)
	return list
end

function asserts.AssertSslPolicyNames(list)
	assert(list)
	assert(type(list) == "table", "Expected SslPolicyNames to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSslPolicyName(v)
	end
end

--  
-- List of SslPolicyName objects
function M.SslPolicyNames(list)
	asserts.AssertSslPolicyNames(list)
	return list
end

function asserts.AssertLoadBalancerArns(list)
	assert(list)
	assert(type(list) == "table", "Expected LoadBalancerArns to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLoadBalancerArn(v)
	end
end

--  
-- List of LoadBalancerArn objects
function M.LoadBalancerArns(list)
	asserts.AssertLoadBalancerArns(list)
	return list
end

function asserts.AssertCertificateList(list)
	assert(list)
	assert(type(list) == "table", "Expected CertificateList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCertificate(v)
	end
end

--  
-- List of Certificate objects
function M.CertificateList(list)
	asserts.AssertCertificateList(list)
	return list
end

function asserts.AssertCiphers(list)
	assert(list)
	assert(type(list) == "table", "Expected Ciphers to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCipher(v)
	end
end

--  
-- List of Cipher objects
function M.Ciphers(list)
	asserts.AssertCiphers(list)
	return list
end

function asserts.AssertSecurityGroups(list)
	assert(list)
	assert(type(list) == "table", "Expected SecurityGroups to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSecurityGroupId(v)
	end
end

--  
-- List of SecurityGroupId objects
function M.SecurityGroups(list)
	asserts.AssertSecurityGroups(list)
	return list
end

function asserts.AssertTargetGroupNames(list)
	assert(list)
	assert(type(list) == "table", "Expected TargetGroupNames to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTargetGroupName(v)
	end
end

--  
-- List of TargetGroupName objects
function M.TargetGroupNames(list)
	asserts.AssertTargetGroupNames(list)
	return list
end

function asserts.AssertTargetDescriptions(list)
	assert(list)
	assert(type(list) == "table", "Expected TargetDescriptions to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTargetDescription(v)
	end
end

--  
-- List of TargetDescription objects
function M.TargetDescriptions(list)
	asserts.AssertTargetDescriptions(list)
	return list
end

function asserts.AssertActions(list)
	assert(list)
	assert(type(list) == "table", "Expected Actions to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAction(v)
	end
end

--  
-- List of Action objects
function M.Actions(list)
	asserts.AssertActions(list)
	return list
end

function asserts.AssertRulePriorityList(list)
	assert(list)
	assert(type(list) == "table", "Expected RulePriorityList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRulePriorityPair(v)
	end
end

--  
-- List of RulePriorityPair objects
function M.RulePriorityList(list)
	asserts.AssertRulePriorityList(list)
	return list
end

function asserts.AssertAvailabilityZones(list)
	assert(list)
	assert(type(list) == "table", "Expected AvailabilityZones to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAvailabilityZone(v)
	end
end

--  
-- List of AvailabilityZone objects
function M.AvailabilityZones(list)
	asserts.AssertAvailabilityZones(list)
	return list
end

function asserts.AssertTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagList to be of type ''table")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertTag(v)
	end
end

--  
-- List of Tag objects
function M.TagList(list)
	asserts.AssertTagList(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


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
--- Call RegisterTargets asynchronously, invoking a callback when done
-- @param RegisterTargetsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RegisterTargetsAsync(RegisterTargetsInput, cb)
	assert(RegisterTargetsInput, "You must provide a RegisterTargetsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RegisterTargets",
	}
	for header,value in pairs(RegisterTargetsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RegisterTargetsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RegisterTargets synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RegisterTargetsInput
-- @return response
-- @return error_type
-- @return error_message
function M.RegisterTargetsSync(RegisterTargetsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RegisterTargetsAsync(RegisterTargetsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeSSLPolicies asynchronously, invoking a callback when done
-- @param DescribeSSLPoliciesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeSSLPoliciesAsync(DescribeSSLPoliciesInput, cb)
	assert(DescribeSSLPoliciesInput, "You must provide a DescribeSSLPoliciesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeSSLPolicies",
	}
	for header,value in pairs(DescribeSSLPoliciesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeSSLPoliciesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeSSLPolicies synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeSSLPoliciesInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeSSLPoliciesSync(DescribeSSLPoliciesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeSSLPoliciesAsync(DescribeSSLPoliciesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SetSecurityGroups asynchronously, invoking a callback when done
-- @param SetSecurityGroupsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SetSecurityGroupsAsync(SetSecurityGroupsInput, cb)
	assert(SetSecurityGroupsInput, "You must provide a SetSecurityGroupsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SetSecurityGroups",
	}
	for header,value in pairs(SetSecurityGroupsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SetSecurityGroupsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SetSecurityGroups synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetSecurityGroupsInput
-- @return response
-- @return error_type
-- @return error_message
function M.SetSecurityGroupsSync(SetSecurityGroupsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetSecurityGroupsAsync(SetSecurityGroupsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AddListenerCertificates asynchronously, invoking a callback when done
-- @param AddListenerCertificatesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AddListenerCertificatesAsync(AddListenerCertificatesInput, cb)
	assert(AddListenerCertificatesInput, "You must provide a AddListenerCertificatesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".AddListenerCertificates",
	}
	for header,value in pairs(AddListenerCertificatesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AddListenerCertificatesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AddListenerCertificates synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AddListenerCertificatesInput
-- @return response
-- @return error_type
-- @return error_message
function M.AddListenerCertificatesSync(AddListenerCertificatesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddListenerCertificatesAsync(AddListenerCertificatesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteListener asynchronously, invoking a callback when done
-- @param DeleteListenerInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteListenerAsync(DeleteListenerInput, cb)
	assert(DeleteListenerInput, "You must provide a DeleteListenerInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteListener",
	}
	for header,value in pairs(DeleteListenerInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteListenerInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteListener synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteListenerInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteListenerSync(DeleteListenerInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteListenerAsync(DeleteListenerInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyTargetGroup asynchronously, invoking a callback when done
-- @param ModifyTargetGroupInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ModifyTargetGroupAsync(ModifyTargetGroupInput, cb)
	assert(ModifyTargetGroupInput, "You must provide a ModifyTargetGroupInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ModifyTargetGroup",
	}
	for header,value in pairs(ModifyTargetGroupInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ModifyTargetGroupInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ModifyTargetGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ModifyTargetGroupInput
-- @return response
-- @return error_type
-- @return error_message
function M.ModifyTargetGroupSync(ModifyTargetGroupInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyTargetGroupAsync(ModifyTargetGroupInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateRule asynchronously, invoking a callback when done
-- @param CreateRuleInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateRuleAsync(CreateRuleInput, cb)
	assert(CreateRuleInput, "You must provide a CreateRuleInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateRule",
	}
	for header,value in pairs(CreateRuleInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateRuleInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateRule synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateRuleInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateRuleSync(CreateRuleInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateRuleAsync(CreateRuleInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SetRulePriorities asynchronously, invoking a callback when done
-- @param SetRulePrioritiesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SetRulePrioritiesAsync(SetRulePrioritiesInput, cb)
	assert(SetRulePrioritiesInput, "You must provide a SetRulePrioritiesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SetRulePriorities",
	}
	for header,value in pairs(SetRulePrioritiesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SetRulePrioritiesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SetRulePriorities synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetRulePrioritiesInput
-- @return response
-- @return error_type
-- @return error_message
function M.SetRulePrioritiesSync(SetRulePrioritiesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetRulePrioritiesAsync(SetRulePrioritiesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyTargetGroupAttributes asynchronously, invoking a callback when done
-- @param ModifyTargetGroupAttributesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ModifyTargetGroupAttributesAsync(ModifyTargetGroupAttributesInput, cb)
	assert(ModifyTargetGroupAttributesInput, "You must provide a ModifyTargetGroupAttributesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ModifyTargetGroupAttributes",
	}
	for header,value in pairs(ModifyTargetGroupAttributesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ModifyTargetGroupAttributesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ModifyTargetGroupAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ModifyTargetGroupAttributesInput
-- @return response
-- @return error_type
-- @return error_message
function M.ModifyTargetGroupAttributesSync(ModifyTargetGroupAttributesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyTargetGroupAttributesAsync(ModifyTargetGroupAttributesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeLoadBalancerAttributes asynchronously, invoking a callback when done
-- @param DescribeLoadBalancerAttributesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeLoadBalancerAttributesAsync(DescribeLoadBalancerAttributesInput, cb)
	assert(DescribeLoadBalancerAttributesInput, "You must provide a DescribeLoadBalancerAttributesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeLoadBalancerAttributes",
	}
	for header,value in pairs(DescribeLoadBalancerAttributesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeLoadBalancerAttributesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeLoadBalancerAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeLoadBalancerAttributesInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeLoadBalancerAttributesSync(DescribeLoadBalancerAttributesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeLoadBalancerAttributesAsync(DescribeLoadBalancerAttributesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SetIpAddressType asynchronously, invoking a callback when done
-- @param SetIpAddressTypeInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SetIpAddressTypeAsync(SetIpAddressTypeInput, cb)
	assert(SetIpAddressTypeInput, "You must provide a SetIpAddressTypeInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SetIpAddressType",
	}
	for header,value in pairs(SetIpAddressTypeInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SetIpAddressTypeInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SetIpAddressType synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetIpAddressTypeInput
-- @return response
-- @return error_type
-- @return error_message
function M.SetIpAddressTypeSync(SetIpAddressTypeInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetIpAddressTypeAsync(SetIpAddressTypeInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RemoveListenerCertificates asynchronously, invoking a callback when done
-- @param RemoveListenerCertificatesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RemoveListenerCertificatesAsync(RemoveListenerCertificatesInput, cb)
	assert(RemoveListenerCertificatesInput, "You must provide a RemoveListenerCertificatesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RemoveListenerCertificates",
	}
	for header,value in pairs(RemoveListenerCertificatesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RemoveListenerCertificatesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RemoveListenerCertificates synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RemoveListenerCertificatesInput
-- @return response
-- @return error_type
-- @return error_message
function M.RemoveListenerCertificatesSync(RemoveListenerCertificatesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RemoveListenerCertificatesAsync(RemoveListenerCertificatesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyListener asynchronously, invoking a callback when done
-- @param ModifyListenerInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ModifyListenerAsync(ModifyListenerInput, cb)
	assert(ModifyListenerInput, "You must provide a ModifyListenerInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ModifyListener",
	}
	for header,value in pairs(ModifyListenerInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ModifyListenerInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ModifyListener synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ModifyListenerInput
-- @return response
-- @return error_type
-- @return error_message
function M.ModifyListenerSync(ModifyListenerInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyListenerAsync(ModifyListenerInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteLoadBalancer asynchronously, invoking a callback when done
-- @param DeleteLoadBalancerInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteLoadBalancerAsync(DeleteLoadBalancerInput, cb)
	assert(DeleteLoadBalancerInput, "You must provide a DeleteLoadBalancerInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteLoadBalancer",
	}
	for header,value in pairs(DeleteLoadBalancerInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteLoadBalancerInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteLoadBalancer synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteLoadBalancerInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteLoadBalancerSync(DeleteLoadBalancerInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteLoadBalancerAsync(DeleteLoadBalancerInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteRule asynchronously, invoking a callback when done
-- @param DeleteRuleInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteRuleAsync(DeleteRuleInput, cb)
	assert(DeleteRuleInput, "You must provide a DeleteRuleInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteRule",
	}
	for header,value in pairs(DeleteRuleInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteRuleInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteRule synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteRuleInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteRuleSync(DeleteRuleInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteRuleAsync(DeleteRuleInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteTargetGroup asynchronously, invoking a callback when done
-- @param DeleteTargetGroupInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteTargetGroupAsync(DeleteTargetGroupInput, cb)
	assert(DeleteTargetGroupInput, "You must provide a DeleteTargetGroupInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteTargetGroup",
	}
	for header,value in pairs(DeleteTargetGroupInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteTargetGroupInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteTargetGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteTargetGroupInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteTargetGroupSync(DeleteTargetGroupInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteTargetGroupAsync(DeleteTargetGroupInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeTargetGroupAttributes asynchronously, invoking a callback when done
-- @param DescribeTargetGroupAttributesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeTargetGroupAttributesAsync(DescribeTargetGroupAttributesInput, cb)
	assert(DescribeTargetGroupAttributesInput, "You must provide a DescribeTargetGroupAttributesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeTargetGroupAttributes",
	}
	for header,value in pairs(DescribeTargetGroupAttributesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeTargetGroupAttributesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeTargetGroupAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeTargetGroupAttributesInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeTargetGroupAttributesSync(DescribeTargetGroupAttributesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeTargetGroupAttributesAsync(DescribeTargetGroupAttributesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeLoadBalancers asynchronously, invoking a callback when done
-- @param DescribeLoadBalancersInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeLoadBalancersAsync(DescribeLoadBalancersInput, cb)
	assert(DescribeLoadBalancersInput, "You must provide a DescribeLoadBalancersInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeLoadBalancers",
	}
	for header,value in pairs(DescribeLoadBalancersInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeLoadBalancersInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeLoadBalancers synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeLoadBalancersInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeLoadBalancersSync(DescribeLoadBalancersInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeLoadBalancersAsync(DescribeLoadBalancersInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeListeners asynchronously, invoking a callback when done
-- @param DescribeListenersInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeListenersAsync(DescribeListenersInput, cb)
	assert(DescribeListenersInput, "You must provide a DescribeListenersInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeListeners",
	}
	for header,value in pairs(DescribeListenersInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeListenersInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeListeners synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeListenersInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeListenersSync(DescribeListenersInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeListenersAsync(DescribeListenersInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RemoveTags asynchronously, invoking a callback when done
-- @param RemoveTagsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RemoveTagsAsync(RemoveTagsInput, cb)
	assert(RemoveTagsInput, "You must provide a RemoveTagsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RemoveTags",
	}
	for header,value in pairs(RemoveTagsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RemoveTagsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RemoveTags synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RemoveTagsInput
-- @return response
-- @return error_type
-- @return error_message
function M.RemoveTagsSync(RemoveTagsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RemoveTagsAsync(RemoveTagsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateListener asynchronously, invoking a callback when done
-- @param CreateListenerInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateListenerAsync(CreateListenerInput, cb)
	assert(CreateListenerInput, "You must provide a CreateListenerInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateListener",
	}
	for header,value in pairs(CreateListenerInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateListenerInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateListener synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateListenerInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateListenerSync(CreateListenerInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateListenerAsync(CreateListenerInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SetSubnets asynchronously, invoking a callback when done
-- @param SetSubnetsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SetSubnetsAsync(SetSubnetsInput, cb)
	assert(SetSubnetsInput, "You must provide a SetSubnetsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SetSubnets",
	}
	for header,value in pairs(SetSubnetsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SetSubnetsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SetSubnets synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetSubnetsInput
-- @return response
-- @return error_type
-- @return error_message
function M.SetSubnetsSync(SetSubnetsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetSubnetsAsync(SetSubnetsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeTags asynchronously, invoking a callback when done
-- @param DescribeTagsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeTagsAsync(DescribeTagsInput, cb)
	assert(DescribeTagsInput, "You must provide a DescribeTagsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeTags",
	}
	for header,value in pairs(DescribeTagsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeTagsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeTags synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeTagsInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeTagsSync(DescribeTagsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeTagsAsync(DescribeTagsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyRule asynchronously, invoking a callback when done
-- @param ModifyRuleInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ModifyRuleAsync(ModifyRuleInput, cb)
	assert(ModifyRuleInput, "You must provide a ModifyRuleInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ModifyRule",
	}
	for header,value in pairs(ModifyRuleInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ModifyRuleInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ModifyRule synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ModifyRuleInput
-- @return response
-- @return error_type
-- @return error_message
function M.ModifyRuleSync(ModifyRuleInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyRuleAsync(ModifyRuleInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateTargetGroup asynchronously, invoking a callback when done
-- @param CreateTargetGroupInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateTargetGroupAsync(CreateTargetGroupInput, cb)
	assert(CreateTargetGroupInput, "You must provide a CreateTargetGroupInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateTargetGroup",
	}
	for header,value in pairs(CreateTargetGroupInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateTargetGroupInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateTargetGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateTargetGroupInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateTargetGroupSync(CreateTargetGroupInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateTargetGroupAsync(CreateTargetGroupInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AddTags asynchronously, invoking a callback when done
-- @param AddTagsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AddTagsAsync(AddTagsInput, cb)
	assert(AddTagsInput, "You must provide a AddTagsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".AddTags",
	}
	for header,value in pairs(AddTagsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AddTagsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AddTags synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AddTagsInput
-- @return response
-- @return error_type
-- @return error_message
function M.AddTagsSync(AddTagsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddTagsAsync(AddTagsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeTargetGroups asynchronously, invoking a callback when done
-- @param DescribeTargetGroupsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeTargetGroupsAsync(DescribeTargetGroupsInput, cb)
	assert(DescribeTargetGroupsInput, "You must provide a DescribeTargetGroupsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeTargetGroups",
	}
	for header,value in pairs(DescribeTargetGroupsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeTargetGroupsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeTargetGroups synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeTargetGroupsInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeTargetGroupsSync(DescribeTargetGroupsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeTargetGroupsAsync(DescribeTargetGroupsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeregisterTargets asynchronously, invoking a callback when done
-- @param DeregisterTargetsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeregisterTargetsAsync(DeregisterTargetsInput, cb)
	assert(DeregisterTargetsInput, "You must provide a DeregisterTargetsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeregisterTargets",
	}
	for header,value in pairs(DeregisterTargetsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeregisterTargetsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeregisterTargets synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeregisterTargetsInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeregisterTargetsSync(DeregisterTargetsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeregisterTargetsAsync(DeregisterTargetsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyLoadBalancerAttributes asynchronously, invoking a callback when done
-- @param ModifyLoadBalancerAttributesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ModifyLoadBalancerAttributesAsync(ModifyLoadBalancerAttributesInput, cb)
	assert(ModifyLoadBalancerAttributesInput, "You must provide a ModifyLoadBalancerAttributesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ModifyLoadBalancerAttributes",
	}
	for header,value in pairs(ModifyLoadBalancerAttributesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ModifyLoadBalancerAttributesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ModifyLoadBalancerAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ModifyLoadBalancerAttributesInput
-- @return response
-- @return error_type
-- @return error_message
function M.ModifyLoadBalancerAttributesSync(ModifyLoadBalancerAttributesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyLoadBalancerAttributesAsync(ModifyLoadBalancerAttributesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeRules asynchronously, invoking a callback when done
-- @param DescribeRulesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeRulesAsync(DescribeRulesInput, cb)
	assert(DescribeRulesInput, "You must provide a DescribeRulesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeRules",
	}
	for header,value in pairs(DescribeRulesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeRulesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeRules synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeRulesInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeRulesSync(DescribeRulesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeRulesAsync(DescribeRulesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeListenerCertificates asynchronously, invoking a callback when done
-- @param DescribeListenerCertificatesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeListenerCertificatesAsync(DescribeListenerCertificatesInput, cb)
	assert(DescribeListenerCertificatesInput, "You must provide a DescribeListenerCertificatesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeListenerCertificates",
	}
	for header,value in pairs(DescribeListenerCertificatesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeListenerCertificatesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeListenerCertificates synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeListenerCertificatesInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeListenerCertificatesSync(DescribeListenerCertificatesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeListenerCertificatesAsync(DescribeListenerCertificatesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeTargetHealth asynchronously, invoking a callback when done
-- @param DescribeTargetHealthInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeTargetHealthAsync(DescribeTargetHealthInput, cb)
	assert(DescribeTargetHealthInput, "You must provide a DescribeTargetHealthInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeTargetHealth",
	}
	for header,value in pairs(DescribeTargetHealthInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeTargetHealthInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeTargetHealth synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeTargetHealthInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeTargetHealthSync(DescribeTargetHealthInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeTargetHealthAsync(DescribeTargetHealthInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateLoadBalancer asynchronously, invoking a callback when done
-- @param CreateLoadBalancerInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateLoadBalancerAsync(CreateLoadBalancerInput, cb)
	assert(CreateLoadBalancerInput, "You must provide a CreateLoadBalancerInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateLoadBalancer",
	}
	for header,value in pairs(CreateLoadBalancerInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateLoadBalancerInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateLoadBalancer synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateLoadBalancerInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateLoadBalancerSync(CreateLoadBalancerInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateLoadBalancerAsync(CreateLoadBalancerInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeAccountLimits asynchronously, invoking a callback when done
-- @param DescribeAccountLimitsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeAccountLimitsAsync(DescribeAccountLimitsInput, cb)
	assert(DescribeAccountLimitsInput, "You must provide a DescribeAccountLimitsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeAccountLimits",
	}
	for header,value in pairs(DescribeAccountLimitsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeAccountLimitsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeAccountLimits synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeAccountLimitsInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeAccountLimitsSync(DescribeAccountLimitsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeAccountLimitsAsync(DescribeAccountLimitsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
