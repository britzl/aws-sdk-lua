--- GENERATED CODE - DO NOT MODIFY
-- Elastic Load Balancing (elasticloadbalancing-2012-06-01)

local M = {}

M.metadata = {
	api_version = "2012-06-01",
	json_version = "",
	protocol = "query",
	checksum_format = "",
	endpoint_prefix = "elasticloadbalancing",
	service_abbreviation = "",
	service_full_name = "Elastic Load Balancing",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "elasticloadbalancing-2012-06-01",
}

local keys = {}
local asserts = {}

keys.CreateLBCookieStickinessPolicyOutput = { nil }

function asserts.AssertCreateLBCookieStickinessPolicyOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateLBCookieStickinessPolicyOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CreateLBCookieStickinessPolicyOutput[k], "CreateLBCookieStickinessPolicyOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateLBCookieStickinessPolicyOutput
-- <p>Contains the output for CreateLBCookieStickinessPolicy.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CreateLBCookieStickinessPolicyOutput structure as a key-value pair table
function M.CreateLBCookieStickinessPolicyOutput(args)
	assert(args, "You must provide an argument table when creating CreateLBCookieStickinessPolicyOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertCreateLBCookieStickinessPolicyOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InstanceState = { ["InstanceId"] = true, ["ReasonCode"] = true, ["State"] = true, ["Description"] = true, nil }

function asserts.AssertInstanceState(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceState to be of type 'table'")
	if struct["InstanceId"] then asserts.AssertInstanceId(struct["InstanceId"]) end
	if struct["ReasonCode"] then asserts.AssertReasonCode(struct["ReasonCode"]) end
	if struct["State"] then asserts.AssertState(struct["State"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstanceState[k], "InstanceState contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceState
-- <p>Information about the state of an EC2 instance.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [InstanceId] <p>The ID of the instance.</p>
-- * ReasonCode [ReasonCode] <p>Information about the cause of <code>OutOfService</code> instances. Specifically, whether the cause is Elastic Load Balancing or the instance.</p> <p>Valid values: <code>ELB</code> | <code>Instance</code> | <code>N/A</code> </p>
-- * State [State] <p>The current state of the instance.</p> <p>Valid values: <code>InService</code> | <code>OutOfService</code> | <code>Unknown</code> </p>
-- * Description [Description] <p>A description of the instance state. This string can contain one or more of the following messages.</p> <ul> <li> <p> <code>N/A</code> </p> </li> <li> <p> <code>A transient error occurred. Please try again later.</code> </p> </li> <li> <p> <code>Instance has failed at least the UnhealthyThreshold number of health checks consecutively.</code> </p> </li> <li> <p> <code>Instance has not passed the configured HealthyThreshold number of health checks consecutively.</code> </p> </li> <li> <p> <code>Instance registration is still in progress.</code> </p> </li> <li> <p> <code>Instance is in the EC2 Availability Zone for which LoadBalancer is not configured to route traffic to.</code> </p> </li> <li> <p> <code>Instance is not currently registered with the LoadBalancer.</code> </p> </li> <li> <p> <code>Instance deregistration currently in progress.</code> </p> </li> <li> <p> <code>Disable Availability Zone is currently in progress.</code> </p> </li> <li> <p> <code>Instance is in pending state.</code> </p> </li> <li> <p> <code>Instance is in stopped state.</code> </p> </li> <li> <p> <code>Instance is in terminated state.</code> </p> </li> </ul>
-- @return InstanceState structure as a key-value pair table
function M.InstanceState(args)
	assert(args, "You must provide an argument table when creating InstanceState")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceId"] = args["InstanceId"],
		["ReasonCode"] = args["ReasonCode"],
		["State"] = args["State"],
		["Description"] = args["Description"],
	}
	asserts.AssertInstanceState(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeLoadBalancerAttributesOutput = { ["LoadBalancerAttributes"] = true, nil }

function asserts.AssertDescribeLoadBalancerAttributesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLoadBalancerAttributesOutput to be of type 'table'")
	if struct["LoadBalancerAttributes"] then asserts.AssertLoadBalancerAttributes(struct["LoadBalancerAttributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeLoadBalancerAttributesOutput[k], "DescribeLoadBalancerAttributesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLoadBalancerAttributesOutput
-- <p>Contains the output of DescribeLoadBalancerAttributes.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LoadBalancerAttributes [LoadBalancerAttributes] <p>Information about the load balancer attributes.</p>
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
		["LoadBalancerAttributes"] = args["LoadBalancerAttributes"],
	}
	asserts.AssertDescribeLoadBalancerAttributesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeEndPointStateOutput = { ["InstanceStates"] = true, nil }

function asserts.AssertDescribeEndPointStateOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEndPointStateOutput to be of type 'table'")
	if struct["InstanceStates"] then asserts.AssertInstanceStates(struct["InstanceStates"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEndPointStateOutput[k], "DescribeEndPointStateOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEndPointStateOutput
-- <p>Contains the output for DescribeInstanceHealth.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceStates [InstanceStates] <p>Information about the health of the instances.</p>
-- @return DescribeEndPointStateOutput structure as a key-value pair table
function M.DescribeEndPointStateOutput(args)
	assert(args, "You must provide an argument table when creating DescribeEndPointStateOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceStates"] = args["InstanceStates"],
	}
	asserts.AssertDescribeEndPointStateOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateAccessPointOutput = { ["DNSName"] = true, nil }

function asserts.AssertCreateAccessPointOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAccessPointOutput to be of type 'table'")
	if struct["DNSName"] then asserts.AssertDNSName(struct["DNSName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateAccessPointOutput[k], "CreateAccessPointOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAccessPointOutput
-- <p>Contains the output for CreateLoadBalancer.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DNSName [DNSName] <p>The DNS name of the load balancer.</p>
-- @return CreateAccessPointOutput structure as a key-value pair table
function M.CreateAccessPointOutput(args)
	assert(args, "You must provide an argument table when creating CreateAccessPointOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DNSName"] = args["DNSName"],
	}
	asserts.AssertCreateAccessPointOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AdditionalAttribute = { ["Value"] = true, ["Key"] = true, nil }

function asserts.AssertAdditionalAttribute(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdditionalAttribute to be of type 'table'")
	if struct["Value"] then asserts.AssertAdditionalAttributeValue(struct["Value"]) end
	if struct["Key"] then asserts.AssertAdditionalAttributeKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.AdditionalAttribute[k], "AdditionalAttribute contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdditionalAttribute
-- <p>This data type is reserved.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [AdditionalAttributeValue] <p>This parameter is reserved.</p>
-- * Key [AdditionalAttributeKey] <p>This parameter is reserved.</p>
-- @return AdditionalAttribute structure as a key-value pair table
function M.AdditionalAttribute(args)
	assert(args, "You must provide an argument table when creating AdditionalAttribute")
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
	asserts.AssertAdditionalAttribute(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateLoadBalancerListenerOutput = { nil }

function asserts.AssertCreateLoadBalancerListenerOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateLoadBalancerListenerOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CreateLoadBalancerListenerOutput[k], "CreateLoadBalancerListenerOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateLoadBalancerListenerOutput
-- <p>Contains the parameters for CreateLoadBalancerListener.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CreateLoadBalancerListenerOutput structure as a key-value pair table
function M.CreateLoadBalancerListenerOutput(args)
	assert(args, "You must provide an argument table when creating CreateLoadBalancerListenerOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertCreateLoadBalancerListenerOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeAccessPointsOutput = { ["NextMarker"] = true, ["LoadBalancerDescriptions"] = true, nil }

function asserts.AssertDescribeAccessPointsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAccessPointsOutput to be of type 'table'")
	if struct["NextMarker"] then asserts.AssertMarker(struct["NextMarker"]) end
	if struct["LoadBalancerDescriptions"] then asserts.AssertLoadBalancerDescriptions(struct["LoadBalancerDescriptions"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAccessPointsOutput[k], "DescribeAccessPointsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAccessPointsOutput
-- <p>Contains the parameters for DescribeLoadBalancers.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextMarker [Marker] <p>The marker to use when requesting the next set of results. If there are no additional results, the string is empty.</p>
-- * LoadBalancerDescriptions [LoadBalancerDescriptions] <p>Information about the load balancers.</p>
-- @return DescribeAccessPointsOutput structure as a key-value pair table
function M.DescribeAccessPointsOutput(args)
	assert(args, "You must provide an argument table when creating DescribeAccessPointsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextMarker"] = args["NextMarker"],
		["LoadBalancerDescriptions"] = args["LoadBalancerDescriptions"],
	}
	asserts.AssertDescribeAccessPointsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LBCookieStickinessPolicy = { ["PolicyName"] = true, ["CookieExpirationPeriod"] = true, nil }

function asserts.AssertLBCookieStickinessPolicy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LBCookieStickinessPolicy to be of type 'table'")
	if struct["PolicyName"] then asserts.AssertPolicyName(struct["PolicyName"]) end
	if struct["CookieExpirationPeriod"] then asserts.AssertCookieExpirationPeriod(struct["CookieExpirationPeriod"]) end
	for k,_ in pairs(struct) do
		assert(keys.LBCookieStickinessPolicy[k], "LBCookieStickinessPolicy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LBCookieStickinessPolicy
-- <p>Information about a policy for duration-based session stickiness.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyName [PolicyName] <p>The name of the policy. This name must be unique within the set of policies for this load balancer.</p>
-- * CookieExpirationPeriod [CookieExpirationPeriod] <p>The time period, in seconds, after which the cookie should be considered stale. If this parameter is not specified, the stickiness session lasts for the duration of the browser session.</p>
-- @return LBCookieStickinessPolicy structure as a key-value pair table
function M.LBCookieStickinessPolicy(args)
	assert(args, "You must provide an argument table when creating LBCookieStickinessPolicy")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyName"] = args["PolicyName"],
		["CookieExpirationPeriod"] = args["CookieExpirationPeriod"],
	}
	asserts.AssertLBCookieStickinessPolicy(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RemoveAvailabilityZonesInput = { ["AvailabilityZones"] = true, ["LoadBalancerName"] = true, nil }

function asserts.AssertRemoveAvailabilityZonesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveAvailabilityZonesInput to be of type 'table'")
	assert(struct["LoadBalancerName"], "Expected key LoadBalancerName to exist in table")
	assert(struct["AvailabilityZones"], "Expected key AvailabilityZones to exist in table")
	if struct["AvailabilityZones"] then asserts.AssertAvailabilityZones(struct["AvailabilityZones"]) end
	if struct["LoadBalancerName"] then asserts.AssertAccessPointName(struct["LoadBalancerName"]) end
	for k,_ in pairs(struct) do
		assert(keys.RemoveAvailabilityZonesInput[k], "RemoveAvailabilityZonesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveAvailabilityZonesInput
-- <p>Contains the parameters for DisableAvailabilityZonesForLoadBalancer.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AvailabilityZones [AvailabilityZones] <p>The Availability Zones.</p>
-- * LoadBalancerName [AccessPointName] <p>The name of the load balancer.</p>
-- Required key: LoadBalancerName
-- Required key: AvailabilityZones
-- @return RemoveAvailabilityZonesInput structure as a key-value pair table
function M.RemoveAvailabilityZonesInput(args)
	assert(args, "You must provide an argument table when creating RemoveAvailabilityZonesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AvailabilityZones"] = args["AvailabilityZones"],
		["LoadBalancerName"] = args["LoadBalancerName"],
	}
	asserts.AssertRemoveAvailabilityZonesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateAppCookieStickinessPolicyInput = { ["PolicyName"] = true, ["CookieName"] = true, ["LoadBalancerName"] = true, nil }

function asserts.AssertCreateAppCookieStickinessPolicyInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAppCookieStickinessPolicyInput to be of type 'table'")
	assert(struct["LoadBalancerName"], "Expected key LoadBalancerName to exist in table")
	assert(struct["PolicyName"], "Expected key PolicyName to exist in table")
	assert(struct["CookieName"], "Expected key CookieName to exist in table")
	if struct["PolicyName"] then asserts.AssertPolicyName(struct["PolicyName"]) end
	if struct["CookieName"] then asserts.AssertCookieName(struct["CookieName"]) end
	if struct["LoadBalancerName"] then asserts.AssertAccessPointName(struct["LoadBalancerName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateAppCookieStickinessPolicyInput[k], "CreateAppCookieStickinessPolicyInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAppCookieStickinessPolicyInput
-- <p>Contains the parameters for CreateAppCookieStickinessPolicy.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyName [PolicyName] <p>The name of the policy being created. Policy names must consist of alphanumeric characters and dashes (-). This name must be unique within the set of policies for this load balancer.</p>
-- * CookieName [CookieName] <p>The name of the application cookie used for stickiness.</p>
-- * LoadBalancerName [AccessPointName] <p>The name of the load balancer.</p>
-- Required key: LoadBalancerName
-- Required key: PolicyName
-- Required key: CookieName
-- @return CreateAppCookieStickinessPolicyInput structure as a key-value pair table
function M.CreateAppCookieStickinessPolicyInput(args)
	assert(args, "You must provide an argument table when creating CreateAppCookieStickinessPolicyInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyName"] = args["PolicyName"],
		["CookieName"] = args["CookieName"],
		["LoadBalancerName"] = args["LoadBalancerName"],
	}
	asserts.AssertCreateAppCookieStickinessPolicyInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeTagsInput = { ["LoadBalancerNames"] = true, nil }

function asserts.AssertDescribeTagsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTagsInput to be of type 'table'")
	assert(struct["LoadBalancerNames"], "Expected key LoadBalancerNames to exist in table")
	if struct["LoadBalancerNames"] then asserts.AssertLoadBalancerNamesMax20(struct["LoadBalancerNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTagsInput[k], "DescribeTagsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTagsInput
-- <p>Contains the parameters for DescribeTags.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LoadBalancerNames [LoadBalancerNamesMax20] <p>The names of the load balancers.</p>
-- Required key: LoadBalancerNames
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
		["LoadBalancerNames"] = args["LoadBalancerNames"],
	}
	asserts.AssertDescribeTagsInput(all_args)
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
-- * Name [Name] <p>The name of the limit. The possible values are:</p> <ul> <li> <p>classic-listeners</p> </li> <li> <p>classic-load-balancers</p> </li> <li> <p>classic-registered-instances</p> </li> </ul>
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

keys.ConnectionSettings = { ["IdleTimeout"] = true, nil }

function asserts.AssertConnectionSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConnectionSettings to be of type 'table'")
	assert(struct["IdleTimeout"], "Expected key IdleTimeout to exist in table")
	if struct["IdleTimeout"] then asserts.AssertIdleTimeout(struct["IdleTimeout"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConnectionSettings[k], "ConnectionSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConnectionSettings
-- <p>Information about the <code>ConnectionSettings</code> attribute.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IdleTimeout [IdleTimeout] <p>The time, in seconds, that the connection is allowed to be idle (no data has been sent over the connection) before it is closed by the load balancer.</p>
-- Required key: IdleTimeout
-- @return ConnectionSettings structure as a key-value pair table
function M.ConnectionSettings(args)
	assert(args, "You must provide an argument table when creating ConnectionSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IdleTimeout"] = args["IdleTimeout"],
	}
	asserts.AssertConnectionSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SourceSecurityGroup = { ["OwnerAlias"] = true, ["GroupName"] = true, nil }

function asserts.AssertSourceSecurityGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SourceSecurityGroup to be of type 'table'")
	if struct["OwnerAlias"] then asserts.AssertSecurityGroupOwnerAlias(struct["OwnerAlias"]) end
	if struct["GroupName"] then asserts.AssertSecurityGroupName(struct["GroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.SourceSecurityGroup[k], "SourceSecurityGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SourceSecurityGroup
-- <p>Information about a source security group.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OwnerAlias [SecurityGroupOwnerAlias] <p>The owner of the security group.</p>
-- * GroupName [SecurityGroupName] <p>The name of the security group.</p>
-- @return SourceSecurityGroup structure as a key-value pair table
function M.SourceSecurityGroup(args)
	assert(args, "You must provide an argument table when creating SourceSecurityGroup")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OwnerAlias"] = args["OwnerAlias"],
		["GroupName"] = args["GroupName"],
	}
	asserts.AssertSourceSecurityGroup(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AccessLog = { ["S3BucketPrefix"] = true, ["EmitInterval"] = true, ["Enabled"] = true, ["S3BucketName"] = true, nil }

function asserts.AssertAccessLog(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccessLog to be of type 'table'")
	assert(struct["Enabled"], "Expected key Enabled to exist in table")
	if struct["S3BucketPrefix"] then asserts.AssertAccessLogPrefix(struct["S3BucketPrefix"]) end
	if struct["EmitInterval"] then asserts.AssertAccessLogInterval(struct["EmitInterval"]) end
	if struct["Enabled"] then asserts.AssertAccessLogEnabled(struct["Enabled"]) end
	if struct["S3BucketName"] then asserts.AssertS3BucketName(struct["S3BucketName"]) end
	for k,_ in pairs(struct) do
		assert(keys.AccessLog[k], "AccessLog contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccessLog
-- <p>Information about the <code>AccessLog</code> attribute.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * S3BucketPrefix [AccessLogPrefix] <p>The logical hierarchy you created for your Amazon S3 bucket, for example <code>my-bucket-prefix/prod</code>. If the prefix is not provided, the log is placed at the root level of the bucket.</p>
-- * EmitInterval [AccessLogInterval] <p>The interval for publishing the access logs. You can specify an interval of either 5 minutes or 60 minutes.</p> <p>Default: 60 minutes</p>
-- * Enabled [AccessLogEnabled] <p>Specifies whether access logs are enabled for the load balancer.</p>
-- * S3BucketName [S3BucketName] <p>The name of the Amazon S3 bucket where the access logs are stored.</p>
-- Required key: Enabled
-- @return AccessLog structure as a key-value pair table
function M.AccessLog(args)
	assert(args, "You must provide an argument table when creating AccessLog")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["S3BucketPrefix"] = args["S3BucketPrefix"],
		["EmitInterval"] = args["EmitInterval"],
		["Enabled"] = args["Enabled"],
		["S3BucketName"] = args["S3BucketName"],
	}
	asserts.AssertAccessLog(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LoadBalancerAttributes = { ["ConnectionDraining"] = true, ["CrossZoneLoadBalancing"] = true, ["ConnectionSettings"] = true, ["AdditionalAttributes"] = true, ["AccessLog"] = true, nil }

function asserts.AssertLoadBalancerAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LoadBalancerAttributes to be of type 'table'")
	if struct["ConnectionDraining"] then asserts.AssertConnectionDraining(struct["ConnectionDraining"]) end
	if struct["CrossZoneLoadBalancing"] then asserts.AssertCrossZoneLoadBalancing(struct["CrossZoneLoadBalancing"]) end
	if struct["ConnectionSettings"] then asserts.AssertConnectionSettings(struct["ConnectionSettings"]) end
	if struct["AdditionalAttributes"] then asserts.AssertAdditionalAttributes(struct["AdditionalAttributes"]) end
	if struct["AccessLog"] then asserts.AssertAccessLog(struct["AccessLog"]) end
	for k,_ in pairs(struct) do
		assert(keys.LoadBalancerAttributes[k], "LoadBalancerAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LoadBalancerAttributes
-- <p>The attributes for a load balancer.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConnectionDraining [ConnectionDraining] <p>If enabled, the load balancer allows existing requests to complete before the load balancer shifts traffic away from a deregistered or unhealthy instance.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/config-conn-drain.html">Configure Connection Draining</a> in the <i>Classic Load Balancers Guide</i>.</p>
-- * CrossZoneLoadBalancing [CrossZoneLoadBalancing] <p>If enabled, the load balancer routes the request traffic evenly across all instances regardless of the Availability Zones.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-disable-crosszone-lb.html">Configure Cross-Zone Load Balancing</a> in the <i>Classic Load Balancers Guide</i>.</p>
-- * ConnectionSettings [ConnectionSettings] <p>If enabled, the load balancer allows the connections to remain idle (no data is sent over the connection) for the specified duration.</p> <p>By default, Elastic Load Balancing maintains a 60-second idle connection timeout for both front-end and back-end connections of your load balancer. For more information, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/config-idle-timeout.html">Configure Idle Connection Timeout</a> in the <i>Classic Load Balancers Guide</i>.</p>
-- * AdditionalAttributes [AdditionalAttributes] <p>This parameter is reserved.</p>
-- * AccessLog [AccessLog] <p>If enabled, the load balancer captures detailed information of all requests and delivers the information to the Amazon S3 bucket that you specify.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-access-logs.html">Enable Access Logs</a> in the <i>Classic Load Balancers Guide</i>.</p>
-- @return LoadBalancerAttributes structure as a key-value pair table
function M.LoadBalancerAttributes(args)
	assert(args, "You must provide an argument table when creating LoadBalancerAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConnectionDraining"] = args["ConnectionDraining"],
		["CrossZoneLoadBalancing"] = args["CrossZoneLoadBalancing"],
		["ConnectionSettings"] = args["ConnectionSettings"],
		["AdditionalAttributes"] = args["AdditionalAttributes"],
		["AccessLog"] = args["AccessLog"],
	}
	asserts.AssertLoadBalancerAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TagDescription = { ["Tags"] = true, ["LoadBalancerName"] = true, nil }

function asserts.AssertTagDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagDescription to be of type 'table'")
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["LoadBalancerName"] then asserts.AssertAccessPointName(struct["LoadBalancerName"]) end
	for k,_ in pairs(struct) do
		assert(keys.TagDescription[k], "TagDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagDescription
-- <p>The tags associated with a load balancer.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Tags [TagList] <p>The tags.</p>
-- * LoadBalancerName [AccessPointName] <p>The name of the load balancer.</p>
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
		["Tags"] = args["Tags"],
		["LoadBalancerName"] = args["LoadBalancerName"],
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

keys.AttachLoadBalancerToSubnetsOutput = { ["Subnets"] = true, nil }

function asserts.AssertAttachLoadBalancerToSubnetsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachLoadBalancerToSubnetsOutput to be of type 'table'")
	if struct["Subnets"] then asserts.AssertSubnets(struct["Subnets"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttachLoadBalancerToSubnetsOutput[k], "AttachLoadBalancerToSubnetsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachLoadBalancerToSubnetsOutput
-- <p>Contains the output of AttachLoadBalancerToSubnets.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Subnets [Subnets] <p>The IDs of the subnets attached to the load balancer.</p>
-- @return AttachLoadBalancerToSubnetsOutput structure as a key-value pair table
function M.AttachLoadBalancerToSubnetsOutput(args)
	assert(args, "You must provide an argument table when creating AttachLoadBalancerToSubnetsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Subnets"] = args["Subnets"],
	}
	asserts.AssertAttachLoadBalancerToSubnetsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SetLoadBalancerPoliciesForBackendServerOutput = { nil }

function asserts.AssertSetLoadBalancerPoliciesForBackendServerOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetLoadBalancerPoliciesForBackendServerOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SetLoadBalancerPoliciesForBackendServerOutput[k], "SetLoadBalancerPoliciesForBackendServerOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetLoadBalancerPoliciesForBackendServerOutput
-- <p>Contains the output of SetLoadBalancerPoliciesForBackendServer.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return SetLoadBalancerPoliciesForBackendServerOutput structure as a key-value pair table
function M.SetLoadBalancerPoliciesForBackendServerOutput(args)
	assert(args, "You must provide an argument table when creating SetLoadBalancerPoliciesForBackendServerOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertSetLoadBalancerPoliciesForBackendServerOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateAccessPointInput = { ["Subnets"] = true, ["Scheme"] = true, ["Tags"] = true, ["Listeners"] = true, ["SecurityGroups"] = true, ["LoadBalancerName"] = true, ["AvailabilityZones"] = true, nil }

function asserts.AssertCreateAccessPointInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAccessPointInput to be of type 'table'")
	assert(struct["LoadBalancerName"], "Expected key LoadBalancerName to exist in table")
	assert(struct["Listeners"], "Expected key Listeners to exist in table")
	if struct["Subnets"] then asserts.AssertSubnets(struct["Subnets"]) end
	if struct["Scheme"] then asserts.AssertLoadBalancerScheme(struct["Scheme"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["Listeners"] then asserts.AssertListeners(struct["Listeners"]) end
	if struct["SecurityGroups"] then asserts.AssertSecurityGroups(struct["SecurityGroups"]) end
	if struct["LoadBalancerName"] then asserts.AssertAccessPointName(struct["LoadBalancerName"]) end
	if struct["AvailabilityZones"] then asserts.AssertAvailabilityZones(struct["AvailabilityZones"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateAccessPointInput[k], "CreateAccessPointInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAccessPointInput
-- <p>Contains the parameters for CreateLoadBalancer.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Subnets [Subnets] <p>The IDs of the subnets in your VPC to attach to the load balancer. Specify one subnet per Availability Zone specified in <code>AvailabilityZones</code>.</p>
-- * Scheme [LoadBalancerScheme] <p>The type of a load balancer. Valid only for load balancers in a VPC.</p> <p>By default, Elastic Load Balancing creates an Internet-facing load balancer with a DNS name that resolves to public IP addresses. For more information about Internet-facing and Internal load balancers, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/userguide/how-elastic-load-balancing-works.html#load-balancer-scheme">Load Balancer Scheme</a> in the <i>Elastic Load Balancing User Guide</i>.</p> <p>Specify <code>internal</code> to create a load balancer with a DNS name that resolves to private IP addresses.</p>
-- * Tags [TagList] <p>A list of tags to assign to the load balancer.</p> <p>For more information about tagging your load balancer, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/add-remove-tags.html">Tag Your Classic Load Balancer</a> in the <i>Classic Load Balancers Guide</i>.</p>
-- * Listeners [Listeners] <p>The listeners.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-listener-config.html">Listeners for Your Classic Load Balancer</a> in the <i>Classic Load Balancers Guide</i>.</p>
-- * SecurityGroups [SecurityGroups] <p>The IDs of the security groups to assign to the load balancer.</p>
-- * LoadBalancerName [AccessPointName] <p>The name of the load balancer.</p> <p>This name must be unique within your set of load balancers for the region, must have a maximum of 32 characters, must contain only alphanumeric characters or hyphens, and cannot begin or end with a hyphen.</p>
-- * AvailabilityZones [AvailabilityZones] <p>One or more Availability Zones from the same region as the load balancer.</p> <p>You must specify at least one Availability Zone.</p> <p>You can add more Availability Zones after you create the load balancer using <a>EnableAvailabilityZonesForLoadBalancer</a>.</p>
-- Required key: LoadBalancerName
-- Required key: Listeners
-- @return CreateAccessPointInput structure as a key-value pair table
function M.CreateAccessPointInput(args)
	assert(args, "You must provide an argument table when creating CreateAccessPointInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Subnets"] = args["Subnets"],
		["Scheme"] = args["Scheme"],
		["Tags"] = args["Tags"],
		["Listeners"] = args["Listeners"],
		["SecurityGroups"] = args["SecurityGroups"],
		["LoadBalancerName"] = args["LoadBalancerName"],
		["AvailabilityZones"] = args["AvailabilityZones"],
	}
	asserts.AssertCreateAccessPointInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateLBCookieStickinessPolicyInput = { ["PolicyName"] = true, ["CookieExpirationPeriod"] = true, ["LoadBalancerName"] = true, nil }

function asserts.AssertCreateLBCookieStickinessPolicyInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateLBCookieStickinessPolicyInput to be of type 'table'")
	assert(struct["LoadBalancerName"], "Expected key LoadBalancerName to exist in table")
	assert(struct["PolicyName"], "Expected key PolicyName to exist in table")
	if struct["PolicyName"] then asserts.AssertPolicyName(struct["PolicyName"]) end
	if struct["CookieExpirationPeriod"] then asserts.AssertCookieExpirationPeriod(struct["CookieExpirationPeriod"]) end
	if struct["LoadBalancerName"] then asserts.AssertAccessPointName(struct["LoadBalancerName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateLBCookieStickinessPolicyInput[k], "CreateLBCookieStickinessPolicyInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateLBCookieStickinessPolicyInput
-- <p>Contains the parameters for CreateLBCookieStickinessPolicy.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyName [PolicyName] <p>The name of the policy being created. Policy names must consist of alphanumeric characters and dashes (-). This name must be unique within the set of policies for this load balancer.</p>
-- * CookieExpirationPeriod [CookieExpirationPeriod] <p>The time period, in seconds, after which the cookie should be considered stale. If you do not specify this parameter, the default value is 0, which indicates that the sticky session should last for the duration of the browser session.</p>
-- * LoadBalancerName [AccessPointName] <p>The name of the load balancer.</p>
-- Required key: LoadBalancerName
-- Required key: PolicyName
-- @return CreateLBCookieStickinessPolicyInput structure as a key-value pair table
function M.CreateLBCookieStickinessPolicyInput(args)
	assert(args, "You must provide an argument table when creating CreateLBCookieStickinessPolicyInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyName"] = args["PolicyName"],
		["CookieExpirationPeriod"] = args["CookieExpirationPeriod"],
		["LoadBalancerName"] = args["LoadBalancerName"],
	}
	asserts.AssertCreateLBCookieStickinessPolicyInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PolicyDescription = { ["PolicyAttributeDescriptions"] = true, ["PolicyName"] = true, ["PolicyTypeName"] = true, nil }

function asserts.AssertPolicyDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PolicyDescription to be of type 'table'")
	if struct["PolicyAttributeDescriptions"] then asserts.AssertPolicyAttributeDescriptions(struct["PolicyAttributeDescriptions"]) end
	if struct["PolicyName"] then asserts.AssertPolicyName(struct["PolicyName"]) end
	if struct["PolicyTypeName"] then asserts.AssertPolicyTypeName(struct["PolicyTypeName"]) end
	for k,_ in pairs(struct) do
		assert(keys.PolicyDescription[k], "PolicyDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PolicyDescription
-- <p>Information about a policy.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyAttributeDescriptions [PolicyAttributeDescriptions] <p>The policy attributes.</p>
-- * PolicyName [PolicyName] <p>The name of the policy.</p>
-- * PolicyTypeName [PolicyTypeName] <p>The name of the policy type.</p>
-- @return PolicyDescription structure as a key-value pair table
function M.PolicyDescription(args)
	assert(args, "You must provide an argument table when creating PolicyDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyAttributeDescriptions"] = args["PolicyAttributeDescriptions"],
		["PolicyName"] = args["PolicyName"],
		["PolicyTypeName"] = args["PolicyTypeName"],
	}
	asserts.AssertPolicyDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteLoadBalancerListenerInput = { ["LoadBalancerPorts"] = true, ["LoadBalancerName"] = true, nil }

function asserts.AssertDeleteLoadBalancerListenerInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteLoadBalancerListenerInput to be of type 'table'")
	assert(struct["LoadBalancerName"], "Expected key LoadBalancerName to exist in table")
	assert(struct["LoadBalancerPorts"], "Expected key LoadBalancerPorts to exist in table")
	if struct["LoadBalancerPorts"] then asserts.AssertPorts(struct["LoadBalancerPorts"]) end
	if struct["LoadBalancerName"] then asserts.AssertAccessPointName(struct["LoadBalancerName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteLoadBalancerListenerInput[k], "DeleteLoadBalancerListenerInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteLoadBalancerListenerInput
-- <p>Contains the parameters for DeleteLoadBalancerListeners.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LoadBalancerPorts [Ports] <p>The client port numbers of the listeners.</p>
-- * LoadBalancerName [AccessPointName] <p>The name of the load balancer.</p>
-- Required key: LoadBalancerName
-- Required key: LoadBalancerPorts
-- @return DeleteLoadBalancerListenerInput structure as a key-value pair table
function M.DeleteLoadBalancerListenerInput(args)
	assert(args, "You must provide an argument table when creating DeleteLoadBalancerListenerInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LoadBalancerPorts"] = args["LoadBalancerPorts"],
		["LoadBalancerName"] = args["LoadBalancerName"],
	}
	asserts.AssertDeleteLoadBalancerListenerInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ConnectionDraining = { ["Enabled"] = true, ["Timeout"] = true, nil }

function asserts.AssertConnectionDraining(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConnectionDraining to be of type 'table'")
	assert(struct["Enabled"], "Expected key Enabled to exist in table")
	if struct["Enabled"] then asserts.AssertConnectionDrainingEnabled(struct["Enabled"]) end
	if struct["Timeout"] then asserts.AssertConnectionDrainingTimeout(struct["Timeout"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConnectionDraining[k], "ConnectionDraining contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConnectionDraining
-- <p>Information about the <code>ConnectionDraining</code> attribute.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Enabled [ConnectionDrainingEnabled] <p>Specifies whether connection draining is enabled for the load balancer.</p>
-- * Timeout [ConnectionDrainingTimeout] <p>The maximum time, in seconds, to keep the existing connections open before deregistering the instances.</p>
-- Required key: Enabled
-- @return ConnectionDraining structure as a key-value pair table
function M.ConnectionDraining(args)
	assert(args, "You must provide an argument table when creating ConnectionDraining")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Enabled"] = args["Enabled"],
		["Timeout"] = args["Timeout"],
	}
	asserts.AssertConnectionDraining(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SetLoadBalancerPoliciesForBackendServerInput = { ["InstancePort"] = true, ["PolicyNames"] = true, ["LoadBalancerName"] = true, nil }

function asserts.AssertSetLoadBalancerPoliciesForBackendServerInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetLoadBalancerPoliciesForBackendServerInput to be of type 'table'")
	assert(struct["LoadBalancerName"], "Expected key LoadBalancerName to exist in table")
	assert(struct["InstancePort"], "Expected key InstancePort to exist in table")
	assert(struct["PolicyNames"], "Expected key PolicyNames to exist in table")
	if struct["InstancePort"] then asserts.AssertEndPointPort(struct["InstancePort"]) end
	if struct["PolicyNames"] then asserts.AssertPolicyNames(struct["PolicyNames"]) end
	if struct["LoadBalancerName"] then asserts.AssertAccessPointName(struct["LoadBalancerName"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetLoadBalancerPoliciesForBackendServerInput[k], "SetLoadBalancerPoliciesForBackendServerInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetLoadBalancerPoliciesForBackendServerInput
-- <p>Contains the parameters for SetLoadBalancerPoliciesForBackendServer.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstancePort [EndPointPort] <p>The port number associated with the EC2 instance.</p>
-- * PolicyNames [PolicyNames] <p>The names of the policies. If the list is empty, then all current polices are removed from the EC2 instance.</p>
-- * LoadBalancerName [AccessPointName] <p>The name of the load balancer.</p>
-- Required key: LoadBalancerName
-- Required key: InstancePort
-- Required key: PolicyNames
-- @return SetLoadBalancerPoliciesForBackendServerInput structure as a key-value pair table
function M.SetLoadBalancerPoliciesForBackendServerInput(args)
	assert(args, "You must provide an argument table when creating SetLoadBalancerPoliciesForBackendServerInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InstancePort"] = args["InstancePort"],
		["PolicyNames"] = args["PolicyNames"],
		["LoadBalancerName"] = args["LoadBalancerName"],
	}
	asserts.AssertSetLoadBalancerPoliciesForBackendServerInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteAccessPointInput = { ["LoadBalancerName"] = true, nil }

function asserts.AssertDeleteAccessPointInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteAccessPointInput to be of type 'table'")
	assert(struct["LoadBalancerName"], "Expected key LoadBalancerName to exist in table")
	if struct["LoadBalancerName"] then asserts.AssertAccessPointName(struct["LoadBalancerName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteAccessPointInput[k], "DeleteAccessPointInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteAccessPointInput
-- <p>Contains the parameters for DeleteLoadBalancer.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LoadBalancerName [AccessPointName] <p>The name of the load balancer.</p>
-- Required key: LoadBalancerName
-- @return DeleteAccessPointInput structure as a key-value pair table
function M.DeleteAccessPointInput(args)
	assert(args, "You must provide an argument table when creating DeleteAccessPointInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LoadBalancerName"] = args["LoadBalancerName"],
	}
	asserts.AssertDeleteAccessPointInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Listener = { ["InstancePort"] = true, ["SSLCertificateId"] = true, ["LoadBalancerPort"] = true, ["Protocol"] = true, ["InstanceProtocol"] = true, nil }

function asserts.AssertListener(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Listener to be of type 'table'")
	assert(struct["Protocol"], "Expected key Protocol to exist in table")
	assert(struct["LoadBalancerPort"], "Expected key LoadBalancerPort to exist in table")
	assert(struct["InstancePort"], "Expected key InstancePort to exist in table")
	if struct["InstancePort"] then asserts.AssertInstancePort(struct["InstancePort"]) end
	if struct["SSLCertificateId"] then asserts.AssertSSLCertificateId(struct["SSLCertificateId"]) end
	if struct["LoadBalancerPort"] then asserts.AssertAccessPointPort(struct["LoadBalancerPort"]) end
	if struct["Protocol"] then asserts.AssertProtocol(struct["Protocol"]) end
	if struct["InstanceProtocol"] then asserts.AssertProtocol(struct["InstanceProtocol"]) end
	for k,_ in pairs(struct) do
		assert(keys.Listener[k], "Listener contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Listener
-- <p>Information about a listener.</p> <p>For information about the protocols and the ports supported by Elastic Load Balancing, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-listener-config.html">Listeners for Your Classic Load Balancer</a> in the <i>Classic Load Balancers Guide</i>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstancePort [InstancePort] <p>The port on which the instance is listening.</p>
-- * SSLCertificateId [SSLCertificateId] <p>The Amazon Resource Name (ARN) of the server certificate.</p>
-- * LoadBalancerPort [AccessPointPort] <p>The port on which the load balancer is listening. On EC2-VPC, you can specify any port from the range 1-65535. On EC2-Classic, you can specify any port from the following list: 25, 80, 443, 465, 587, 1024-65535.</p>
-- * Protocol [Protocol] <p>The load balancer transport protocol to use for routing: HTTP, HTTPS, TCP, or SSL.</p>
-- * InstanceProtocol [Protocol] <p>The protocol to use for routing traffic to instances: HTTP, HTTPS, TCP, or SSL.</p> <p>If the front-end protocol is HTTP, HTTPS, TCP, or SSL, <code>InstanceProtocol</code> must be at the same protocol.</p> <p>If there is another listener with the same <code>InstancePort</code> whose <code>InstanceProtocol</code> is secure, (HTTPS or SSL), the listener's <code>InstanceProtocol</code> must also be secure.</p> <p>If there is another listener with the same <code>InstancePort</code> whose <code>InstanceProtocol</code> is HTTP or TCP, the listener's <code>InstanceProtocol</code> must be HTTP or TCP.</p>
-- Required key: Protocol
-- Required key: LoadBalancerPort
-- Required key: InstancePort
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
		["InstancePort"] = args["InstancePort"],
		["SSLCertificateId"] = args["SSLCertificateId"],
		["LoadBalancerPort"] = args["LoadBalancerPort"],
		["Protocol"] = args["Protocol"],
		["InstanceProtocol"] = args["InstanceProtocol"],
	}
	asserts.AssertListener(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BackendServerDescription = { ["InstancePort"] = true, ["PolicyNames"] = true, nil }

function asserts.AssertBackendServerDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BackendServerDescription to be of type 'table'")
	if struct["InstancePort"] then asserts.AssertInstancePort(struct["InstancePort"]) end
	if struct["PolicyNames"] then asserts.AssertPolicyNames(struct["PolicyNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.BackendServerDescription[k], "BackendServerDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BackendServerDescription
-- <p>Information about the configuration of an EC2 instance.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstancePort [InstancePort] <p>The port on which the EC2 instance is listening.</p>
-- * PolicyNames [PolicyNames] <p>The names of the policies enabled for the EC2 instance.</p>
-- @return BackendServerDescription structure as a key-value pair table
function M.BackendServerDescription(args)
	assert(args, "You must provide an argument table when creating BackendServerDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InstancePort"] = args["InstancePort"],
		["PolicyNames"] = args["PolicyNames"],
	}
	asserts.AssertBackendServerDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PolicyTypeDescription = { ["PolicyAttributeTypeDescriptions"] = true, ["PolicyTypeName"] = true, ["Description"] = true, nil }

function asserts.AssertPolicyTypeDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PolicyTypeDescription to be of type 'table'")
	if struct["PolicyAttributeTypeDescriptions"] then asserts.AssertPolicyAttributeTypeDescriptions(struct["PolicyAttributeTypeDescriptions"]) end
	if struct["PolicyTypeName"] then asserts.AssertPolicyTypeName(struct["PolicyTypeName"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.PolicyTypeDescription[k], "PolicyTypeDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PolicyTypeDescription
-- <p>Information about a policy type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyAttributeTypeDescriptions [PolicyAttributeTypeDescriptions] <p>The description of the policy attributes associated with the policies defined by Elastic Load Balancing.</p>
-- * PolicyTypeName [PolicyTypeName] <p>The name of the policy type.</p>
-- * Description [Description] <p>A description of the policy type.</p>
-- @return PolicyTypeDescription structure as a key-value pair table
function M.PolicyTypeDescription(args)
	assert(args, "You must provide an argument table when creating PolicyTypeDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyAttributeTypeDescriptions"] = args["PolicyAttributeTypeDescriptions"],
		["PolicyTypeName"] = args["PolicyTypeName"],
		["Description"] = args["Description"],
	}
	asserts.AssertPolicyTypeDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.HealthCheck = { ["HealthyThreshold"] = true, ["Interval"] = true, ["Target"] = true, ["Timeout"] = true, ["UnhealthyThreshold"] = true, nil }

function asserts.AssertHealthCheck(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HealthCheck to be of type 'table'")
	assert(struct["Target"], "Expected key Target to exist in table")
	assert(struct["Interval"], "Expected key Interval to exist in table")
	assert(struct["Timeout"], "Expected key Timeout to exist in table")
	assert(struct["UnhealthyThreshold"], "Expected key UnhealthyThreshold to exist in table")
	assert(struct["HealthyThreshold"], "Expected key HealthyThreshold to exist in table")
	if struct["HealthyThreshold"] then asserts.AssertHealthyThreshold(struct["HealthyThreshold"]) end
	if struct["Interval"] then asserts.AssertHealthCheckInterval(struct["Interval"]) end
	if struct["Target"] then asserts.AssertHealthCheckTarget(struct["Target"]) end
	if struct["Timeout"] then asserts.AssertHealthCheckTimeout(struct["Timeout"]) end
	if struct["UnhealthyThreshold"] then asserts.AssertUnhealthyThreshold(struct["UnhealthyThreshold"]) end
	for k,_ in pairs(struct) do
		assert(keys.HealthCheck[k], "HealthCheck contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HealthCheck
-- <p>Information about a health check.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HealthyThreshold [HealthyThreshold] <p>The number of consecutive health checks successes required before moving the instance to the <code>Healthy</code> state.</p>
-- * Interval [HealthCheckInterval] <p>The approximate interval, in seconds, between health checks of an individual instance.</p>
-- * Target [HealthCheckTarget] <p>The instance being checked. The protocol is either TCP, HTTP, HTTPS, or SSL. The range of valid ports is one (1) through 65535.</p> <p>TCP is the default, specified as a TCP: port pair, for example "TCP:5000". In this case, a health check simply attempts to open a TCP connection to the instance on the specified port. Failure to connect within the configured timeout is considered unhealthy.</p> <p>SSL is also specified as SSL: port pair, for example, SSL:5000.</p> <p>For HTTP/HTTPS, you must include a ping path in the string. HTTP is specified as a HTTP:port;/;PathToPing; grouping, for example "HTTP:80/weather/us/wa/seattle". In this case, a HTTP GET request is issued to the instance on the given port and path. Any answer other than "200 OK" within the timeout period is considered unhealthy.</p> <p>The total length of the HTTP ping target must be 1024 16-bit Unicode characters or less.</p>
-- * Timeout [HealthCheckTimeout] <p>The amount of time, in seconds, during which no response means a failed health check.</p> <p>This value must be less than the <code>Interval</code> value.</p>
-- * UnhealthyThreshold [UnhealthyThreshold] <p>The number of consecutive health check failures required before moving the instance to the <code>Unhealthy</code> state.</p>
-- Required key: Target
-- Required key: Interval
-- Required key: Timeout
-- Required key: UnhealthyThreshold
-- Required key: HealthyThreshold
-- @return HealthCheck structure as a key-value pair table
function M.HealthCheck(args)
	assert(args, "You must provide an argument table when creating HealthCheck")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HealthyThreshold"] = args["HealthyThreshold"],
		["Interval"] = args["Interval"],
		["Target"] = args["Target"],
		["Timeout"] = args["Timeout"],
		["UnhealthyThreshold"] = args["UnhealthyThreshold"],
	}
	asserts.AssertHealthCheck(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateAppCookieStickinessPolicyOutput = { nil }

function asserts.AssertCreateAppCookieStickinessPolicyOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAppCookieStickinessPolicyOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CreateAppCookieStickinessPolicyOutput[k], "CreateAppCookieStickinessPolicyOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAppCookieStickinessPolicyOutput
-- <p>Contains the output for CreateAppCookieStickinessPolicy.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CreateAppCookieStickinessPolicyOutput structure as a key-value pair table
function M.CreateAppCookieStickinessPolicyOutput(args)
	assert(args, "You must provide an argument table when creating CreateAppCookieStickinessPolicyOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertCreateAppCookieStickinessPolicyOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeLoadBalancerAttributesInput = { ["LoadBalancerName"] = true, nil }

function asserts.AssertDescribeLoadBalancerAttributesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLoadBalancerAttributesInput to be of type 'table'")
	assert(struct["LoadBalancerName"], "Expected key LoadBalancerName to exist in table")
	if struct["LoadBalancerName"] then asserts.AssertAccessPointName(struct["LoadBalancerName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeLoadBalancerAttributesInput[k], "DescribeLoadBalancerAttributesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLoadBalancerAttributesInput
-- <p>Contains the parameters for DescribeLoadBalancerAttributes.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LoadBalancerName [AccessPointName] <p>The name of the load balancer.</p>
-- Required key: LoadBalancerName
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
		["LoadBalancerName"] = args["LoadBalancerName"],
	}
	asserts.AssertDescribeLoadBalancerAttributesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AttachLoadBalancerToSubnetsInput = { ["Subnets"] = true, ["LoadBalancerName"] = true, nil }

function asserts.AssertAttachLoadBalancerToSubnetsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachLoadBalancerToSubnetsInput to be of type 'table'")
	assert(struct["LoadBalancerName"], "Expected key LoadBalancerName to exist in table")
	assert(struct["Subnets"], "Expected key Subnets to exist in table")
	if struct["Subnets"] then asserts.AssertSubnets(struct["Subnets"]) end
	if struct["LoadBalancerName"] then asserts.AssertAccessPointName(struct["LoadBalancerName"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttachLoadBalancerToSubnetsInput[k], "AttachLoadBalancerToSubnetsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachLoadBalancerToSubnetsInput
-- <p>Contains the parameters for AttachLoaBalancerToSubnets.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Subnets [Subnets] <p>The IDs of the subnets to add. You can add only one subnet per Availability Zone.</p>
-- * LoadBalancerName [AccessPointName] <p>The name of the load balancer.</p>
-- Required key: LoadBalancerName
-- Required key: Subnets
-- @return AttachLoadBalancerToSubnetsInput structure as a key-value pair table
function M.AttachLoadBalancerToSubnetsInput(args)
	assert(args, "You must provide an argument table when creating AttachLoadBalancerToSubnetsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Subnets"] = args["Subnets"],
		["LoadBalancerName"] = args["LoadBalancerName"],
	}
	asserts.AssertAttachLoadBalancerToSubnetsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Policies = { ["LBCookieStickinessPolicies"] = true, ["AppCookieStickinessPolicies"] = true, ["OtherPolicies"] = true, nil }

function asserts.AssertPolicies(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Policies to be of type 'table'")
	if struct["LBCookieStickinessPolicies"] then asserts.AssertLBCookieStickinessPolicies(struct["LBCookieStickinessPolicies"]) end
	if struct["AppCookieStickinessPolicies"] then asserts.AssertAppCookieStickinessPolicies(struct["AppCookieStickinessPolicies"]) end
	if struct["OtherPolicies"] then asserts.AssertPolicyNames(struct["OtherPolicies"]) end
	for k,_ in pairs(struct) do
		assert(keys.Policies[k], "Policies contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Policies
-- <p>The policies for a load balancer.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LBCookieStickinessPolicies [LBCookieStickinessPolicies] <p>The stickiness policies created using <a>CreateLBCookieStickinessPolicy</a>.</p>
-- * AppCookieStickinessPolicies [AppCookieStickinessPolicies] <p>The stickiness policies created using <a>CreateAppCookieStickinessPolicy</a>.</p>
-- * OtherPolicies [PolicyNames] <p>The policies other than the stickiness policies.</p>
-- @return Policies structure as a key-value pair table
function M.Policies(args)
	assert(args, "You must provide an argument table when creating Policies")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LBCookieStickinessPolicies"] = args["LBCookieStickinessPolicies"],
		["AppCookieStickinessPolicies"] = args["AppCookieStickinessPolicies"],
		["OtherPolicies"] = args["OtherPolicies"],
	}
	asserts.AssertPolicies(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteLoadBalancerPolicyInput = { ["PolicyName"] = true, ["LoadBalancerName"] = true, nil }

function asserts.AssertDeleteLoadBalancerPolicyInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteLoadBalancerPolicyInput to be of type 'table'")
	assert(struct["LoadBalancerName"], "Expected key LoadBalancerName to exist in table")
	assert(struct["PolicyName"], "Expected key PolicyName to exist in table")
	if struct["PolicyName"] then asserts.AssertPolicyName(struct["PolicyName"]) end
	if struct["LoadBalancerName"] then asserts.AssertAccessPointName(struct["LoadBalancerName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteLoadBalancerPolicyInput[k], "DeleteLoadBalancerPolicyInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteLoadBalancerPolicyInput
-- <p>Contains the parameters for DeleteLoadBalancerPolicy.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyName [PolicyName] <p>The name of the policy.</p>
-- * LoadBalancerName [AccessPointName] <p>The name of the load balancer.</p>
-- Required key: LoadBalancerName
-- Required key: PolicyName
-- @return DeleteLoadBalancerPolicyInput structure as a key-value pair table
function M.DeleteLoadBalancerPolicyInput(args)
	assert(args, "You must provide an argument table when creating DeleteLoadBalancerPolicyInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyName"] = args["PolicyName"],
		["LoadBalancerName"] = args["LoadBalancerName"],
	}
	asserts.AssertDeleteLoadBalancerPolicyInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SetLoadBalancerListenerSSLCertificateOutput = { nil }

function asserts.AssertSetLoadBalancerListenerSSLCertificateOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetLoadBalancerListenerSSLCertificateOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SetLoadBalancerListenerSSLCertificateOutput[k], "SetLoadBalancerListenerSSLCertificateOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetLoadBalancerListenerSSLCertificateOutput
-- <p>Contains the output of SetLoadBalancerListenerSSLCertificate.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return SetLoadBalancerListenerSSLCertificateOutput structure as a key-value pair table
function M.SetLoadBalancerListenerSSLCertificateOutput(args)
	assert(args, "You must provide an argument table when creating SetLoadBalancerListenerSSLCertificateOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertSetLoadBalancerListenerSSLCertificateOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RegisterEndPointsInput = { ["Instances"] = true, ["LoadBalancerName"] = true, nil }

function asserts.AssertRegisterEndPointsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterEndPointsInput to be of type 'table'")
	assert(struct["LoadBalancerName"], "Expected key LoadBalancerName to exist in table")
	assert(struct["Instances"], "Expected key Instances to exist in table")
	if struct["Instances"] then asserts.AssertInstances(struct["Instances"]) end
	if struct["LoadBalancerName"] then asserts.AssertAccessPointName(struct["LoadBalancerName"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegisterEndPointsInput[k], "RegisterEndPointsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterEndPointsInput
-- <p>Contains the parameters for RegisterInstancesWithLoadBalancer.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Instances [Instances] <p>The IDs of the instances.</p>
-- * LoadBalancerName [AccessPointName] <p>The name of the load balancer.</p>
-- Required key: LoadBalancerName
-- Required key: Instances
-- @return RegisterEndPointsInput structure as a key-value pair table
function M.RegisterEndPointsInput(args)
	assert(args, "You must provide an argument table when creating RegisterEndPointsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Instances"] = args["Instances"],
		["LoadBalancerName"] = args["LoadBalancerName"],
	}
	asserts.AssertRegisterEndPointsInput(all_args)
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
-- <p>Contains the output of RemoveTags.</p>
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

keys.DescribeLoadBalancerPoliciesOutput = { ["PolicyDescriptions"] = true, nil }

function asserts.AssertDescribeLoadBalancerPoliciesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLoadBalancerPoliciesOutput to be of type 'table'")
	if struct["PolicyDescriptions"] then asserts.AssertPolicyDescriptions(struct["PolicyDescriptions"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeLoadBalancerPoliciesOutput[k], "DescribeLoadBalancerPoliciesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLoadBalancerPoliciesOutput
-- <p>Contains the output of DescribeLoadBalancerPolicies.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyDescriptions [PolicyDescriptions] <p>Information about the policies.</p>
-- @return DescribeLoadBalancerPoliciesOutput structure as a key-value pair table
function M.DescribeLoadBalancerPoliciesOutput(args)
	assert(args, "You must provide an argument table when creating DescribeLoadBalancerPoliciesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyDescriptions"] = args["PolicyDescriptions"],
	}
	asserts.AssertDescribeLoadBalancerPoliciesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RegisterEndPointsOutput = { ["Instances"] = true, nil }

function asserts.AssertRegisterEndPointsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterEndPointsOutput to be of type 'table'")
	if struct["Instances"] then asserts.AssertInstances(struct["Instances"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegisterEndPointsOutput[k], "RegisterEndPointsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterEndPointsOutput
-- <p>Contains the output of RegisterInstancesWithLoadBalancer.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Instances [Instances] <p>The updated list of instances for the load balancer.</p>
-- @return RegisterEndPointsOutput structure as a key-value pair table
function M.RegisterEndPointsOutput(args)
	assert(args, "You must provide an argument table when creating RegisterEndPointsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Instances"] = args["Instances"],
	}
	asserts.AssertRegisterEndPointsOutput(all_args)
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

keys.Instance = { ["InstanceId"] = true, nil }

function asserts.AssertInstance(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Instance to be of type 'table'")
	if struct["InstanceId"] then asserts.AssertInstanceId(struct["InstanceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.Instance[k], "Instance contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Instance
-- <p>The ID of an EC2 instance.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [InstanceId] <p>The instance ID.</p>
-- @return Instance structure as a key-value pair table
function M.Instance(args)
	assert(args, "You must provide an argument table when creating Instance")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceId"] = args["InstanceId"],
	}
	asserts.AssertInstance(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DetachLoadBalancerFromSubnetsOutput = { ["Subnets"] = true, nil }

function asserts.AssertDetachLoadBalancerFromSubnetsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetachLoadBalancerFromSubnetsOutput to be of type 'table'")
	if struct["Subnets"] then asserts.AssertSubnets(struct["Subnets"]) end
	for k,_ in pairs(struct) do
		assert(keys.DetachLoadBalancerFromSubnetsOutput[k], "DetachLoadBalancerFromSubnetsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetachLoadBalancerFromSubnetsOutput
-- <p>Contains the output of DetachLoadBalancerFromSubnets.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Subnets [Subnets] <p>The IDs of the remaining subnets for the load balancer.</p>
-- @return DetachLoadBalancerFromSubnetsOutput structure as a key-value pair table
function M.DetachLoadBalancerFromSubnetsOutput(args)
	assert(args, "You must provide an argument table when creating DetachLoadBalancerFromSubnetsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Subnets"] = args["Subnets"],
	}
	asserts.AssertDetachLoadBalancerFromSubnetsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DetachLoadBalancerFromSubnetsInput = { ["Subnets"] = true, ["LoadBalancerName"] = true, nil }

function asserts.AssertDetachLoadBalancerFromSubnetsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetachLoadBalancerFromSubnetsInput to be of type 'table'")
	assert(struct["LoadBalancerName"], "Expected key LoadBalancerName to exist in table")
	assert(struct["Subnets"], "Expected key Subnets to exist in table")
	if struct["Subnets"] then asserts.AssertSubnets(struct["Subnets"]) end
	if struct["LoadBalancerName"] then asserts.AssertAccessPointName(struct["LoadBalancerName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DetachLoadBalancerFromSubnetsInput[k], "DetachLoadBalancerFromSubnetsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetachLoadBalancerFromSubnetsInput
-- <p>Contains the parameters for DetachLoadBalancerFromSubnets.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Subnets [Subnets] <p>The IDs of the subnets.</p>
-- * LoadBalancerName [AccessPointName] <p>The name of the load balancer.</p>
-- Required key: LoadBalancerName
-- Required key: Subnets
-- @return DetachLoadBalancerFromSubnetsInput structure as a key-value pair table
function M.DetachLoadBalancerFromSubnetsInput(args)
	assert(args, "You must provide an argument table when creating DetachLoadBalancerFromSubnetsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Subnets"] = args["Subnets"],
		["LoadBalancerName"] = args["LoadBalancerName"],
	}
	asserts.AssertDetachLoadBalancerFromSubnetsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyLoadBalancerAttributesOutput = { ["LoadBalancerAttributes"] = true, ["LoadBalancerName"] = true, nil }

function asserts.AssertModifyLoadBalancerAttributesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyLoadBalancerAttributesOutput to be of type 'table'")
	if struct["LoadBalancerAttributes"] then asserts.AssertLoadBalancerAttributes(struct["LoadBalancerAttributes"]) end
	if struct["LoadBalancerName"] then asserts.AssertAccessPointName(struct["LoadBalancerName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyLoadBalancerAttributesOutput[k], "ModifyLoadBalancerAttributesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyLoadBalancerAttributesOutput
-- <p>Contains the output of ModifyLoadBalancerAttributes.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LoadBalancerAttributes [LoadBalancerAttributes] <p>Information about the load balancer attributes.</p>
-- * LoadBalancerName [AccessPointName] <p>The name of the load balancer.</p>
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
		["LoadBalancerAttributes"] = args["LoadBalancerAttributes"],
		["LoadBalancerName"] = args["LoadBalancerName"],
	}
	asserts.AssertModifyLoadBalancerAttributesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PolicyAttributeTypeDescription = { ["DefaultValue"] = true, ["Cardinality"] = true, ["AttributeName"] = true, ["AttributeType"] = true, ["Description"] = true, nil }

function asserts.AssertPolicyAttributeTypeDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PolicyAttributeTypeDescription to be of type 'table'")
	if struct["DefaultValue"] then asserts.AssertDefaultValue(struct["DefaultValue"]) end
	if struct["Cardinality"] then asserts.AssertCardinality(struct["Cardinality"]) end
	if struct["AttributeName"] then asserts.AssertAttributeName(struct["AttributeName"]) end
	if struct["AttributeType"] then asserts.AssertAttributeType(struct["AttributeType"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.PolicyAttributeTypeDescription[k], "PolicyAttributeTypeDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PolicyAttributeTypeDescription
-- <p>Information about a policy attribute type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DefaultValue [DefaultValue] <p>The default value of the attribute, if applicable.</p>
-- * Cardinality [Cardinality] <p>The cardinality of the attribute.</p> <p>Valid values:</p> <ul> <li> <p>ONE(1) : Single value required</p> </li> <li> <p>ZERO_OR_ONE(0..1) : Up to one value is allowed</p> </li> <li> <p>ZERO_OR_MORE(0..*) : Optional. Multiple values are allowed</p> </li> <li> <p>ONE_OR_MORE(1..*0) : Required. Multiple values are allowed</p> </li> </ul>
-- * AttributeName [AttributeName] <p>The name of the attribute.</p>
-- * AttributeType [AttributeType] <p>The type of the attribute. For example, <code>Boolean</code> or <code>Integer</code>.</p>
-- * Description [Description] <p>A description of the attribute.</p>
-- @return PolicyAttributeTypeDescription structure as a key-value pair table
function M.PolicyAttributeTypeDescription(args)
	assert(args, "You must provide an argument table when creating PolicyAttributeTypeDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DefaultValue"] = args["DefaultValue"],
		["Cardinality"] = args["Cardinality"],
		["AttributeName"] = args["AttributeName"],
		["AttributeType"] = args["AttributeType"],
		["Description"] = args["Description"],
	}
	asserts.AssertPolicyAttributeTypeDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteLoadBalancerListenerOutput = { nil }

function asserts.AssertDeleteLoadBalancerListenerOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteLoadBalancerListenerOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteLoadBalancerListenerOutput[k], "DeleteLoadBalancerListenerOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteLoadBalancerListenerOutput
-- <p>Contains the output of DeleteLoadBalancerListeners.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteLoadBalancerListenerOutput structure as a key-value pair table
function M.DeleteLoadBalancerListenerOutput(args)
	assert(args, "You must provide an argument table when creating DeleteLoadBalancerListenerOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteLoadBalancerListenerOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyLoadBalancerAttributesInput = { ["LoadBalancerAttributes"] = true, ["LoadBalancerName"] = true, nil }

function asserts.AssertModifyLoadBalancerAttributesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyLoadBalancerAttributesInput to be of type 'table'")
	assert(struct["LoadBalancerName"], "Expected key LoadBalancerName to exist in table")
	assert(struct["LoadBalancerAttributes"], "Expected key LoadBalancerAttributes to exist in table")
	if struct["LoadBalancerAttributes"] then asserts.AssertLoadBalancerAttributes(struct["LoadBalancerAttributes"]) end
	if struct["LoadBalancerName"] then asserts.AssertAccessPointName(struct["LoadBalancerName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyLoadBalancerAttributesInput[k], "ModifyLoadBalancerAttributesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyLoadBalancerAttributesInput
-- <p>Contains the parameters for ModifyLoadBalancerAttributes.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LoadBalancerAttributes [LoadBalancerAttributes] <p>The attributes for the load balancer.</p>
-- * LoadBalancerName [AccessPointName] <p>The name of the load balancer.</p>
-- Required key: LoadBalancerName
-- Required key: LoadBalancerAttributes
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
		["LoadBalancerAttributes"] = args["LoadBalancerAttributes"],
		["LoadBalancerName"] = args["LoadBalancerName"],
	}
	asserts.AssertModifyLoadBalancerAttributesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateLoadBalancerPolicyOutput = { nil }

function asserts.AssertCreateLoadBalancerPolicyOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateLoadBalancerPolicyOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CreateLoadBalancerPolicyOutput[k], "CreateLoadBalancerPolicyOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateLoadBalancerPolicyOutput
-- <p>Contains the output of CreateLoadBalancerPolicy.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CreateLoadBalancerPolicyOutput structure as a key-value pair table
function M.CreateLoadBalancerPolicyOutput(args)
	assert(args, "You must provide an argument table when creating CreateLoadBalancerPolicyOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertCreateLoadBalancerPolicyOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RemoveAvailabilityZonesOutput = { ["AvailabilityZones"] = true, nil }

function asserts.AssertRemoveAvailabilityZonesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveAvailabilityZonesOutput to be of type 'table'")
	if struct["AvailabilityZones"] then asserts.AssertAvailabilityZones(struct["AvailabilityZones"]) end
	for k,_ in pairs(struct) do
		assert(keys.RemoveAvailabilityZonesOutput[k], "RemoveAvailabilityZonesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveAvailabilityZonesOutput
-- <p>Contains the output for DisableAvailabilityZonesForLoadBalancer.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AvailabilityZones [AvailabilityZones] <p>The remaining Availability Zones for the load balancer.</p>
-- @return RemoveAvailabilityZonesOutput structure as a key-value pair table
function M.RemoveAvailabilityZonesOutput(args)
	assert(args, "You must provide an argument table when creating RemoveAvailabilityZonesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AvailabilityZones"] = args["AvailabilityZones"],
	}
	asserts.AssertRemoveAvailabilityZonesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeLoadBalancerPolicyTypesOutput = { ["PolicyTypeDescriptions"] = true, nil }

function asserts.AssertDescribeLoadBalancerPolicyTypesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLoadBalancerPolicyTypesOutput to be of type 'table'")
	if struct["PolicyTypeDescriptions"] then asserts.AssertPolicyTypeDescriptions(struct["PolicyTypeDescriptions"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeLoadBalancerPolicyTypesOutput[k], "DescribeLoadBalancerPolicyTypesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLoadBalancerPolicyTypesOutput
-- <p>Contains the output of DescribeLoadBalancerPolicyTypes.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyTypeDescriptions [PolicyTypeDescriptions] <p>Information about the policy types.</p>
-- @return DescribeLoadBalancerPolicyTypesOutput structure as a key-value pair table
function M.DescribeLoadBalancerPolicyTypesOutput(args)
	assert(args, "You must provide an argument table when creating DescribeLoadBalancerPolicyTypesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyTypeDescriptions"] = args["PolicyTypeDescriptions"],
	}
	asserts.AssertDescribeLoadBalancerPolicyTypesOutput(all_args)
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
-- <p>Contains the output of AddTags.</p>
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

keys.AppCookieStickinessPolicy = { ["PolicyName"] = true, ["CookieName"] = true, nil }

function asserts.AssertAppCookieStickinessPolicy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AppCookieStickinessPolicy to be of type 'table'")
	if struct["PolicyName"] then asserts.AssertPolicyName(struct["PolicyName"]) end
	if struct["CookieName"] then asserts.AssertCookieName(struct["CookieName"]) end
	for k,_ in pairs(struct) do
		assert(keys.AppCookieStickinessPolicy[k], "AppCookieStickinessPolicy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AppCookieStickinessPolicy
-- <p>Information about a policy for application-controlled session stickiness.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyName [PolicyName] <p>The mnemonic name for the policy being created. The name must be unique within a set of policies for this load balancer.</p>
-- * CookieName [CookieName] <p>The name of the application cookie used for stickiness.</p>
-- @return AppCookieStickinessPolicy structure as a key-value pair table
function M.AppCookieStickinessPolicy(args)
	assert(args, "You must provide an argument table when creating AppCookieStickinessPolicy")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyName"] = args["PolicyName"],
		["CookieName"] = args["CookieName"],
	}
	asserts.AssertAppCookieStickinessPolicy(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TagKeyOnly = { ["Key"] = true, nil }

function asserts.AssertTagKeyOnly(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagKeyOnly to be of type 'table'")
	if struct["Key"] then asserts.AssertTagKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.TagKeyOnly[k], "TagKeyOnly contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagKeyOnly
-- <p>The key of a tag.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Key [TagKey] <p>The name of the key.</p>
-- @return TagKeyOnly structure as a key-value pair table
function M.TagKeyOnly(args)
	assert(args, "You must provide an argument table when creating TagKeyOnly")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Key"] = args["Key"],
	}
	asserts.AssertTagKeyOnly(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeregisterEndPointsInput = { ["Instances"] = true, ["LoadBalancerName"] = true, nil }

function asserts.AssertDeregisterEndPointsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterEndPointsInput to be of type 'table'")
	assert(struct["LoadBalancerName"], "Expected key LoadBalancerName to exist in table")
	assert(struct["Instances"], "Expected key Instances to exist in table")
	if struct["Instances"] then asserts.AssertInstances(struct["Instances"]) end
	if struct["LoadBalancerName"] then asserts.AssertAccessPointName(struct["LoadBalancerName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeregisterEndPointsInput[k], "DeregisterEndPointsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterEndPointsInput
-- <p>Contains the parameters for DeregisterInstancesFromLoadBalancer.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Instances [Instances] <p>The IDs of the instances.</p>
-- * LoadBalancerName [AccessPointName] <p>The name of the load balancer.</p>
-- Required key: LoadBalancerName
-- Required key: Instances
-- @return DeregisterEndPointsInput structure as a key-value pair table
function M.DeregisterEndPointsInput(args)
	assert(args, "You must provide an argument table when creating DeregisterEndPointsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Instances"] = args["Instances"],
		["LoadBalancerName"] = args["LoadBalancerName"],
	}
	asserts.AssertDeregisterEndPointsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeAccessPointsInput = { ["Marker"] = true, ["PageSize"] = true, ["LoadBalancerNames"] = true, nil }

function asserts.AssertDescribeAccessPointsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAccessPointsInput to be of type 'table'")
	if struct["Marker"] then asserts.AssertMarker(struct["Marker"]) end
	if struct["PageSize"] then asserts.AssertPageSize(struct["PageSize"]) end
	if struct["LoadBalancerNames"] then asserts.AssertLoadBalancerNames(struct["LoadBalancerNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAccessPointsInput[k], "DescribeAccessPointsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAccessPointsInput
-- <p>Contains the parameters for DescribeLoadBalancers.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [Marker] <p>The marker for the next set of results. (You received this marker from a previous call.)</p>
-- * PageSize [PageSize] <p>The maximum number of results to return with this call (a number from 1 to 400). The default is 400.</p>
-- * LoadBalancerNames [LoadBalancerNames] <p>The names of the load balancers.</p>
-- @return DescribeAccessPointsInput structure as a key-value pair table
function M.DescribeAccessPointsInput(args)
	assert(args, "You must provide an argument table when creating DescribeAccessPointsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["PageSize"] = args["PageSize"],
		["LoadBalancerNames"] = args["LoadBalancerNames"],
	}
	asserts.AssertDescribeAccessPointsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AddAvailabilityZonesInput = { ["AvailabilityZones"] = true, ["LoadBalancerName"] = true, nil }

function asserts.AssertAddAvailabilityZonesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddAvailabilityZonesInput to be of type 'table'")
	assert(struct["LoadBalancerName"], "Expected key LoadBalancerName to exist in table")
	assert(struct["AvailabilityZones"], "Expected key AvailabilityZones to exist in table")
	if struct["AvailabilityZones"] then asserts.AssertAvailabilityZones(struct["AvailabilityZones"]) end
	if struct["LoadBalancerName"] then asserts.AssertAccessPointName(struct["LoadBalancerName"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddAvailabilityZonesInput[k], "AddAvailabilityZonesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddAvailabilityZonesInput
-- <p>Contains the parameters for EnableAvailabilityZonesForLoadBalancer.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AvailabilityZones [AvailabilityZones] <p>The Availability Zones. These must be in the same region as the load balancer.</p>
-- * LoadBalancerName [AccessPointName] <p>The name of the load balancer.</p>
-- Required key: LoadBalancerName
-- Required key: AvailabilityZones
-- @return AddAvailabilityZonesInput structure as a key-value pair table
function M.AddAvailabilityZonesInput(args)
	assert(args, "You must provide an argument table when creating AddAvailabilityZonesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AvailabilityZones"] = args["AvailabilityZones"],
		["LoadBalancerName"] = args["LoadBalancerName"],
	}
	asserts.AssertAddAvailabilityZonesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteAccessPointOutput = { nil }

function asserts.AssertDeleteAccessPointOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteAccessPointOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteAccessPointOutput[k], "DeleteAccessPointOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteAccessPointOutput
-- <p>Contains the output of DeleteLoadBalancer.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteAccessPointOutput structure as a key-value pair table
function M.DeleteAccessPointOutput(args)
	assert(args, "You must provide an argument table when creating DeleteAccessPointOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteAccessPointOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AddAvailabilityZonesOutput = { ["AvailabilityZones"] = true, nil }

function asserts.AssertAddAvailabilityZonesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddAvailabilityZonesOutput to be of type 'table'")
	if struct["AvailabilityZones"] then asserts.AssertAvailabilityZones(struct["AvailabilityZones"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddAvailabilityZonesOutput[k], "AddAvailabilityZonesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddAvailabilityZonesOutput
-- <p>Contains the output of EnableAvailabilityZonesForLoadBalancer.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AvailabilityZones [AvailabilityZones] <p>The updated list of Availability Zones for the load balancer.</p>
-- @return AddAvailabilityZonesOutput structure as a key-value pair table
function M.AddAvailabilityZonesOutput(args)
	assert(args, "You must provide an argument table when creating AddAvailabilityZonesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AvailabilityZones"] = args["AvailabilityZones"],
	}
	asserts.AssertAddAvailabilityZonesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateLoadBalancerListenerInput = { ["Listeners"] = true, ["LoadBalancerName"] = true, nil }

function asserts.AssertCreateLoadBalancerListenerInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateLoadBalancerListenerInput to be of type 'table'")
	assert(struct["LoadBalancerName"], "Expected key LoadBalancerName to exist in table")
	assert(struct["Listeners"], "Expected key Listeners to exist in table")
	if struct["Listeners"] then asserts.AssertListeners(struct["Listeners"]) end
	if struct["LoadBalancerName"] then asserts.AssertAccessPointName(struct["LoadBalancerName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateLoadBalancerListenerInput[k], "CreateLoadBalancerListenerInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateLoadBalancerListenerInput
-- <p>Contains the parameters for CreateLoadBalancerListeners.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Listeners [Listeners] <p>The listeners.</p>
-- * LoadBalancerName [AccessPointName] <p>The name of the load balancer.</p>
-- Required key: LoadBalancerName
-- Required key: Listeners
-- @return CreateLoadBalancerListenerInput structure as a key-value pair table
function M.CreateLoadBalancerListenerInput(args)
	assert(args, "You must provide an argument table when creating CreateLoadBalancerListenerInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Listeners"] = args["Listeners"],
		["LoadBalancerName"] = args["LoadBalancerName"],
	}
	asserts.AssertCreateLoadBalancerListenerInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AddTagsInput = { ["Tags"] = true, ["LoadBalancerNames"] = true, nil }

function asserts.AssertAddTagsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddTagsInput to be of type 'table'")
	assert(struct["LoadBalancerNames"], "Expected key LoadBalancerNames to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["LoadBalancerNames"] then asserts.AssertLoadBalancerNames(struct["LoadBalancerNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddTagsInput[k], "AddTagsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddTagsInput
-- <p>Contains the parameters for AddTags.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Tags [TagList] <p>The tags.</p>
-- * LoadBalancerNames [LoadBalancerNames] <p>The name of the load balancer. You can specify one load balancer only.</p>
-- Required key: LoadBalancerNames
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
		["Tags"] = args["Tags"],
		["LoadBalancerNames"] = args["LoadBalancerNames"],
	}
	asserts.AssertAddTagsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeEndPointStateInput = { ["Instances"] = true, ["LoadBalancerName"] = true, nil }

function asserts.AssertDescribeEndPointStateInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEndPointStateInput to be of type 'table'")
	assert(struct["LoadBalancerName"], "Expected key LoadBalancerName to exist in table")
	if struct["Instances"] then asserts.AssertInstances(struct["Instances"]) end
	if struct["LoadBalancerName"] then asserts.AssertAccessPointName(struct["LoadBalancerName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEndPointStateInput[k], "DescribeEndPointStateInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEndPointStateInput
-- <p>Contains the parameters for DescribeInstanceHealth.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Instances [Instances] <p>The IDs of the instances.</p>
-- * LoadBalancerName [AccessPointName] <p>The name of the load balancer.</p>
-- Required key: LoadBalancerName
-- @return DescribeEndPointStateInput structure as a key-value pair table
function M.DescribeEndPointStateInput(args)
	assert(args, "You must provide an argument table when creating DescribeEndPointStateInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Instances"] = args["Instances"],
		["LoadBalancerName"] = args["LoadBalancerName"],
	}
	asserts.AssertDescribeEndPointStateInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SetLoadBalancerListenerSSLCertificateInput = { ["LoadBalancerPort"] = true, ["SSLCertificateId"] = true, ["LoadBalancerName"] = true, nil }

function asserts.AssertSetLoadBalancerListenerSSLCertificateInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetLoadBalancerListenerSSLCertificateInput to be of type 'table'")
	assert(struct["LoadBalancerName"], "Expected key LoadBalancerName to exist in table")
	assert(struct["LoadBalancerPort"], "Expected key LoadBalancerPort to exist in table")
	assert(struct["SSLCertificateId"], "Expected key SSLCertificateId to exist in table")
	if struct["LoadBalancerPort"] then asserts.AssertAccessPointPort(struct["LoadBalancerPort"]) end
	if struct["SSLCertificateId"] then asserts.AssertSSLCertificateId(struct["SSLCertificateId"]) end
	if struct["LoadBalancerName"] then asserts.AssertAccessPointName(struct["LoadBalancerName"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetLoadBalancerListenerSSLCertificateInput[k], "SetLoadBalancerListenerSSLCertificateInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetLoadBalancerListenerSSLCertificateInput
-- <p>Contains the parameters for SetLoadBalancerListenerSSLCertificate.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LoadBalancerPort [AccessPointPort] <p>The port that uses the specified SSL certificate.</p>
-- * SSLCertificateId [SSLCertificateId] <p>The Amazon Resource Name (ARN) of the SSL certificate.</p>
-- * LoadBalancerName [AccessPointName] <p>The name of the load balancer.</p>
-- Required key: LoadBalancerName
-- Required key: LoadBalancerPort
-- Required key: SSLCertificateId
-- @return SetLoadBalancerListenerSSLCertificateInput structure as a key-value pair table
function M.SetLoadBalancerListenerSSLCertificateInput(args)
	assert(args, "You must provide an argument table when creating SetLoadBalancerListenerSSLCertificateInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LoadBalancerPort"] = args["LoadBalancerPort"],
		["SSLCertificateId"] = args["SSLCertificateId"],
		["LoadBalancerName"] = args["LoadBalancerName"],
	}
	asserts.AssertSetLoadBalancerListenerSSLCertificateInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CrossZoneLoadBalancing = { ["Enabled"] = true, nil }

function asserts.AssertCrossZoneLoadBalancing(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CrossZoneLoadBalancing to be of type 'table'")
	assert(struct["Enabled"], "Expected key Enabled to exist in table")
	if struct["Enabled"] then asserts.AssertCrossZoneLoadBalancingEnabled(struct["Enabled"]) end
	for k,_ in pairs(struct) do
		assert(keys.CrossZoneLoadBalancing[k], "CrossZoneLoadBalancing contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CrossZoneLoadBalancing
-- <p>Information about the <code>CrossZoneLoadBalancing</code> attribute.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Enabled [CrossZoneLoadBalancingEnabled] <p>Specifies whether cross-zone load balancing is enabled for the load balancer.</p>
-- Required key: Enabled
-- @return CrossZoneLoadBalancing structure as a key-value pair table
function M.CrossZoneLoadBalancing(args)
	assert(args, "You must provide an argument table when creating CrossZoneLoadBalancing")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Enabled"] = args["Enabled"],
	}
	asserts.AssertCrossZoneLoadBalancing(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ConfigureHealthCheckInput = { ["HealthCheck"] = true, ["LoadBalancerName"] = true, nil }

function asserts.AssertConfigureHealthCheckInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfigureHealthCheckInput to be of type 'table'")
	assert(struct["LoadBalancerName"], "Expected key LoadBalancerName to exist in table")
	assert(struct["HealthCheck"], "Expected key HealthCheck to exist in table")
	if struct["HealthCheck"] then asserts.AssertHealthCheck(struct["HealthCheck"]) end
	if struct["LoadBalancerName"] then asserts.AssertAccessPointName(struct["LoadBalancerName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConfigureHealthCheckInput[k], "ConfigureHealthCheckInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfigureHealthCheckInput
-- <p>Contains the parameters for ConfigureHealthCheck.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HealthCheck [HealthCheck] <p>The configuration information.</p>
-- * LoadBalancerName [AccessPointName] <p>The name of the load balancer.</p>
-- Required key: LoadBalancerName
-- Required key: HealthCheck
-- @return ConfigureHealthCheckInput structure as a key-value pair table
function M.ConfigureHealthCheckInput(args)
	assert(args, "You must provide an argument table when creating ConfigureHealthCheckInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HealthCheck"] = args["HealthCheck"],
		["LoadBalancerName"] = args["LoadBalancerName"],
	}
	asserts.AssertConfigureHealthCheckInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateLoadBalancerPolicyInput = { ["PolicyName"] = true, ["PolicyTypeName"] = true, ["PolicyAttributes"] = true, ["LoadBalancerName"] = true, nil }

function asserts.AssertCreateLoadBalancerPolicyInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateLoadBalancerPolicyInput to be of type 'table'")
	assert(struct["LoadBalancerName"], "Expected key LoadBalancerName to exist in table")
	assert(struct["PolicyName"], "Expected key PolicyName to exist in table")
	assert(struct["PolicyTypeName"], "Expected key PolicyTypeName to exist in table")
	if struct["PolicyName"] then asserts.AssertPolicyName(struct["PolicyName"]) end
	if struct["PolicyTypeName"] then asserts.AssertPolicyTypeName(struct["PolicyTypeName"]) end
	if struct["PolicyAttributes"] then asserts.AssertPolicyAttributes(struct["PolicyAttributes"]) end
	if struct["LoadBalancerName"] then asserts.AssertAccessPointName(struct["LoadBalancerName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateLoadBalancerPolicyInput[k], "CreateLoadBalancerPolicyInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateLoadBalancerPolicyInput
-- <p>Contains the parameters for CreateLoadBalancerPolicy.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyName [PolicyName] <p>The name of the load balancer policy to be created. This name must be unique within the set of policies for this load balancer.</p>
-- * PolicyTypeName [PolicyTypeName] <p>The name of the base policy type. To get the list of policy types, use <a>DescribeLoadBalancerPolicyTypes</a>.</p>
-- * PolicyAttributes [PolicyAttributes] <p>The policy attributes.</p>
-- * LoadBalancerName [AccessPointName] <p>The name of the load balancer.</p>
-- Required key: LoadBalancerName
-- Required key: PolicyName
-- Required key: PolicyTypeName
-- @return CreateLoadBalancerPolicyInput structure as a key-value pair table
function M.CreateLoadBalancerPolicyInput(args)
	assert(args, "You must provide an argument table when creating CreateLoadBalancerPolicyInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyName"] = args["PolicyName"],
		["PolicyTypeName"] = args["PolicyTypeName"],
		["PolicyAttributes"] = args["PolicyAttributes"],
		["LoadBalancerName"] = args["LoadBalancerName"],
	}
	asserts.AssertCreateLoadBalancerPolicyInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteLoadBalancerPolicyOutput = { nil }

function asserts.AssertDeleteLoadBalancerPolicyOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteLoadBalancerPolicyOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteLoadBalancerPolicyOutput[k], "DeleteLoadBalancerPolicyOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteLoadBalancerPolicyOutput
-- <p>Contains the output of DeleteLoadBalancerPolicy.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteLoadBalancerPolicyOutput structure as a key-value pair table
function M.DeleteLoadBalancerPolicyOutput(args)
	assert(args, "You must provide an argument table when creating DeleteLoadBalancerPolicyOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteLoadBalancerPolicyOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ConfigureHealthCheckOutput = { ["HealthCheck"] = true, nil }

function asserts.AssertConfigureHealthCheckOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfigureHealthCheckOutput to be of type 'table'")
	if struct["HealthCheck"] then asserts.AssertHealthCheck(struct["HealthCheck"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConfigureHealthCheckOutput[k], "ConfigureHealthCheckOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfigureHealthCheckOutput
-- <p>Contains the output of ConfigureHealthCheck.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HealthCheck [HealthCheck] <p>The updated health check.</p>
-- @return ConfigureHealthCheckOutput structure as a key-value pair table
function M.ConfigureHealthCheckOutput(args)
	assert(args, "You must provide an argument table when creating ConfigureHealthCheckOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HealthCheck"] = args["HealthCheck"],
	}
	asserts.AssertConfigureHealthCheckOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeregisterEndPointsOutput = { ["Instances"] = true, nil }

function asserts.AssertDeregisterEndPointsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterEndPointsOutput to be of type 'table'")
	if struct["Instances"] then asserts.AssertInstances(struct["Instances"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeregisterEndPointsOutput[k], "DeregisterEndPointsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterEndPointsOutput
-- <p>Contains the output of DeregisterInstancesFromLoadBalancer.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Instances [Instances] <p>The remaining instances registered with the load balancer.</p>
-- @return DeregisterEndPointsOutput structure as a key-value pair table
function M.DeregisterEndPointsOutput(args)
	assert(args, "You must provide an argument table when creating DeregisterEndPointsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Instances"] = args["Instances"],
	}
	asserts.AssertDeregisterEndPointsOutput(all_args)
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
-- <p>Contains the output for DescribeTags.</p>
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

keys.DescribeLoadBalancerPolicyTypesInput = { ["PolicyTypeNames"] = true, nil }

function asserts.AssertDescribeLoadBalancerPolicyTypesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLoadBalancerPolicyTypesInput to be of type 'table'")
	if struct["PolicyTypeNames"] then asserts.AssertPolicyTypeNames(struct["PolicyTypeNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeLoadBalancerPolicyTypesInput[k], "DescribeLoadBalancerPolicyTypesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLoadBalancerPolicyTypesInput
-- <p>Contains the parameters for DescribeLoadBalancerPolicyTypes.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyTypeNames [PolicyTypeNames] <p>The names of the policy types. If no names are specified, describes all policy types defined by Elastic Load Balancing.</p>
-- @return DescribeLoadBalancerPolicyTypesInput structure as a key-value pair table
function M.DescribeLoadBalancerPolicyTypesInput(args)
	assert(args, "You must provide an argument table when creating DescribeLoadBalancerPolicyTypesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyTypeNames"] = args["PolicyTypeNames"],
	}
	asserts.AssertDescribeLoadBalancerPolicyTypesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ApplySecurityGroupsToLoadBalancerInput = { ["SecurityGroups"] = true, ["LoadBalancerName"] = true, nil }

function asserts.AssertApplySecurityGroupsToLoadBalancerInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApplySecurityGroupsToLoadBalancerInput to be of type 'table'")
	assert(struct["LoadBalancerName"], "Expected key LoadBalancerName to exist in table")
	assert(struct["SecurityGroups"], "Expected key SecurityGroups to exist in table")
	if struct["SecurityGroups"] then asserts.AssertSecurityGroups(struct["SecurityGroups"]) end
	if struct["LoadBalancerName"] then asserts.AssertAccessPointName(struct["LoadBalancerName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ApplySecurityGroupsToLoadBalancerInput[k], "ApplySecurityGroupsToLoadBalancerInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApplySecurityGroupsToLoadBalancerInput
-- <p>Contains the parameters for ApplySecurityGroupsToLoadBalancer.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SecurityGroups [SecurityGroups] <p>The IDs of the security groups to associate with the load balancer. Note that you cannot specify the name of the security group.</p>
-- * LoadBalancerName [AccessPointName] <p>The name of the load balancer.</p>
-- Required key: LoadBalancerName
-- Required key: SecurityGroups
-- @return ApplySecurityGroupsToLoadBalancerInput structure as a key-value pair table
function M.ApplySecurityGroupsToLoadBalancerInput(args)
	assert(args, "You must provide an argument table when creating ApplySecurityGroupsToLoadBalancerInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SecurityGroups"] = args["SecurityGroups"],
		["LoadBalancerName"] = args["LoadBalancerName"],
	}
	asserts.AssertApplySecurityGroupsToLoadBalancerInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeLoadBalancerPoliciesInput = { ["PolicyNames"] = true, ["LoadBalancerName"] = true, nil }

function asserts.AssertDescribeLoadBalancerPoliciesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLoadBalancerPoliciesInput to be of type 'table'")
	if struct["PolicyNames"] then asserts.AssertPolicyNames(struct["PolicyNames"]) end
	if struct["LoadBalancerName"] then asserts.AssertAccessPointName(struct["LoadBalancerName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeLoadBalancerPoliciesInput[k], "DescribeLoadBalancerPoliciesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLoadBalancerPoliciesInput
-- <p>Contains the parameters for DescribeLoadBalancerPolicies.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyNames [PolicyNames] <p>The names of the policies.</p>
-- * LoadBalancerName [AccessPointName] <p>The name of the load balancer.</p>
-- @return DescribeLoadBalancerPoliciesInput structure as a key-value pair table
function M.DescribeLoadBalancerPoliciesInput(args)
	assert(args, "You must provide an argument table when creating DescribeLoadBalancerPoliciesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyNames"] = args["PolicyNames"],
		["LoadBalancerName"] = args["LoadBalancerName"],
	}
	asserts.AssertDescribeLoadBalancerPoliciesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PolicyAttribute = { ["AttributeName"] = true, ["AttributeValue"] = true, nil }

function asserts.AssertPolicyAttribute(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PolicyAttribute to be of type 'table'")
	if struct["AttributeName"] then asserts.AssertAttributeName(struct["AttributeName"]) end
	if struct["AttributeValue"] then asserts.AssertAttributeValue(struct["AttributeValue"]) end
	for k,_ in pairs(struct) do
		assert(keys.PolicyAttribute[k], "PolicyAttribute contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PolicyAttribute
-- <p>Information about a policy attribute.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AttributeName [AttributeName] <p>The name of the attribute.</p>
-- * AttributeValue [AttributeValue] <p>The value of the attribute.</p>
-- @return PolicyAttribute structure as a key-value pair table
function M.PolicyAttribute(args)
	assert(args, "You must provide an argument table when creating PolicyAttribute")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AttributeName"] = args["AttributeName"],
		["AttributeValue"] = args["AttributeValue"],
	}
	asserts.AssertPolicyAttribute(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LoadBalancerDescription = { ["Subnets"] = true, ["CanonicalHostedZoneNameID"] = true, ["CanonicalHostedZoneName"] = true, ["ListenerDescriptions"] = true, ["HealthCheck"] = true, ["VPCId"] = true, ["BackendServerDescriptions"] = true, ["Instances"] = true, ["DNSName"] = true, ["SecurityGroups"] = true, ["Policies"] = true, ["LoadBalancerName"] = true, ["CreatedTime"] = true, ["AvailabilityZones"] = true, ["Scheme"] = true, ["SourceSecurityGroup"] = true, nil }

function asserts.AssertLoadBalancerDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LoadBalancerDescription to be of type 'table'")
	if struct["Subnets"] then asserts.AssertSubnets(struct["Subnets"]) end
	if struct["CanonicalHostedZoneNameID"] then asserts.AssertDNSName(struct["CanonicalHostedZoneNameID"]) end
	if struct["CanonicalHostedZoneName"] then asserts.AssertDNSName(struct["CanonicalHostedZoneName"]) end
	if struct["ListenerDescriptions"] then asserts.AssertListenerDescriptions(struct["ListenerDescriptions"]) end
	if struct["HealthCheck"] then asserts.AssertHealthCheck(struct["HealthCheck"]) end
	if struct["VPCId"] then asserts.AssertVPCId(struct["VPCId"]) end
	if struct["BackendServerDescriptions"] then asserts.AssertBackendServerDescriptions(struct["BackendServerDescriptions"]) end
	if struct["Instances"] then asserts.AssertInstances(struct["Instances"]) end
	if struct["DNSName"] then asserts.AssertDNSName(struct["DNSName"]) end
	if struct["SecurityGroups"] then asserts.AssertSecurityGroups(struct["SecurityGroups"]) end
	if struct["Policies"] then asserts.AssertPolicies(struct["Policies"]) end
	if struct["LoadBalancerName"] then asserts.AssertAccessPointName(struct["LoadBalancerName"]) end
	if struct["CreatedTime"] then asserts.AssertCreatedTime(struct["CreatedTime"]) end
	if struct["AvailabilityZones"] then asserts.AssertAvailabilityZones(struct["AvailabilityZones"]) end
	if struct["Scheme"] then asserts.AssertLoadBalancerScheme(struct["Scheme"]) end
	if struct["SourceSecurityGroup"] then asserts.AssertSourceSecurityGroup(struct["SourceSecurityGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.LoadBalancerDescription[k], "LoadBalancerDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LoadBalancerDescription
-- <p>Information about a load balancer.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Subnets [Subnets] <p>The IDs of the subnets for the load balancer.</p>
-- * CanonicalHostedZoneNameID [DNSName] <p>The ID of the Amazon Route 53 hosted zone for the load balancer.</p>
-- * CanonicalHostedZoneName [DNSName] <p>The DNS name of the load balancer.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/using-domain-names-with-elb.html">Configure a Custom Domain Name</a> in the <i>Classic Load Balancers Guide</i>.</p>
-- * ListenerDescriptions [ListenerDescriptions] <p>The listeners for the load balancer.</p>
-- * HealthCheck [HealthCheck] <p>Information about the health checks conducted on the load balancer.</p>
-- * VPCId [VPCId] <p>The ID of the VPC for the load balancer.</p>
-- * BackendServerDescriptions [BackendServerDescriptions] <p>Information about your EC2 instances.</p>
-- * Instances [Instances] <p>The IDs of the instances for the load balancer.</p>
-- * DNSName [DNSName] <p>The DNS name of the load balancer.</p>
-- * SecurityGroups [SecurityGroups] <p>The security groups for the load balancer. Valid only for load balancers in a VPC.</p>
-- * Policies [Policies] <p>The policies defined for the load balancer.</p>
-- * LoadBalancerName [AccessPointName] <p>The name of the load balancer.</p>
-- * CreatedTime [CreatedTime] <p>The date and time the load balancer was created.</p>
-- * AvailabilityZones [AvailabilityZones] <p>The Availability Zones for the load balancer.</p>
-- * Scheme [LoadBalancerScheme] <p>The type of load balancer. Valid only for load balancers in a VPC.</p> <p>If <code>Scheme</code> is <code>internet-facing</code>, the load balancer has a public DNS name that resolves to a public IP address.</p> <p>If <code>Scheme</code> is <code>internal</code>, the load balancer has a public DNS name that resolves to a private IP address.</p>
-- * SourceSecurityGroup [SourceSecurityGroup] <p>The security group for the load balancer, which you can use as part of your inbound rules for your registered instances. To only allow traffic from load balancers, add a security group rule that specifies this source security group as the inbound source.</p>
-- @return LoadBalancerDescription structure as a key-value pair table
function M.LoadBalancerDescription(args)
	assert(args, "You must provide an argument table when creating LoadBalancerDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Subnets"] = args["Subnets"],
		["CanonicalHostedZoneNameID"] = args["CanonicalHostedZoneNameID"],
		["CanonicalHostedZoneName"] = args["CanonicalHostedZoneName"],
		["ListenerDescriptions"] = args["ListenerDescriptions"],
		["HealthCheck"] = args["HealthCheck"],
		["VPCId"] = args["VPCId"],
		["BackendServerDescriptions"] = args["BackendServerDescriptions"],
		["Instances"] = args["Instances"],
		["DNSName"] = args["DNSName"],
		["SecurityGroups"] = args["SecurityGroups"],
		["Policies"] = args["Policies"],
		["LoadBalancerName"] = args["LoadBalancerName"],
		["CreatedTime"] = args["CreatedTime"],
		["AvailabilityZones"] = args["AvailabilityZones"],
		["Scheme"] = args["Scheme"],
		["SourceSecurityGroup"] = args["SourceSecurityGroup"],
	}
	asserts.AssertLoadBalancerDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RemoveTagsInput = { ["Tags"] = true, ["LoadBalancerNames"] = true, nil }

function asserts.AssertRemoveTagsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveTagsInput to be of type 'table'")
	assert(struct["LoadBalancerNames"], "Expected key LoadBalancerNames to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["Tags"] then asserts.AssertTagKeyList(struct["Tags"]) end
	if struct["LoadBalancerNames"] then asserts.AssertLoadBalancerNames(struct["LoadBalancerNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.RemoveTagsInput[k], "RemoveTagsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveTagsInput
-- <p>Contains the parameters for RemoveTags.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Tags [TagKeyList] <p>The list of tag keys to remove.</p>
-- * LoadBalancerNames [LoadBalancerNames] <p>The name of the load balancer. You can specify a maximum of one load balancer name.</p>
-- Required key: LoadBalancerNames
-- Required key: Tags
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
		["Tags"] = args["Tags"],
		["LoadBalancerNames"] = args["LoadBalancerNames"],
	}
	asserts.AssertRemoveTagsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ApplySecurityGroupsToLoadBalancerOutput = { ["SecurityGroups"] = true, nil }

function asserts.AssertApplySecurityGroupsToLoadBalancerOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApplySecurityGroupsToLoadBalancerOutput to be of type 'table'")
	if struct["SecurityGroups"] then asserts.AssertSecurityGroups(struct["SecurityGroups"]) end
	for k,_ in pairs(struct) do
		assert(keys.ApplySecurityGroupsToLoadBalancerOutput[k], "ApplySecurityGroupsToLoadBalancerOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApplySecurityGroupsToLoadBalancerOutput
-- <p>Contains the output of ApplySecurityGroupsToLoadBalancer.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SecurityGroups [SecurityGroups] <p>The IDs of the security groups associated with the load balancer.</p>
-- @return ApplySecurityGroupsToLoadBalancerOutput structure as a key-value pair table
function M.ApplySecurityGroupsToLoadBalancerOutput(args)
	assert(args, "You must provide an argument table when creating ApplySecurityGroupsToLoadBalancerOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SecurityGroups"] = args["SecurityGroups"],
	}
	asserts.AssertApplySecurityGroupsToLoadBalancerOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListenerDescription = { ["Listener"] = true, ["PolicyNames"] = true, nil }

function asserts.AssertListenerDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListenerDescription to be of type 'table'")
	if struct["Listener"] then asserts.AssertListener(struct["Listener"]) end
	if struct["PolicyNames"] then asserts.AssertPolicyNames(struct["PolicyNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListenerDescription[k], "ListenerDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListenerDescription
-- <p>The policies enabled for a listener.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Listener [Listener] <p>The listener.</p>
-- * PolicyNames [PolicyNames] <p>The policies. If there are no policies enabled, the list is empty.</p>
-- @return ListenerDescription structure as a key-value pair table
function M.ListenerDescription(args)
	assert(args, "You must provide an argument table when creating ListenerDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Listener"] = args["Listener"],
		["PolicyNames"] = args["PolicyNames"],
	}
	asserts.AssertListenerDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SetLoadBalancerPoliciesOfListenerOutput = { nil }

function asserts.AssertSetLoadBalancerPoliciesOfListenerOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetLoadBalancerPoliciesOfListenerOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SetLoadBalancerPoliciesOfListenerOutput[k], "SetLoadBalancerPoliciesOfListenerOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetLoadBalancerPoliciesOfListenerOutput
-- <p>Contains the output of SetLoadBalancePoliciesOfListener.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return SetLoadBalancerPoliciesOfListenerOutput structure as a key-value pair table
function M.SetLoadBalancerPoliciesOfListenerOutput(args)
	assert(args, "You must provide an argument table when creating SetLoadBalancerPoliciesOfListenerOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertSetLoadBalancerPoliciesOfListenerOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PolicyAttributeDescription = { ["AttributeName"] = true, ["AttributeValue"] = true, nil }

function asserts.AssertPolicyAttributeDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PolicyAttributeDescription to be of type 'table'")
	if struct["AttributeName"] then asserts.AssertAttributeName(struct["AttributeName"]) end
	if struct["AttributeValue"] then asserts.AssertAttributeValue(struct["AttributeValue"]) end
	for k,_ in pairs(struct) do
		assert(keys.PolicyAttributeDescription[k], "PolicyAttributeDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PolicyAttributeDescription
-- <p>Information about a policy attribute.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AttributeName [AttributeName] <p>The name of the attribute.</p>
-- * AttributeValue [AttributeValue] <p>The value of the attribute.</p>
-- @return PolicyAttributeDescription structure as a key-value pair table
function M.PolicyAttributeDescription(args)
	assert(args, "You must provide an argument table when creating PolicyAttributeDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AttributeName"] = args["AttributeName"],
		["AttributeValue"] = args["AttributeValue"],
	}
	asserts.AssertPolicyAttributeDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SetLoadBalancerPoliciesOfListenerInput = { ["PolicyNames"] = true, ["LoadBalancerPort"] = true, ["LoadBalancerName"] = true, nil }

function asserts.AssertSetLoadBalancerPoliciesOfListenerInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetLoadBalancerPoliciesOfListenerInput to be of type 'table'")
	assert(struct["LoadBalancerName"], "Expected key LoadBalancerName to exist in table")
	assert(struct["LoadBalancerPort"], "Expected key LoadBalancerPort to exist in table")
	assert(struct["PolicyNames"], "Expected key PolicyNames to exist in table")
	if struct["PolicyNames"] then asserts.AssertPolicyNames(struct["PolicyNames"]) end
	if struct["LoadBalancerPort"] then asserts.AssertAccessPointPort(struct["LoadBalancerPort"]) end
	if struct["LoadBalancerName"] then asserts.AssertAccessPointName(struct["LoadBalancerName"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetLoadBalancerPoliciesOfListenerInput[k], "SetLoadBalancerPoliciesOfListenerInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetLoadBalancerPoliciesOfListenerInput
-- <p>Contains the parameters for SetLoadBalancePoliciesOfListener.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyNames [PolicyNames] <p>The names of the policies. This list must include all policies to be enabled. If you omit a policy that is currently enabled, it is disabled. If the list is empty, all current policies are disabled.</p>
-- * LoadBalancerPort [AccessPointPort] <p>The external port of the load balancer.</p>
-- * LoadBalancerName [AccessPointName] <p>The name of the load balancer.</p>
-- Required key: LoadBalancerName
-- Required key: LoadBalancerPort
-- Required key: PolicyNames
-- @return SetLoadBalancerPoliciesOfListenerInput structure as a key-value pair table
function M.SetLoadBalancerPoliciesOfListenerInput(args)
	assert(args, "You must provide an argument table when creating SetLoadBalancerPoliciesOfListenerInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyNames"] = args["PolicyNames"],
		["LoadBalancerPort"] = args["LoadBalancerPort"],
		["LoadBalancerName"] = args["LoadBalancerName"],
	}
	asserts.AssertSetLoadBalancerPoliciesOfListenerInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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

function asserts.AssertAccessLogPrefix(str)
	assert(str)
	assert(type(str) == "string", "Expected AccessLogPrefix to be of type 'string'")
end

--  
function M.AccessLogPrefix(str)
	asserts.AssertAccessLogPrefix(str)
	return str
end

function asserts.AssertPolicyName(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyName to be of type 'string'")
end

--  
function M.PolicyName(str)
	asserts.AssertPolicyName(str)
	return str
end

function asserts.AssertProtocol(str)
	assert(str)
	assert(type(str) == "string", "Expected Protocol to be of type 'string'")
end

--  
function M.Protocol(str)
	asserts.AssertProtocol(str)
	return str
end

function asserts.AssertAttributeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeValue to be of type 'string'")
end

--  
function M.AttributeValue(str)
	asserts.AssertAttributeValue(str)
	return str
end

function asserts.AssertSecurityGroupName(str)
	assert(str)
	assert(type(str) == "string", "Expected SecurityGroupName to be of type 'string'")
end

--  
function M.SecurityGroupName(str)
	asserts.AssertSecurityGroupName(str)
	return str
end

function asserts.AssertAttributeName(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeName to be of type 'string'")
end

--  
function M.AttributeName(str)
	asserts.AssertAttributeName(str)
	return str
end

function asserts.AssertAdditionalAttributeKey(str)
	assert(str)
	assert(type(str) == "string", "Expected AdditionalAttributeKey to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.AdditionalAttributeKey(str)
	asserts.AssertAdditionalAttributeKey(str)
	return str
end

function asserts.AssertVPCId(str)
	assert(str)
	assert(type(str) == "string", "Expected VPCId to be of type 'string'")
end

--  
function M.VPCId(str)
	asserts.AssertVPCId(str)
	return str
end

function asserts.AssertState(str)
	assert(str)
	assert(type(str) == "string", "Expected State to be of type 'string'")
end

--  
function M.State(str)
	asserts.AssertState(str)
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

function asserts.AssertSecurityGroupOwnerAlias(str)
	assert(str)
	assert(type(str) == "string", "Expected SecurityGroupOwnerAlias to be of type 'string'")
end

--  
function M.SecurityGroupOwnerAlias(str)
	asserts.AssertSecurityGroupOwnerAlias(str)
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

function asserts.AssertAvailabilityZone(str)
	assert(str)
	assert(type(str) == "string", "Expected AvailabilityZone to be of type 'string'")
end

--  
function M.AvailabilityZone(str)
	asserts.AssertAvailabilityZone(str)
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

function asserts.AssertSSLCertificateId(str)
	assert(str)
	assert(type(str) == "string", "Expected SSLCertificateId to be of type 'string'")
end

--  
function M.SSLCertificateId(str)
	asserts.AssertSSLCertificateId(str)
	return str
end

function asserts.AssertLoadBalancerScheme(str)
	assert(str)
	assert(type(str) == "string", "Expected LoadBalancerScheme to be of type 'string'")
end

--  
function M.LoadBalancerScheme(str)
	asserts.AssertLoadBalancerScheme(str)
	return str
end

function asserts.AssertCardinality(str)
	assert(str)
	assert(type(str) == "string", "Expected Cardinality to be of type 'string'")
end

--  
function M.Cardinality(str)
	asserts.AssertCardinality(str)
	return str
end

function asserts.AssertAttributeType(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeType to be of type 'string'")
end

--  
function M.AttributeType(str)
	asserts.AssertAttributeType(str)
	return str
end

function asserts.AssertHealthCheckTarget(str)
	assert(str)
	assert(type(str) == "string", "Expected HealthCheckTarget to be of type 'string'")
end

--  
function M.HealthCheckTarget(str)
	asserts.AssertHealthCheckTarget(str)
	return str
end

function asserts.AssertPolicyTypeName(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyTypeName to be of type 'string'")
end

--  
function M.PolicyTypeName(str)
	asserts.AssertPolicyTypeName(str)
	return str
end

function asserts.AssertAdditionalAttributeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected AdditionalAttributeValue to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.AdditionalAttributeValue(str)
	asserts.AssertAdditionalAttributeValue(str)
	return str
end

function asserts.AssertS3BucketName(str)
	assert(str)
	assert(type(str) == "string", "Expected S3BucketName to be of type 'string'")
end

--  
function M.S3BucketName(str)
	asserts.AssertS3BucketName(str)
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

function asserts.AssertAccessPointName(str)
	assert(str)
	assert(type(str) == "string", "Expected AccessPointName to be of type 'string'")
end

--  
function M.AccessPointName(str)
	asserts.AssertAccessPointName(str)
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

function asserts.AssertInstanceId(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceId to be of type 'string'")
end

--  
function M.InstanceId(str)
	asserts.AssertInstanceId(str)
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

function asserts.AssertCookieName(str)
	assert(str)
	assert(type(str) == "string", "Expected CookieName to be of type 'string'")
end

--  
function M.CookieName(str)
	asserts.AssertCookieName(str)
	return str
end

function asserts.AssertReasonCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ReasonCode to be of type 'string'")
end

--  
function M.ReasonCode(str)
	asserts.AssertReasonCode(str)
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

function asserts.AssertDefaultValue(str)
	assert(str)
	assert(type(str) == "string", "Expected DefaultValue to be of type 'string'")
end

--  
function M.DefaultValue(str)
	asserts.AssertDefaultValue(str)
	return str
end

function asserts.AssertCookieExpirationPeriod(long)
	assert(long)
	assert(type(long) == "number", "Expected CookieExpirationPeriod to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.CookieExpirationPeriod(long)
	asserts.AssertCookieExpirationPeriod(long)
	return long
end

function asserts.AssertHealthCheckTimeout(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected HealthCheckTimeout to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 60, "Expected integer to be max 60")
	assert(integer >= 2, "Expected integer to be min 2")
end

function M.HealthCheckTimeout(integer)
	asserts.AssertHealthCheckTimeout(integer)
	return integer
end

function asserts.AssertHealthCheckInterval(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected HealthCheckInterval to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 300, "Expected integer to be max 300")
	assert(integer >= 5, "Expected integer to be min 5")
end

function M.HealthCheckInterval(integer)
	asserts.AssertHealthCheckInterval(integer)
	return integer
end

function asserts.AssertAccessPointPort(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected AccessPointPort to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.AccessPointPort(integer)
	asserts.AssertAccessPointPort(integer)
	return integer
end

function asserts.AssertEndPointPort(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected EndPointPort to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.EndPointPort(integer)
	asserts.AssertEndPointPort(integer)
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

function asserts.AssertHealthyThreshold(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected HealthyThreshold to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10, "Expected integer to be max 10")
	assert(integer >= 2, "Expected integer to be min 2")
end

function M.HealthyThreshold(integer)
	asserts.AssertHealthyThreshold(integer)
	return integer
end

function asserts.AssertUnhealthyThreshold(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected UnhealthyThreshold to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10, "Expected integer to be max 10")
	assert(integer >= 2, "Expected integer to be min 2")
end

function M.UnhealthyThreshold(integer)
	asserts.AssertUnhealthyThreshold(integer)
	return integer
end

function asserts.AssertIdleTimeout(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected IdleTimeout to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 3600, "Expected integer to be max 3600")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.IdleTimeout(integer)
	asserts.AssertIdleTimeout(integer)
	return integer
end

function asserts.AssertConnectionDrainingTimeout(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ConnectionDrainingTimeout to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.ConnectionDrainingTimeout(integer)
	asserts.AssertConnectionDrainingTimeout(integer)
	return integer
end

function asserts.AssertInstancePort(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected InstancePort to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 65535, "Expected integer to be max 65535")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.InstancePort(integer)
	asserts.AssertInstancePort(integer)
	return integer
end

function asserts.AssertAccessLogInterval(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected AccessLogInterval to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.AccessLogInterval(integer)
	asserts.AssertAccessLogInterval(integer)
	return integer
end

function asserts.AssertConnectionDrainingEnabled(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected ConnectionDrainingEnabled to be of type 'boolean'")
end

function M.ConnectionDrainingEnabled(boolean)
	asserts.AssertConnectionDrainingEnabled(boolean)
	return boolean
end

function asserts.AssertAccessLogEnabled(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected AccessLogEnabled to be of type 'boolean'")
end

function M.AccessLogEnabled(boolean)
	asserts.AssertAccessLogEnabled(boolean)
	return boolean
end

function asserts.AssertCrossZoneLoadBalancingEnabled(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected CrossZoneLoadBalancingEnabled to be of type 'boolean'")
end

function M.CrossZoneLoadBalancingEnabled(boolean)
	asserts.AssertCrossZoneLoadBalancingEnabled(boolean)
	return boolean
end

function asserts.AssertCreatedTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected CreatedTime to be of type 'string'")
end

function M.CreatedTime(timestamp)
	asserts.AssertCreatedTime(timestamp)
	return timestamp
end

function asserts.AssertLBCookieStickinessPolicies(list)
	assert(list)
	assert(type(list) == "table", "Expected LBCookieStickinessPolicies to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLBCookieStickinessPolicy(v)
	end
end

--  
-- List of LBCookieStickinessPolicy objects
function M.LBCookieStickinessPolicies(list)
	asserts.AssertLBCookieStickinessPolicies(list)
	return list
end

function asserts.AssertPolicyAttributeDescriptions(list)
	assert(list)
	assert(type(list) == "table", "Expected PolicyAttributeDescriptions to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPolicyAttributeDescription(v)
	end
end

--  
-- List of PolicyAttributeDescription objects
function M.PolicyAttributeDescriptions(list)
	asserts.AssertPolicyAttributeDescriptions(list)
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

function asserts.AssertPorts(list)
	assert(list)
	assert(type(list) == "table", "Expected Ports to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAccessPointPort(v)
	end
end

--  
-- List of AccessPointPort objects
function M.Ports(list)
	asserts.AssertPorts(list)
	return list
end

function asserts.AssertLoadBalancerNames(list)
	assert(list)
	assert(type(list) == "table", "Expected LoadBalancerNames to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAccessPointName(v)
	end
end

--  
-- List of AccessPointName objects
function M.LoadBalancerNames(list)
	asserts.AssertLoadBalancerNames(list)
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

function asserts.AssertPolicyDescriptions(list)
	assert(list)
	assert(type(list) == "table", "Expected PolicyDescriptions to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPolicyDescription(v)
	end
end

--  
-- List of PolicyDescription objects
function M.PolicyDescriptions(list)
	asserts.AssertPolicyDescriptions(list)
	return list
end

function asserts.AssertAdditionalAttributes(list)
	assert(list)
	assert(type(list) == "table", "Expected AdditionalAttributes to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	for _,v in ipairs(list) do
		asserts.AssertAdditionalAttribute(v)
	end
end

--  
-- List of AdditionalAttribute objects
function M.AdditionalAttributes(list)
	asserts.AssertAdditionalAttributes(list)
	return list
end

function asserts.AssertListenerDescriptions(list)
	assert(list)
	assert(type(list) == "table", "Expected ListenerDescriptions to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertListenerDescription(v)
	end
end

--  
-- List of ListenerDescription objects
function M.ListenerDescriptions(list)
	asserts.AssertListenerDescriptions(list)
	return list
end

function asserts.AssertLoadBalancerNamesMax20(list)
	assert(list)
	assert(type(list) == "table", "Expected LoadBalancerNamesMax20 to be of type ''table")
	assert(#list <= 20, "Expected list to be contain 20 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertAccessPointName(v)
	end
end

--  
-- List of AccessPointName objects
function M.LoadBalancerNamesMax20(list)
	asserts.AssertLoadBalancerNamesMax20(list)
	return list
end

function asserts.AssertBackendServerDescriptions(list)
	assert(list)
	assert(type(list) == "table", "Expected BackendServerDescriptions to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBackendServerDescription(v)
	end
end

--  
-- List of BackendServerDescription objects
function M.BackendServerDescriptions(list)
	asserts.AssertBackendServerDescriptions(list)
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

function asserts.AssertLoadBalancerDescriptions(list)
	assert(list)
	assert(type(list) == "table", "Expected LoadBalancerDescriptions to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLoadBalancerDescription(v)
	end
end

--  
-- List of LoadBalancerDescription objects
function M.LoadBalancerDescriptions(list)
	asserts.AssertLoadBalancerDescriptions(list)
	return list
end

function asserts.AssertTagKeyList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagKeyList to be of type ''table")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertTagKeyOnly(v)
	end
end

--  
-- List of TagKeyOnly objects
function M.TagKeyList(list)
	asserts.AssertTagKeyList(list)
	return list
end

function asserts.AssertInstanceStates(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceStates to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInstanceState(v)
	end
end

--  
-- List of InstanceState objects
function M.InstanceStates(list)
	asserts.AssertInstanceStates(list)
	return list
end

function asserts.AssertPolicyTypeNames(list)
	assert(list)
	assert(type(list) == "table", "Expected PolicyTypeNames to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPolicyTypeName(v)
	end
end

--  
-- List of PolicyTypeName objects
function M.PolicyTypeNames(list)
	asserts.AssertPolicyTypeNames(list)
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

function asserts.AssertPolicyAttributeTypeDescriptions(list)
	assert(list)
	assert(type(list) == "table", "Expected PolicyAttributeTypeDescriptions to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPolicyAttributeTypeDescription(v)
	end
end

--  
-- List of PolicyAttributeTypeDescription objects
function M.PolicyAttributeTypeDescriptions(list)
	asserts.AssertPolicyAttributeTypeDescriptions(list)
	return list
end

function asserts.AssertAppCookieStickinessPolicies(list)
	assert(list)
	assert(type(list) == "table", "Expected AppCookieStickinessPolicies to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAppCookieStickinessPolicy(v)
	end
end

--  
-- List of AppCookieStickinessPolicy objects
function M.AppCookieStickinessPolicies(list)
	asserts.AssertAppCookieStickinessPolicies(list)
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

function asserts.AssertPolicyNames(list)
	assert(list)
	assert(type(list) == "table", "Expected PolicyNames to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPolicyName(v)
	end
end

--  
-- List of PolicyName objects
function M.PolicyNames(list)
	asserts.AssertPolicyNames(list)
	return list
end

function asserts.AssertPolicyAttributes(list)
	assert(list)
	assert(type(list) == "table", "Expected PolicyAttributes to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPolicyAttribute(v)
	end
end

--  
-- List of PolicyAttribute objects
function M.PolicyAttributes(list)
	asserts.AssertPolicyAttributes(list)
	return list
end

function asserts.AssertInstances(list)
	assert(list)
	assert(type(list) == "table", "Expected Instances to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInstance(v)
	end
end

--  
-- List of Instance objects
function M.Instances(list)
	asserts.AssertInstances(list)
	return list
end

function asserts.AssertPolicyTypeDescriptions(list)
	assert(list)
	assert(type(list) == "table", "Expected PolicyTypeDescriptions to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPolicyTypeDescription(v)
	end
end

--  
-- List of PolicyTypeDescription objects
function M.PolicyTypeDescriptions(list)
	asserts.AssertPolicyTypeDescriptions(list)
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
--- Call CreateAppCookieStickinessPolicy asynchronously, invoking a callback when done
-- @param CreateAppCookieStickinessPolicyInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateAppCookieStickinessPolicyAsync(CreateAppCookieStickinessPolicyInput, cb)
	assert(CreateAppCookieStickinessPolicyInput, "You must provide a CreateAppCookieStickinessPolicyInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateAppCookieStickinessPolicy",
	}
	for header,value in pairs(CreateAppCookieStickinessPolicyInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateAppCookieStickinessPolicyInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateAppCookieStickinessPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateAppCookieStickinessPolicyInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateAppCookieStickinessPolicySync(CreateAppCookieStickinessPolicyInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateAppCookieStickinessPolicyAsync(CreateAppCookieStickinessPolicyInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call EnableAvailabilityZonesForLoadBalancer asynchronously, invoking a callback when done
-- @param AddAvailabilityZonesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.EnableAvailabilityZonesForLoadBalancerAsync(AddAvailabilityZonesInput, cb)
	assert(AddAvailabilityZonesInput, "You must provide a AddAvailabilityZonesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".EnableAvailabilityZonesForLoadBalancer",
	}
	for header,value in pairs(AddAvailabilityZonesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AddAvailabilityZonesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call EnableAvailabilityZonesForLoadBalancer synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AddAvailabilityZonesInput
-- @return response
-- @return error_type
-- @return error_message
function M.EnableAvailabilityZonesForLoadBalancerSync(AddAvailabilityZonesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.EnableAvailabilityZonesForLoadBalancerAsync(AddAvailabilityZonesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SetLoadBalancerPoliciesOfListener asynchronously, invoking a callback when done
-- @param SetLoadBalancerPoliciesOfListenerInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SetLoadBalancerPoliciesOfListenerAsync(SetLoadBalancerPoliciesOfListenerInput, cb)
	assert(SetLoadBalancerPoliciesOfListenerInput, "You must provide a SetLoadBalancerPoliciesOfListenerInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SetLoadBalancerPoliciesOfListener",
	}
	for header,value in pairs(SetLoadBalancerPoliciesOfListenerInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SetLoadBalancerPoliciesOfListenerInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SetLoadBalancerPoliciesOfListener synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetLoadBalancerPoliciesOfListenerInput
-- @return response
-- @return error_type
-- @return error_message
function M.SetLoadBalancerPoliciesOfListenerSync(SetLoadBalancerPoliciesOfListenerInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetLoadBalancerPoliciesOfListenerAsync(SetLoadBalancerPoliciesOfListenerInput, function(response, error_type, error_message)
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

--- Call DeleteLoadBalancerListeners asynchronously, invoking a callback when done
-- @param DeleteLoadBalancerListenerInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteLoadBalancerListenersAsync(DeleteLoadBalancerListenerInput, cb)
	assert(DeleteLoadBalancerListenerInput, "You must provide a DeleteLoadBalancerListenerInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteLoadBalancerListeners",
	}
	for header,value in pairs(DeleteLoadBalancerListenerInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteLoadBalancerListenerInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteLoadBalancerListeners synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteLoadBalancerListenerInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteLoadBalancerListenersSync(DeleteLoadBalancerListenerInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteLoadBalancerListenersAsync(DeleteLoadBalancerListenerInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteLoadBalancer asynchronously, invoking a callback when done
-- @param DeleteAccessPointInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteLoadBalancerAsync(DeleteAccessPointInput, cb)
	assert(DeleteAccessPointInput, "You must provide a DeleteAccessPointInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteLoadBalancer",
	}
	for header,value in pairs(DeleteAccessPointInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteAccessPointInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteLoadBalancer synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteAccessPointInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteLoadBalancerSync(DeleteAccessPointInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteLoadBalancerAsync(DeleteAccessPointInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateLoadBalancerPolicy asynchronously, invoking a callback when done
-- @param CreateLoadBalancerPolicyInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateLoadBalancerPolicyAsync(CreateLoadBalancerPolicyInput, cb)
	assert(CreateLoadBalancerPolicyInput, "You must provide a CreateLoadBalancerPolicyInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateLoadBalancerPolicy",
	}
	for header,value in pairs(CreateLoadBalancerPolicyInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateLoadBalancerPolicyInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateLoadBalancerPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateLoadBalancerPolicyInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateLoadBalancerPolicySync(CreateLoadBalancerPolicyInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateLoadBalancerPolicyAsync(CreateLoadBalancerPolicyInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteLoadBalancerPolicy asynchronously, invoking a callback when done
-- @param DeleteLoadBalancerPolicyInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteLoadBalancerPolicyAsync(DeleteLoadBalancerPolicyInput, cb)
	assert(DeleteLoadBalancerPolicyInput, "You must provide a DeleteLoadBalancerPolicyInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteLoadBalancerPolicy",
	}
	for header,value in pairs(DeleteLoadBalancerPolicyInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteLoadBalancerPolicyInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteLoadBalancerPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteLoadBalancerPolicyInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteLoadBalancerPolicySync(DeleteLoadBalancerPolicyInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteLoadBalancerPolicyAsync(DeleteLoadBalancerPolicyInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateLBCookieStickinessPolicy asynchronously, invoking a callback when done
-- @param CreateLBCookieStickinessPolicyInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateLBCookieStickinessPolicyAsync(CreateLBCookieStickinessPolicyInput, cb)
	assert(CreateLBCookieStickinessPolicyInput, "You must provide a CreateLBCookieStickinessPolicyInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateLBCookieStickinessPolicy",
	}
	for header,value in pairs(CreateLBCookieStickinessPolicyInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateLBCookieStickinessPolicyInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateLBCookieStickinessPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateLBCookieStickinessPolicyInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateLBCookieStickinessPolicySync(CreateLBCookieStickinessPolicyInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateLBCookieStickinessPolicyAsync(CreateLBCookieStickinessPolicyInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeInstanceHealth asynchronously, invoking a callback when done
-- @param DescribeEndPointStateInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeInstanceHealthAsync(DescribeEndPointStateInput, cb)
	assert(DescribeEndPointStateInput, "You must provide a DescribeEndPointStateInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeInstanceHealth",
	}
	for header,value in pairs(DescribeEndPointStateInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeEndPointStateInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeInstanceHealth synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeEndPointStateInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeInstanceHealthSync(DescribeEndPointStateInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeInstanceHealthAsync(DescribeEndPointStateInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeLoadBalancers asynchronously, invoking a callback when done
-- @param DescribeAccessPointsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeLoadBalancersAsync(DescribeAccessPointsInput, cb)
	assert(DescribeAccessPointsInput, "You must provide a DescribeAccessPointsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeLoadBalancers",
	}
	for header,value in pairs(DescribeAccessPointsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeAccessPointsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeLoadBalancers synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeAccessPointsInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeLoadBalancersSync(DescribeAccessPointsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeLoadBalancersAsync(DescribeAccessPointsInput, function(response, error_type, error_message)
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

--- Call SetLoadBalancerPoliciesForBackendServer asynchronously, invoking a callback when done
-- @param SetLoadBalancerPoliciesForBackendServerInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SetLoadBalancerPoliciesForBackendServerAsync(SetLoadBalancerPoliciesForBackendServerInput, cb)
	assert(SetLoadBalancerPoliciesForBackendServerInput, "You must provide a SetLoadBalancerPoliciesForBackendServerInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SetLoadBalancerPoliciesForBackendServer",
	}
	for header,value in pairs(SetLoadBalancerPoliciesForBackendServerInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SetLoadBalancerPoliciesForBackendServerInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SetLoadBalancerPoliciesForBackendServer synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetLoadBalancerPoliciesForBackendServerInput
-- @return response
-- @return error_type
-- @return error_message
function M.SetLoadBalancerPoliciesForBackendServerSync(SetLoadBalancerPoliciesForBackendServerInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetLoadBalancerPoliciesForBackendServerAsync(SetLoadBalancerPoliciesForBackendServerInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeLoadBalancerPolicies asynchronously, invoking a callback when done
-- @param DescribeLoadBalancerPoliciesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeLoadBalancerPoliciesAsync(DescribeLoadBalancerPoliciesInput, cb)
	assert(DescribeLoadBalancerPoliciesInput, "You must provide a DescribeLoadBalancerPoliciesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeLoadBalancerPolicies",
	}
	for header,value in pairs(DescribeLoadBalancerPoliciesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeLoadBalancerPoliciesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeLoadBalancerPolicies synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeLoadBalancerPoliciesInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeLoadBalancerPoliciesSync(DescribeLoadBalancerPoliciesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeLoadBalancerPoliciesAsync(DescribeLoadBalancerPoliciesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeLoadBalancerPolicyTypes asynchronously, invoking a callback when done
-- @param DescribeLoadBalancerPolicyTypesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeLoadBalancerPolicyTypesAsync(DescribeLoadBalancerPolicyTypesInput, cb)
	assert(DescribeLoadBalancerPolicyTypesInput, "You must provide a DescribeLoadBalancerPolicyTypesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeLoadBalancerPolicyTypes",
	}
	for header,value in pairs(DescribeLoadBalancerPolicyTypesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeLoadBalancerPolicyTypesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeLoadBalancerPolicyTypes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeLoadBalancerPolicyTypesInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeLoadBalancerPolicyTypesSync(DescribeLoadBalancerPolicyTypesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeLoadBalancerPolicyTypesAsync(DescribeLoadBalancerPolicyTypesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ApplySecurityGroupsToLoadBalancer asynchronously, invoking a callback when done
-- @param ApplySecurityGroupsToLoadBalancerInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ApplySecurityGroupsToLoadBalancerAsync(ApplySecurityGroupsToLoadBalancerInput, cb)
	assert(ApplySecurityGroupsToLoadBalancerInput, "You must provide a ApplySecurityGroupsToLoadBalancerInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ApplySecurityGroupsToLoadBalancer",
	}
	for header,value in pairs(ApplySecurityGroupsToLoadBalancerInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ApplySecurityGroupsToLoadBalancerInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ApplySecurityGroupsToLoadBalancer synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ApplySecurityGroupsToLoadBalancerInput
-- @return response
-- @return error_type
-- @return error_message
function M.ApplySecurityGroupsToLoadBalancerSync(ApplySecurityGroupsToLoadBalancerInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ApplySecurityGroupsToLoadBalancerAsync(ApplySecurityGroupsToLoadBalancerInput, function(response, error_type, error_message)
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

--- Call ConfigureHealthCheck asynchronously, invoking a callback when done
-- @param ConfigureHealthCheckInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ConfigureHealthCheckAsync(ConfigureHealthCheckInput, cb)
	assert(ConfigureHealthCheckInput, "You must provide a ConfigureHealthCheckInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ConfigureHealthCheck",
	}
	for header,value in pairs(ConfigureHealthCheckInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ConfigureHealthCheckInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ConfigureHealthCheck synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ConfigureHealthCheckInput
-- @return response
-- @return error_type
-- @return error_message
function M.ConfigureHealthCheckSync(ConfigureHealthCheckInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ConfigureHealthCheckAsync(ConfigureHealthCheckInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AttachLoadBalancerToSubnets asynchronously, invoking a callback when done
-- @param AttachLoadBalancerToSubnetsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AttachLoadBalancerToSubnetsAsync(AttachLoadBalancerToSubnetsInput, cb)
	assert(AttachLoadBalancerToSubnetsInput, "You must provide a AttachLoadBalancerToSubnetsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".AttachLoadBalancerToSubnets",
	}
	for header,value in pairs(AttachLoadBalancerToSubnetsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AttachLoadBalancerToSubnetsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AttachLoadBalancerToSubnets synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AttachLoadBalancerToSubnetsInput
-- @return response
-- @return error_type
-- @return error_message
function M.AttachLoadBalancerToSubnetsSync(AttachLoadBalancerToSubnetsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AttachLoadBalancerToSubnetsAsync(AttachLoadBalancerToSubnetsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SetLoadBalancerListenerSSLCertificate asynchronously, invoking a callback when done
-- @param SetLoadBalancerListenerSSLCertificateInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SetLoadBalancerListenerSSLCertificateAsync(SetLoadBalancerListenerSSLCertificateInput, cb)
	assert(SetLoadBalancerListenerSSLCertificateInput, "You must provide a SetLoadBalancerListenerSSLCertificateInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SetLoadBalancerListenerSSLCertificate",
	}
	for header,value in pairs(SetLoadBalancerListenerSSLCertificateInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SetLoadBalancerListenerSSLCertificateInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SetLoadBalancerListenerSSLCertificate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetLoadBalancerListenerSSLCertificateInput
-- @return response
-- @return error_type
-- @return error_message
function M.SetLoadBalancerListenerSSLCertificateSync(SetLoadBalancerListenerSSLCertificateInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetLoadBalancerListenerSSLCertificateAsync(SetLoadBalancerListenerSSLCertificateInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DetachLoadBalancerFromSubnets asynchronously, invoking a callback when done
-- @param DetachLoadBalancerFromSubnetsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DetachLoadBalancerFromSubnetsAsync(DetachLoadBalancerFromSubnetsInput, cb)
	assert(DetachLoadBalancerFromSubnetsInput, "You must provide a DetachLoadBalancerFromSubnetsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DetachLoadBalancerFromSubnets",
	}
	for header,value in pairs(DetachLoadBalancerFromSubnetsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DetachLoadBalancerFromSubnetsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DetachLoadBalancerFromSubnets synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DetachLoadBalancerFromSubnetsInput
-- @return response
-- @return error_type
-- @return error_message
function M.DetachLoadBalancerFromSubnetsSync(DetachLoadBalancerFromSubnetsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DetachLoadBalancerFromSubnetsAsync(DetachLoadBalancerFromSubnetsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeregisterInstancesFromLoadBalancer asynchronously, invoking a callback when done
-- @param DeregisterEndPointsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeregisterInstancesFromLoadBalancerAsync(DeregisterEndPointsInput, cb)
	assert(DeregisterEndPointsInput, "You must provide a DeregisterEndPointsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeregisterInstancesFromLoadBalancer",
	}
	for header,value in pairs(DeregisterEndPointsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeregisterEndPointsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeregisterInstancesFromLoadBalancer synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeregisterEndPointsInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeregisterInstancesFromLoadBalancerSync(DeregisterEndPointsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeregisterInstancesFromLoadBalancerAsync(DeregisterEndPointsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RegisterInstancesWithLoadBalancer asynchronously, invoking a callback when done
-- @param RegisterEndPointsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RegisterInstancesWithLoadBalancerAsync(RegisterEndPointsInput, cb)
	assert(RegisterEndPointsInput, "You must provide a RegisterEndPointsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RegisterInstancesWithLoadBalancer",
	}
	for header,value in pairs(RegisterEndPointsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RegisterEndPointsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RegisterInstancesWithLoadBalancer synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RegisterEndPointsInput
-- @return response
-- @return error_type
-- @return error_message
function M.RegisterInstancesWithLoadBalancerSync(RegisterEndPointsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RegisterInstancesWithLoadBalancerAsync(RegisterEndPointsInput, function(response, error_type, error_message)
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

--- Call CreateLoadBalancerListeners asynchronously, invoking a callback when done
-- @param CreateLoadBalancerListenerInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateLoadBalancerListenersAsync(CreateLoadBalancerListenerInput, cb)
	assert(CreateLoadBalancerListenerInput, "You must provide a CreateLoadBalancerListenerInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateLoadBalancerListeners",
	}
	for header,value in pairs(CreateLoadBalancerListenerInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateLoadBalancerListenerInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateLoadBalancerListeners synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateLoadBalancerListenerInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateLoadBalancerListenersSync(CreateLoadBalancerListenerInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateLoadBalancerListenersAsync(CreateLoadBalancerListenerInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateLoadBalancer asynchronously, invoking a callback when done
-- @param CreateAccessPointInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateLoadBalancerAsync(CreateAccessPointInput, cb)
	assert(CreateAccessPointInput, "You must provide a CreateAccessPointInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateLoadBalancer",
	}
	for header,value in pairs(CreateAccessPointInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateAccessPointInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateLoadBalancer synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateAccessPointInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateLoadBalancerSync(CreateAccessPointInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateLoadBalancerAsync(CreateAccessPointInput, function(response, error_type, error_message)
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

--- Call DisableAvailabilityZonesForLoadBalancer asynchronously, invoking a callback when done
-- @param RemoveAvailabilityZonesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DisableAvailabilityZonesForLoadBalancerAsync(RemoveAvailabilityZonesInput, cb)
	assert(RemoveAvailabilityZonesInput, "You must provide a RemoveAvailabilityZonesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DisableAvailabilityZonesForLoadBalancer",
	}
	for header,value in pairs(RemoveAvailabilityZonesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RemoveAvailabilityZonesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DisableAvailabilityZonesForLoadBalancer synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RemoveAvailabilityZonesInput
-- @return response
-- @return error_type
-- @return error_message
function M.DisableAvailabilityZonesForLoadBalancerSync(RemoveAvailabilityZonesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisableAvailabilityZonesForLoadBalancerAsync(RemoveAvailabilityZonesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
