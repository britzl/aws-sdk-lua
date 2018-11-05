--- GENERATED CODE - DO NOT MODIFY
-- Auto Scaling (autoscaling-2011-01-01)

local M = {}

M.metadata = {
	api_version = "2011-01-01",
	json_version = "",
	protocol = "query",
	checksum_format = "",
	endpoint_prefix = "autoscaling",
	service_abbreviation = "",
	service_full_name = "Auto Scaling",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "autoscaling-2011-01-01",
}

local keys = {}
local asserts = {}

keys.ExecutePolicyType = { ["MetricValue"] = true, ["PolicyName"] = true, ["AutoScalingGroupName"] = true, ["HonorCooldown"] = true, ["BreachThreshold"] = true, nil }

function asserts.AssertExecutePolicyType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExecutePolicyType to be of type 'table'")
	assert(struct["PolicyName"], "Expected key PolicyName to exist in table")
	if struct["MetricValue"] then asserts.AssertMetricScale(struct["MetricValue"]) end
	if struct["PolicyName"] then asserts.AssertResourceName(struct["PolicyName"]) end
	if struct["AutoScalingGroupName"] then asserts.AssertResourceName(struct["AutoScalingGroupName"]) end
	if struct["HonorCooldown"] then asserts.AssertHonorCooldown(struct["HonorCooldown"]) end
	if struct["BreachThreshold"] then asserts.AssertMetricScale(struct["BreachThreshold"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExecutePolicyType[k], "ExecutePolicyType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExecutePolicyType
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MetricValue [MetricScale] <p>The metric value to compare to <code>BreachThreshold</code>. This enables you to execute a policy of type <code>StepScaling</code> and determine which step adjustment to use. For example, if the breach threshold is 50 and you want to use a step adjustment with a lower bound of 0 and an upper bound of 10, you can set the metric value to 59.</p> <p>If you specify a metric value that doesn't correspond to a step adjustment for the policy, the call returns an error.</p> <p>This parameter is required if the policy type is <code>StepScaling</code> and not supported otherwise.</p>
-- * PolicyName [ResourceName] <p>The name or ARN of the policy.</p>
-- * AutoScalingGroupName [ResourceName] <p>The name of the Auto Scaling group.</p>
-- * HonorCooldown [HonorCooldown] <p>Indicates whether Amazon EC2 Auto Scaling waits for the cooldown period to complete before executing the policy.</p> <p>This parameter is not supported if the policy type is <code>StepScaling</code>.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/autoscaling/ec2/userguide/Cooldown.html">Scaling Cooldowns</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
-- * BreachThreshold [MetricScale] <p>The breach threshold for the alarm.</p> <p>This parameter is required if the policy type is <code>StepScaling</code> and not supported otherwise.</p>
-- Required key: PolicyName
-- @return ExecutePolicyType structure as a key-value pair table
function M.ExecutePolicyType(args)
	assert(args, "You must provide an argument table when creating ExecutePolicyType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MetricValue"] = args["MetricValue"],
		["PolicyName"] = args["PolicyName"],
		["AutoScalingGroupName"] = args["AutoScalingGroupName"],
		["HonorCooldown"] = args["HonorCooldown"],
		["BreachThreshold"] = args["BreachThreshold"],
	}
	asserts.AssertExecutePolicyType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DetachInstancesQuery = { ["ShouldDecrementDesiredCapacity"] = true, ["AutoScalingGroupName"] = true, ["InstanceIds"] = true, nil }

function asserts.AssertDetachInstancesQuery(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetachInstancesQuery to be of type 'table'")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	assert(struct["ShouldDecrementDesiredCapacity"], "Expected key ShouldDecrementDesiredCapacity to exist in table")
	if struct["ShouldDecrementDesiredCapacity"] then asserts.AssertShouldDecrementDesiredCapacity(struct["ShouldDecrementDesiredCapacity"]) end
	if struct["AutoScalingGroupName"] then asserts.AssertResourceName(struct["AutoScalingGroupName"]) end
	if struct["InstanceIds"] then asserts.AssertInstanceIds(struct["InstanceIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.DetachInstancesQuery[k], "DetachInstancesQuery contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetachInstancesQuery
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ShouldDecrementDesiredCapacity [ShouldDecrementDesiredCapacity] <p>Indicates whether the Auto Scaling group decrements the desired capacity value by the number of instances detached.</p>
-- * AutoScalingGroupName [ResourceName] <p>The name of the Auto Scaling group.</p>
-- * InstanceIds [InstanceIds] <p>The IDs of the instances. You can specify up to 20 instances.</p>
-- Required key: AutoScalingGroupName
-- Required key: ShouldDecrementDesiredCapacity
-- @return DetachInstancesQuery structure as a key-value pair table
function M.DetachInstancesQuery(args)
	assert(args, "You must provide an argument table when creating DetachInstancesQuery")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ShouldDecrementDesiredCapacity"] = args["ShouldDecrementDesiredCapacity"],
		["AutoScalingGroupName"] = args["AutoScalingGroupName"],
		["InstanceIds"] = args["InstanceIds"],
	}
	asserts.AssertDetachInstancesQuery(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TargetTrackingConfiguration = { ["TargetValue"] = true, ["PredefinedMetricSpecification"] = true, ["DisableScaleIn"] = true, ["CustomizedMetricSpecification"] = true, nil }

function asserts.AssertTargetTrackingConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TargetTrackingConfiguration to be of type 'table'")
	assert(struct["TargetValue"], "Expected key TargetValue to exist in table")
	if struct["TargetValue"] then asserts.AssertMetricScale(struct["TargetValue"]) end
	if struct["PredefinedMetricSpecification"] then asserts.AssertPredefinedMetricSpecification(struct["PredefinedMetricSpecification"]) end
	if struct["DisableScaleIn"] then asserts.AssertDisableScaleIn(struct["DisableScaleIn"]) end
	if struct["CustomizedMetricSpecification"] then asserts.AssertCustomizedMetricSpecification(struct["CustomizedMetricSpecification"]) end
	for k,_ in pairs(struct) do
		assert(keys.TargetTrackingConfiguration[k], "TargetTrackingConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TargetTrackingConfiguration
-- <p>Represents a target tracking policy configuration.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TargetValue [MetricScale] <p>The target value for the metric.</p>
-- * PredefinedMetricSpecification [PredefinedMetricSpecification] <p>A predefined metric. You can specify either a predefined metric or a customized metric.</p>
-- * DisableScaleIn [DisableScaleIn] <p>Indicates whether scale in by the target tracking policy is disabled. If scale in is disabled, the target tracking policy won't remove instances from the Auto Scaling group. Otherwise, the target tracking policy can remove instances from the Auto Scaling group. The default is disabled.</p>
-- * CustomizedMetricSpecification [CustomizedMetricSpecification] <p>A customized metric.</p>
-- Required key: TargetValue
-- @return TargetTrackingConfiguration structure as a key-value pair table
function M.TargetTrackingConfiguration(args)
	assert(args, "You must provide an argument table when creating TargetTrackingConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TargetValue"] = args["TargetValue"],
		["PredefinedMetricSpecification"] = args["PredefinedMetricSpecification"],
		["DisableScaleIn"] = args["DisableScaleIn"],
		["CustomizedMetricSpecification"] = args["CustomizedMetricSpecification"],
	}
	asserts.AssertTargetTrackingConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AttachLoadBalancerTargetGroupsResultType = { nil }

function asserts.AssertAttachLoadBalancerTargetGroupsResultType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachLoadBalancerTargetGroupsResultType to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AttachLoadBalancerTargetGroupsResultType[k], "AttachLoadBalancerTargetGroupsResultType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachLoadBalancerTargetGroupsResultType
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AttachLoadBalancerTargetGroupsResultType structure as a key-value pair table
function M.AttachLoadBalancerTargetGroupsResultType(args)
	assert(args, "You must provide an argument table when creating AttachLoadBalancerTargetGroupsResultType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAttachLoadBalancerTargetGroupsResultType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ScalingActivityInProgressFault = { ["message"] = true, nil }

function asserts.AssertScalingActivityInProgressFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScalingActivityInProgressFault to be of type 'table'")
	if struct["message"] then asserts.AssertXmlStringMaxLen255(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ScalingActivityInProgressFault[k], "ScalingActivityInProgressFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScalingActivityInProgressFault
-- <p>The operation can't be performed because there are scaling activities in progress.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [XmlStringMaxLen255] <p/>
-- @return ScalingActivityInProgressFault structure as a key-value pair table
function M.ScalingActivityInProgressFault(args)
	assert(args, "You must provide an argument table when creating ScalingActivityInProgressFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertScalingActivityInProgressFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchPutScheduledUpdateGroupActionType = { ["AutoScalingGroupName"] = true, ["ScheduledUpdateGroupActions"] = true, nil }

function asserts.AssertBatchPutScheduledUpdateGroupActionType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchPutScheduledUpdateGroupActionType to be of type 'table'")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	assert(struct["ScheduledUpdateGroupActions"], "Expected key ScheduledUpdateGroupActions to exist in table")
	if struct["AutoScalingGroupName"] then asserts.AssertResourceName(struct["AutoScalingGroupName"]) end
	if struct["ScheduledUpdateGroupActions"] then asserts.AssertScheduledUpdateGroupActionRequests(struct["ScheduledUpdateGroupActions"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchPutScheduledUpdateGroupActionType[k], "BatchPutScheduledUpdateGroupActionType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchPutScheduledUpdateGroupActionType
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AutoScalingGroupName [ResourceName] <p>The name of the Auto Scaling group.</p>
-- * ScheduledUpdateGroupActions [ScheduledUpdateGroupActionRequests] <p>One or more scheduled actions. The maximum number allowed is 50. </p>
-- Required key: AutoScalingGroupName
-- Required key: ScheduledUpdateGroupActions
-- @return BatchPutScheduledUpdateGroupActionType structure as a key-value pair table
function M.BatchPutScheduledUpdateGroupActionType(args)
	assert(args, "You must provide an argument table when creating BatchPutScheduledUpdateGroupActionType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AutoScalingGroupName"] = args["AutoScalingGroupName"],
		["ScheduledUpdateGroupActions"] = args["ScheduledUpdateGroupActions"],
	}
	asserts.AssertBatchPutScheduledUpdateGroupActionType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EnterStandbyQuery = { ["ShouldDecrementDesiredCapacity"] = true, ["AutoScalingGroupName"] = true, ["InstanceIds"] = true, nil }

function asserts.AssertEnterStandbyQuery(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnterStandbyQuery to be of type 'table'")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	assert(struct["ShouldDecrementDesiredCapacity"], "Expected key ShouldDecrementDesiredCapacity to exist in table")
	if struct["ShouldDecrementDesiredCapacity"] then asserts.AssertShouldDecrementDesiredCapacity(struct["ShouldDecrementDesiredCapacity"]) end
	if struct["AutoScalingGroupName"] then asserts.AssertResourceName(struct["AutoScalingGroupName"]) end
	if struct["InstanceIds"] then asserts.AssertInstanceIds(struct["InstanceIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.EnterStandbyQuery[k], "EnterStandbyQuery contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnterStandbyQuery
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ShouldDecrementDesiredCapacity [ShouldDecrementDesiredCapacity] <p>Indicates whether to decrement the desired capacity of the Auto Scaling group by the number of instances moved to <code>Standby</code> mode.</p>
-- * AutoScalingGroupName [ResourceName] <p>The name of the Auto Scaling group.</p>
-- * InstanceIds [InstanceIds] <p>The IDs of the instances. You can specify up to 20 instances.</p>
-- Required key: AutoScalingGroupName
-- Required key: ShouldDecrementDesiredCapacity
-- @return EnterStandbyQuery structure as a key-value pair table
function M.EnterStandbyQuery(args)
	assert(args, "You must provide an argument table when creating EnterStandbyQuery")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ShouldDecrementDesiredCapacity"] = args["ShouldDecrementDesiredCapacity"],
		["AutoScalingGroupName"] = args["AutoScalingGroupName"],
		["InstanceIds"] = args["InstanceIds"],
	}
	asserts.AssertEnterStandbyQuery(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AttachInstancesQuery = { ["AutoScalingGroupName"] = true, ["InstanceIds"] = true, nil }

function asserts.AssertAttachInstancesQuery(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachInstancesQuery to be of type 'table'")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	if struct["AutoScalingGroupName"] then asserts.AssertResourceName(struct["AutoScalingGroupName"]) end
	if struct["InstanceIds"] then asserts.AssertInstanceIds(struct["InstanceIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttachInstancesQuery[k], "AttachInstancesQuery contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachInstancesQuery
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AutoScalingGroupName [ResourceName] <p>The name of the Auto Scaling group.</p>
-- * InstanceIds [InstanceIds] <p>The IDs of the instances. You can specify up to 20 instances.</p>
-- Required key: AutoScalingGroupName
-- @return AttachInstancesQuery structure as a key-value pair table
function M.AttachInstancesQuery(args)
	assert(args, "You must provide an argument table when creating AttachInstancesQuery")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AutoScalingGroupName"] = args["AutoScalingGroupName"],
		["InstanceIds"] = args["InstanceIds"],
	}
	asserts.AssertAttachInstancesQuery(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ActivityType = { ["Activity"] = true, nil }

function asserts.AssertActivityType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivityType to be of type 'table'")
	if struct["Activity"] then asserts.AssertActivity(struct["Activity"]) end
	for k,_ in pairs(struct) do
		assert(keys.ActivityType[k], "ActivityType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivityType
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Activity [Activity] <p>A scaling activity.</p>
-- @return ActivityType structure as a key-value pair table
function M.ActivityType(args)
	assert(args, "You must provide an argument table when creating ActivityType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Activity"] = args["Activity"],
	}
	asserts.AssertActivityType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeScalingActivitiesType = { ["ActivityIds"] = true, ["MaxRecords"] = true, ["NextToken"] = true, ["AutoScalingGroupName"] = true, nil }

function asserts.AssertDescribeScalingActivitiesType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeScalingActivitiesType to be of type 'table'")
	if struct["ActivityIds"] then asserts.AssertActivityIds(struct["ActivityIds"]) end
	if struct["MaxRecords"] then asserts.AssertMaxRecords(struct["MaxRecords"]) end
	if struct["NextToken"] then asserts.AssertXmlString(struct["NextToken"]) end
	if struct["AutoScalingGroupName"] then asserts.AssertResourceName(struct["AutoScalingGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeScalingActivitiesType[k], "DescribeScalingActivitiesType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeScalingActivitiesType
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ActivityIds [ActivityIds] <p>The activity IDs of the desired scaling activities. You can specify up to 50 IDs. If you omit this parameter, all activities for the past six weeks are described. If unknown activities are requested, they are ignored with no error. If you specify an Auto Scaling group, the results are limited to that group.</p>
-- * MaxRecords [MaxRecords] <p>The maximum number of items to return with this call. The default value is 100 and the maximum value is 100.</p>
-- * NextToken [XmlString] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- * AutoScalingGroupName [ResourceName] <p>The name of the Auto Scaling group.</p>
-- @return DescribeScalingActivitiesType structure as a key-value pair table
function M.DescribeScalingActivitiesType(args)
	assert(args, "You must provide an argument table when creating DescribeScalingActivitiesType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ActivityIds"] = args["ActivityIds"],
		["MaxRecords"] = args["MaxRecords"],
		["NextToken"] = args["NextToken"],
		["AutoScalingGroupName"] = args["AutoScalingGroupName"],
	}
	asserts.AssertDescribeScalingActivitiesType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PoliciesType = { ["ScalingPolicies"] = true, ["NextToken"] = true, nil }

function asserts.AssertPoliciesType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PoliciesType to be of type 'table'")
	if struct["ScalingPolicies"] then asserts.AssertScalingPolicies(struct["ScalingPolicies"]) end
	if struct["NextToken"] then asserts.AssertXmlString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.PoliciesType[k], "PoliciesType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PoliciesType
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ScalingPolicies [ScalingPolicies] <p>The scaling policies.</p>
-- * NextToken [XmlString] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
-- @return PoliciesType structure as a key-value pair table
function M.PoliciesType(args)
	assert(args, "You must provide an argument table when creating PoliciesType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ScalingPolicies"] = args["ScalingPolicies"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertPoliciesType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AttachLoadBalancersResultType = { nil }

function asserts.AssertAttachLoadBalancersResultType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachLoadBalancersResultType to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AttachLoadBalancersResultType[k], "AttachLoadBalancersResultType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachLoadBalancersResultType
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AttachLoadBalancersResultType structure as a key-value pair table
function M.AttachLoadBalancersResultType(args)
	assert(args, "You must provide an argument table when creating AttachLoadBalancersResultType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAttachLoadBalancersResultType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ScheduledActionsType = { ["NextToken"] = true, ["ScheduledUpdateGroupActions"] = true, nil }

function asserts.AssertScheduledActionsType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScheduledActionsType to be of type 'table'")
	if struct["NextToken"] then asserts.AssertXmlString(struct["NextToken"]) end
	if struct["ScheduledUpdateGroupActions"] then asserts.AssertScheduledUpdateGroupActions(struct["ScheduledUpdateGroupActions"]) end
	for k,_ in pairs(struct) do
		assert(keys.ScheduledActionsType[k], "ScheduledActionsType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScheduledActionsType
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [XmlString] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
-- * ScheduledUpdateGroupActions [ScheduledUpdateGroupActions] <p>The scheduled actions.</p>
-- @return ScheduledActionsType structure as a key-value pair table
function M.ScheduledActionsType(args)
	assert(args, "You must provide an argument table when creating ScheduledActionsType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["ScheduledUpdateGroupActions"] = args["ScheduledUpdateGroupActions"],
	}
	asserts.AssertScheduledActionsType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchDeleteScheduledActionAnswer = { ["FailedScheduledActions"] = true, nil }

function asserts.AssertBatchDeleteScheduledActionAnswer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchDeleteScheduledActionAnswer to be of type 'table'")
	if struct["FailedScheduledActions"] then asserts.AssertFailedScheduledUpdateGroupActionRequests(struct["FailedScheduledActions"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchDeleteScheduledActionAnswer[k], "BatchDeleteScheduledActionAnswer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchDeleteScheduledActionAnswer
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FailedScheduledActions [FailedScheduledUpdateGroupActionRequests] <p>The names of the scheduled actions that could not be deleted, including an error message. </p>
-- @return BatchDeleteScheduledActionAnswer structure as a key-value pair table
function M.BatchDeleteScheduledActionAnswer(args)
	assert(args, "You must provide an argument table when creating BatchDeleteScheduledActionAnswer")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FailedScheduledActions"] = args["FailedScheduledActions"],
	}
	asserts.AssertBatchDeleteScheduledActionAnswer(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResourceInUseFault = { ["message"] = true, nil }

function asserts.AssertResourceInUseFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceInUseFault to be of type 'table'")
	if struct["message"] then asserts.AssertXmlStringMaxLen255(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceInUseFault[k], "ResourceInUseFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceInUseFault
-- <p>The operation can't be performed because the resource is in use.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [XmlStringMaxLen255] <p/>
-- @return ResourceInUseFault structure as a key-value pair table
function M.ResourceInUseFault(args)
	assert(args, "You must provide an argument table when creating ResourceInUseFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertResourceInUseFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LaunchConfigurationNameType = { ["LaunchConfigurationName"] = true, nil }

function asserts.AssertLaunchConfigurationNameType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LaunchConfigurationNameType to be of type 'table'")
	assert(struct["LaunchConfigurationName"], "Expected key LaunchConfigurationName to exist in table")
	if struct["LaunchConfigurationName"] then asserts.AssertResourceName(struct["LaunchConfigurationName"]) end
	for k,_ in pairs(struct) do
		assert(keys.LaunchConfigurationNameType[k], "LaunchConfigurationNameType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LaunchConfigurationNameType
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LaunchConfigurationName [ResourceName] <p>The name of the launch configuration.</p>
-- Required key: LaunchConfigurationName
-- @return LaunchConfigurationNameType structure as a key-value pair table
function M.LaunchConfigurationNameType(args)
	assert(args, "You must provide an argument table when creating LaunchConfigurationNameType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LaunchConfigurationName"] = args["LaunchConfigurationName"],
	}
	asserts.AssertLaunchConfigurationNameType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteLifecycleHookAnswer = { nil }

function asserts.AssertDeleteLifecycleHookAnswer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteLifecycleHookAnswer to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteLifecycleHookAnswer[k], "DeleteLifecycleHookAnswer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteLifecycleHookAnswer
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteLifecycleHookAnswer structure as a key-value pair table
function M.DeleteLifecycleHookAnswer(args)
	assert(args, "You must provide an argument table when creating DeleteLifecycleHookAnswer")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteLifecycleHookAnswer(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CustomizedMetricSpecification = { ["Statistic"] = true, ["Namespace"] = true, ["Dimensions"] = true, ["Unit"] = true, ["MetricName"] = true, nil }

function asserts.AssertCustomizedMetricSpecification(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CustomizedMetricSpecification to be of type 'table'")
	assert(struct["MetricName"], "Expected key MetricName to exist in table")
	assert(struct["Namespace"], "Expected key Namespace to exist in table")
	assert(struct["Statistic"], "Expected key Statistic to exist in table")
	if struct["Statistic"] then asserts.AssertMetricStatistic(struct["Statistic"]) end
	if struct["Namespace"] then asserts.AssertMetricNamespace(struct["Namespace"]) end
	if struct["Dimensions"] then asserts.AssertMetricDimensions(struct["Dimensions"]) end
	if struct["Unit"] then asserts.AssertMetricUnit(struct["Unit"]) end
	if struct["MetricName"] then asserts.AssertMetricName(struct["MetricName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CustomizedMetricSpecification[k], "CustomizedMetricSpecification contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CustomizedMetricSpecification
-- <p>Configures a customized metric for a target tracking policy.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Statistic [MetricStatistic] <p>The statistic of the metric.</p>
-- * Namespace [MetricNamespace] <p>The namespace of the metric.</p>
-- * Dimensions [MetricDimensions] <p>The dimensions of the metric.</p>
-- * Unit [MetricUnit] <p>The unit of the metric.</p>
-- * MetricName [MetricName] <p>The name of the metric.</p>
-- Required key: MetricName
-- Required key: Namespace
-- Required key: Statistic
-- @return CustomizedMetricSpecification structure as a key-value pair table
function M.CustomizedMetricSpecification(args)
	assert(args, "You must provide an argument table when creating CustomizedMetricSpecification")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Statistic"] = args["Statistic"],
		["Namespace"] = args["Namespace"],
		["Dimensions"] = args["Dimensions"],
		["Unit"] = args["Unit"],
		["MetricName"] = args["MetricName"],
	}
	asserts.AssertCustomizedMetricSpecification(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FailedScheduledUpdateGroupActionRequest = { ["ErrorCode"] = true, ["ErrorMessage"] = true, ["ScheduledActionName"] = true, nil }

function asserts.AssertFailedScheduledUpdateGroupActionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FailedScheduledUpdateGroupActionRequest to be of type 'table'")
	assert(struct["ScheduledActionName"], "Expected key ScheduledActionName to exist in table")
	if struct["ErrorCode"] then asserts.AssertXmlStringMaxLen64(struct["ErrorCode"]) end
	if struct["ErrorMessage"] then asserts.AssertXmlString(struct["ErrorMessage"]) end
	if struct["ScheduledActionName"] then asserts.AssertXmlStringMaxLen255(struct["ScheduledActionName"]) end
	for k,_ in pairs(struct) do
		assert(keys.FailedScheduledUpdateGroupActionRequest[k], "FailedScheduledUpdateGroupActionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FailedScheduledUpdateGroupActionRequest
-- <p>Describes a scheduled action that could not be created, updated, or deleted.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ErrorCode [XmlStringMaxLen64] <p>The error code.</p>
-- * ErrorMessage [XmlString] <p>The error message accompanying the error code.</p>
-- * ScheduledActionName [XmlStringMaxLen255] <p>The name of the scheduled action.</p>
-- Required key: ScheduledActionName
-- @return FailedScheduledUpdateGroupActionRequest structure as a key-value pair table
function M.FailedScheduledUpdateGroupActionRequest(args)
	assert(args, "You must provide an argument table when creating FailedScheduledUpdateGroupActionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ErrorCode"] = args["ErrorCode"],
		["ErrorMessage"] = args["ErrorMessage"],
		["ScheduledActionName"] = args["ScheduledActionName"],
	}
	asserts.AssertFailedScheduledUpdateGroupActionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LaunchConfiguration = { ["UserData"] = true, ["IamInstanceProfile"] = true, ["ClassicLinkVPCId"] = true, ["EbsOptimized"] = true, ["PlacementTenancy"] = true, ["LaunchConfigurationARN"] = true, ["InstanceMonitoring"] = true, ["ImageId"] = true, ["CreatedTime"] = true, ["BlockDeviceMappings"] = true, ["KeyName"] = true, ["SecurityGroups"] = true, ["AssociatePublicIpAddress"] = true, ["LaunchConfigurationName"] = true, ["KernelId"] = true, ["RamdiskId"] = true, ["ClassicLinkVPCSecurityGroups"] = true, ["InstanceType"] = true, ["SpotPrice"] = true, nil }

function asserts.AssertLaunchConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LaunchConfiguration to be of type 'table'")
	assert(struct["LaunchConfigurationName"], "Expected key LaunchConfigurationName to exist in table")
	assert(struct["ImageId"], "Expected key ImageId to exist in table")
	assert(struct["InstanceType"], "Expected key InstanceType to exist in table")
	assert(struct["CreatedTime"], "Expected key CreatedTime to exist in table")
	if struct["UserData"] then asserts.AssertXmlStringUserData(struct["UserData"]) end
	if struct["IamInstanceProfile"] then asserts.AssertXmlStringMaxLen1600(struct["IamInstanceProfile"]) end
	if struct["ClassicLinkVPCId"] then asserts.AssertXmlStringMaxLen255(struct["ClassicLinkVPCId"]) end
	if struct["EbsOptimized"] then asserts.AssertEbsOptimized(struct["EbsOptimized"]) end
	if struct["PlacementTenancy"] then asserts.AssertXmlStringMaxLen64(struct["PlacementTenancy"]) end
	if struct["LaunchConfigurationARN"] then asserts.AssertResourceName(struct["LaunchConfigurationARN"]) end
	if struct["InstanceMonitoring"] then asserts.AssertInstanceMonitoring(struct["InstanceMonitoring"]) end
	if struct["ImageId"] then asserts.AssertXmlStringMaxLen255(struct["ImageId"]) end
	if struct["CreatedTime"] then asserts.AssertTimestampType(struct["CreatedTime"]) end
	if struct["BlockDeviceMappings"] then asserts.AssertBlockDeviceMappings(struct["BlockDeviceMappings"]) end
	if struct["KeyName"] then asserts.AssertXmlStringMaxLen255(struct["KeyName"]) end
	if struct["SecurityGroups"] then asserts.AssertSecurityGroups(struct["SecurityGroups"]) end
	if struct["AssociatePublicIpAddress"] then asserts.AssertAssociatePublicIpAddress(struct["AssociatePublicIpAddress"]) end
	if struct["LaunchConfigurationName"] then asserts.AssertXmlStringMaxLen255(struct["LaunchConfigurationName"]) end
	if struct["KernelId"] then asserts.AssertXmlStringMaxLen255(struct["KernelId"]) end
	if struct["RamdiskId"] then asserts.AssertXmlStringMaxLen255(struct["RamdiskId"]) end
	if struct["ClassicLinkVPCSecurityGroups"] then asserts.AssertClassicLinkVPCSecurityGroups(struct["ClassicLinkVPCSecurityGroups"]) end
	if struct["InstanceType"] then asserts.AssertXmlStringMaxLen255(struct["InstanceType"]) end
	if struct["SpotPrice"] then asserts.AssertSpotPrice(struct["SpotPrice"]) end
	for k,_ in pairs(struct) do
		assert(keys.LaunchConfiguration[k], "LaunchConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LaunchConfiguration
-- <p>Describes a launch configuration.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserData [XmlStringUserData] <p>The user data available to the instances.</p>
-- * IamInstanceProfile [XmlStringMaxLen1600] <p>The name or Amazon Resource Name (ARN) of the instance profile associated with the IAM role for the instance.</p>
-- * ClassicLinkVPCId [XmlStringMaxLen255] <p>The ID of a ClassicLink-enabled VPC to link your EC2-Classic instances to. This parameter can only be used if you are launching EC2-Classic instances. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html">ClassicLink</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
-- * EbsOptimized [EbsOptimized] <p>Controls whether the instance is optimized for EBS I/O (<code>true</code>) or not (<code>false</code>).</p>
-- * PlacementTenancy [XmlStringMaxLen64] <p>The tenancy of the instance, either <code>default</code> or <code>dedicated</code>. An instance with <code>dedicated</code> tenancy runs in an isolated, single-tenant hardware and can only be launched into a VPC.</p>
-- * LaunchConfigurationARN [ResourceName] <p>The Amazon Resource Name (ARN) of the launch configuration.</p>
-- * InstanceMonitoring [InstanceMonitoring] <p>Controls whether instances in this group are launched with detailed (<code>true</code>) or basic (<code>false</code>) monitoring.</p>
-- * ImageId [XmlStringMaxLen255] <p>The ID of the Amazon Machine Image (AMI).</p>
-- * CreatedTime [TimestampType] <p>The creation date and time for the launch configuration.</p>
-- * BlockDeviceMappings [BlockDeviceMappings] <p>A block device mapping, which specifies the block devices for the instance.</p>
-- * KeyName [XmlStringMaxLen255] <p>The name of the key pair.</p>
-- * SecurityGroups [SecurityGroups] <p>The security groups to associate with the instances.</p>
-- * AssociatePublicIpAddress [AssociatePublicIpAddress] <p>[EC2-VPC] Indicates whether to assign a public IP address to each instance.</p>
-- * LaunchConfigurationName [XmlStringMaxLen255] <p>The name of the launch configuration.</p>
-- * KernelId [XmlStringMaxLen255] <p>The ID of the kernel associated with the AMI.</p>
-- * RamdiskId [XmlStringMaxLen255] <p>The ID of the RAM disk associated with the AMI.</p>
-- * ClassicLinkVPCSecurityGroups [ClassicLinkVPCSecurityGroups] <p>The IDs of one or more security groups for the VPC specified in <code>ClassicLinkVPCId</code>. This parameter is required if you specify a ClassicLink-enabled VPC, and cannot be used otherwise. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html">ClassicLink</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
-- * InstanceType [XmlStringMaxLen255] <p>The instance type for the instances.</p>
-- * SpotPrice [SpotPrice] <p>The price to bid when launching Spot Instances.</p>
-- Required key: LaunchConfigurationName
-- Required key: ImageId
-- Required key: InstanceType
-- Required key: CreatedTime
-- @return LaunchConfiguration structure as a key-value pair table
function M.LaunchConfiguration(args)
	assert(args, "You must provide an argument table when creating LaunchConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserData"] = args["UserData"],
		["IamInstanceProfile"] = args["IamInstanceProfile"],
		["ClassicLinkVPCId"] = args["ClassicLinkVPCId"],
		["EbsOptimized"] = args["EbsOptimized"],
		["PlacementTenancy"] = args["PlacementTenancy"],
		["LaunchConfigurationARN"] = args["LaunchConfigurationARN"],
		["InstanceMonitoring"] = args["InstanceMonitoring"],
		["ImageId"] = args["ImageId"],
		["CreatedTime"] = args["CreatedTime"],
		["BlockDeviceMappings"] = args["BlockDeviceMappings"],
		["KeyName"] = args["KeyName"],
		["SecurityGroups"] = args["SecurityGroups"],
		["AssociatePublicIpAddress"] = args["AssociatePublicIpAddress"],
		["LaunchConfigurationName"] = args["LaunchConfigurationName"],
		["KernelId"] = args["KernelId"],
		["RamdiskId"] = args["RamdiskId"],
		["ClassicLinkVPCSecurityGroups"] = args["ClassicLinkVPCSecurityGroups"],
		["InstanceType"] = args["InstanceType"],
		["SpotPrice"] = args["SpotPrice"],
	}
	asserts.AssertLaunchConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ScalingProcessQuery = { ["AutoScalingGroupName"] = true, ["ScalingProcesses"] = true, nil }

function asserts.AssertScalingProcessQuery(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScalingProcessQuery to be of type 'table'")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	if struct["AutoScalingGroupName"] then asserts.AssertResourceName(struct["AutoScalingGroupName"]) end
	if struct["ScalingProcesses"] then asserts.AssertProcessNames(struct["ScalingProcesses"]) end
	for k,_ in pairs(struct) do
		assert(keys.ScalingProcessQuery[k], "ScalingProcessQuery contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScalingProcessQuery
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AutoScalingGroupName [ResourceName] <p>The name of the Auto Scaling group.</p>
-- * ScalingProcesses [ProcessNames] <p>One or more of the following processes. If you omit this parameter, all processes are specified.</p> <ul> <li> <p> <code>Launch</code> </p> </li> <li> <p> <code>Terminate</code> </p> </li> <li> <p> <code>HealthCheck</code> </p> </li> <li> <p> <code>ReplaceUnhealthy</code> </p> </li> <li> <p> <code>AZRebalance</code> </p> </li> <li> <p> <code>AlarmNotification</code> </p> </li> <li> <p> <code>ScheduledActions</code> </p> </li> <li> <p> <code>AddToLoadBalancer</code> </p> </li> </ul>
-- Required key: AutoScalingGroupName
-- @return ScalingProcessQuery structure as a key-value pair table
function M.ScalingProcessQuery(args)
	assert(args, "You must provide an argument table when creating ScalingProcessQuery")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AutoScalingGroupName"] = args["AutoScalingGroupName"],
		["ScalingProcesses"] = args["ScalingProcesses"],
	}
	asserts.AssertScalingProcessQuery(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RecordLifecycleActionHeartbeatType = { ["InstanceId"] = true, ["LifecycleHookName"] = true, ["AutoScalingGroupName"] = true, ["LifecycleActionToken"] = true, nil }

function asserts.AssertRecordLifecycleActionHeartbeatType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RecordLifecycleActionHeartbeatType to be of type 'table'")
	assert(struct["LifecycleHookName"], "Expected key LifecycleHookName to exist in table")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	if struct["InstanceId"] then asserts.AssertXmlStringMaxLen19(struct["InstanceId"]) end
	if struct["LifecycleHookName"] then asserts.AssertAsciiStringMaxLen255(struct["LifecycleHookName"]) end
	if struct["AutoScalingGroupName"] then asserts.AssertResourceName(struct["AutoScalingGroupName"]) end
	if struct["LifecycleActionToken"] then asserts.AssertLifecycleActionToken(struct["LifecycleActionToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.RecordLifecycleActionHeartbeatType[k], "RecordLifecycleActionHeartbeatType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RecordLifecycleActionHeartbeatType
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [XmlStringMaxLen19] <p>The ID of the instance.</p>
-- * LifecycleHookName [AsciiStringMaxLen255] <p>The name of the lifecycle hook.</p>
-- * AutoScalingGroupName [ResourceName] <p>The name of the Auto Scaling group.</p>
-- * LifecycleActionToken [LifecycleActionToken] <p>A token that uniquely identifies a specific lifecycle action associated with an instance. Amazon EC2 Auto Scaling sends this token to the notification target you specified when you created the lifecycle hook.</p>
-- Required key: LifecycleHookName
-- Required key: AutoScalingGroupName
-- @return RecordLifecycleActionHeartbeatType structure as a key-value pair table
function M.RecordLifecycleActionHeartbeatType(args)
	assert(args, "You must provide an argument table when creating RecordLifecycleActionHeartbeatType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceId"] = args["InstanceId"],
		["LifecycleHookName"] = args["LifecycleHookName"],
		["AutoScalingGroupName"] = args["AutoScalingGroupName"],
		["LifecycleActionToken"] = args["LifecycleActionToken"],
	}
	asserts.AssertRecordLifecycleActionHeartbeatType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeAccountLimitsAnswer = { ["NumberOfLaunchConfigurations"] = true, ["MaxNumberOfLaunchConfigurations"] = true, ["NumberOfAutoScalingGroups"] = true, ["MaxNumberOfAutoScalingGroups"] = true, nil }

function asserts.AssertDescribeAccountLimitsAnswer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAccountLimitsAnswer to be of type 'table'")
	if struct["NumberOfLaunchConfigurations"] then asserts.AssertNumberOfLaunchConfigurations(struct["NumberOfLaunchConfigurations"]) end
	if struct["MaxNumberOfLaunchConfigurations"] then asserts.AssertMaxNumberOfLaunchConfigurations(struct["MaxNumberOfLaunchConfigurations"]) end
	if struct["NumberOfAutoScalingGroups"] then asserts.AssertNumberOfAutoScalingGroups(struct["NumberOfAutoScalingGroups"]) end
	if struct["MaxNumberOfAutoScalingGroups"] then asserts.AssertMaxNumberOfAutoScalingGroups(struct["MaxNumberOfAutoScalingGroups"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAccountLimitsAnswer[k], "DescribeAccountLimitsAnswer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAccountLimitsAnswer
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NumberOfLaunchConfigurations [NumberOfLaunchConfigurations] <p>The current number of launch configurations for your AWS account.</p>
-- * MaxNumberOfLaunchConfigurations [MaxNumberOfLaunchConfigurations] <p>The maximum number of launch configurations allowed for your AWS account. The default limit is 100 per region.</p>
-- * NumberOfAutoScalingGroups [NumberOfAutoScalingGroups] <p>The current number of groups for your AWS account.</p>
-- * MaxNumberOfAutoScalingGroups [MaxNumberOfAutoScalingGroups] <p>The maximum number of groups allowed for your AWS account. The default limit is 20 per region.</p>
-- @return DescribeAccountLimitsAnswer structure as a key-value pair table
function M.DescribeAccountLimitsAnswer(args)
	assert(args, "You must provide an argument table when creating DescribeAccountLimitsAnswer")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NumberOfLaunchConfigurations"] = args["NumberOfLaunchConfigurations"],
		["MaxNumberOfLaunchConfigurations"] = args["MaxNumberOfLaunchConfigurations"],
		["NumberOfAutoScalingGroups"] = args["NumberOfAutoScalingGroups"],
		["MaxNumberOfAutoScalingGroups"] = args["MaxNumberOfAutoScalingGroups"],
	}
	asserts.AssertDescribeAccountLimitsAnswer(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TagDescription = { ["ResourceType"] = true, ["ResourceId"] = true, ["PropagateAtLaunch"] = true, ["Value"] = true, ["Key"] = true, nil }

function asserts.AssertTagDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagDescription to be of type 'table'")
	if struct["ResourceType"] then asserts.AssertXmlString(struct["ResourceType"]) end
	if struct["ResourceId"] then asserts.AssertXmlString(struct["ResourceId"]) end
	if struct["PropagateAtLaunch"] then asserts.AssertPropagateAtLaunch(struct["PropagateAtLaunch"]) end
	if struct["Value"] then asserts.AssertTagValue(struct["Value"]) end
	if struct["Key"] then asserts.AssertTagKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.TagDescription[k], "TagDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagDescription
-- <p>Describes a tag for an Auto Scaling group.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceType [XmlString] <p>The type of resource. The only supported value is <code>auto-scaling-group</code>.</p>
-- * ResourceId [XmlString] <p>The name of the group.</p>
-- * PropagateAtLaunch [PropagateAtLaunch] <p>Determines whether the tag is added to new instances as they are launched in the group.</p>
-- * Value [TagValue] <p>The tag value.</p>
-- * Key [TagKey] <p>The tag key.</p>
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
		["ResourceType"] = args["ResourceType"],
		["ResourceId"] = args["ResourceId"],
		["PropagateAtLaunch"] = args["PropagateAtLaunch"],
		["Value"] = args["Value"],
		["Key"] = args["Key"],
	}
	asserts.AssertTagDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Tag = { ["ResourceType"] = true, ["ResourceId"] = true, ["PropagateAtLaunch"] = true, ["Value"] = true, ["Key"] = true, nil }

function asserts.AssertTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tag to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	if struct["ResourceType"] then asserts.AssertXmlString(struct["ResourceType"]) end
	if struct["ResourceId"] then asserts.AssertXmlString(struct["ResourceId"]) end
	if struct["PropagateAtLaunch"] then asserts.AssertPropagateAtLaunch(struct["PropagateAtLaunch"]) end
	if struct["Value"] then asserts.AssertTagValue(struct["Value"]) end
	if struct["Key"] then asserts.AssertTagKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.Tag[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- <p>Describes a tag for an Auto Scaling group.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceType [XmlString] <p>The type of resource. The only supported value is <code>auto-scaling-group</code>.</p>
-- * ResourceId [XmlString] <p>The name of the group.</p>
-- * PropagateAtLaunch [PropagateAtLaunch] <p>Determines whether the tag is added to new instances as they are launched in the group.</p>
-- * Value [TagValue] <p>The tag value.</p>
-- * Key [TagKey] <p>The tag key.</p>
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
		["ResourceType"] = args["ResourceType"],
		["ResourceId"] = args["ResourceId"],
		["PropagateAtLaunch"] = args["PropagateAtLaunch"],
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

keys.CreateOrUpdateTagsType = { ["Tags"] = true, nil }

function asserts.AssertCreateOrUpdateTagsType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateOrUpdateTagsType to be of type 'table'")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["Tags"] then asserts.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateOrUpdateTagsType[k], "CreateOrUpdateTagsType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateOrUpdateTagsType
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Tags [Tags] <p>One or more tags.</p>
-- Required key: Tags
-- @return CreateOrUpdateTagsType structure as a key-value pair table
function M.CreateOrUpdateTagsType(args)
	assert(args, "You must provide an argument table when creating CreateOrUpdateTagsType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Tags"] = args["Tags"],
	}
	asserts.AssertCreateOrUpdateTagsType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Ebs = { ["VolumeSize"] = true, ["Encrypted"] = true, ["VolumeType"] = true, ["DeleteOnTermination"] = true, ["SnapshotId"] = true, ["Iops"] = true, nil }

function asserts.AssertEbs(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Ebs to be of type 'table'")
	if struct["VolumeSize"] then asserts.AssertBlockDeviceEbsVolumeSize(struct["VolumeSize"]) end
	if struct["Encrypted"] then asserts.AssertBlockDeviceEbsEncrypted(struct["Encrypted"]) end
	if struct["VolumeType"] then asserts.AssertBlockDeviceEbsVolumeType(struct["VolumeType"]) end
	if struct["DeleteOnTermination"] then asserts.AssertBlockDeviceEbsDeleteOnTermination(struct["DeleteOnTermination"]) end
	if struct["SnapshotId"] then asserts.AssertXmlStringMaxLen255(struct["SnapshotId"]) end
	if struct["Iops"] then asserts.AssertBlockDeviceEbsIops(struct["Iops"]) end
	for k,_ in pairs(struct) do
		assert(keys.Ebs[k], "Ebs contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Ebs
-- <p>Describes an Amazon EBS volume.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VolumeSize [BlockDeviceEbsVolumeSize] <p>The volume size, in GiB. For <code>standard</code> volumes, specify a value from 1 to 1,024. For <code>io1</code> volumes, specify a value from 4 to 16,384. For <code>gp2</code> volumes, specify a value from 1 to 16,384. If you specify a snapshot, the volume size must be equal to or larger than the snapshot size.</p> <p>Default: If you create a volume from a snapshot and you don't specify a volume size, the default is the snapshot size.</p>
-- * Encrypted [BlockDeviceEbsEncrypted] <p>Indicates whether the volume should be encrypted. Encrypted EBS volumes must be attached to instances that support Amazon EBS encryption. Volumes that are created from encrypted snapshots are automatically encrypted. There is no way to create an encrypted volume from an unencrypted snapshot or an unencrypted volume from an encrypted snapshot. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html">Amazon EBS Encryption</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
-- * VolumeType [BlockDeviceEbsVolumeType] <p>The volume type. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html">Amazon EBS Volume Types</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> <p>Valid values: <code>standard</code> | <code>io1</code> | <code>gp2</code> </p>
-- * DeleteOnTermination [BlockDeviceEbsDeleteOnTermination] <p>Indicates whether the volume is deleted on instance termination. The default is <code>true</code>.</p>
-- * SnapshotId [XmlStringMaxLen255] <p>The ID of the snapshot.</p>
-- * Iops [BlockDeviceEbsIops] <p>The number of I/O operations per second (IOPS) to provision for the volume.</p> <p>Constraint: Required when the volume type is <code>io1</code>.</p>
-- @return Ebs structure as a key-value pair table
function M.Ebs(args)
	assert(args, "You must provide an argument table when creating Ebs")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VolumeSize"] = args["VolumeSize"],
		["Encrypted"] = args["Encrypted"],
		["VolumeType"] = args["VolumeType"],
		["DeleteOnTermination"] = args["DeleteOnTermination"],
		["SnapshotId"] = args["SnapshotId"],
		["Iops"] = args["Iops"],
	}
	asserts.AssertEbs(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ExitStandbyQuery = { ["AutoScalingGroupName"] = true, ["InstanceIds"] = true, nil }

function asserts.AssertExitStandbyQuery(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExitStandbyQuery to be of type 'table'")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	if struct["AutoScalingGroupName"] then asserts.AssertResourceName(struct["AutoScalingGroupName"]) end
	if struct["InstanceIds"] then asserts.AssertInstanceIds(struct["InstanceIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExitStandbyQuery[k], "ExitStandbyQuery contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExitStandbyQuery
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AutoScalingGroupName [ResourceName] <p>The name of the Auto Scaling group.</p>
-- * InstanceIds [InstanceIds] <p>The IDs of the instances. You can specify up to 20 instances.</p>
-- Required key: AutoScalingGroupName
-- @return ExitStandbyQuery structure as a key-value pair table
function M.ExitStandbyQuery(args)
	assert(args, "You must provide an argument table when creating ExitStandbyQuery")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AutoScalingGroupName"] = args["AutoScalingGroupName"],
		["InstanceIds"] = args["InstanceIds"],
	}
	asserts.AssertExitStandbyQuery(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeMetricCollectionTypesAnswer = { ["Metrics"] = true, ["Granularities"] = true, nil }

function asserts.AssertDescribeMetricCollectionTypesAnswer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeMetricCollectionTypesAnswer to be of type 'table'")
	if struct["Metrics"] then asserts.AssertMetricCollectionTypes(struct["Metrics"]) end
	if struct["Granularities"] then asserts.AssertMetricGranularityTypes(struct["Granularities"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeMetricCollectionTypesAnswer[k], "DescribeMetricCollectionTypesAnswer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeMetricCollectionTypesAnswer
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Metrics [MetricCollectionTypes] <p>One or more metrics.</p>
-- * Granularities [MetricGranularityTypes] <p>The granularities for the metrics.</p>
-- @return DescribeMetricCollectionTypesAnswer structure as a key-value pair table
function M.DescribeMetricCollectionTypesAnswer(args)
	assert(args, "You must provide an argument table when creating DescribeMetricCollectionTypesAnswer")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Metrics"] = args["Metrics"],
		["Granularities"] = args["Granularities"],
	}
	asserts.AssertDescribeMetricCollectionTypesAnswer(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AlreadyExistsFault = { ["message"] = true, nil }

function asserts.AssertAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AlreadyExistsFault to be of type 'table'")
	if struct["message"] then asserts.AssertXmlStringMaxLen255(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.AlreadyExistsFault[k], "AlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AlreadyExistsFault
-- <p>You already have an Auto Scaling group or launch configuration with this name.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [XmlStringMaxLen255] <p/>
-- @return AlreadyExistsFault structure as a key-value pair table
function M.AlreadyExistsFault(args)
	assert(args, "You must provide an argument table when creating AlreadyExistsFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertAlreadyExistsFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AutoScalingGroup = { ["PlacementGroup"] = true, ["VPCZoneIdentifier"] = true, ["LoadBalancerNames"] = true, ["CreatedTime"] = true, ["Status"] = true, ["AutoScalingGroupARN"] = true, ["SuspendedProcesses"] = true, ["Tags"] = true, ["MaxSize"] = true, ["TerminationPolicies"] = true, ["TargetGroupARNs"] = true, ["HealthCheckType"] = true, ["LaunchTemplate"] = true, ["ServiceLinkedRoleARN"] = true, ["AutoScalingGroupName"] = true, ["MinSize"] = true, ["LaunchConfigurationName"] = true, ["HealthCheckGracePeriod"] = true, ["DesiredCapacity"] = true, ["EnabledMetrics"] = true, ["DefaultCooldown"] = true, ["Instances"] = true, ["AvailabilityZones"] = true, ["NewInstancesProtectedFromScaleIn"] = true, nil }

function asserts.AssertAutoScalingGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AutoScalingGroup to be of type 'table'")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	assert(struct["MinSize"], "Expected key MinSize to exist in table")
	assert(struct["MaxSize"], "Expected key MaxSize to exist in table")
	assert(struct["DesiredCapacity"], "Expected key DesiredCapacity to exist in table")
	assert(struct["DefaultCooldown"], "Expected key DefaultCooldown to exist in table")
	assert(struct["AvailabilityZones"], "Expected key AvailabilityZones to exist in table")
	assert(struct["HealthCheckType"], "Expected key HealthCheckType to exist in table")
	assert(struct["CreatedTime"], "Expected key CreatedTime to exist in table")
	if struct["PlacementGroup"] then asserts.AssertXmlStringMaxLen255(struct["PlacementGroup"]) end
	if struct["VPCZoneIdentifier"] then asserts.AssertXmlStringMaxLen2047(struct["VPCZoneIdentifier"]) end
	if struct["LoadBalancerNames"] then asserts.AssertLoadBalancerNames(struct["LoadBalancerNames"]) end
	if struct["CreatedTime"] then asserts.AssertTimestampType(struct["CreatedTime"]) end
	if struct["Status"] then asserts.AssertXmlStringMaxLen255(struct["Status"]) end
	if struct["AutoScalingGroupARN"] then asserts.AssertResourceName(struct["AutoScalingGroupARN"]) end
	if struct["SuspendedProcesses"] then asserts.AssertSuspendedProcesses(struct["SuspendedProcesses"]) end
	if struct["Tags"] then asserts.AssertTagDescriptionList(struct["Tags"]) end
	if struct["MaxSize"] then asserts.AssertAutoScalingGroupMaxSize(struct["MaxSize"]) end
	if struct["TerminationPolicies"] then asserts.AssertTerminationPolicies(struct["TerminationPolicies"]) end
	if struct["TargetGroupARNs"] then asserts.AssertTargetGroupARNs(struct["TargetGroupARNs"]) end
	if struct["HealthCheckType"] then asserts.AssertXmlStringMaxLen32(struct["HealthCheckType"]) end
	if struct["LaunchTemplate"] then asserts.AssertLaunchTemplateSpecification(struct["LaunchTemplate"]) end
	if struct["ServiceLinkedRoleARN"] then asserts.AssertResourceName(struct["ServiceLinkedRoleARN"]) end
	if struct["AutoScalingGroupName"] then asserts.AssertXmlStringMaxLen255(struct["AutoScalingGroupName"]) end
	if struct["MinSize"] then asserts.AssertAutoScalingGroupMinSize(struct["MinSize"]) end
	if struct["LaunchConfigurationName"] then asserts.AssertXmlStringMaxLen255(struct["LaunchConfigurationName"]) end
	if struct["HealthCheckGracePeriod"] then asserts.AssertHealthCheckGracePeriod(struct["HealthCheckGracePeriod"]) end
	if struct["DesiredCapacity"] then asserts.AssertAutoScalingGroupDesiredCapacity(struct["DesiredCapacity"]) end
	if struct["EnabledMetrics"] then asserts.AssertEnabledMetrics(struct["EnabledMetrics"]) end
	if struct["DefaultCooldown"] then asserts.AssertCooldown(struct["DefaultCooldown"]) end
	if struct["Instances"] then asserts.AssertInstances(struct["Instances"]) end
	if struct["AvailabilityZones"] then asserts.AssertAvailabilityZones(struct["AvailabilityZones"]) end
	if struct["NewInstancesProtectedFromScaleIn"] then asserts.AssertInstanceProtected(struct["NewInstancesProtectedFromScaleIn"]) end
	for k,_ in pairs(struct) do
		assert(keys.AutoScalingGroup[k], "AutoScalingGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AutoScalingGroup
-- <p>Describes an Auto Scaling group.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PlacementGroup [XmlStringMaxLen255] <p>The name of the placement group into which you'll launch your instances, if any. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html">Placement Groups</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
-- * VPCZoneIdentifier [XmlStringMaxLen2047] <p>One or more subnet IDs, if applicable, separated by commas.</p> <p>If you specify <code>VPCZoneIdentifier</code> and <code>AvailabilityZones</code>, ensure that the Availability Zones of the subnets match the values for <code>AvailabilityZones</code>.</p>
-- * LoadBalancerNames [LoadBalancerNames] <p>One or more load balancers associated with the group.</p>
-- * CreatedTime [TimestampType] <p>The date and time the group was created.</p>
-- * Status [XmlStringMaxLen255] <p>The current state of the group when <a>DeleteAutoScalingGroup</a> is in progress.</p>
-- * AutoScalingGroupARN [ResourceName] <p>The Amazon Resource Name (ARN) of the Auto Scaling group.</p>
-- * SuspendedProcesses [SuspendedProcesses] <p>The suspended processes associated with the group.</p>
-- * Tags [TagDescriptionList] <p>The tags for the group.</p>
-- * MaxSize [AutoScalingGroupMaxSize] <p>The maximum size of the group.</p>
-- * TerminationPolicies [TerminationPolicies] <p>The termination policies for the group.</p>
-- * TargetGroupARNs [TargetGroupARNs] <p>The Amazon Resource Names (ARN) of the target groups for your load balancer.</p>
-- * HealthCheckType [XmlStringMaxLen32] <p>The service to use for the health checks. The valid values are <code>EC2</code> and <code>ELB</code>.</p>
-- * LaunchTemplate [LaunchTemplateSpecification] <p>The launch template for the group.</p>
-- * ServiceLinkedRoleARN [ResourceName] <p>The Amazon Resource Name (ARN) of the service-linked role that the Auto Scaling group uses to call other AWS services on your behalf.</p>
-- * AutoScalingGroupName [XmlStringMaxLen255] <p>The name of the Auto Scaling group.</p>
-- * MinSize [AutoScalingGroupMinSize] <p>The minimum size of the group.</p>
-- * LaunchConfigurationName [XmlStringMaxLen255] <p>The name of the associated launch configuration.</p>
-- * HealthCheckGracePeriod [HealthCheckGracePeriod] <p>The amount of time, in seconds, that Amazon EC2 Auto Scaling waits before checking the health status of an EC2 instance that has come into service.</p>
-- * DesiredCapacity [AutoScalingGroupDesiredCapacity] <p>The desired size of the group.</p>
-- * EnabledMetrics [EnabledMetrics] <p>The metrics enabled for the group.</p>
-- * DefaultCooldown [Cooldown] <p>The amount of time, in seconds, after a scaling activity completes before another scaling activity can start.</p>
-- * Instances [Instances] <p>The EC2 instances associated with the group.</p>
-- * AvailabilityZones [AvailabilityZones] <p>One or more Availability Zones for the group.</p>
-- * NewInstancesProtectedFromScaleIn [InstanceProtected] <p>Indicates whether newly launched instances are protected from termination by Auto Scaling when scaling in.</p>
-- Required key: AutoScalingGroupName
-- Required key: MinSize
-- Required key: MaxSize
-- Required key: DesiredCapacity
-- Required key: DefaultCooldown
-- Required key: AvailabilityZones
-- Required key: HealthCheckType
-- Required key: CreatedTime
-- @return AutoScalingGroup structure as a key-value pair table
function M.AutoScalingGroup(args)
	assert(args, "You must provide an argument table when creating AutoScalingGroup")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PlacementGroup"] = args["PlacementGroup"],
		["VPCZoneIdentifier"] = args["VPCZoneIdentifier"],
		["LoadBalancerNames"] = args["LoadBalancerNames"],
		["CreatedTime"] = args["CreatedTime"],
		["Status"] = args["Status"],
		["AutoScalingGroupARN"] = args["AutoScalingGroupARN"],
		["SuspendedProcesses"] = args["SuspendedProcesses"],
		["Tags"] = args["Tags"],
		["MaxSize"] = args["MaxSize"],
		["TerminationPolicies"] = args["TerminationPolicies"],
		["TargetGroupARNs"] = args["TargetGroupARNs"],
		["HealthCheckType"] = args["HealthCheckType"],
		["LaunchTemplate"] = args["LaunchTemplate"],
		["ServiceLinkedRoleARN"] = args["ServiceLinkedRoleARN"],
		["AutoScalingGroupName"] = args["AutoScalingGroupName"],
		["MinSize"] = args["MinSize"],
		["LaunchConfigurationName"] = args["LaunchConfigurationName"],
		["HealthCheckGracePeriod"] = args["HealthCheckGracePeriod"],
		["DesiredCapacity"] = args["DesiredCapacity"],
		["EnabledMetrics"] = args["EnabledMetrics"],
		["DefaultCooldown"] = args["DefaultCooldown"],
		["Instances"] = args["Instances"],
		["AvailabilityZones"] = args["AvailabilityZones"],
		["NewInstancesProtectedFromScaleIn"] = args["NewInstancesProtectedFromScaleIn"],
	}
	asserts.AssertAutoScalingGroup(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StepAdjustment = { ["ScalingAdjustment"] = true, ["MetricIntervalLowerBound"] = true, ["MetricIntervalUpperBound"] = true, nil }

function asserts.AssertStepAdjustment(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StepAdjustment to be of type 'table'")
	assert(struct["ScalingAdjustment"], "Expected key ScalingAdjustment to exist in table")
	if struct["ScalingAdjustment"] then asserts.AssertPolicyIncrement(struct["ScalingAdjustment"]) end
	if struct["MetricIntervalLowerBound"] then asserts.AssertMetricScale(struct["MetricIntervalLowerBound"]) end
	if struct["MetricIntervalUpperBound"] then asserts.AssertMetricScale(struct["MetricIntervalUpperBound"]) end
	for k,_ in pairs(struct) do
		assert(keys.StepAdjustment[k], "StepAdjustment contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StepAdjustment
-- <p>Describes an adjustment based on the difference between the value of the aggregated CloudWatch metric and the breach threshold that you've defined for the alarm.</p> <p>For the following examples, suppose that you have an alarm with a breach threshold of 50:</p> <ul> <li> <p>If you want the adjustment to be triggered when the metric is greater than or equal to 50 and less than 60, specify a lower bound of 0 and an upper bound of 10.</p> </li> <li> <p>If you want the adjustment to be triggered when the metric is greater than 40 and less than or equal to 50, specify a lower bound of -10 and an upper bound of 0.</p> </li> </ul> <p>There are a few rules for the step adjustments for your step policy:</p> <ul> <li> <p>The ranges of your step adjustments can't overlap or have a gap.</p> </li> <li> <p>At most one step adjustment can have a null lower bound. If one step adjustment has a negative lower bound, then there must be a step adjustment with a null lower bound.</p> </li> <li> <p>At most one step adjustment can have a null upper bound. If one step adjustment has a positive upper bound, then there must be a step adjustment with a null upper bound.</p> </li> <li> <p>The upper and lower bound can't be null in the same step adjustment.</p> </li> </ul>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ScalingAdjustment [PolicyIncrement] <p>The amount by which to scale, based on the specified adjustment type. A positive value adds to the current capacity while a negative number removes from the current capacity.</p>
-- * MetricIntervalLowerBound [MetricScale] <p>The lower bound for the difference between the alarm threshold and the CloudWatch metric. If the metric value is above the breach threshold, the lower bound is inclusive (the metric must be greater than or equal to the threshold plus the lower bound). Otherwise, it is exclusive (the metric must be greater than the threshold plus the lower bound). A null value indicates negative infinity.</p>
-- * MetricIntervalUpperBound [MetricScale] <p>The upper bound for the difference between the alarm threshold and the CloudWatch metric. If the metric value is above the breach threshold, the upper bound is exclusive (the metric must be less than the threshold plus the upper bound). Otherwise, it is inclusive (the metric must be less than or equal to the threshold plus the upper bound). A null value indicates positive infinity.</p> <p>The upper bound must be greater than the lower bound.</p>
-- Required key: ScalingAdjustment
-- @return StepAdjustment structure as a key-value pair table
function M.StepAdjustment(args)
	assert(args, "You must provide an argument table when creating StepAdjustment")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ScalingAdjustment"] = args["ScalingAdjustment"],
		["MetricIntervalLowerBound"] = args["MetricIntervalLowerBound"],
		["MetricIntervalUpperBound"] = args["MetricIntervalUpperBound"],
	}
	asserts.AssertStepAdjustment(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DetachInstancesAnswer = { ["Activities"] = true, nil }

function asserts.AssertDetachInstancesAnswer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetachInstancesAnswer to be of type 'table'")
	if struct["Activities"] then asserts.AssertActivities(struct["Activities"]) end
	for k,_ in pairs(struct) do
		assert(keys.DetachInstancesAnswer[k], "DetachInstancesAnswer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetachInstancesAnswer
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Activities [Activities] <p>The activities related to detaching the instances from the Auto Scaling group.</p>
-- @return DetachInstancesAnswer structure as a key-value pair table
function M.DetachInstancesAnswer(args)
	assert(args, "You must provide an argument table when creating DetachInstancesAnswer")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Activities"] = args["Activities"],
	}
	asserts.AssertDetachInstancesAnswer(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ScalingPolicy = { ["PolicyName"] = true, ["EstimatedInstanceWarmup"] = true, ["MinAdjustmentStep"] = true, ["MinAdjustmentMagnitude"] = true, ["MetricAggregationType"] = true, ["AutoScalingGroupName"] = true, ["PolicyARN"] = true, ["Cooldown"] = true, ["PolicyType"] = true, ["StepAdjustments"] = true, ["AdjustmentType"] = true, ["Alarms"] = true, ["ScalingAdjustment"] = true, ["TargetTrackingConfiguration"] = true, nil }

function asserts.AssertScalingPolicy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScalingPolicy to be of type 'table'")
	if struct["PolicyName"] then asserts.AssertXmlStringMaxLen255(struct["PolicyName"]) end
	if struct["EstimatedInstanceWarmup"] then asserts.AssertEstimatedInstanceWarmup(struct["EstimatedInstanceWarmup"]) end
	if struct["MinAdjustmentStep"] then asserts.AssertMinAdjustmentStep(struct["MinAdjustmentStep"]) end
	if struct["MinAdjustmentMagnitude"] then asserts.AssertMinAdjustmentMagnitude(struct["MinAdjustmentMagnitude"]) end
	if struct["MetricAggregationType"] then asserts.AssertXmlStringMaxLen32(struct["MetricAggregationType"]) end
	if struct["AutoScalingGroupName"] then asserts.AssertXmlStringMaxLen255(struct["AutoScalingGroupName"]) end
	if struct["PolicyARN"] then asserts.AssertResourceName(struct["PolicyARN"]) end
	if struct["Cooldown"] then asserts.AssertCooldown(struct["Cooldown"]) end
	if struct["PolicyType"] then asserts.AssertXmlStringMaxLen64(struct["PolicyType"]) end
	if struct["StepAdjustments"] then asserts.AssertStepAdjustments(struct["StepAdjustments"]) end
	if struct["AdjustmentType"] then asserts.AssertXmlStringMaxLen255(struct["AdjustmentType"]) end
	if struct["Alarms"] then asserts.AssertAlarms(struct["Alarms"]) end
	if struct["ScalingAdjustment"] then asserts.AssertPolicyIncrement(struct["ScalingAdjustment"]) end
	if struct["TargetTrackingConfiguration"] then asserts.AssertTargetTrackingConfiguration(struct["TargetTrackingConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.ScalingPolicy[k], "ScalingPolicy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScalingPolicy
-- <p>Describes a scaling policy.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyName [XmlStringMaxLen255] <p>The name of the scaling policy.</p>
-- * EstimatedInstanceWarmup [EstimatedInstanceWarmup] <p>The estimated time, in seconds, until a newly launched instance can contribute to the CloudWatch metrics.</p>
-- * MinAdjustmentStep [MinAdjustmentStep] <p>Available for backward compatibility. Use <code>MinAdjustmentMagnitude</code> instead.</p>
-- * MinAdjustmentMagnitude [MinAdjustmentMagnitude] <p>The minimum number of instances to scale. If the value of <code>AdjustmentType</code> is <code>PercentChangeInCapacity</code>, the scaling policy changes the <code>DesiredCapacity</code> of the Auto Scaling group by at least this many instances. Otherwise, the error is <code>ValidationError</code>.</p>
-- * MetricAggregationType [XmlStringMaxLen32] <p>The aggregation type for the CloudWatch metrics. Valid values are <code>Minimum</code>, <code>Maximum</code>, and <code>Average</code>.</p>
-- * AutoScalingGroupName [XmlStringMaxLen255] <p>The name of the Auto Scaling group.</p>
-- * PolicyARN [ResourceName] <p>The Amazon Resource Name (ARN) of the policy.</p>
-- * Cooldown [Cooldown] <p>The amount of time, in seconds, after a scaling activity completes before any further dynamic scaling activities can start.</p>
-- * PolicyType [XmlStringMaxLen64] <p>The policy type. Valid values are <code>SimpleScaling</code> and <code>StepScaling</code>.</p>
-- * StepAdjustments [StepAdjustments] <p>A set of adjustments that enable you to scale based on the size of the alarm breach.</p>
-- * AdjustmentType [XmlStringMaxLen255] <p>The adjustment type, which specifies how <code>ScalingAdjustment</code> is interpreted. Valid values are <code>ChangeInCapacity</code>, <code>ExactCapacity</code>, and <code>PercentChangeInCapacity</code>.</p>
-- * Alarms [Alarms] <p>The CloudWatch alarms related to the policy.</p>
-- * ScalingAdjustment [PolicyIncrement] <p>The amount by which to scale, based on the specified adjustment type. A positive value adds to the current capacity while a negative number removes from the current capacity.</p>
-- * TargetTrackingConfiguration [TargetTrackingConfiguration] <p>A target tracking policy.</p>
-- @return ScalingPolicy structure as a key-value pair table
function M.ScalingPolicy(args)
	assert(args, "You must provide an argument table when creating ScalingPolicy")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyName"] = args["PolicyName"],
		["EstimatedInstanceWarmup"] = args["EstimatedInstanceWarmup"],
		["MinAdjustmentStep"] = args["MinAdjustmentStep"],
		["MinAdjustmentMagnitude"] = args["MinAdjustmentMagnitude"],
		["MetricAggregationType"] = args["MetricAggregationType"],
		["AutoScalingGroupName"] = args["AutoScalingGroupName"],
		["PolicyARN"] = args["PolicyARN"],
		["Cooldown"] = args["Cooldown"],
		["PolicyType"] = args["PolicyType"],
		["StepAdjustments"] = args["StepAdjustments"],
		["AdjustmentType"] = args["AdjustmentType"],
		["Alarms"] = args["Alarms"],
		["ScalingAdjustment"] = args["ScalingAdjustment"],
		["TargetTrackingConfiguration"] = args["TargetTrackingConfiguration"],
	}
	asserts.AssertScalingPolicy(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PredefinedMetricSpecification = { ["PredefinedMetricType"] = true, ["ResourceLabel"] = true, nil }

function asserts.AssertPredefinedMetricSpecification(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PredefinedMetricSpecification to be of type 'table'")
	assert(struct["PredefinedMetricType"], "Expected key PredefinedMetricType to exist in table")
	if struct["PredefinedMetricType"] then asserts.AssertMetricType(struct["PredefinedMetricType"]) end
	if struct["ResourceLabel"] then asserts.AssertXmlStringMaxLen1023(struct["ResourceLabel"]) end
	for k,_ in pairs(struct) do
		assert(keys.PredefinedMetricSpecification[k], "PredefinedMetricSpecification contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PredefinedMetricSpecification
-- <p>Configures a predefined metric for a target tracking policy.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PredefinedMetricType [MetricType] <p>The metric type.</p>
-- * ResourceLabel [XmlStringMaxLen1023] <p>Identifies the resource associated with the metric type. The following predefined metrics are available:</p> <ul> <li> <p> <code>ASGAverageCPUUtilization</code> - average CPU utilization of the Auto Scaling group</p> </li> <li> <p> <code>ASGAverageNetworkIn</code> - average number of bytes received on all network interfaces by the Auto Scaling group</p> </li> <li> <p> <code>ASGAverageNetworkOut</code> - average number of bytes sent out on all network interfaces by the Auto Scaling group</p> </li> <li> <p> <code>ALBRequestCountPerTarget</code> - number of requests completed per target in an Application Load Balancer target group</p> </li> </ul> <p>For predefined metric types <code>ASGAverageCPUUtilization</code>, <code>ASGAverageNetworkIn</code>, and <code>ASGAverageNetworkOut</code>, the parameter must not be specified as the resource associated with the metric type is the Auto Scaling group. For predefined metric type <code>ALBRequestCountPerTarget</code>, the parameter must be specified in the format: <code>app/<i>load-balancer-name</i>/<i>load-balancer-id</i>/targetgroup/<i>target-group-name</i>/<i>target-group-id</i> </code>, where <code>app/<i>load-balancer-name</i>/<i>load-balancer-id</i> </code> is the final portion of the load balancer ARN, and <code>targetgroup/<i>target-group-name</i>/<i>target-group-id</i> </code> is the final portion of the target group ARN. The target group must be attached to the Auto Scaling group.</p>
-- Required key: PredefinedMetricType
-- @return PredefinedMetricSpecification structure as a key-value pair table
function M.PredefinedMetricSpecification(args)
	assert(args, "You must provide an argument table when creating PredefinedMetricSpecification")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PredefinedMetricType"] = args["PredefinedMetricType"],
		["ResourceLabel"] = args["ResourceLabel"],
	}
	asserts.AssertPredefinedMetricSpecification(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ScheduledUpdateGroupAction = { ["MinSize"] = true, ["DesiredCapacity"] = true, ["AutoScalingGroupName"] = true, ["MaxSize"] = true, ["Recurrence"] = true, ["ScheduledActionARN"] = true, ["ScheduledActionName"] = true, ["StartTime"] = true, ["Time"] = true, ["EndTime"] = true, nil }

function asserts.AssertScheduledUpdateGroupAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScheduledUpdateGroupAction to be of type 'table'")
	if struct["MinSize"] then asserts.AssertAutoScalingGroupMinSize(struct["MinSize"]) end
	if struct["DesiredCapacity"] then asserts.AssertAutoScalingGroupDesiredCapacity(struct["DesiredCapacity"]) end
	if struct["AutoScalingGroupName"] then asserts.AssertXmlStringMaxLen255(struct["AutoScalingGroupName"]) end
	if struct["MaxSize"] then asserts.AssertAutoScalingGroupMaxSize(struct["MaxSize"]) end
	if struct["Recurrence"] then asserts.AssertXmlStringMaxLen255(struct["Recurrence"]) end
	if struct["ScheduledActionARN"] then asserts.AssertResourceName(struct["ScheduledActionARN"]) end
	if struct["ScheduledActionName"] then asserts.AssertXmlStringMaxLen255(struct["ScheduledActionName"]) end
	if struct["StartTime"] then asserts.AssertTimestampType(struct["StartTime"]) end
	if struct["Time"] then asserts.AssertTimestampType(struct["Time"]) end
	if struct["EndTime"] then asserts.AssertTimestampType(struct["EndTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.ScheduledUpdateGroupAction[k], "ScheduledUpdateGroupAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScheduledUpdateGroupAction
-- <p>Describes a scheduled scaling action. Used in response to <a>DescribeScheduledActions</a>. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MinSize [AutoScalingGroupMinSize] <p>The minimum size of the group.</p>
-- * DesiredCapacity [AutoScalingGroupDesiredCapacity] <p>The number of instances you prefer to maintain in the group.</p>
-- * AutoScalingGroupName [XmlStringMaxLen255] <p>The name of the Auto Scaling group.</p>
-- * MaxSize [AutoScalingGroupMaxSize] <p>The maximum size of the group.</p>
-- * Recurrence [XmlStringMaxLen255] <p>The recurring schedule for the action.</p>
-- * ScheduledActionARN [ResourceName] <p>The Amazon Resource Name (ARN) of the scheduled action.</p>
-- * ScheduledActionName [XmlStringMaxLen255] <p>The name of the scheduled action.</p>
-- * StartTime [TimestampType] <p>The date and time that the action is scheduled to begin. This date and time can be up to one month in the future.</p> <p>When <code>StartTime</code> and <code>EndTime</code> are specified with <code>Recurrence</code>, they form the boundaries of when the recurring action will start and stop.</p>
-- * Time [TimestampType] <p>This parameter is deprecated.</p>
-- * EndTime [TimestampType] <p>The date and time that the action is scheduled to end. This date and time can be up to one month in the future.</p>
-- @return ScheduledUpdateGroupAction structure as a key-value pair table
function M.ScheduledUpdateGroupAction(args)
	assert(args, "You must provide an argument table when creating ScheduledUpdateGroupAction")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MinSize"] = args["MinSize"],
		["DesiredCapacity"] = args["DesiredCapacity"],
		["AutoScalingGroupName"] = args["AutoScalingGroupName"],
		["MaxSize"] = args["MaxSize"],
		["Recurrence"] = args["Recurrence"],
		["ScheduledActionARN"] = args["ScheduledActionARN"],
		["ScheduledActionName"] = args["ScheduledActionName"],
		["StartTime"] = args["StartTime"],
		["Time"] = args["Time"],
		["EndTime"] = args["EndTime"],
	}
	asserts.AssertScheduledUpdateGroupAction(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RecordLifecycleActionHeartbeatAnswer = { nil }

function asserts.AssertRecordLifecycleActionHeartbeatAnswer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RecordLifecycleActionHeartbeatAnswer to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.RecordLifecycleActionHeartbeatAnswer[k], "RecordLifecycleActionHeartbeatAnswer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RecordLifecycleActionHeartbeatAnswer
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return RecordLifecycleActionHeartbeatAnswer structure as a key-value pair table
function M.RecordLifecycleActionHeartbeatAnswer(args)
	assert(args, "You must provide an argument table when creating RecordLifecycleActionHeartbeatAnswer")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertRecordLifecycleActionHeartbeatAnswer(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteScheduledActionType = { ["AutoScalingGroupName"] = true, ["ScheduledActionName"] = true, nil }

function asserts.AssertDeleteScheduledActionType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteScheduledActionType to be of type 'table'")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	assert(struct["ScheduledActionName"], "Expected key ScheduledActionName to exist in table")
	if struct["AutoScalingGroupName"] then asserts.AssertResourceName(struct["AutoScalingGroupName"]) end
	if struct["ScheduledActionName"] then asserts.AssertResourceName(struct["ScheduledActionName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteScheduledActionType[k], "DeleteScheduledActionType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteScheduledActionType
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AutoScalingGroupName [ResourceName] <p>The name of the Auto Scaling group.</p>
-- * ScheduledActionName [ResourceName] <p>The name of the action to delete.</p>
-- Required key: AutoScalingGroupName
-- Required key: ScheduledActionName
-- @return DeleteScheduledActionType structure as a key-value pair table
function M.DeleteScheduledActionType(args)
	assert(args, "You must provide an argument table when creating DeleteScheduledActionType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AutoScalingGroupName"] = args["AutoScalingGroupName"],
		["ScheduledActionName"] = args["ScheduledActionName"],
	}
	asserts.AssertDeleteScheduledActionType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeNotificationConfigurationsType = { ["MaxRecords"] = true, ["NextToken"] = true, ["AutoScalingGroupNames"] = true, nil }

function asserts.AssertDescribeNotificationConfigurationsType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeNotificationConfigurationsType to be of type 'table'")
	if struct["MaxRecords"] then asserts.AssertMaxRecords(struct["MaxRecords"]) end
	if struct["NextToken"] then asserts.AssertXmlString(struct["NextToken"]) end
	if struct["AutoScalingGroupNames"] then asserts.AssertAutoScalingGroupNames(struct["AutoScalingGroupNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeNotificationConfigurationsType[k], "DescribeNotificationConfigurationsType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeNotificationConfigurationsType
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MaxRecords [MaxRecords] <p>The maximum number of items to return with this call. The default value is 50 and the maximum value is 100.</p>
-- * NextToken [XmlString] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- * AutoScalingGroupNames [AutoScalingGroupNames] <p>The name of the Auto Scaling group.</p>
-- @return DescribeNotificationConfigurationsType structure as a key-value pair table
function M.DescribeNotificationConfigurationsType(args)
	assert(args, "You must provide an argument table when creating DescribeNotificationConfigurationsType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MaxRecords"] = args["MaxRecords"],
		["NextToken"] = args["NextToken"],
		["AutoScalingGroupNames"] = args["AutoScalingGroupNames"],
	}
	asserts.AssertDescribeNotificationConfigurationsType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MetricGranularityType = { ["Granularity"] = true, nil }

function asserts.AssertMetricGranularityType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MetricGranularityType to be of type 'table'")
	if struct["Granularity"] then asserts.AssertXmlStringMaxLen255(struct["Granularity"]) end
	for k,_ in pairs(struct) do
		assert(keys.MetricGranularityType[k], "MetricGranularityType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MetricGranularityType
-- <p>Describes a granularity of a metric.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Granularity [XmlStringMaxLen255] <p>The granularity. The only valid value is <code>1Minute</code>.</p>
-- @return MetricGranularityType structure as a key-value pair table
function M.MetricGranularityType(args)
	assert(args, "You must provide an argument table when creating MetricGranularityType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Granularity"] = args["Granularity"],
	}
	asserts.AssertMetricGranularityType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeScheduledActionsType = { ["EndTime"] = true, ["AutoScalingGroupName"] = true, ["MaxRecords"] = true, ["ScheduledActionNames"] = true, ["StartTime"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeScheduledActionsType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeScheduledActionsType to be of type 'table'")
	if struct["EndTime"] then asserts.AssertTimestampType(struct["EndTime"]) end
	if struct["AutoScalingGroupName"] then asserts.AssertResourceName(struct["AutoScalingGroupName"]) end
	if struct["MaxRecords"] then asserts.AssertMaxRecords(struct["MaxRecords"]) end
	if struct["ScheduledActionNames"] then asserts.AssertScheduledActionNames(struct["ScheduledActionNames"]) end
	if struct["StartTime"] then asserts.AssertTimestampType(struct["StartTime"]) end
	if struct["NextToken"] then asserts.AssertXmlString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeScheduledActionsType[k], "DescribeScheduledActionsType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeScheduledActionsType
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EndTime [TimestampType] <p>The latest scheduled start time to return. If scheduled action names are provided, this parameter is ignored.</p>
-- * AutoScalingGroupName [ResourceName] <p>The name of the Auto Scaling group.</p>
-- * MaxRecords [MaxRecords] <p>The maximum number of items to return with this call. The default value is 50 and the maximum value is 100.</p>
-- * ScheduledActionNames [ScheduledActionNames] <p>The names of one or more scheduled actions. You can specify up to 50 actions. If you omit this parameter, all scheduled actions are described. If you specify an unknown scheduled action, it is ignored with no error.</p>
-- * StartTime [TimestampType] <p>The earliest scheduled start time to return. If scheduled action names are provided, this parameter is ignored.</p>
-- * NextToken [XmlString] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- @return DescribeScheduledActionsType structure as a key-value pair table
function M.DescribeScheduledActionsType(args)
	assert(args, "You must provide an argument table when creating DescribeScheduledActionsType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EndTime"] = args["EndTime"],
		["AutoScalingGroupName"] = args["AutoScalingGroupName"],
		["MaxRecords"] = args["MaxRecords"],
		["ScheduledActionNames"] = args["ScheduledActionNames"],
		["StartTime"] = args["StartTime"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeScheduledActionsType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResourceContentionFault = { ["message"] = true, nil }

function asserts.AssertResourceContentionFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceContentionFault to be of type 'table'")
	if struct["message"] then asserts.AssertXmlStringMaxLen255(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceContentionFault[k], "ResourceContentionFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceContentionFault
-- <p>You already have a pending update to an Auto Scaling resource (for example, a group, instance, or load balancer).</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [XmlStringMaxLen255] <p/>
-- @return ResourceContentionFault structure as a key-value pair table
function M.ResourceContentionFault(args)
	assert(args, "You must provide an argument table when creating ResourceContentionFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertResourceContentionFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LaunchTemplateSpecification = { ["LaunchTemplateName"] = true, ["Version"] = true, ["LaunchTemplateId"] = true, nil }

function asserts.AssertLaunchTemplateSpecification(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LaunchTemplateSpecification to be of type 'table'")
	if struct["LaunchTemplateName"] then asserts.AssertLaunchTemplateName(struct["LaunchTemplateName"]) end
	if struct["Version"] then asserts.AssertXmlStringMaxLen255(struct["Version"]) end
	if struct["LaunchTemplateId"] then asserts.AssertXmlStringMaxLen255(struct["LaunchTemplateId"]) end
	for k,_ in pairs(struct) do
		assert(keys.LaunchTemplateSpecification[k], "LaunchTemplateSpecification contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LaunchTemplateSpecification
-- <p>Describes a launch template.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LaunchTemplateName [LaunchTemplateName] <p>The name of the launch template. You must specify either a template name or a template ID.</p>
-- * Version [XmlStringMaxLen255] <p>The version number, <code>$Latest</code>, or <code>$Default</code>. If the value is <code>$Latest</code>, Amazon EC2 Auto Scaling selects the latest version of the launch template when launching instances. If the value is <code>$Default</code>, Amazon EC2 Auto Scaling selects the default version of the launch template when launching instances. The default value is <code>$Default</code>.</p>
-- * LaunchTemplateId [XmlStringMaxLen255] <p>The ID of the launch template. You must specify either a template ID or a template name.</p>
-- @return LaunchTemplateSpecification structure as a key-value pair table
function M.LaunchTemplateSpecification(args)
	assert(args, "You must provide an argument table when creating LaunchTemplateSpecification")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LaunchTemplateName"] = args["LaunchTemplateName"],
		["Version"] = args["Version"],
		["LaunchTemplateId"] = args["LaunchTemplateId"],
	}
	asserts.AssertLaunchTemplateSpecification(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EnabledMetric = { ["Metric"] = true, ["Granularity"] = true, nil }

function asserts.AssertEnabledMetric(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnabledMetric to be of type 'table'")
	if struct["Metric"] then asserts.AssertXmlStringMaxLen255(struct["Metric"]) end
	if struct["Granularity"] then asserts.AssertXmlStringMaxLen255(struct["Granularity"]) end
	for k,_ in pairs(struct) do
		assert(keys.EnabledMetric[k], "EnabledMetric contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnabledMetric
-- <p>Describes an enabled metric.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Metric [XmlStringMaxLen255] <p>One of the following metrics:</p> <ul> <li> <p> <code>GroupMinSize</code> </p> </li> <li> <p> <code>GroupMaxSize</code> </p> </li> <li> <p> <code>GroupDesiredCapacity</code> </p> </li> <li> <p> <code>GroupInServiceInstances</code> </p> </li> <li> <p> <code>GroupPendingInstances</code> </p> </li> <li> <p> <code>GroupStandbyInstances</code> </p> </li> <li> <p> <code>GroupTerminatingInstances</code> </p> </li> <li> <p> <code>GroupTotalInstances</code> </p> </li> </ul>
-- * Granularity [XmlStringMaxLen255] <p>The granularity of the metric. The only valid value is <code>1Minute</code>.</p>
-- @return EnabledMetric structure as a key-value pair table
function M.EnabledMetric(args)
	assert(args, "You must provide an argument table when creating EnabledMetric")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Metric"] = args["Metric"],
		["Granularity"] = args["Granularity"],
	}
	asserts.AssertEnabledMetric(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeletePolicyType = { ["PolicyName"] = true, ["AutoScalingGroupName"] = true, nil }

function asserts.AssertDeletePolicyType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePolicyType to be of type 'table'")
	assert(struct["PolicyName"], "Expected key PolicyName to exist in table")
	if struct["PolicyName"] then asserts.AssertResourceName(struct["PolicyName"]) end
	if struct["AutoScalingGroupName"] then asserts.AssertResourceName(struct["AutoScalingGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeletePolicyType[k], "DeletePolicyType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePolicyType
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyName [ResourceName] <p>The name or Amazon Resource Name (ARN) of the policy.</p>
-- * AutoScalingGroupName [ResourceName] <p>The name of the Auto Scaling group.</p>
-- Required key: PolicyName
-- @return DeletePolicyType structure as a key-value pair table
function M.DeletePolicyType(args)
	assert(args, "You must provide an argument table when creating DeletePolicyType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyName"] = args["PolicyName"],
		["AutoScalingGroupName"] = args["AutoScalingGroupName"],
	}
	asserts.AssertDeletePolicyType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteLifecycleHookType = { ["LifecycleHookName"] = true, ["AutoScalingGroupName"] = true, nil }

function asserts.AssertDeleteLifecycleHookType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteLifecycleHookType to be of type 'table'")
	assert(struct["LifecycleHookName"], "Expected key LifecycleHookName to exist in table")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	if struct["LifecycleHookName"] then asserts.AssertAsciiStringMaxLen255(struct["LifecycleHookName"]) end
	if struct["AutoScalingGroupName"] then asserts.AssertResourceName(struct["AutoScalingGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteLifecycleHookType[k], "DeleteLifecycleHookType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteLifecycleHookType
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LifecycleHookName [AsciiStringMaxLen255] <p>The name of the lifecycle hook.</p>
-- * AutoScalingGroupName [ResourceName] <p>The name of the Auto Scaling group.</p>
-- Required key: LifecycleHookName
-- Required key: AutoScalingGroupName
-- @return DeleteLifecycleHookType structure as a key-value pair table
function M.DeleteLifecycleHookType(args)
	assert(args, "You must provide an argument table when creating DeleteLifecycleHookType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LifecycleHookName"] = args["LifecycleHookName"],
		["AutoScalingGroupName"] = args["AutoScalingGroupName"],
	}
	asserts.AssertDeleteLifecycleHookType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ProcessType = { ["ProcessName"] = true, nil }

function asserts.AssertProcessType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProcessType to be of type 'table'")
	assert(struct["ProcessName"], "Expected key ProcessName to exist in table")
	if struct["ProcessName"] then asserts.AssertXmlStringMaxLen255(struct["ProcessName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ProcessType[k], "ProcessType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProcessType
-- <p>Describes a process type.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/autoscaling/ec2/userguide/as-suspend-resume-processes.html#process-types">Scaling Processes</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProcessName [XmlStringMaxLen255] <p>One of the following processes:</p> <ul> <li> <p> <code>Launch</code> </p> </li> <li> <p> <code>Terminate</code> </p> </li> <li> <p> <code>AddToLoadBalancer</code> </p> </li> <li> <p> <code>AlarmNotification</code> </p> </li> <li> <p> <code>AZRebalance</code> </p> </li> <li> <p> <code>HealthCheck</code> </p> </li> <li> <p> <code>ReplaceUnhealthy</code> </p> </li> <li> <p> <code>ScheduledActions</code> </p> </li> </ul>
-- Required key: ProcessName
-- @return ProcessType structure as a key-value pair table
function M.ProcessType(args)
	assert(args, "You must provide an argument table when creating ProcessType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ProcessName"] = args["ProcessName"],
	}
	asserts.AssertProcessType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ProcessesType = { ["Processes"] = true, nil }

function asserts.AssertProcessesType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProcessesType to be of type 'table'")
	if struct["Processes"] then asserts.AssertProcesses(struct["Processes"]) end
	for k,_ in pairs(struct) do
		assert(keys.ProcessesType[k], "ProcessesType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProcessesType
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Processes [Processes] <p>The names of the process types.</p>
-- @return ProcessesType structure as a key-value pair table
function M.ProcessesType(args)
	assert(args, "You must provide an argument table when creating ProcessesType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Processes"] = args["Processes"],
	}
	asserts.AssertProcessesType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutNotificationConfigurationType = { ["AutoScalingGroupName"] = true, ["NotificationTypes"] = true, ["TopicARN"] = true, nil }

function asserts.AssertPutNotificationConfigurationType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutNotificationConfigurationType to be of type 'table'")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	assert(struct["TopicARN"], "Expected key TopicARN to exist in table")
	assert(struct["NotificationTypes"], "Expected key NotificationTypes to exist in table")
	if struct["AutoScalingGroupName"] then asserts.AssertResourceName(struct["AutoScalingGroupName"]) end
	if struct["NotificationTypes"] then asserts.AssertAutoScalingNotificationTypes(struct["NotificationTypes"]) end
	if struct["TopicARN"] then asserts.AssertResourceName(struct["TopicARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutNotificationConfigurationType[k], "PutNotificationConfigurationType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutNotificationConfigurationType
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AutoScalingGroupName [ResourceName] <p>The name of the Auto Scaling group.</p>
-- * NotificationTypes [AutoScalingNotificationTypes] <p>The type of event that will cause the notification to be sent. For details about notification types supported by Amazon EC2 Auto Scaling, see <a>DescribeAutoScalingNotificationTypes</a>.</p>
-- * TopicARN [ResourceName] <p>The Amazon Resource Name (ARN) of the Amazon Simple Notification Service (SNS) topic.</p>
-- Required key: AutoScalingGroupName
-- Required key: TopicARN
-- Required key: NotificationTypes
-- @return PutNotificationConfigurationType structure as a key-value pair table
function M.PutNotificationConfigurationType(args)
	assert(args, "You must provide an argument table when creating PutNotificationConfigurationType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AutoScalingGroupName"] = args["AutoScalingGroupName"],
		["NotificationTypes"] = args["NotificationTypes"],
		["TopicARN"] = args["TopicARN"],
	}
	asserts.AssertPutNotificationConfigurationType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeTagsType = { ["MaxRecords"] = true, ["NextToken"] = true, ["Filters"] = true, nil }

function asserts.AssertDescribeTagsType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTagsType to be of type 'table'")
	if struct["MaxRecords"] then asserts.AssertMaxRecords(struct["MaxRecords"]) end
	if struct["NextToken"] then asserts.AssertXmlString(struct["NextToken"]) end
	if struct["Filters"] then asserts.AssertFilters(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTagsType[k], "DescribeTagsType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTagsType
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MaxRecords [MaxRecords] <p>The maximum number of items to return with this call. The default value is 50 and the maximum value is 100.</p>
-- * NextToken [XmlString] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- * Filters [Filters] <p>A filter used to scope the tags to return.</p>
-- @return DescribeTagsType structure as a key-value pair table
function M.DescribeTagsType(args)
	assert(args, "You must provide an argument table when creating DescribeTagsType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MaxRecords"] = args["MaxRecords"],
		["NextToken"] = args["NextToken"],
		["Filters"] = args["Filters"],
	}
	asserts.AssertDescribeTagsType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EnterStandbyAnswer = { ["Activities"] = true, nil }

function asserts.AssertEnterStandbyAnswer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnterStandbyAnswer to be of type 'table'")
	if struct["Activities"] then asserts.AssertActivities(struct["Activities"]) end
	for k,_ in pairs(struct) do
		assert(keys.EnterStandbyAnswer[k], "EnterStandbyAnswer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnterStandbyAnswer
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Activities [Activities] <p>The activities related to moving instances into <code>Standby</code> mode.</p>
-- @return EnterStandbyAnswer structure as a key-value pair table
function M.EnterStandbyAnswer(args)
	assert(args, "You must provide an argument table when creating EnterStandbyAnswer")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Activities"] = args["Activities"],
	}
	asserts.AssertEnterStandbyAnswer(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ExitStandbyAnswer = { ["Activities"] = true, nil }

function asserts.AssertExitStandbyAnswer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExitStandbyAnswer to be of type 'table'")
	if struct["Activities"] then asserts.AssertActivities(struct["Activities"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExitStandbyAnswer[k], "ExitStandbyAnswer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExitStandbyAnswer
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Activities [Activities] <p>The activities related to moving instances out of <code>Standby</code> mode.</p>
-- @return ExitStandbyAnswer structure as a key-value pair table
function M.ExitStandbyAnswer(args)
	assert(args, "You must provide an argument table when creating ExitStandbyAnswer")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Activities"] = args["Activities"],
	}
	asserts.AssertExitStandbyAnswer(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeAdjustmentTypesAnswer = { ["AdjustmentTypes"] = true, nil }

function asserts.AssertDescribeAdjustmentTypesAnswer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAdjustmentTypesAnswer to be of type 'table'")
	if struct["AdjustmentTypes"] then asserts.AssertAdjustmentTypes(struct["AdjustmentTypes"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAdjustmentTypesAnswer[k], "DescribeAdjustmentTypesAnswer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAdjustmentTypesAnswer
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AdjustmentTypes [AdjustmentTypes] <p>The policy adjustment types.</p>
-- @return DescribeAdjustmentTypesAnswer structure as a key-value pair table
function M.DescribeAdjustmentTypesAnswer(args)
	assert(args, "You must provide an argument table when creating DescribeAdjustmentTypesAnswer")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AdjustmentTypes"] = args["AdjustmentTypes"],
	}
	asserts.AssertDescribeAdjustmentTypesAnswer(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AdjustmentType = { ["AdjustmentType"] = true, nil }

function asserts.AssertAdjustmentType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdjustmentType to be of type 'table'")
	if struct["AdjustmentType"] then asserts.AssertXmlStringMaxLen255(struct["AdjustmentType"]) end
	for k,_ in pairs(struct) do
		assert(keys.AdjustmentType[k], "AdjustmentType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdjustmentType
-- <p>Describes a policy adjustment type.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/autoscaling/ec2/DeveloperGuide/as-scale-based-on-demand.html">Dynamic Scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AdjustmentType [XmlStringMaxLen255] <p>The policy adjustment type. The valid values are <code>ChangeInCapacity</code>, <code>ExactCapacity</code>, and <code>PercentChangeInCapacity</code>.</p>
-- @return AdjustmentType structure as a key-value pair table
function M.AdjustmentType(args)
	assert(args, "You must provide an argument table when creating AdjustmentType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AdjustmentType"] = args["AdjustmentType"],
	}
	asserts.AssertAdjustmentType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisableMetricsCollectionQuery = { ["Metrics"] = true, ["AutoScalingGroupName"] = true, nil }

function asserts.AssertDisableMetricsCollectionQuery(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisableMetricsCollectionQuery to be of type 'table'")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	if struct["Metrics"] then asserts.AssertMetrics(struct["Metrics"]) end
	if struct["AutoScalingGroupName"] then asserts.AssertResourceName(struct["AutoScalingGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisableMetricsCollectionQuery[k], "DisableMetricsCollectionQuery contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisableMetricsCollectionQuery
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Metrics [Metrics] <p>One or more of the following metrics. If you omit this parameter, all metrics are disabled.</p> <ul> <li> <p> <code>GroupMinSize</code> </p> </li> <li> <p> <code>GroupMaxSize</code> </p> </li> <li> <p> <code>GroupDesiredCapacity</code> </p> </li> <li> <p> <code>GroupInServiceInstances</code> </p> </li> <li> <p> <code>GroupPendingInstances</code> </p> </li> <li> <p> <code>GroupStandbyInstances</code> </p> </li> <li> <p> <code>GroupTerminatingInstances</code> </p> </li> <li> <p> <code>GroupTotalInstances</code> </p> </li> </ul>
-- * AutoScalingGroupName [ResourceName] <p>The name of the Auto Scaling group.</p>
-- Required key: AutoScalingGroupName
-- @return DisableMetricsCollectionQuery structure as a key-value pair table
function M.DisableMetricsCollectionQuery(args)
	assert(args, "You must provide an argument table when creating DisableMetricsCollectionQuery")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Metrics"] = args["Metrics"],
		["AutoScalingGroupName"] = args["AutoScalingGroupName"],
	}
	asserts.AssertDisableMetricsCollectionQuery(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NotificationConfiguration = { ["AutoScalingGroupName"] = true, ["NotificationType"] = true, ["TopicARN"] = true, nil }

function asserts.AssertNotificationConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotificationConfiguration to be of type 'table'")
	if struct["AutoScalingGroupName"] then asserts.AssertResourceName(struct["AutoScalingGroupName"]) end
	if struct["NotificationType"] then asserts.AssertXmlStringMaxLen255(struct["NotificationType"]) end
	if struct["TopicARN"] then asserts.AssertResourceName(struct["TopicARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.NotificationConfiguration[k], "NotificationConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotificationConfiguration
-- <p>Describes a notification.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AutoScalingGroupName [ResourceName] <p>The name of the Auto Scaling group.</p>
-- * NotificationType [XmlStringMaxLen255] <p>One of the following event notification types:</p> <ul> <li> <p> <code>autoscaling:EC2_INSTANCE_LAUNCH</code> </p> </li> <li> <p> <code>autoscaling:EC2_INSTANCE_LAUNCH_ERROR</code> </p> </li> <li> <p> <code>autoscaling:EC2_INSTANCE_TERMINATE</code> </p> </li> <li> <p> <code>autoscaling:EC2_INSTANCE_TERMINATE_ERROR</code> </p> </li> <li> <p> <code>autoscaling:TEST_NOTIFICATION</code> </p> </li> </ul>
-- * TopicARN [ResourceName] <p>The Amazon Resource Name (ARN) of the Amazon Simple Notification Service (SNS) topic.</p>
-- @return NotificationConfiguration structure as a key-value pair table
function M.NotificationConfiguration(args)
	assert(args, "You must provide an argument table when creating NotificationConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AutoScalingGroupName"] = args["AutoScalingGroupName"],
		["NotificationType"] = args["NotificationType"],
		["TopicARN"] = args["TopicARN"],
	}
	asserts.AssertNotificationConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LaunchConfigurationNamesType = { ["MaxRecords"] = true, ["LaunchConfigurationNames"] = true, ["NextToken"] = true, nil }

function asserts.AssertLaunchConfigurationNamesType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LaunchConfigurationNamesType to be of type 'table'")
	if struct["MaxRecords"] then asserts.AssertMaxRecords(struct["MaxRecords"]) end
	if struct["LaunchConfigurationNames"] then asserts.AssertLaunchConfigurationNames(struct["LaunchConfigurationNames"]) end
	if struct["NextToken"] then asserts.AssertXmlString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.LaunchConfigurationNamesType[k], "LaunchConfigurationNamesType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LaunchConfigurationNamesType
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MaxRecords [MaxRecords] <p>The maximum number of items to return with this call. The default value is 50 and the maximum value is 100.</p>
-- * LaunchConfigurationNames [LaunchConfigurationNames] <p>The launch configuration names. If you omit this parameter, all launch configurations are described.</p>
-- * NextToken [XmlString] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- @return LaunchConfigurationNamesType structure as a key-value pair table
function M.LaunchConfigurationNamesType(args)
	assert(args, "You must provide an argument table when creating LaunchConfigurationNamesType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MaxRecords"] = args["MaxRecords"],
		["LaunchConfigurationNames"] = args["LaunchConfigurationNames"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertLaunchConfigurationNamesType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutScalingPolicyType = { ["PolicyName"] = true, ["EstimatedInstanceWarmup"] = true, ["MinAdjustmentStep"] = true, ["MinAdjustmentMagnitude"] = true, ["MetricAggregationType"] = true, ["AutoScalingGroupName"] = true, ["Cooldown"] = true, ["PolicyType"] = true, ["StepAdjustments"] = true, ["AdjustmentType"] = true, ["ScalingAdjustment"] = true, ["TargetTrackingConfiguration"] = true, nil }

function asserts.AssertPutScalingPolicyType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutScalingPolicyType to be of type 'table'")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	assert(struct["PolicyName"], "Expected key PolicyName to exist in table")
	if struct["PolicyName"] then asserts.AssertXmlStringMaxLen255(struct["PolicyName"]) end
	if struct["EstimatedInstanceWarmup"] then asserts.AssertEstimatedInstanceWarmup(struct["EstimatedInstanceWarmup"]) end
	if struct["MinAdjustmentStep"] then asserts.AssertMinAdjustmentStep(struct["MinAdjustmentStep"]) end
	if struct["MinAdjustmentMagnitude"] then asserts.AssertMinAdjustmentMagnitude(struct["MinAdjustmentMagnitude"]) end
	if struct["MetricAggregationType"] then asserts.AssertXmlStringMaxLen32(struct["MetricAggregationType"]) end
	if struct["AutoScalingGroupName"] then asserts.AssertResourceName(struct["AutoScalingGroupName"]) end
	if struct["Cooldown"] then asserts.AssertCooldown(struct["Cooldown"]) end
	if struct["PolicyType"] then asserts.AssertXmlStringMaxLen64(struct["PolicyType"]) end
	if struct["StepAdjustments"] then asserts.AssertStepAdjustments(struct["StepAdjustments"]) end
	if struct["AdjustmentType"] then asserts.AssertXmlStringMaxLen255(struct["AdjustmentType"]) end
	if struct["ScalingAdjustment"] then asserts.AssertPolicyIncrement(struct["ScalingAdjustment"]) end
	if struct["TargetTrackingConfiguration"] then asserts.AssertTargetTrackingConfiguration(struct["TargetTrackingConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutScalingPolicyType[k], "PutScalingPolicyType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutScalingPolicyType
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyName [XmlStringMaxLen255] <p>The name of the policy.</p>
-- * EstimatedInstanceWarmup [EstimatedInstanceWarmup] <p>The estimated time, in seconds, until a newly launched instance can contribute to the CloudWatch metrics. The default is to use the value specified for the default cooldown period for the group.</p> <p>This parameter is supported if the policy type is <code>StepScaling</code> or <code>TargetTrackingScaling</code>.</p>
-- * MinAdjustmentStep [MinAdjustmentStep] <p>Available for backward compatibility. Use <code>MinAdjustmentMagnitude</code> instead.</p>
-- * MinAdjustmentMagnitude [MinAdjustmentMagnitude] <p>The minimum number of instances to scale. If the value of <code>AdjustmentType</code> is <code>PercentChangeInCapacity</code>, the scaling policy changes the <code>DesiredCapacity</code> of the Auto Scaling group by at least this many instances. Otherwise, the error is <code>ValidationError</code>.</p> <p>This parameter is supported if the policy type is <code>SimpleScaling</code> or <code>StepScaling</code>.</p>
-- * MetricAggregationType [XmlStringMaxLen32] <p>The aggregation type for the CloudWatch metrics. The valid values are <code>Minimum</code>, <code>Maximum</code>, and <code>Average</code>. If the aggregation type is null, the value is treated as <code>Average</code>.</p> <p>This parameter is supported if the policy type is <code>StepScaling</code>.</p>
-- * AutoScalingGroupName [ResourceName] <p>The name of the Auto Scaling group.</p>
-- * Cooldown [Cooldown] <p>The amount of time, in seconds, after a scaling activity completes and before the next scaling activity can start. If this parameter is not specified, the default cooldown period for the group applies.</p> <p>This parameter is supported if the policy type is <code>SimpleScaling</code>.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/autoscaling/ec2/userguide/Cooldown.html">Scaling Cooldowns</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
-- * PolicyType [XmlStringMaxLen64] <p>The policy type. The valid values are <code>SimpleScaling</code>, <code>StepScaling</code>, and <code>TargetTrackingScaling</code>. If the policy type is null, the value is treated as <code>SimpleScaling</code>.</p>
-- * StepAdjustments [StepAdjustments] <p>A set of adjustments that enable you to scale based on the size of the alarm breach.</p> <p>This parameter is required if the policy type is <code>StepScaling</code> and not supported otherwise.</p>
-- * AdjustmentType [XmlStringMaxLen255] <p>The adjustment type. The valid values are <code>ChangeInCapacity</code>, <code>ExactCapacity</code>, and <code>PercentChangeInCapacity</code>.</p> <p>This parameter is supported if the policy type is <code>SimpleScaling</code> or <code>StepScaling</code>.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scale-based-on-demand.html">Dynamic Scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
-- * ScalingAdjustment [PolicyIncrement] <p>The amount by which to scale, based on the specified adjustment type. A positive value adds to the current capacity while a negative number removes from the current capacity.</p> <p>This parameter is required if the policy type is <code>SimpleScaling</code> and not supported otherwise.</p>
-- * TargetTrackingConfiguration [TargetTrackingConfiguration] <p>A target tracking policy.</p> <p>This parameter is required if the policy type is <code>TargetTrackingScaling</code> and not supported otherwise.</p>
-- Required key: AutoScalingGroupName
-- Required key: PolicyName
-- @return PutScalingPolicyType structure as a key-value pair table
function M.PutScalingPolicyType(args)
	assert(args, "You must provide an argument table when creating PutScalingPolicyType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyName"] = args["PolicyName"],
		["EstimatedInstanceWarmup"] = args["EstimatedInstanceWarmup"],
		["MinAdjustmentStep"] = args["MinAdjustmentStep"],
		["MinAdjustmentMagnitude"] = args["MinAdjustmentMagnitude"],
		["MetricAggregationType"] = args["MetricAggregationType"],
		["AutoScalingGroupName"] = args["AutoScalingGroupName"],
		["Cooldown"] = args["Cooldown"],
		["PolicyType"] = args["PolicyType"],
		["StepAdjustments"] = args["StepAdjustments"],
		["AdjustmentType"] = args["AdjustmentType"],
		["ScalingAdjustment"] = args["ScalingAdjustment"],
		["TargetTrackingConfiguration"] = args["TargetTrackingConfiguration"],
	}
	asserts.AssertPutScalingPolicyType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InstanceMonitoring = { ["Enabled"] = true, nil }

function asserts.AssertInstanceMonitoring(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceMonitoring to be of type 'table'")
	if struct["Enabled"] then asserts.AssertMonitoringEnabled(struct["Enabled"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstanceMonitoring[k], "InstanceMonitoring contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceMonitoring
-- <p>Describes whether detailed monitoring is enabled for the Auto Scaling instances.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Enabled [MonitoringEnabled] <p>If <code>true</code>, detailed monitoring is enabled. Otherwise, basic monitoring is enabled.</p>
-- @return InstanceMonitoring structure as a key-value pair table
function M.InstanceMonitoring(args)
	assert(args, "You must provide an argument table when creating InstanceMonitoring")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Enabled"] = args["Enabled"],
	}
	asserts.AssertInstanceMonitoring(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Instance = { ["ProtectedFromScaleIn"] = true, ["AvailabilityZone"] = true, ["LaunchTemplate"] = true, ["InstanceId"] = true, ["HealthStatus"] = true, ["LifecycleState"] = true, ["LaunchConfigurationName"] = true, nil }

function asserts.AssertInstance(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Instance to be of type 'table'")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	assert(struct["AvailabilityZone"], "Expected key AvailabilityZone to exist in table")
	assert(struct["LifecycleState"], "Expected key LifecycleState to exist in table")
	assert(struct["HealthStatus"], "Expected key HealthStatus to exist in table")
	assert(struct["ProtectedFromScaleIn"], "Expected key ProtectedFromScaleIn to exist in table")
	if struct["ProtectedFromScaleIn"] then asserts.AssertInstanceProtected(struct["ProtectedFromScaleIn"]) end
	if struct["AvailabilityZone"] then asserts.AssertXmlStringMaxLen255(struct["AvailabilityZone"]) end
	if struct["LaunchTemplate"] then asserts.AssertLaunchTemplateSpecification(struct["LaunchTemplate"]) end
	if struct["InstanceId"] then asserts.AssertXmlStringMaxLen19(struct["InstanceId"]) end
	if struct["HealthStatus"] then asserts.AssertXmlStringMaxLen32(struct["HealthStatus"]) end
	if struct["LifecycleState"] then asserts.AssertLifecycleState(struct["LifecycleState"]) end
	if struct["LaunchConfigurationName"] then asserts.AssertXmlStringMaxLen255(struct["LaunchConfigurationName"]) end
	for k,_ in pairs(struct) do
		assert(keys.Instance[k], "Instance contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Instance
-- <p>Describes an EC2 instance.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProtectedFromScaleIn [InstanceProtected] <p>Indicates whether the instance is protected from termination by Amazon EC2 Auto Scaling when scaling in.</p>
-- * AvailabilityZone [XmlStringMaxLen255] <p>The Availability Zone in which the instance is running.</p>
-- * LaunchTemplate [LaunchTemplateSpecification] <p>The launch template for the instance.</p>
-- * InstanceId [XmlStringMaxLen19] <p>The ID of the instance.</p>
-- * HealthStatus [XmlStringMaxLen32] <p>The last reported health status of the instance. "Healthy" means that the instance is healthy and should remain in service. "Unhealthy" means that the instance is unhealthy and Amazon EC2 Auto Scaling should terminate and replace it.</p>
-- * LifecycleState [LifecycleState] <p>A description of the current lifecycle state. Note that the <code>Quarantined</code> state is not used.</p>
-- * LaunchConfigurationName [XmlStringMaxLen255] <p>The launch configuration associated with the instance.</p>
-- Required key: InstanceId
-- Required key: AvailabilityZone
-- Required key: LifecycleState
-- Required key: HealthStatus
-- Required key: ProtectedFromScaleIn
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
		["ProtectedFromScaleIn"] = args["ProtectedFromScaleIn"],
		["AvailabilityZone"] = args["AvailabilityZone"],
		["LaunchTemplate"] = args["LaunchTemplate"],
		["InstanceId"] = args["InstanceId"],
		["HealthStatus"] = args["HealthStatus"],
		["LifecycleState"] = args["LifecycleState"],
		["LaunchConfigurationName"] = args["LaunchConfigurationName"],
	}
	asserts.AssertInstance(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DetachLoadBalancersType = { ["AutoScalingGroupName"] = true, ["LoadBalancerNames"] = true, nil }

function asserts.AssertDetachLoadBalancersType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetachLoadBalancersType to be of type 'table'")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	assert(struct["LoadBalancerNames"], "Expected key LoadBalancerNames to exist in table")
	if struct["AutoScalingGroupName"] then asserts.AssertResourceName(struct["AutoScalingGroupName"]) end
	if struct["LoadBalancerNames"] then asserts.AssertLoadBalancerNames(struct["LoadBalancerNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.DetachLoadBalancersType[k], "DetachLoadBalancersType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetachLoadBalancersType
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AutoScalingGroupName [ResourceName] <p>The name of the Auto Scaling group.</p>
-- * LoadBalancerNames [LoadBalancerNames] <p>The names of the load balancers. You can specify up to 10 load balancers.</p>
-- Required key: AutoScalingGroupName
-- Required key: LoadBalancerNames
-- @return DetachLoadBalancersType structure as a key-value pair table
function M.DetachLoadBalancersType(args)
	assert(args, "You must provide an argument table when creating DetachLoadBalancersType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AutoScalingGroupName"] = args["AutoScalingGroupName"],
		["LoadBalancerNames"] = args["LoadBalancerNames"],
	}
	asserts.AssertDetachLoadBalancersType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateLaunchConfigurationType = { ["UserData"] = true, ["IamInstanceProfile"] = true, ["ClassicLinkVPCId"] = true, ["InstanceId"] = true, ["PlacementTenancy"] = true, ["AssociatePublicIpAddress"] = true, ["InstanceMonitoring"] = true, ["ClassicLinkVPCSecurityGroups"] = true, ["BlockDeviceMappings"] = true, ["KeyName"] = true, ["SecurityGroups"] = true, ["EbsOptimized"] = true, ["LaunchConfigurationName"] = true, ["KernelId"] = true, ["RamdiskId"] = true, ["ImageId"] = true, ["InstanceType"] = true, ["SpotPrice"] = true, nil }

function asserts.AssertCreateLaunchConfigurationType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateLaunchConfigurationType to be of type 'table'")
	assert(struct["LaunchConfigurationName"], "Expected key LaunchConfigurationName to exist in table")
	if struct["UserData"] then asserts.AssertXmlStringUserData(struct["UserData"]) end
	if struct["IamInstanceProfile"] then asserts.AssertXmlStringMaxLen1600(struct["IamInstanceProfile"]) end
	if struct["ClassicLinkVPCId"] then asserts.AssertXmlStringMaxLen255(struct["ClassicLinkVPCId"]) end
	if struct["InstanceId"] then asserts.AssertXmlStringMaxLen19(struct["InstanceId"]) end
	if struct["PlacementTenancy"] then asserts.AssertXmlStringMaxLen64(struct["PlacementTenancy"]) end
	if struct["AssociatePublicIpAddress"] then asserts.AssertAssociatePublicIpAddress(struct["AssociatePublicIpAddress"]) end
	if struct["InstanceMonitoring"] then asserts.AssertInstanceMonitoring(struct["InstanceMonitoring"]) end
	if struct["ClassicLinkVPCSecurityGroups"] then asserts.AssertClassicLinkVPCSecurityGroups(struct["ClassicLinkVPCSecurityGroups"]) end
	if struct["BlockDeviceMappings"] then asserts.AssertBlockDeviceMappings(struct["BlockDeviceMappings"]) end
	if struct["KeyName"] then asserts.AssertXmlStringMaxLen255(struct["KeyName"]) end
	if struct["SecurityGroups"] then asserts.AssertSecurityGroups(struct["SecurityGroups"]) end
	if struct["EbsOptimized"] then asserts.AssertEbsOptimized(struct["EbsOptimized"]) end
	if struct["LaunchConfigurationName"] then asserts.AssertXmlStringMaxLen255(struct["LaunchConfigurationName"]) end
	if struct["KernelId"] then asserts.AssertXmlStringMaxLen255(struct["KernelId"]) end
	if struct["RamdiskId"] then asserts.AssertXmlStringMaxLen255(struct["RamdiskId"]) end
	if struct["ImageId"] then asserts.AssertXmlStringMaxLen255(struct["ImageId"]) end
	if struct["InstanceType"] then asserts.AssertXmlStringMaxLen255(struct["InstanceType"]) end
	if struct["SpotPrice"] then asserts.AssertSpotPrice(struct["SpotPrice"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateLaunchConfigurationType[k], "CreateLaunchConfigurationType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateLaunchConfigurationType
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserData [XmlStringUserData] <p>The user data to make available to the launched EC2 instances. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html">Instance Metadata and User Data</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
-- * IamInstanceProfile [XmlStringMaxLen1600] <p>The name or the Amazon Resource Name (ARN) of the instance profile associated with the IAM role for the instance.</p> <p>EC2 instances launched with an IAM role will automatically have AWS security credentials available. You can use IAM roles with Amazon EC2 Auto Scaling to automatically enable applications running on your EC2 instances to securely access other AWS resources. For more information, see <a href="http://docs.aws.amazon.com/autoscaling/ec2/userguide/us-iam-role.html">Launch Auto Scaling Instances with an IAM Role</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
-- * ClassicLinkVPCId [XmlStringMaxLen255] <p>The ID of a ClassicLink-enabled VPC to link your EC2-Classic instances to. This parameter is supported only if you are launching EC2-Classic instances. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html">ClassicLink</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
-- * InstanceId [XmlStringMaxLen19] <p>The ID of the instance to use to create the launch configuration. The new launch configuration derives attributes from the instance, with the exception of the block device mapping.</p> <p>If you do not specify <code>InstanceId</code>, you must specify both <code>ImageId</code> and <code>InstanceType</code>.</p> <p>To create a launch configuration with a block device mapping or override any other instance attributes, specify them as part of the same request.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/autoscaling/ec2/userguide/create-lc-with-instanceID.html">Create a Launch Configuration Using an EC2 Instance</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
-- * PlacementTenancy [XmlStringMaxLen64] <p>The tenancy of the instance. An instance with a tenancy of <code>dedicated</code> runs on single-tenant hardware and can only be launched into a VPC.</p> <p>You must set the value of this parameter to <code>dedicated</code> if want to launch Dedicated Instances into a shared tenancy VPC (VPC with instance placement tenancy attribute set to <code>default</code>).</p> <p>If you specify this parameter, be sure to specify at least one subnet when you create your group.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html">Launching Auto Scaling Instances in a VPC</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p> <p>Valid values: <code>default</code> | <code>dedicated</code> </p>
-- * AssociatePublicIpAddress [AssociatePublicIpAddress] <p>Used for groups that launch instances into a virtual private cloud (VPC). Specifies whether to assign a public IP address to each instance. For more information, see <a href="http://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html">Launching Auto Scaling Instances in a VPC</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p> <p>If you specify this parameter, be sure to specify at least one subnet when you create your group.</p> <p>Default: If the instance is launched into a default subnet, the default is to assign a public IP address. If the instance is launched into a nondefault subnet, the default is not to assign a public IP address.</p>
-- * InstanceMonitoring [InstanceMonitoring] <p>Enables detailed monitoring (<code>true</code>) or basic monitoring (<code>false</code>) for the Auto Scaling instances. The default is <code>true</code>.</p>
-- * ClassicLinkVPCSecurityGroups [ClassicLinkVPCSecurityGroups] <p>The IDs of one or more security groups for the specified ClassicLink-enabled VPC. This parameter is required if you specify a ClassicLink-enabled VPC, and is not supported otherwise. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html">ClassicLink</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
-- * BlockDeviceMappings [BlockDeviceMappings] <p>One or more mappings that specify how block devices are exposed to the instance. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html">Block Device Mapping</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
-- * KeyName [XmlStringMaxLen255] <p>The name of the key pair. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html">Amazon EC2 Key Pairs</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
-- * SecurityGroups [SecurityGroups] <p>One or more security groups with which to associate the instances.</p> <p>If your instances are launched in EC2-Classic, you can either specify security group names or the security group IDs. For more information about security groups for EC2-Classic, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html">Amazon EC2 Security Groups</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> <p>If your instances are launched into a VPC, specify security group IDs. For more information, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html">Security Groups for Your VPC</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>
-- * EbsOptimized [EbsOptimized] <p>Indicates whether the instance is optimized for Amazon EBS I/O. By default, the instance is not optimized for EBS I/O. The optimization provides dedicated throughput to Amazon EBS and an optimized configuration stack to provide optimal I/O performance. This optimization is not available with all instance types. Additional usage charges apply. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSOptimized.html">Amazon EBS-Optimized Instances</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
-- * LaunchConfigurationName [XmlStringMaxLen255] <p>The name of the launch configuration. This name must be unique within the scope of your AWS account.</p>
-- * KernelId [XmlStringMaxLen255] <p>The ID of the kernel associated with the AMI.</p>
-- * RamdiskId [XmlStringMaxLen255] <p>The ID of the RAM disk associated with the AMI.</p>
-- * ImageId [XmlStringMaxLen255] <p>The ID of the Amazon Machine Image (AMI) to use to launch your EC2 instances.</p> <p>If you do not specify <code>InstanceId</code>, you must specify <code>ImageId</code>.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/finding-an-ami.html">Finding an AMI</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
-- * InstanceType [XmlStringMaxLen255] <p>The instance type of the EC2 instance.</p> <p>If you do not specify <code>InstanceId</code>, you must specify <code>InstanceType</code>.</p> <p>For information about available instance types, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#AvailableInstanceTypes">Available Instance Types</a> in the <i>Amazon Elastic Compute Cloud User Guide.</i> </p>
-- * SpotPrice [SpotPrice] <p>The maximum hourly price to be paid for any Spot Instance launched to fulfill the request. Spot Instances are launched when the price you specify exceeds the current Spot market price. For more information, see <a href="http://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-launch-spot-instances.html">Launching Spot Instances in Your Auto Scaling Group</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
-- Required key: LaunchConfigurationName
-- @return CreateLaunchConfigurationType structure as a key-value pair table
function M.CreateLaunchConfigurationType(args)
	assert(args, "You must provide an argument table when creating CreateLaunchConfigurationType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserData"] = args["UserData"],
		["IamInstanceProfile"] = args["IamInstanceProfile"],
		["ClassicLinkVPCId"] = args["ClassicLinkVPCId"],
		["InstanceId"] = args["InstanceId"],
		["PlacementTenancy"] = args["PlacementTenancy"],
		["AssociatePublicIpAddress"] = args["AssociatePublicIpAddress"],
		["InstanceMonitoring"] = args["InstanceMonitoring"],
		["ClassicLinkVPCSecurityGroups"] = args["ClassicLinkVPCSecurityGroups"],
		["BlockDeviceMappings"] = args["BlockDeviceMappings"],
		["KeyName"] = args["KeyName"],
		["SecurityGroups"] = args["SecurityGroups"],
		["EbsOptimized"] = args["EbsOptimized"],
		["LaunchConfigurationName"] = args["LaunchConfigurationName"],
		["KernelId"] = args["KernelId"],
		["RamdiskId"] = args["RamdiskId"],
		["ImageId"] = args["ImageId"],
		["InstanceType"] = args["InstanceType"],
		["SpotPrice"] = args["SpotPrice"],
	}
	asserts.AssertCreateLaunchConfigurationType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SetInstanceProtectionQuery = { ["ProtectedFromScaleIn"] = true, ["AutoScalingGroupName"] = true, ["InstanceIds"] = true, nil }

function asserts.AssertSetInstanceProtectionQuery(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetInstanceProtectionQuery to be of type 'table'")
	assert(struct["InstanceIds"], "Expected key InstanceIds to exist in table")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	assert(struct["ProtectedFromScaleIn"], "Expected key ProtectedFromScaleIn to exist in table")
	if struct["ProtectedFromScaleIn"] then asserts.AssertProtectedFromScaleIn(struct["ProtectedFromScaleIn"]) end
	if struct["AutoScalingGroupName"] then asserts.AssertResourceName(struct["AutoScalingGroupName"]) end
	if struct["InstanceIds"] then asserts.AssertInstanceIds(struct["InstanceIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetInstanceProtectionQuery[k], "SetInstanceProtectionQuery contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetInstanceProtectionQuery
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProtectedFromScaleIn [ProtectedFromScaleIn] <p>Indicates whether the instance is protected from termination by Amazon EC2 Auto Scaling when scaling in.</p>
-- * AutoScalingGroupName [ResourceName] <p>The name of the Auto Scaling group.</p>
-- * InstanceIds [InstanceIds] <p>One or more instance IDs.</p>
-- Required key: InstanceIds
-- Required key: AutoScalingGroupName
-- Required key: ProtectedFromScaleIn
-- @return SetInstanceProtectionQuery structure as a key-value pair table
function M.SetInstanceProtectionQuery(args)
	assert(args, "You must provide an argument table when creating SetInstanceProtectionQuery")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ProtectedFromScaleIn"] = args["ProtectedFromScaleIn"],
		["AutoScalingGroupName"] = args["AutoScalingGroupName"],
		["InstanceIds"] = args["InstanceIds"],
	}
	asserts.AssertSetInstanceProtectionQuery(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TagsType = { ["NextToken"] = true, ["Tags"] = true, nil }

function asserts.AssertTagsType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagsType to be of type 'table'")
	if struct["NextToken"] then asserts.AssertXmlString(struct["NextToken"]) end
	if struct["Tags"] then asserts.AssertTagDescriptionList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.TagsType[k], "TagsType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagsType
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [XmlString] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
-- * Tags [TagDescriptionList] <p>One or more tags.</p>
-- @return TagsType structure as a key-value pair table
function M.TagsType(args)
	assert(args, "You must provide an argument table when creating TagsType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertTagsType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ServiceLinkedRoleFailure = { ["message"] = true, nil }

function asserts.AssertServiceLinkedRoleFailure(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceLinkedRoleFailure to be of type 'table'")
	if struct["message"] then asserts.AssertXmlStringMaxLen255(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ServiceLinkedRoleFailure[k], "ServiceLinkedRoleFailure contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceLinkedRoleFailure
-- <p>The service-linked role is not yet ready for use.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [XmlStringMaxLen255] 
-- @return ServiceLinkedRoleFailure structure as a key-value pair table
function M.ServiceLinkedRoleFailure(args)
	assert(args, "You must provide an argument table when creating ServiceLinkedRoleFailure")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertServiceLinkedRoleFailure(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LaunchConfigurationsType = { ["NextToken"] = true, ["LaunchConfigurations"] = true, nil }

function asserts.AssertLaunchConfigurationsType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LaunchConfigurationsType to be of type 'table'")
	assert(struct["LaunchConfigurations"], "Expected key LaunchConfigurations to exist in table")
	if struct["NextToken"] then asserts.AssertXmlString(struct["NextToken"]) end
	if struct["LaunchConfigurations"] then asserts.AssertLaunchConfigurations(struct["LaunchConfigurations"]) end
	for k,_ in pairs(struct) do
		assert(keys.LaunchConfigurationsType[k], "LaunchConfigurationsType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LaunchConfigurationsType
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [XmlString] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
-- * LaunchConfigurations [LaunchConfigurations] <p>The launch configurations.</p>
-- Required key: LaunchConfigurations
-- @return LaunchConfigurationsType structure as a key-value pair table
function M.LaunchConfigurationsType(args)
	assert(args, "You must provide an argument table when creating LaunchConfigurationsType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["LaunchConfigurations"] = args["LaunchConfigurations"],
	}
	asserts.AssertLaunchConfigurationsType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SuspendedProcess = { ["ProcessName"] = true, ["SuspensionReason"] = true, nil }

function asserts.AssertSuspendedProcess(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SuspendedProcess to be of type 'table'")
	if struct["ProcessName"] then asserts.AssertXmlStringMaxLen255(struct["ProcessName"]) end
	if struct["SuspensionReason"] then asserts.AssertXmlStringMaxLen255(struct["SuspensionReason"]) end
	for k,_ in pairs(struct) do
		assert(keys.SuspendedProcess[k], "SuspendedProcess contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SuspendedProcess
-- <p>Describes an automatic scaling process that has been suspended. For more information, see <a>ProcessType</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProcessName [XmlStringMaxLen255] <p>The name of the suspended process.</p>
-- * SuspensionReason [XmlStringMaxLen255] <p>The reason that the process was suspended.</p>
-- @return SuspendedProcess structure as a key-value pair table
function M.SuspendedProcess(args)
	assert(args, "You must provide an argument table when creating SuspendedProcess")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ProcessName"] = args["ProcessName"],
		["SuspensionReason"] = args["SuspensionReason"],
	}
	asserts.AssertSuspendedProcess(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LimitExceededFault = { ["message"] = true, nil }

function asserts.AssertLimitExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededFault to be of type 'table'")
	if struct["message"] then asserts.AssertXmlStringMaxLen255(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.LimitExceededFault[k], "LimitExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededFault
-- <p>You have already reached a limit for your Auto Scaling resources (for example, groups, launch configurations, or lifecycle hooks). For more information, see <a>DescribeAccountLimits</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [XmlStringMaxLen255] <p/>
-- @return LimitExceededFault structure as a key-value pair table
function M.LimitExceededFault(args)
	assert(args, "You must provide an argument table when creating LimitExceededFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertLimitExceededFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchPutScheduledUpdateGroupActionAnswer = { ["FailedScheduledUpdateGroupActions"] = true, nil }

function asserts.AssertBatchPutScheduledUpdateGroupActionAnswer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchPutScheduledUpdateGroupActionAnswer to be of type 'table'")
	if struct["FailedScheduledUpdateGroupActions"] then asserts.AssertFailedScheduledUpdateGroupActionRequests(struct["FailedScheduledUpdateGroupActions"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchPutScheduledUpdateGroupActionAnswer[k], "BatchPutScheduledUpdateGroupActionAnswer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchPutScheduledUpdateGroupActionAnswer
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FailedScheduledUpdateGroupActions [FailedScheduledUpdateGroupActionRequests] <p>The names of the scheduled actions that could not be created or updated, including an error message.</p>
-- @return BatchPutScheduledUpdateGroupActionAnswer structure as a key-value pair table
function M.BatchPutScheduledUpdateGroupActionAnswer(args)
	assert(args, "You must provide an argument table when creating BatchPutScheduledUpdateGroupActionAnswer")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FailedScheduledUpdateGroupActions"] = args["FailedScheduledUpdateGroupActions"],
	}
	asserts.AssertBatchPutScheduledUpdateGroupActionAnswer(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PolicyARNType = { ["Alarms"] = true, ["PolicyARN"] = true, nil }

function asserts.AssertPolicyARNType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PolicyARNType to be of type 'table'")
	if struct["Alarms"] then asserts.AssertAlarms(struct["Alarms"]) end
	if struct["PolicyARN"] then asserts.AssertResourceName(struct["PolicyARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.PolicyARNType[k], "PolicyARNType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PolicyARNType
-- <p>Contains the output of PutScalingPolicy.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Alarms [Alarms] <p>The CloudWatch alarms created for the target tracking policy.</p>
-- * PolicyARN [ResourceName] <p>The Amazon Resource Name (ARN) of the policy.</p>
-- @return PolicyARNType structure as a key-value pair table
function M.PolicyARNType(args)
	assert(args, "You must provide an argument table when creating PolicyARNType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Alarms"] = args["Alarms"],
		["PolicyARN"] = args["PolicyARN"],
	}
	asserts.AssertPolicyARNType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateAutoScalingGroupType = { ["HealthCheckGracePeriod"] = true, ["PlacementGroup"] = true, ["DesiredCapacity"] = true, ["ServiceLinkedRoleARN"] = true, ["TerminationPolicies"] = true, ["AutoScalingGroupName"] = true, ["DefaultCooldown"] = true, ["MinSize"] = true, ["MaxSize"] = true, ["VPCZoneIdentifier"] = true, ["LaunchConfigurationName"] = true, ["AvailabilityZones"] = true, ["HealthCheckType"] = true, ["NewInstancesProtectedFromScaleIn"] = true, ["LaunchTemplate"] = true, nil }

function asserts.AssertUpdateAutoScalingGroupType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateAutoScalingGroupType to be of type 'table'")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	if struct["HealthCheckGracePeriod"] then asserts.AssertHealthCheckGracePeriod(struct["HealthCheckGracePeriod"]) end
	if struct["PlacementGroup"] then asserts.AssertXmlStringMaxLen255(struct["PlacementGroup"]) end
	if struct["DesiredCapacity"] then asserts.AssertAutoScalingGroupDesiredCapacity(struct["DesiredCapacity"]) end
	if struct["ServiceLinkedRoleARN"] then asserts.AssertResourceName(struct["ServiceLinkedRoleARN"]) end
	if struct["TerminationPolicies"] then asserts.AssertTerminationPolicies(struct["TerminationPolicies"]) end
	if struct["AutoScalingGroupName"] then asserts.AssertResourceName(struct["AutoScalingGroupName"]) end
	if struct["DefaultCooldown"] then asserts.AssertCooldown(struct["DefaultCooldown"]) end
	if struct["MinSize"] then asserts.AssertAutoScalingGroupMinSize(struct["MinSize"]) end
	if struct["MaxSize"] then asserts.AssertAutoScalingGroupMaxSize(struct["MaxSize"]) end
	if struct["VPCZoneIdentifier"] then asserts.AssertXmlStringMaxLen2047(struct["VPCZoneIdentifier"]) end
	if struct["LaunchConfigurationName"] then asserts.AssertResourceName(struct["LaunchConfigurationName"]) end
	if struct["AvailabilityZones"] then asserts.AssertAvailabilityZones(struct["AvailabilityZones"]) end
	if struct["HealthCheckType"] then asserts.AssertXmlStringMaxLen32(struct["HealthCheckType"]) end
	if struct["NewInstancesProtectedFromScaleIn"] then asserts.AssertInstanceProtected(struct["NewInstancesProtectedFromScaleIn"]) end
	if struct["LaunchTemplate"] then asserts.AssertLaunchTemplateSpecification(struct["LaunchTemplate"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateAutoScalingGroupType[k], "UpdateAutoScalingGroupType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateAutoScalingGroupType
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HealthCheckGracePeriod [HealthCheckGracePeriod] <p>The amount of time, in seconds, that Amazon EC2 Auto Scaling waits before checking the health status of an EC2 instance that has come into service. The default is 0.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/autoscaling/ec2/userguide/healthcheck.html">Health Checks</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
-- * PlacementGroup [XmlStringMaxLen255] <p>The name of the placement group into which you'll launch your instances, if any. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html">Placement Groups</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
-- * DesiredCapacity [AutoScalingGroupDesiredCapacity] <p>The number of EC2 instances that should be running in the Auto Scaling group. This number must be greater than or equal to the minimum size of the group and less than or equal to the maximum size of the group.</p>
-- * ServiceLinkedRoleARN [ResourceName] <p>The Amazon Resource Name (ARN) of the service-linked role that the Auto Scaling group uses to call other AWS services on your behalf.</p>
-- * TerminationPolicies [TerminationPolicies] <p>A standalone termination policy or a list of termination policies used to select the instance to terminate. The policies are executed in the order that they are listed.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-termination.html">Controlling Which Instances Auto Scaling Terminates During Scale In</a> in the <i>Auto Scaling User Guide</i>.</p>
-- * AutoScalingGroupName [ResourceName] <p>The name of the Auto Scaling group.</p>
-- * DefaultCooldown [Cooldown] <p>The amount of time, in seconds, after a scaling activity completes before another scaling activity can start. The default is 300.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/autoscaling/ec2/userguide/Cooldown.html">Scaling Cooldowns</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
-- * MinSize [AutoScalingGroupMinSize] <p>The minimum size of the Auto Scaling group.</p>
-- * MaxSize [AutoScalingGroupMaxSize] <p>The maximum size of the Auto Scaling group.</p>
-- * VPCZoneIdentifier [XmlStringMaxLen2047] <p>The ID of the subnet, if you are launching into a VPC. You can specify several subnets in a comma-separated list.</p> <p>When you specify <code>VPCZoneIdentifier</code> with <code>AvailabilityZones</code>, ensure that the subnets' Availability Zones match the values you specify for <code>AvailabilityZones</code>.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html">Launching Auto Scaling Instances in a VPC</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
-- * LaunchConfigurationName [ResourceName] <p>The name of the launch configuration. If you specify a launch configuration, you can't specify a launch template.</p>
-- * AvailabilityZones [AvailabilityZones] <p>One or more Availability Zones for the group.</p>
-- * HealthCheckType [XmlStringMaxLen32] <p>The service to use for the health checks. The valid values are <code>EC2</code> and <code>ELB</code>.</p>
-- * NewInstancesProtectedFromScaleIn [InstanceProtected] <p>Indicates whether newly launched instances are protected from termination by Auto Scaling when scaling in.</p>
-- * LaunchTemplate [LaunchTemplateSpecification] <p>The launch template to use to specify the updates. If you specify a launch template, you can't specify a launch configuration.</p>
-- Required key: AutoScalingGroupName
-- @return UpdateAutoScalingGroupType structure as a key-value pair table
function M.UpdateAutoScalingGroupType(args)
	assert(args, "You must provide an argument table when creating UpdateAutoScalingGroupType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HealthCheckGracePeriod"] = args["HealthCheckGracePeriod"],
		["PlacementGroup"] = args["PlacementGroup"],
		["DesiredCapacity"] = args["DesiredCapacity"],
		["ServiceLinkedRoleARN"] = args["ServiceLinkedRoleARN"],
		["TerminationPolicies"] = args["TerminationPolicies"],
		["AutoScalingGroupName"] = args["AutoScalingGroupName"],
		["DefaultCooldown"] = args["DefaultCooldown"],
		["MinSize"] = args["MinSize"],
		["MaxSize"] = args["MaxSize"],
		["VPCZoneIdentifier"] = args["VPCZoneIdentifier"],
		["LaunchConfigurationName"] = args["LaunchConfigurationName"],
		["AvailabilityZones"] = args["AvailabilityZones"],
		["HealthCheckType"] = args["HealthCheckType"],
		["NewInstancesProtectedFromScaleIn"] = args["NewInstancesProtectedFromScaleIn"],
		["LaunchTemplate"] = args["LaunchTemplate"],
	}
	asserts.AssertUpdateAutoScalingGroupType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LifecycleHookSpecification = { ["HeartbeatTimeout"] = true, ["RoleARN"] = true, ["LifecycleHookName"] = true, ["NotificationMetadata"] = true, ["DefaultResult"] = true, ["NotificationTargetARN"] = true, ["LifecycleTransition"] = true, nil }

function asserts.AssertLifecycleHookSpecification(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LifecycleHookSpecification to be of type 'table'")
	assert(struct["LifecycleHookName"], "Expected key LifecycleHookName to exist in table")
	assert(struct["LifecycleTransition"], "Expected key LifecycleTransition to exist in table")
	if struct["HeartbeatTimeout"] then asserts.AssertHeartbeatTimeout(struct["HeartbeatTimeout"]) end
	if struct["RoleARN"] then asserts.AssertResourceName(struct["RoleARN"]) end
	if struct["LifecycleHookName"] then asserts.AssertAsciiStringMaxLen255(struct["LifecycleHookName"]) end
	if struct["NotificationMetadata"] then asserts.AssertXmlStringMaxLen1023(struct["NotificationMetadata"]) end
	if struct["DefaultResult"] then asserts.AssertLifecycleActionResult(struct["DefaultResult"]) end
	if struct["NotificationTargetARN"] then asserts.AssertNotificationTargetResourceName(struct["NotificationTargetARN"]) end
	if struct["LifecycleTransition"] then asserts.AssertLifecycleTransition(struct["LifecycleTransition"]) end
	for k,_ in pairs(struct) do
		assert(keys.LifecycleHookSpecification[k], "LifecycleHookSpecification contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LifecycleHookSpecification
-- <p>Describes a lifecycle hook, which tells Amazon EC2 Auto Scaling that you want to perform an action whenever it launches instances or whenever it terminates instances.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/autoscaling/ec2/userguide/lifecycle-hooks.html">Lifecycle Hooks</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HeartbeatTimeout [HeartbeatTimeout] <p>The maximum time, in seconds, that can elapse before the lifecycle hook times out. If the lifecycle hook times out, Amazon EC2 Auto Scaling performs the default action. You can prevent the lifecycle hook from timing out by calling <a>RecordLifecycleActionHeartbeat</a>.</p>
-- * RoleARN [ResourceName] <p>The ARN of the IAM role that allows the Auto Scaling group to publish to the specified notification target.</p>
-- * LifecycleHookName [AsciiStringMaxLen255] <p>The name of the lifecycle hook.</p>
-- * NotificationMetadata [XmlStringMaxLen1023] <p>Additional information that you want to include any time Amazon EC2 Auto Scaling sends a message to the notification target.</p>
-- * DefaultResult [LifecycleActionResult] <p>Defines the action the Auto Scaling group should take when the lifecycle hook timeout elapses or if an unexpected failure occurs. The valid values are <code>CONTINUE</code> and <code>ABANDON</code>.</p>
-- * NotificationTargetARN [NotificationTargetResourceName] <p>The ARN of the target that Amazon EC2 Auto Scaling sends notifications to when an instance is in the transition state for the lifecycle hook. The notification target can be either an SQS queue or an SNS topic.</p>
-- * LifecycleTransition [LifecycleTransition] <p>The state of the EC2 instance to which you want to attach the lifecycle hook. The possible values are:</p> <ul> <li> <p>autoscaling:EC2_INSTANCE_LAUNCHING</p> </li> <li> <p>autoscaling:EC2_INSTANCE_TERMINATING</p> </li> </ul>
-- Required key: LifecycleHookName
-- Required key: LifecycleTransition
-- @return LifecycleHookSpecification structure as a key-value pair table
function M.LifecycleHookSpecification(args)
	assert(args, "You must provide an argument table when creating LifecycleHookSpecification")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HeartbeatTimeout"] = args["HeartbeatTimeout"],
		["RoleARN"] = args["RoleARN"],
		["LifecycleHookName"] = args["LifecycleHookName"],
		["NotificationMetadata"] = args["NotificationMetadata"],
		["DefaultResult"] = args["DefaultResult"],
		["NotificationTargetARN"] = args["NotificationTargetARN"],
		["LifecycleTransition"] = args["LifecycleTransition"],
	}
	asserts.AssertLifecycleHookSpecification(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AutoScalingInstancesType = { ["NextToken"] = true, ["AutoScalingInstances"] = true, nil }

function asserts.AssertAutoScalingInstancesType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AutoScalingInstancesType to be of type 'table'")
	if struct["NextToken"] then asserts.AssertXmlString(struct["NextToken"]) end
	if struct["AutoScalingInstances"] then asserts.AssertAutoScalingInstances(struct["AutoScalingInstances"]) end
	for k,_ in pairs(struct) do
		assert(keys.AutoScalingInstancesType[k], "AutoScalingInstancesType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AutoScalingInstancesType
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [XmlString] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
-- * AutoScalingInstances [AutoScalingInstances] <p>The instances.</p>
-- @return AutoScalingInstancesType structure as a key-value pair table
function M.AutoScalingInstancesType(args)
	assert(args, "You must provide an argument table when creating AutoScalingInstancesType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["AutoScalingInstances"] = args["AutoScalingInstances"],
	}
	asserts.AssertAutoScalingInstancesType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SetDesiredCapacityType = { ["AutoScalingGroupName"] = true, ["DesiredCapacity"] = true, ["HonorCooldown"] = true, nil }

function asserts.AssertSetDesiredCapacityType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetDesiredCapacityType to be of type 'table'")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	assert(struct["DesiredCapacity"], "Expected key DesiredCapacity to exist in table")
	if struct["AutoScalingGroupName"] then asserts.AssertResourceName(struct["AutoScalingGroupName"]) end
	if struct["DesiredCapacity"] then asserts.AssertAutoScalingGroupDesiredCapacity(struct["DesiredCapacity"]) end
	if struct["HonorCooldown"] then asserts.AssertHonorCooldown(struct["HonorCooldown"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetDesiredCapacityType[k], "SetDesiredCapacityType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetDesiredCapacityType
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AutoScalingGroupName [ResourceName] <p>The name of the Auto Scaling group.</p>
-- * DesiredCapacity [AutoScalingGroupDesiredCapacity] <p>The number of EC2 instances that should be running in the Auto Scaling group.</p>
-- * HonorCooldown [HonorCooldown] <p>Indicates whether Amazon EC2 Auto Scaling waits for the cooldown period to complete before initiating a scaling activity to set your Auto Scaling group to its new capacity. By default, Amazon EC2 Auto Scaling does not honor the cooldown period during manual scaling activities.</p>
-- Required key: AutoScalingGroupName
-- Required key: DesiredCapacity
-- @return SetDesiredCapacityType structure as a key-value pair table
function M.SetDesiredCapacityType(args)
	assert(args, "You must provide an argument table when creating SetDesiredCapacityType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AutoScalingGroupName"] = args["AutoScalingGroupName"],
		["DesiredCapacity"] = args["DesiredCapacity"],
		["HonorCooldown"] = args["HonorCooldown"],
	}
	asserts.AssertSetDesiredCapacityType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AutoScalingGroupsType = { ["AutoScalingGroups"] = true, ["NextToken"] = true, nil }

function asserts.AssertAutoScalingGroupsType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AutoScalingGroupsType to be of type 'table'")
	assert(struct["AutoScalingGroups"], "Expected key AutoScalingGroups to exist in table")
	if struct["AutoScalingGroups"] then asserts.AssertAutoScalingGroups(struct["AutoScalingGroups"]) end
	if struct["NextToken"] then asserts.AssertXmlString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.AutoScalingGroupsType[k], "AutoScalingGroupsType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AutoScalingGroupsType
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AutoScalingGroups [AutoScalingGroups] <p>The groups.</p>
-- * NextToken [XmlString] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
-- Required key: AutoScalingGroups
-- @return AutoScalingGroupsType structure as a key-value pair table
function M.AutoScalingGroupsType(args)
	assert(args, "You must provide an argument table when creating AutoScalingGroupsType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AutoScalingGroups"] = args["AutoScalingGroups"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertAutoScalingGroupsType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BlockDeviceMapping = { ["DeviceName"] = true, ["VirtualName"] = true, ["NoDevice"] = true, ["Ebs"] = true, nil }

function asserts.AssertBlockDeviceMapping(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BlockDeviceMapping to be of type 'table'")
	assert(struct["DeviceName"], "Expected key DeviceName to exist in table")
	if struct["DeviceName"] then asserts.AssertXmlStringMaxLen255(struct["DeviceName"]) end
	if struct["VirtualName"] then asserts.AssertXmlStringMaxLen255(struct["VirtualName"]) end
	if struct["NoDevice"] then asserts.AssertNoDevice(struct["NoDevice"]) end
	if struct["Ebs"] then asserts.AssertEbs(struct["Ebs"]) end
	for k,_ in pairs(struct) do
		assert(keys.BlockDeviceMapping[k], "BlockDeviceMapping contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BlockDeviceMapping
-- <p>Describes a block device mapping.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeviceName [XmlStringMaxLen255] <p>The device name exposed to the EC2 instance (for example, <code>/dev/sdh</code> or <code>xvdh</code>).</p>
-- * VirtualName [XmlStringMaxLen255] <p>The name of the virtual device (for example, <code>ephemeral0</code>).</p>
-- * NoDevice [NoDevice] <p>Suppresses a device mapping.</p> <p>If this parameter is true for the root device, the instance might fail the EC2 health check. Amazon EC2 Auto Scaling launches a replacement instance if the instance fails the health check.</p>
-- * Ebs [Ebs] <p>The information about the Amazon EBS volume.</p>
-- Required key: DeviceName
-- @return BlockDeviceMapping structure as a key-value pair table
function M.BlockDeviceMapping(args)
	assert(args, "You must provide an argument table when creating BlockDeviceMapping")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeviceName"] = args["DeviceName"],
		["VirtualName"] = args["VirtualName"],
		["NoDevice"] = args["NoDevice"],
		["Ebs"] = args["Ebs"],
	}
	asserts.AssertBlockDeviceMapping(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchDeleteScheduledActionType = { ["AutoScalingGroupName"] = true, ["ScheduledActionNames"] = true, nil }

function asserts.AssertBatchDeleteScheduledActionType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchDeleteScheduledActionType to be of type 'table'")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	assert(struct["ScheduledActionNames"], "Expected key ScheduledActionNames to exist in table")
	if struct["AutoScalingGroupName"] then asserts.AssertResourceName(struct["AutoScalingGroupName"]) end
	if struct["ScheduledActionNames"] then asserts.AssertScheduledActionNames(struct["ScheduledActionNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchDeleteScheduledActionType[k], "BatchDeleteScheduledActionType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchDeleteScheduledActionType
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AutoScalingGroupName [ResourceName] <p>The name of the Auto Scaling group.</p>
-- * ScheduledActionNames [ScheduledActionNames] <p>The names of the scheduled actions to delete. The maximum number allowed is 50. </p>
-- Required key: AutoScalingGroupName
-- Required key: ScheduledActionNames
-- @return BatchDeleteScheduledActionType structure as a key-value pair table
function M.BatchDeleteScheduledActionType(args)
	assert(args, "You must provide an argument table when creating BatchDeleteScheduledActionType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AutoScalingGroupName"] = args["AutoScalingGroupName"],
		["ScheduledActionNames"] = args["ScheduledActionNames"],
	}
	asserts.AssertBatchDeleteScheduledActionType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Filter = { ["Values"] = true, ["Name"] = true, nil }

function asserts.AssertFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Filter to be of type 'table'")
	if struct["Values"] then asserts.AssertValues(struct["Values"]) end
	if struct["Name"] then asserts.AssertXmlString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.Filter[k], "Filter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Filter
-- <p>Describes a filter.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Values [Values] <p>The value of the filter.</p>
-- * Name [XmlString] <p>The name of the filter. The valid values are: <code>"auto-scaling-group"</code>, <code>"key"</code>, <code>"value"</code>, and <code>"propagate-at-launch"</code>.</p>
-- @return Filter structure as a key-value pair table
function M.Filter(args)
	assert(args, "You must provide an argument table when creating Filter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Values"] = args["Values"],
		["Name"] = args["Name"],
	}
	asserts.AssertFilter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutScheduledUpdateGroupActionType = { ["MinSize"] = true, ["DesiredCapacity"] = true, ["AutoScalingGroupName"] = true, ["Recurrence"] = true, ["MaxSize"] = true, ["ScheduledActionName"] = true, ["StartTime"] = true, ["Time"] = true, ["EndTime"] = true, nil }

function asserts.AssertPutScheduledUpdateGroupActionType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutScheduledUpdateGroupActionType to be of type 'table'")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	assert(struct["ScheduledActionName"], "Expected key ScheduledActionName to exist in table")
	if struct["MinSize"] then asserts.AssertAutoScalingGroupMinSize(struct["MinSize"]) end
	if struct["DesiredCapacity"] then asserts.AssertAutoScalingGroupDesiredCapacity(struct["DesiredCapacity"]) end
	if struct["AutoScalingGroupName"] then asserts.AssertResourceName(struct["AutoScalingGroupName"]) end
	if struct["Recurrence"] then asserts.AssertXmlStringMaxLen255(struct["Recurrence"]) end
	if struct["MaxSize"] then asserts.AssertAutoScalingGroupMaxSize(struct["MaxSize"]) end
	if struct["ScheduledActionName"] then asserts.AssertXmlStringMaxLen255(struct["ScheduledActionName"]) end
	if struct["StartTime"] then asserts.AssertTimestampType(struct["StartTime"]) end
	if struct["Time"] then asserts.AssertTimestampType(struct["Time"]) end
	if struct["EndTime"] then asserts.AssertTimestampType(struct["EndTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutScheduledUpdateGroupActionType[k], "PutScheduledUpdateGroupActionType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutScheduledUpdateGroupActionType
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MinSize [AutoScalingGroupMinSize] <p>The minimum size for the Auto Scaling group.</p>
-- * DesiredCapacity [AutoScalingGroupDesiredCapacity] <p>The number of EC2 instances that should be running in the group.</p>
-- * AutoScalingGroupName [ResourceName] <p>The name of the Auto Scaling group.</p>
-- * Recurrence [XmlStringMaxLen255] <p>The recurring schedule for this action, in Unix cron syntax format. For more information about this format, see <a href="http://crontab.org">Crontab</a>.</p>
-- * MaxSize [AutoScalingGroupMaxSize] <p>The maximum size for the Auto Scaling group.</p>
-- * ScheduledActionName [XmlStringMaxLen255] <p>The name of this scaling action.</p>
-- * StartTime [TimestampType] <p>The time for this action to start, in "YYYY-MM-DDThh:mm:ssZ" format in UTC/GMT only (for example, <code>2014-06-01T00:00:00Z</code>).</p> <p>If you specify <code>Recurrence</code> and <code>StartTime</code>, Amazon EC2 Auto Scaling performs the action at this time, and then performs the action based on the specified recurrence.</p> <p>If you try to schedule your action in the past, Amazon EC2 Auto Scaling returns an error message.</p>
-- * Time [TimestampType] <p>This parameter is deprecated.</p>
-- * EndTime [TimestampType] <p>The time for the recurring schedule to end. Amazon EC2 Auto Scaling does not perform the action after this time.</p>
-- Required key: AutoScalingGroupName
-- Required key: ScheduledActionName
-- @return PutScheduledUpdateGroupActionType structure as a key-value pair table
function M.PutScheduledUpdateGroupActionType(args)
	assert(args, "You must provide an argument table when creating PutScheduledUpdateGroupActionType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MinSize"] = args["MinSize"],
		["DesiredCapacity"] = args["DesiredCapacity"],
		["AutoScalingGroupName"] = args["AutoScalingGroupName"],
		["Recurrence"] = args["Recurrence"],
		["MaxSize"] = args["MaxSize"],
		["ScheduledActionName"] = args["ScheduledActionName"],
		["StartTime"] = args["StartTime"],
		["Time"] = args["Time"],
		["EndTime"] = args["EndTime"],
	}
	asserts.AssertPutScheduledUpdateGroupActionType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteTagsType = { ["Tags"] = true, nil }

function asserts.AssertDeleteTagsType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTagsType to be of type 'table'")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["Tags"] then asserts.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteTagsType[k], "DeleteTagsType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTagsType
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Tags [Tags] <p>One or more tags.</p>
-- Required key: Tags
-- @return DeleteTagsType structure as a key-value pair table
function M.DeleteTagsType(args)
	assert(args, "You must provide an argument table when creating DeleteTagsType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Tags"] = args["Tags"],
	}
	asserts.AssertDeleteTagsType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidNextToken = { ["message"] = true, nil }

function asserts.AssertInvalidNextToken(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidNextToken to be of type 'table'")
	if struct["message"] then asserts.AssertXmlStringMaxLen255(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidNextToken[k], "InvalidNextToken contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidNextToken
-- <p>The <code>NextToken</code> value is not valid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [XmlStringMaxLen255] <p/>
-- @return InvalidNextToken structure as a key-value pair table
function M.InvalidNextToken(args)
	assert(args, "You must provide an argument table when creating InvalidNextToken")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidNextToken(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeLoadBalancersRequest = { ["MaxRecords"] = true, ["NextToken"] = true, ["AutoScalingGroupName"] = true, nil }

function asserts.AssertDescribeLoadBalancersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLoadBalancersRequest to be of type 'table'")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	if struct["MaxRecords"] then asserts.AssertMaxRecords(struct["MaxRecords"]) end
	if struct["NextToken"] then asserts.AssertXmlString(struct["NextToken"]) end
	if struct["AutoScalingGroupName"] then asserts.AssertResourceName(struct["AutoScalingGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeLoadBalancersRequest[k], "DescribeLoadBalancersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLoadBalancersRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MaxRecords [MaxRecords] <p>The maximum number of items to return with this call. The default value is 100 and the maximum value is 100.</p>
-- * NextToken [XmlString] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- * AutoScalingGroupName [ResourceName] <p>The name of the Auto Scaling group.</p>
-- Required key: AutoScalingGroupName
-- @return DescribeLoadBalancersRequest structure as a key-value pair table
function M.DescribeLoadBalancersRequest(args)
	assert(args, "You must provide an argument table when creating DescribeLoadBalancersRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MaxRecords"] = args["MaxRecords"],
		["NextToken"] = args["NextToken"],
		["AutoScalingGroupName"] = args["AutoScalingGroupName"],
	}
	asserts.AssertDescribeLoadBalancersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MetricDimension = { ["Name"] = true, ["Value"] = true, nil }

function asserts.AssertMetricDimension(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MetricDimension to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Name"] then asserts.AssertMetricDimensionName(struct["Name"]) end
	if struct["Value"] then asserts.AssertMetricDimensionValue(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(keys.MetricDimension[k], "MetricDimension contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MetricDimension
-- <p>Describes the dimension of a metric.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [MetricDimensionName] <p>The name of the dimension.</p>
-- * Value [MetricDimensionValue] <p>The value of the dimension.</p>
-- Required key: Name
-- Required key: Value
-- @return MetricDimension structure as a key-value pair table
function M.MetricDimension(args)
	assert(args, "You must provide an argument table when creating MetricDimension")
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
	asserts.AssertMetricDimension(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DetachLoadBalancerTargetGroupsType = { ["TargetGroupARNs"] = true, ["AutoScalingGroupName"] = true, nil }

function asserts.AssertDetachLoadBalancerTargetGroupsType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetachLoadBalancerTargetGroupsType to be of type 'table'")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	assert(struct["TargetGroupARNs"], "Expected key TargetGroupARNs to exist in table")
	if struct["TargetGroupARNs"] then asserts.AssertTargetGroupARNs(struct["TargetGroupARNs"]) end
	if struct["AutoScalingGroupName"] then asserts.AssertResourceName(struct["AutoScalingGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DetachLoadBalancerTargetGroupsType[k], "DetachLoadBalancerTargetGroupsType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetachLoadBalancerTargetGroupsType
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TargetGroupARNs [TargetGroupARNs] <p>The Amazon Resource Names (ARN) of the target groups. You can specify up to 10 target groups.</p>
-- * AutoScalingGroupName [ResourceName] <p>The name of the Auto Scaling group.</p>
-- Required key: AutoScalingGroupName
-- Required key: TargetGroupARNs
-- @return DetachLoadBalancerTargetGroupsType structure as a key-value pair table
function M.DetachLoadBalancerTargetGroupsType(args)
	assert(args, "You must provide an argument table when creating DetachLoadBalancerTargetGroupsType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TargetGroupARNs"] = args["TargetGroupARNs"],
		["AutoScalingGroupName"] = args["AutoScalingGroupName"],
	}
	asserts.AssertDetachLoadBalancerTargetGroupsType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeLoadBalancerTargetGroupsResponse = { ["NextToken"] = true, ["LoadBalancerTargetGroups"] = true, nil }

function asserts.AssertDescribeLoadBalancerTargetGroupsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLoadBalancerTargetGroupsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertXmlString(struct["NextToken"]) end
	if struct["LoadBalancerTargetGroups"] then asserts.AssertLoadBalancerTargetGroupStates(struct["LoadBalancerTargetGroups"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeLoadBalancerTargetGroupsResponse[k], "DescribeLoadBalancerTargetGroupsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLoadBalancerTargetGroupsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [XmlString] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
-- * LoadBalancerTargetGroups [LoadBalancerTargetGroupStates] <p>Information about the target groups.</p>
-- @return DescribeLoadBalancerTargetGroupsResponse structure as a key-value pair table
function M.DescribeLoadBalancerTargetGroupsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeLoadBalancerTargetGroupsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["LoadBalancerTargetGroups"] = args["LoadBalancerTargetGroups"],
	}
	asserts.AssertDescribeLoadBalancerTargetGroupsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeNotificationConfigurationsAnswer = { ["NextToken"] = true, ["NotificationConfigurations"] = true, nil }

function asserts.AssertDescribeNotificationConfigurationsAnswer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeNotificationConfigurationsAnswer to be of type 'table'")
	assert(struct["NotificationConfigurations"], "Expected key NotificationConfigurations to exist in table")
	if struct["NextToken"] then asserts.AssertXmlString(struct["NextToken"]) end
	if struct["NotificationConfigurations"] then asserts.AssertNotificationConfigurations(struct["NotificationConfigurations"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeNotificationConfigurationsAnswer[k], "DescribeNotificationConfigurationsAnswer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeNotificationConfigurationsAnswer
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [XmlString] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
-- * NotificationConfigurations [NotificationConfigurations] <p>The notification configurations.</p>
-- Required key: NotificationConfigurations
-- @return DescribeNotificationConfigurationsAnswer structure as a key-value pair table
function M.DescribeNotificationConfigurationsAnswer(args)
	assert(args, "You must provide an argument table when creating DescribeNotificationConfigurationsAnswer")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["NotificationConfigurations"] = args["NotificationConfigurations"],
	}
	asserts.AssertDescribeNotificationConfigurationsAnswer(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateAutoScalingGroupType = { ["HealthCheckGracePeriod"] = true, ["ServiceLinkedRoleARN"] = true, ["TargetGroupARNs"] = true, ["PlacementGroup"] = true, ["LaunchTemplate"] = true, ["Tags"] = true, ["InstanceId"] = true, ["LifecycleHookSpecificationList"] = true, ["LoadBalancerNames"] = true, ["AutoScalingGroupName"] = true, ["DefaultCooldown"] = true, ["MinSize"] = true, ["MaxSize"] = true, ["VPCZoneIdentifier"] = true, ["TerminationPolicies"] = true, ["LaunchConfigurationName"] = true, ["AvailabilityZones"] = true, ["HealthCheckType"] = true, ["NewInstancesProtectedFromScaleIn"] = true, ["DesiredCapacity"] = true, nil }

function asserts.AssertCreateAutoScalingGroupType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAutoScalingGroupType to be of type 'table'")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	assert(struct["MinSize"], "Expected key MinSize to exist in table")
	assert(struct["MaxSize"], "Expected key MaxSize to exist in table")
	if struct["HealthCheckGracePeriod"] then asserts.AssertHealthCheckGracePeriod(struct["HealthCheckGracePeriod"]) end
	if struct["ServiceLinkedRoleARN"] then asserts.AssertResourceName(struct["ServiceLinkedRoleARN"]) end
	if struct["TargetGroupARNs"] then asserts.AssertTargetGroupARNs(struct["TargetGroupARNs"]) end
	if struct["PlacementGroup"] then asserts.AssertXmlStringMaxLen255(struct["PlacementGroup"]) end
	if struct["LaunchTemplate"] then asserts.AssertLaunchTemplateSpecification(struct["LaunchTemplate"]) end
	if struct["Tags"] then asserts.AssertTags(struct["Tags"]) end
	if struct["InstanceId"] then asserts.AssertXmlStringMaxLen19(struct["InstanceId"]) end
	if struct["LifecycleHookSpecificationList"] then asserts.AssertLifecycleHookSpecifications(struct["LifecycleHookSpecificationList"]) end
	if struct["LoadBalancerNames"] then asserts.AssertLoadBalancerNames(struct["LoadBalancerNames"]) end
	if struct["AutoScalingGroupName"] then asserts.AssertXmlStringMaxLen255(struct["AutoScalingGroupName"]) end
	if struct["DefaultCooldown"] then asserts.AssertCooldown(struct["DefaultCooldown"]) end
	if struct["MinSize"] then asserts.AssertAutoScalingGroupMinSize(struct["MinSize"]) end
	if struct["MaxSize"] then asserts.AssertAutoScalingGroupMaxSize(struct["MaxSize"]) end
	if struct["VPCZoneIdentifier"] then asserts.AssertXmlStringMaxLen2047(struct["VPCZoneIdentifier"]) end
	if struct["TerminationPolicies"] then asserts.AssertTerminationPolicies(struct["TerminationPolicies"]) end
	if struct["LaunchConfigurationName"] then asserts.AssertResourceName(struct["LaunchConfigurationName"]) end
	if struct["AvailabilityZones"] then asserts.AssertAvailabilityZones(struct["AvailabilityZones"]) end
	if struct["HealthCheckType"] then asserts.AssertXmlStringMaxLen32(struct["HealthCheckType"]) end
	if struct["NewInstancesProtectedFromScaleIn"] then asserts.AssertInstanceProtected(struct["NewInstancesProtectedFromScaleIn"]) end
	if struct["DesiredCapacity"] then asserts.AssertAutoScalingGroupDesiredCapacity(struct["DesiredCapacity"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateAutoScalingGroupType[k], "CreateAutoScalingGroupType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAutoScalingGroupType
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HealthCheckGracePeriod [HealthCheckGracePeriod] <p>The amount of time, in seconds, that Amazon EC2 Auto Scaling waits before checking the health status of an EC2 instance that has come into service. During this time, any health check failures for the instance are ignored. The default is 0.</p> <p>This parameter is required if you are adding an <code>ELB</code> health check.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/autoscaling/ec2/userguide/healthcheck.html">Health Checks</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
-- * ServiceLinkedRoleARN [ResourceName] <p>The Amazon Resource Name (ARN) of the service-linked role that the Auto Scaling group uses to call other AWS services on your behalf. By default, Amazon EC2 Auto Scaling uses a service-linked role named AWSServiceRoleForAutoScaling, which it creates if it does not exist.</p>
-- * TargetGroupARNs [TargetGroupARNs] <p>The Amazon Resource Names (ARN) of the target groups.</p>
-- * PlacementGroup [XmlStringMaxLen255] <p>The name of the placement group into which you'll launch your instances, if any. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html">Placement Groups</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
-- * LaunchTemplate [LaunchTemplateSpecification] <p>The launch template to use to launch instances. You must specify one of the following: a launch template, a launch configuration, or an EC2 instance.</p>
-- * Tags [Tags] <p>One or more tags.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-tagging.html">Tagging Auto Scaling Groups and Instances</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
-- * InstanceId [XmlStringMaxLen19] <p>The ID of the instance used to create a launch configuration for the group. You must specify one of the following: an EC2 instance, a launch configuration, or a launch template.</p> <p>When you specify an ID of an instance, Amazon EC2 Auto Scaling creates a new launch configuration and associates it with the group. This launch configuration derives its attributes from the specified instance, with the exception of the block device mapping.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/autoscaling/ec2/userguide/create-asg-from-instance.html">Create an Auto Scaling Group Using an EC2 Instance</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
-- * LifecycleHookSpecificationList [LifecycleHookSpecifications] <p>One or more lifecycle hooks.</p>
-- * LoadBalancerNames [LoadBalancerNames] <p>One or more Classic Load Balancers. To specify an Application Load Balancer, use <code>TargetGroupARNs</code> instead.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/autoscaling/ec2/userguide/create-asg-from-instance.html">Using a Load Balancer With an Auto Scaling Group</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
-- * AutoScalingGroupName [XmlStringMaxLen255] <p>The name of the Auto Scaling group. This name must be unique within the scope of your AWS account.</p>
-- * DefaultCooldown [Cooldown] <p>The amount of time, in seconds, after a scaling activity completes before another scaling activity can start. The default is 300.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/autoscaling/ec2/userguide/Cooldown.html">Scaling Cooldowns</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
-- * MinSize [AutoScalingGroupMinSize] <p>The minimum size of the group.</p>
-- * MaxSize [AutoScalingGroupMaxSize] <p>The maximum size of the group.</p>
-- * VPCZoneIdentifier [XmlStringMaxLen2047] <p>A comma-separated list of subnet identifiers for your virtual private cloud (VPC).</p> <p>If you specify subnets and Availability Zones with this call, ensure that the subnets' Availability Zones match the Availability Zones specified.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html">Launching Auto Scaling Instances in a VPC</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
-- * TerminationPolicies [TerminationPolicies] <p>One or more termination policies used to select the instance to terminate. These policies are executed in the order that they are listed.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-termination.html">Controlling Which Instances Auto Scaling Terminates During Scale In</a> in the <i>Auto Scaling User Guide</i>.</p>
-- * LaunchConfigurationName [ResourceName] <p>The name of the launch configuration. You must specify one of the following: a launch configuration, a launch template, or an EC2 instance.</p>
-- * AvailabilityZones [AvailabilityZones] <p>One or more Availability Zones for the group. This parameter is optional if you specify one or more subnets.</p>
-- * HealthCheckType [XmlStringMaxLen32] <p>The service to use for the health checks. The valid values are <code>EC2</code> and <code>ELB</code>.</p> <p>By default, health checks use Amazon EC2 instance status checks to determine the health of an instance. For more information, see <a href="http://docs.aws.amazon.com/autoscaling/ec2/userguide/healthcheck.html">Health Checks</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
-- * NewInstancesProtectedFromScaleIn [InstanceProtected] <p>Indicates whether newly launched instances are protected from termination by Auto Scaling when scaling in.</p>
-- * DesiredCapacity [AutoScalingGroupDesiredCapacity] <p>The number of EC2 instances that should be running in the group. This number must be greater than or equal to the minimum size of the group and less than or equal to the maximum size of the group. If you do not specify a desired capacity, the default is the minimum size of the group.</p>
-- Required key: AutoScalingGroupName
-- Required key: MinSize
-- Required key: MaxSize
-- @return CreateAutoScalingGroupType structure as a key-value pair table
function M.CreateAutoScalingGroupType(args)
	assert(args, "You must provide an argument table when creating CreateAutoScalingGroupType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HealthCheckGracePeriod"] = args["HealthCheckGracePeriod"],
		["ServiceLinkedRoleARN"] = args["ServiceLinkedRoleARN"],
		["TargetGroupARNs"] = args["TargetGroupARNs"],
		["PlacementGroup"] = args["PlacementGroup"],
		["LaunchTemplate"] = args["LaunchTemplate"],
		["Tags"] = args["Tags"],
		["InstanceId"] = args["InstanceId"],
		["LifecycleHookSpecificationList"] = args["LifecycleHookSpecificationList"],
		["LoadBalancerNames"] = args["LoadBalancerNames"],
		["AutoScalingGroupName"] = args["AutoScalingGroupName"],
		["DefaultCooldown"] = args["DefaultCooldown"],
		["MinSize"] = args["MinSize"],
		["MaxSize"] = args["MaxSize"],
		["VPCZoneIdentifier"] = args["VPCZoneIdentifier"],
		["TerminationPolicies"] = args["TerminationPolicies"],
		["LaunchConfigurationName"] = args["LaunchConfigurationName"],
		["AvailabilityZones"] = args["AvailabilityZones"],
		["HealthCheckType"] = args["HealthCheckType"],
		["NewInstancesProtectedFromScaleIn"] = args["NewInstancesProtectedFromScaleIn"],
		["DesiredCapacity"] = args["DesiredCapacity"],
	}
	asserts.AssertCreateAutoScalingGroupType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CompleteLifecycleActionType = { ["LifecycleActionResult"] = true, ["LifecycleHookName"] = true, ["InstanceId"] = true, ["AutoScalingGroupName"] = true, ["LifecycleActionToken"] = true, nil }

function asserts.AssertCompleteLifecycleActionType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CompleteLifecycleActionType to be of type 'table'")
	assert(struct["LifecycleHookName"], "Expected key LifecycleHookName to exist in table")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	assert(struct["LifecycleActionResult"], "Expected key LifecycleActionResult to exist in table")
	if struct["LifecycleActionResult"] then asserts.AssertLifecycleActionResult(struct["LifecycleActionResult"]) end
	if struct["LifecycleHookName"] then asserts.AssertAsciiStringMaxLen255(struct["LifecycleHookName"]) end
	if struct["InstanceId"] then asserts.AssertXmlStringMaxLen19(struct["InstanceId"]) end
	if struct["AutoScalingGroupName"] then asserts.AssertResourceName(struct["AutoScalingGroupName"]) end
	if struct["LifecycleActionToken"] then asserts.AssertLifecycleActionToken(struct["LifecycleActionToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.CompleteLifecycleActionType[k], "CompleteLifecycleActionType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CompleteLifecycleActionType
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LifecycleActionResult [LifecycleActionResult] <p>The action for the group to take. This parameter can be either <code>CONTINUE</code> or <code>ABANDON</code>.</p>
-- * LifecycleHookName [AsciiStringMaxLen255] <p>The name of the lifecycle hook.</p>
-- * InstanceId [XmlStringMaxLen19] <p>The ID of the instance.</p>
-- * AutoScalingGroupName [ResourceName] <p>The name of the Auto Scaling group.</p>
-- * LifecycleActionToken [LifecycleActionToken] <p>A universally unique identifier (UUID) that identifies a specific lifecycle action associated with an instance. Amazon EC2 Auto Scaling sends this token to the notification target you specified when you created the lifecycle hook.</p>
-- Required key: LifecycleHookName
-- Required key: AutoScalingGroupName
-- Required key: LifecycleActionResult
-- @return CompleteLifecycleActionType structure as a key-value pair table
function M.CompleteLifecycleActionType(args)
	assert(args, "You must provide an argument table when creating CompleteLifecycleActionType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LifecycleActionResult"] = args["LifecycleActionResult"],
		["LifecycleHookName"] = args["LifecycleHookName"],
		["InstanceId"] = args["InstanceId"],
		["AutoScalingGroupName"] = args["AutoScalingGroupName"],
		["LifecycleActionToken"] = args["LifecycleActionToken"],
	}
	asserts.AssertCompleteLifecycleActionType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribePoliciesType = { ["PolicyNames"] = true, ["PolicyTypes"] = true, ["NextToken"] = true, ["AutoScalingGroupName"] = true, ["MaxRecords"] = true, nil }

function asserts.AssertDescribePoliciesType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribePoliciesType to be of type 'table'")
	if struct["PolicyNames"] then asserts.AssertPolicyNames(struct["PolicyNames"]) end
	if struct["PolicyTypes"] then asserts.AssertPolicyTypes(struct["PolicyTypes"]) end
	if struct["NextToken"] then asserts.AssertXmlString(struct["NextToken"]) end
	if struct["AutoScalingGroupName"] then asserts.AssertResourceName(struct["AutoScalingGroupName"]) end
	if struct["MaxRecords"] then asserts.AssertMaxRecords(struct["MaxRecords"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribePoliciesType[k], "DescribePoliciesType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribePoliciesType
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyNames [PolicyNames] <p>The names of one or more policies. If you omit this parameter, all policies are described. If an group name is provided, the results are limited to that group. This list is limited to 50 items. If you specify an unknown policy name, it is ignored with no error.</p>
-- * PolicyTypes [PolicyTypes] <p>One or more policy types. Valid values are <code>SimpleScaling</code> and <code>StepScaling</code>.</p>
-- * NextToken [XmlString] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- * AutoScalingGroupName [ResourceName] <p>The name of the Auto Scaling group.</p>
-- * MaxRecords [MaxRecords] <p>The maximum number of items to be returned with each call. The default value is 50 and the maximum value is 100.</p>
-- @return DescribePoliciesType structure as a key-value pair table
function M.DescribePoliciesType(args)
	assert(args, "You must provide an argument table when creating DescribePoliciesType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyNames"] = args["PolicyNames"],
		["PolicyTypes"] = args["PolicyTypes"],
		["NextToken"] = args["NextToken"],
		["AutoScalingGroupName"] = args["AutoScalingGroupName"],
		["MaxRecords"] = args["MaxRecords"],
	}
	asserts.AssertDescribePoliciesType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeLifecycleHooksAnswer = { ["LifecycleHooks"] = true, nil }

function asserts.AssertDescribeLifecycleHooksAnswer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLifecycleHooksAnswer to be of type 'table'")
	if struct["LifecycleHooks"] then asserts.AssertLifecycleHooks(struct["LifecycleHooks"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeLifecycleHooksAnswer[k], "DescribeLifecycleHooksAnswer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLifecycleHooksAnswer
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LifecycleHooks [LifecycleHooks] <p>The lifecycle hooks for the specified group.</p>
-- @return DescribeLifecycleHooksAnswer structure as a key-value pair table
function M.DescribeLifecycleHooksAnswer(args)
	assert(args, "You must provide an argument table when creating DescribeLifecycleHooksAnswer")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LifecycleHooks"] = args["LifecycleHooks"],
	}
	asserts.AssertDescribeLifecycleHooksAnswer(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DetachLoadBalancersResultType = { nil }

function asserts.AssertDetachLoadBalancersResultType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetachLoadBalancersResultType to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DetachLoadBalancersResultType[k], "DetachLoadBalancersResultType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetachLoadBalancersResultType
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DetachLoadBalancersResultType structure as a key-value pair table
function M.DetachLoadBalancersResultType(args)
	assert(args, "You must provide an argument table when creating DetachLoadBalancersResultType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDetachLoadBalancersResultType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SetInstanceProtectionAnswer = { nil }

function asserts.AssertSetInstanceProtectionAnswer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetInstanceProtectionAnswer to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SetInstanceProtectionAnswer[k], "SetInstanceProtectionAnswer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetInstanceProtectionAnswer
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return SetInstanceProtectionAnswer structure as a key-value pair table
function M.SetInstanceProtectionAnswer(args)
	assert(args, "You must provide an argument table when creating SetInstanceProtectionAnswer")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertSetInstanceProtectionAnswer(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AutoScalingInstanceDetails = { ["ProtectedFromScaleIn"] = true, ["AvailabilityZone"] = true, ["LaunchTemplate"] = true, ["InstanceId"] = true, ["AutoScalingGroupName"] = true, ["HealthStatus"] = true, ["LifecycleState"] = true, ["LaunchConfigurationName"] = true, nil }

function asserts.AssertAutoScalingInstanceDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AutoScalingInstanceDetails to be of type 'table'")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	assert(struct["AvailabilityZone"], "Expected key AvailabilityZone to exist in table")
	assert(struct["LifecycleState"], "Expected key LifecycleState to exist in table")
	assert(struct["HealthStatus"], "Expected key HealthStatus to exist in table")
	assert(struct["ProtectedFromScaleIn"], "Expected key ProtectedFromScaleIn to exist in table")
	if struct["ProtectedFromScaleIn"] then asserts.AssertInstanceProtected(struct["ProtectedFromScaleIn"]) end
	if struct["AvailabilityZone"] then asserts.AssertXmlStringMaxLen255(struct["AvailabilityZone"]) end
	if struct["LaunchTemplate"] then asserts.AssertLaunchTemplateSpecification(struct["LaunchTemplate"]) end
	if struct["InstanceId"] then asserts.AssertXmlStringMaxLen19(struct["InstanceId"]) end
	if struct["AutoScalingGroupName"] then asserts.AssertXmlStringMaxLen255(struct["AutoScalingGroupName"]) end
	if struct["HealthStatus"] then asserts.AssertXmlStringMaxLen32(struct["HealthStatus"]) end
	if struct["LifecycleState"] then asserts.AssertXmlStringMaxLen32(struct["LifecycleState"]) end
	if struct["LaunchConfigurationName"] then asserts.AssertXmlStringMaxLen255(struct["LaunchConfigurationName"]) end
	for k,_ in pairs(struct) do
		assert(keys.AutoScalingInstanceDetails[k], "AutoScalingInstanceDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AutoScalingInstanceDetails
-- <p>Describes an EC2 instance associated with an Auto Scaling group.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProtectedFromScaleIn [InstanceProtected] <p>Indicates whether the instance is protected from termination by Amazon EC2 Auto Scaling when scaling in.</p>
-- * AvailabilityZone [XmlStringMaxLen255] <p>The Availability Zone for the instance.</p>
-- * LaunchTemplate [LaunchTemplateSpecification] <p>The launch template for the instance.</p>
-- * InstanceId [XmlStringMaxLen19] <p>The ID of the instance.</p>
-- * AutoScalingGroupName [XmlStringMaxLen255] <p>The name of the Auto Scaling group for the instance.</p>
-- * HealthStatus [XmlStringMaxLen32] <p>The last reported health status of this instance. "Healthy" means that the instance is healthy and should remain in service. "Unhealthy" means that the instance is unhealthy and Amazon EC2 Auto Scaling should terminate and replace it.</p>
-- * LifecycleState [XmlStringMaxLen32] <p>The lifecycle state for the instance. For more information, see <a href="http://docs.aws.amazon.com/autoscaling/ec2/userguide/AutoScalingGroupLifecycle.html">Auto Scaling Lifecycle</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
-- * LaunchConfigurationName [XmlStringMaxLen255] <p>The launch configuration used to launch the instance. This value is not available if you attached the instance to the Auto Scaling group.</p>
-- Required key: InstanceId
-- Required key: AutoScalingGroupName
-- Required key: AvailabilityZone
-- Required key: LifecycleState
-- Required key: HealthStatus
-- Required key: ProtectedFromScaleIn
-- @return AutoScalingInstanceDetails structure as a key-value pair table
function M.AutoScalingInstanceDetails(args)
	assert(args, "You must provide an argument table when creating AutoScalingInstanceDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ProtectedFromScaleIn"] = args["ProtectedFromScaleIn"],
		["AvailabilityZone"] = args["AvailabilityZone"],
		["LaunchTemplate"] = args["LaunchTemplate"],
		["InstanceId"] = args["InstanceId"],
		["AutoScalingGroupName"] = args["AutoScalingGroupName"],
		["HealthStatus"] = args["HealthStatus"],
		["LifecycleState"] = args["LifecycleState"],
		["LaunchConfigurationName"] = args["LaunchConfigurationName"],
	}
	asserts.AssertAutoScalingInstanceDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteAutoScalingGroupType = { ["ForceDelete"] = true, ["AutoScalingGroupName"] = true, nil }

function asserts.AssertDeleteAutoScalingGroupType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteAutoScalingGroupType to be of type 'table'")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	if struct["ForceDelete"] then asserts.AssertForceDelete(struct["ForceDelete"]) end
	if struct["AutoScalingGroupName"] then asserts.AssertResourceName(struct["AutoScalingGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteAutoScalingGroupType[k], "DeleteAutoScalingGroupType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteAutoScalingGroupType
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ForceDelete [ForceDelete] <p>Specifies that the group will be deleted along with all instances associated with the group, without waiting for all instances to be terminated. This parameter also deletes any lifecycle actions associated with the group.</p>
-- * AutoScalingGroupName [ResourceName] <p>The name of the Auto Scaling group.</p>
-- Required key: AutoScalingGroupName
-- @return DeleteAutoScalingGroupType structure as a key-value pair table
function M.DeleteAutoScalingGroupType(args)
	assert(args, "You must provide an argument table when creating DeleteAutoScalingGroupType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ForceDelete"] = args["ForceDelete"],
		["AutoScalingGroupName"] = args["AutoScalingGroupName"],
	}
	asserts.AssertDeleteAutoScalingGroupType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeLifecycleHooksType = { ["LifecycleHookNames"] = true, ["AutoScalingGroupName"] = true, nil }

function asserts.AssertDescribeLifecycleHooksType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLifecycleHooksType to be of type 'table'")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	if struct["LifecycleHookNames"] then asserts.AssertLifecycleHookNames(struct["LifecycleHookNames"]) end
	if struct["AutoScalingGroupName"] then asserts.AssertResourceName(struct["AutoScalingGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeLifecycleHooksType[k], "DescribeLifecycleHooksType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLifecycleHooksType
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LifecycleHookNames [LifecycleHookNames] <p>The names of one or more lifecycle hooks. If you omit this parameter, all lifecycle hooks are described.</p>
-- * AutoScalingGroupName [ResourceName] <p>The name of the Auto Scaling group.</p>
-- Required key: AutoScalingGroupName
-- @return DescribeLifecycleHooksType structure as a key-value pair table
function M.DescribeLifecycleHooksType(args)
	assert(args, "You must provide an argument table when creating DescribeLifecycleHooksType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LifecycleHookNames"] = args["LifecycleHookNames"],
		["AutoScalingGroupName"] = args["AutoScalingGroupName"],
	}
	asserts.AssertDescribeLifecycleHooksType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeAutoScalingNotificationTypesAnswer = { ["AutoScalingNotificationTypes"] = true, nil }

function asserts.AssertDescribeAutoScalingNotificationTypesAnswer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAutoScalingNotificationTypesAnswer to be of type 'table'")
	if struct["AutoScalingNotificationTypes"] then asserts.AssertAutoScalingNotificationTypes(struct["AutoScalingNotificationTypes"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAutoScalingNotificationTypesAnswer[k], "DescribeAutoScalingNotificationTypesAnswer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAutoScalingNotificationTypesAnswer
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AutoScalingNotificationTypes [AutoScalingNotificationTypes] <p>The notification types.</p>
-- @return DescribeAutoScalingNotificationTypesAnswer structure as a key-value pair table
function M.DescribeAutoScalingNotificationTypesAnswer(args)
	assert(args, "You must provide an argument table when creating DescribeAutoScalingNotificationTypesAnswer")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AutoScalingNotificationTypes"] = args["AutoScalingNotificationTypes"],
	}
	asserts.AssertDescribeAutoScalingNotificationTypesAnswer(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CompleteLifecycleActionAnswer = { nil }

function asserts.AssertCompleteLifecycleActionAnswer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CompleteLifecycleActionAnswer to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CompleteLifecycleActionAnswer[k], "CompleteLifecycleActionAnswer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CompleteLifecycleActionAnswer
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CompleteLifecycleActionAnswer structure as a key-value pair table
function M.CompleteLifecycleActionAnswer(args)
	assert(args, "You must provide an argument table when creating CompleteLifecycleActionAnswer")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertCompleteLifecycleActionAnswer(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DetachLoadBalancerTargetGroupsResultType = { nil }

function asserts.AssertDetachLoadBalancerTargetGroupsResultType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetachLoadBalancerTargetGroupsResultType to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DetachLoadBalancerTargetGroupsResultType[k], "DetachLoadBalancerTargetGroupsResultType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetachLoadBalancerTargetGroupsResultType
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DetachLoadBalancerTargetGroupsResultType structure as a key-value pair table
function M.DetachLoadBalancerTargetGroupsResultType(args)
	assert(args, "You must provide an argument table when creating DetachLoadBalancerTargetGroupsResultType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDetachLoadBalancerTargetGroupsResultType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LifecycleHook = { ["GlobalTimeout"] = true, ["HeartbeatTimeout"] = true, ["RoleARN"] = true, ["AutoScalingGroupName"] = true, ["LifecycleHookName"] = true, ["NotificationMetadata"] = true, ["DefaultResult"] = true, ["NotificationTargetARN"] = true, ["LifecycleTransition"] = true, nil }

function asserts.AssertLifecycleHook(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LifecycleHook to be of type 'table'")
	if struct["GlobalTimeout"] then asserts.AssertGlobalTimeout(struct["GlobalTimeout"]) end
	if struct["HeartbeatTimeout"] then asserts.AssertHeartbeatTimeout(struct["HeartbeatTimeout"]) end
	if struct["RoleARN"] then asserts.AssertResourceName(struct["RoleARN"]) end
	if struct["AutoScalingGroupName"] then asserts.AssertResourceName(struct["AutoScalingGroupName"]) end
	if struct["LifecycleHookName"] then asserts.AssertAsciiStringMaxLen255(struct["LifecycleHookName"]) end
	if struct["NotificationMetadata"] then asserts.AssertXmlStringMaxLen1023(struct["NotificationMetadata"]) end
	if struct["DefaultResult"] then asserts.AssertLifecycleActionResult(struct["DefaultResult"]) end
	if struct["NotificationTargetARN"] then asserts.AssertResourceName(struct["NotificationTargetARN"]) end
	if struct["LifecycleTransition"] then asserts.AssertLifecycleTransition(struct["LifecycleTransition"]) end
	for k,_ in pairs(struct) do
		assert(keys.LifecycleHook[k], "LifecycleHook contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LifecycleHook
-- <p>Describes a lifecycle hook, which tells Amazon EC2 Auto Scaling that you want to perform an action whenever it launches instances or whenever it terminates instances.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/autoscaling/ec2/userguide/lifecycle-hooks.html">Lifecycle Hooks</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GlobalTimeout [GlobalTimeout] <p>The maximum time, in seconds, that an instance can remain in a <code>Pending:Wait</code> or <code>Terminating:Wait</code> state. The maximum is 172800 seconds (48 hours) or 100 times <code>HeartbeatTimeout</code>, whichever is smaller.</p>
-- * HeartbeatTimeout [HeartbeatTimeout] <p>The maximum time, in seconds, that can elapse before the lifecycle hook times out. If the lifecycle hook times out, Amazon EC2 Auto Scaling performs the default action. You can prevent the lifecycle hook from timing out by calling <a>RecordLifecycleActionHeartbeat</a>.</p>
-- * RoleARN [ResourceName] <p>The ARN of the IAM role that allows the Auto Scaling group to publish to the specified notification target.</p>
-- * AutoScalingGroupName [ResourceName] <p>The name of the Auto Scaling group for the lifecycle hook.</p>
-- * LifecycleHookName [AsciiStringMaxLen255] <p>The name of the lifecycle hook.</p>
-- * NotificationMetadata [XmlStringMaxLen1023] <p>Additional information that you want to include any time Amazon EC2 Auto Scaling sends a message to the notification target.</p>
-- * DefaultResult [LifecycleActionResult] <p>Defines the action the Auto Scaling group should take when the lifecycle hook timeout elapses or if an unexpected failure occurs. The valid values are <code>CONTINUE</code> and <code>ABANDON</code>. The default value is <code>CONTINUE</code>.</p>
-- * NotificationTargetARN [ResourceName] <p>The ARN of the target that Amazon EC2 Auto Scaling sends notifications to when an instance is in the transition state for the lifecycle hook. The notification target can be either an SQS queue or an SNS topic.</p>
-- * LifecycleTransition [LifecycleTransition] <p>The state of the EC2 instance to which you want to attach the lifecycle hook. The following are possible values:</p> <ul> <li> <p>autoscaling:EC2_INSTANCE_LAUNCHING</p> </li> <li> <p>autoscaling:EC2_INSTANCE_TERMINATING</p> </li> </ul>
-- @return LifecycleHook structure as a key-value pair table
function M.LifecycleHook(args)
	assert(args, "You must provide an argument table when creating LifecycleHook")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GlobalTimeout"] = args["GlobalTimeout"],
		["HeartbeatTimeout"] = args["HeartbeatTimeout"],
		["RoleARN"] = args["RoleARN"],
		["AutoScalingGroupName"] = args["AutoScalingGroupName"],
		["LifecycleHookName"] = args["LifecycleHookName"],
		["NotificationMetadata"] = args["NotificationMetadata"],
		["DefaultResult"] = args["DefaultResult"],
		["NotificationTargetARN"] = args["NotificationTargetARN"],
		["LifecycleTransition"] = args["LifecycleTransition"],
	}
	asserts.AssertLifecycleHook(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeLifecycleHookTypesAnswer = { ["LifecycleHookTypes"] = true, nil }

function asserts.AssertDescribeLifecycleHookTypesAnswer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLifecycleHookTypesAnswer to be of type 'table'")
	if struct["LifecycleHookTypes"] then asserts.AssertAutoScalingNotificationTypes(struct["LifecycleHookTypes"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeLifecycleHookTypesAnswer[k], "DescribeLifecycleHookTypesAnswer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLifecycleHookTypesAnswer
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LifecycleHookTypes [AutoScalingNotificationTypes] <p>The lifecycle hook types.</p>
-- @return DescribeLifecycleHookTypesAnswer structure as a key-value pair table
function M.DescribeLifecycleHookTypesAnswer(args)
	assert(args, "You must provide an argument table when creating DescribeLifecycleHookTypesAnswer")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LifecycleHookTypes"] = args["LifecycleHookTypes"],
	}
	asserts.AssertDescribeLifecycleHookTypesAnswer(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeTerminationPolicyTypesAnswer = { ["TerminationPolicyTypes"] = true, nil }

function asserts.AssertDescribeTerminationPolicyTypesAnswer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTerminationPolicyTypesAnswer to be of type 'table'")
	if struct["TerminationPolicyTypes"] then asserts.AssertTerminationPolicies(struct["TerminationPolicyTypes"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTerminationPolicyTypesAnswer[k], "DescribeTerminationPolicyTypesAnswer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTerminationPolicyTypesAnswer
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TerminationPolicyTypes [TerminationPolicies] <p>The termination policies supported by Amazon EC2 Auto Scaling (<code>OldestInstance</code>, <code>OldestLaunchConfiguration</code>, <code>NewestInstance</code>, <code>ClosestToNextInstanceHour</code>, and <code>Default</code>).</p>
-- @return DescribeTerminationPolicyTypesAnswer structure as a key-value pair table
function M.DescribeTerminationPolicyTypesAnswer(args)
	assert(args, "You must provide an argument table when creating DescribeTerminationPolicyTypesAnswer")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TerminationPolicyTypes"] = args["TerminationPolicyTypes"],
	}
	asserts.AssertDescribeTerminationPolicyTypesAnswer(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteNotificationConfigurationType = { ["AutoScalingGroupName"] = true, ["TopicARN"] = true, nil }

function asserts.AssertDeleteNotificationConfigurationType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteNotificationConfigurationType to be of type 'table'")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	assert(struct["TopicARN"], "Expected key TopicARN to exist in table")
	if struct["AutoScalingGroupName"] then asserts.AssertResourceName(struct["AutoScalingGroupName"]) end
	if struct["TopicARN"] then asserts.AssertResourceName(struct["TopicARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteNotificationConfigurationType[k], "DeleteNotificationConfigurationType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteNotificationConfigurationType
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AutoScalingGroupName [ResourceName] <p>The name of the Auto Scaling group.</p>
-- * TopicARN [ResourceName] <p>The Amazon Resource Name (ARN) of the Amazon Simple Notification Service (SNS) topic.</p>
-- Required key: AutoScalingGroupName
-- Required key: TopicARN
-- @return DeleteNotificationConfigurationType structure as a key-value pair table
function M.DeleteNotificationConfigurationType(args)
	assert(args, "You must provide an argument table when creating DeleteNotificationConfigurationType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AutoScalingGroupName"] = args["AutoScalingGroupName"],
		["TopicARN"] = args["TopicARN"],
	}
	asserts.AssertDeleteNotificationConfigurationType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LoadBalancerTargetGroupState = { ["LoadBalancerTargetGroupARN"] = true, ["State"] = true, nil }

function asserts.AssertLoadBalancerTargetGroupState(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LoadBalancerTargetGroupState to be of type 'table'")
	if struct["LoadBalancerTargetGroupARN"] then asserts.AssertXmlStringMaxLen511(struct["LoadBalancerTargetGroupARN"]) end
	if struct["State"] then asserts.AssertXmlStringMaxLen255(struct["State"]) end
	for k,_ in pairs(struct) do
		assert(keys.LoadBalancerTargetGroupState[k], "LoadBalancerTargetGroupState contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LoadBalancerTargetGroupState
-- <p>Describes the state of a target group.</p> <p>If you attach a target group to an existing Auto Scaling group, the initial state is <code>Adding</code>. The state transitions to <code>Added</code> after all Auto Scaling instances are registered with the target group. If ELB health checks are enabled, the state transitions to <code>InService</code> after at least one Auto Scaling instance passes the health check. If EC2 health checks are enabled instead, the target group remains in the <code>Added</code> state.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LoadBalancerTargetGroupARN [XmlStringMaxLen511] <p>The Amazon Resource Name (ARN) of the target group.</p>
-- * State [XmlStringMaxLen255] <p>The state of the target group.</p> <ul> <li> <p> <code>Adding</code> - The Auto Scaling instances are being registered with the target group.</p> </li> <li> <p> <code>Added</code> - All Auto Scaling instances are registered with the target group.</p> </li> <li> <p> <code>InService</code> - At least one Auto Scaling instance passed an ELB health check.</p> </li> <li> <p> <code>Removing</code> - The Auto Scaling instances are being deregistered from the target group. If connection draining is enabled, Elastic Load Balancing waits for in-flight requests to complete before deregistering the instances.</p> </li> <li> <p> <code>Removed</code> - All Auto Scaling instances are deregistered from the target group.</p> </li> </ul>
-- @return LoadBalancerTargetGroupState structure as a key-value pair table
function M.LoadBalancerTargetGroupState(args)
	assert(args, "You must provide an argument table when creating LoadBalancerTargetGroupState")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LoadBalancerTargetGroupARN"] = args["LoadBalancerTargetGroupARN"],
		["State"] = args["State"],
	}
	asserts.AssertLoadBalancerTargetGroupState(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EnableMetricsCollectionQuery = { ["Metrics"] = true, ["AutoScalingGroupName"] = true, ["Granularity"] = true, nil }

function asserts.AssertEnableMetricsCollectionQuery(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnableMetricsCollectionQuery to be of type 'table'")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	assert(struct["Granularity"], "Expected key Granularity to exist in table")
	if struct["Metrics"] then asserts.AssertMetrics(struct["Metrics"]) end
	if struct["AutoScalingGroupName"] then asserts.AssertResourceName(struct["AutoScalingGroupName"]) end
	if struct["Granularity"] then asserts.AssertXmlStringMaxLen255(struct["Granularity"]) end
	for k,_ in pairs(struct) do
		assert(keys.EnableMetricsCollectionQuery[k], "EnableMetricsCollectionQuery contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnableMetricsCollectionQuery
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Metrics [Metrics] <p>One or more of the following metrics. If you omit this parameter, all metrics are enabled.</p> <ul> <li> <p> <code>GroupMinSize</code> </p> </li> <li> <p> <code>GroupMaxSize</code> </p> </li> <li> <p> <code>GroupDesiredCapacity</code> </p> </li> <li> <p> <code>GroupInServiceInstances</code> </p> </li> <li> <p> <code>GroupPendingInstances</code> </p> </li> <li> <p> <code>GroupStandbyInstances</code> </p> </li> <li> <p> <code>GroupTerminatingInstances</code> </p> </li> <li> <p> <code>GroupTotalInstances</code> </p> </li> </ul>
-- * AutoScalingGroupName [ResourceName] <p>The name of the Auto Scaling group.</p>
-- * Granularity [XmlStringMaxLen255] <p>The granularity to associate with the metrics to collect. The only valid value is <code>1Minute</code>.</p>
-- Required key: AutoScalingGroupName
-- Required key: Granularity
-- @return EnableMetricsCollectionQuery structure as a key-value pair table
function M.EnableMetricsCollectionQuery(args)
	assert(args, "You must provide an argument table when creating EnableMetricsCollectionQuery")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Metrics"] = args["Metrics"],
		["AutoScalingGroupName"] = args["AutoScalingGroupName"],
		["Granularity"] = args["Granularity"],
	}
	asserts.AssertEnableMetricsCollectionQuery(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LoadBalancerState = { ["State"] = true, ["LoadBalancerName"] = true, nil }

function asserts.AssertLoadBalancerState(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LoadBalancerState to be of type 'table'")
	if struct["State"] then asserts.AssertXmlStringMaxLen255(struct["State"]) end
	if struct["LoadBalancerName"] then asserts.AssertXmlStringMaxLen255(struct["LoadBalancerName"]) end
	for k,_ in pairs(struct) do
		assert(keys.LoadBalancerState[k], "LoadBalancerState contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LoadBalancerState
-- <p>Describes the state of a Classic Load Balancer.</p> <p>If you specify a load balancer when creating the Auto Scaling group, the state of the load balancer is <code>InService</code>.</p> <p>If you attach a load balancer to an existing Auto Scaling group, the initial state is <code>Adding</code>. The state transitions to <code>Added</code> after all instances in the group are registered with the load balancer. If ELB health checks are enabled for the load balancer, the state transitions to <code>InService</code> after at least one instance in the group passes the health check. If EC2 health checks are enabled instead, the load balancer remains in the <code>Added</code> state.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * State [XmlStringMaxLen255] <p>One of the following load balancer states:</p> <ul> <li> <p> <code>Adding</code> - The instances in the group are being registered with the load balancer.</p> </li> <li> <p> <code>Added</code> - All instances in the group are registered with the load balancer.</p> </li> <li> <p> <code>InService</code> - At least one instance in the group passed an ELB health check.</p> </li> <li> <p> <code>Removing</code> - The instances in the group are being deregistered from the load balancer. If connection draining is enabled, Elastic Load Balancing waits for in-flight requests to complete before deregistering the instances.</p> </li> <li> <p> <code>Removed</code> - All instances in the group are deregistered from the load balancer.</p> </li> </ul>
-- * LoadBalancerName [XmlStringMaxLen255] <p>The name of the load balancer.</p>
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
		["State"] = args["State"],
		["LoadBalancerName"] = args["LoadBalancerName"],
	}
	asserts.AssertLoadBalancerState(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ScheduledUpdateGroupActionRequest = { ["MinSize"] = true, ["DesiredCapacity"] = true, ["Recurrence"] = true, ["MaxSize"] = true, ["ScheduledActionName"] = true, ["StartTime"] = true, ["EndTime"] = true, nil }

function asserts.AssertScheduledUpdateGroupActionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScheduledUpdateGroupActionRequest to be of type 'table'")
	assert(struct["ScheduledActionName"], "Expected key ScheduledActionName to exist in table")
	if struct["MinSize"] then asserts.AssertAutoScalingGroupMinSize(struct["MinSize"]) end
	if struct["DesiredCapacity"] then asserts.AssertAutoScalingGroupDesiredCapacity(struct["DesiredCapacity"]) end
	if struct["Recurrence"] then asserts.AssertXmlStringMaxLen255(struct["Recurrence"]) end
	if struct["MaxSize"] then asserts.AssertAutoScalingGroupMaxSize(struct["MaxSize"]) end
	if struct["ScheduledActionName"] then asserts.AssertXmlStringMaxLen255(struct["ScheduledActionName"]) end
	if struct["StartTime"] then asserts.AssertTimestampType(struct["StartTime"]) end
	if struct["EndTime"] then asserts.AssertTimestampType(struct["EndTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.ScheduledUpdateGroupActionRequest[k], "ScheduledUpdateGroupActionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScheduledUpdateGroupActionRequest
-- <p>Describes one or more scheduled scaling action updates for a specified Auto Scaling group. Used in combination with <a>BatchPutScheduledUpdateGroupAction</a>. </p> <p>When updating a scheduled scaling action, all optional parameters are left unchanged if not specified. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MinSize [AutoScalingGroupMinSize] <p>The minimum size of the group.</p>
-- * DesiredCapacity [AutoScalingGroupDesiredCapacity] <p>The number of EC2 instances that should be running in the group.</p>
-- * Recurrence [XmlStringMaxLen255] <p>The recurring schedule for the action, in Unix cron syntax format. For more information about this format, see <a href="http://crontab.org">Crontab</a>.</p>
-- * MaxSize [AutoScalingGroupMaxSize] <p>The maximum size of the group.</p>
-- * ScheduledActionName [XmlStringMaxLen255] <p>The name of the scaling action.</p>
-- * StartTime [TimestampType] <p>The time for the action to start, in "YYYY-MM-DDThh:mm:ssZ" format in UTC/GMT only (for example, <code>2014-06-01T00:00:00Z</code>).</p> <p>If you specify <code>Recurrence</code> and <code>StartTime</code>, Amazon EC2 Auto Scaling performs the action at this time, and then performs the action based on the specified recurrence.</p> <p>If you try to schedule the action in the past, Amazon EC2 Auto Scaling returns an error message.</p>
-- * EndTime [TimestampType] <p>The time for the recurring schedule to end. Amazon EC2 Auto Scaling does not perform the action after this time.</p>
-- Required key: ScheduledActionName
-- @return ScheduledUpdateGroupActionRequest structure as a key-value pair table
function M.ScheduledUpdateGroupActionRequest(args)
	assert(args, "You must provide an argument table when creating ScheduledUpdateGroupActionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MinSize"] = args["MinSize"],
		["DesiredCapacity"] = args["DesiredCapacity"],
		["Recurrence"] = args["Recurrence"],
		["MaxSize"] = args["MaxSize"],
		["ScheduledActionName"] = args["ScheduledActionName"],
		["StartTime"] = args["StartTime"],
		["EndTime"] = args["EndTime"],
	}
	asserts.AssertScheduledUpdateGroupActionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Alarm = { ["AlarmName"] = true, ["AlarmARN"] = true, nil }

function asserts.AssertAlarm(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Alarm to be of type 'table'")
	if struct["AlarmName"] then asserts.AssertXmlStringMaxLen255(struct["AlarmName"]) end
	if struct["AlarmARN"] then asserts.AssertResourceName(struct["AlarmARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.Alarm[k], "Alarm contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Alarm
-- <p>Describes an alarm.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AlarmName [XmlStringMaxLen255] <p>The name of the alarm.</p>
-- * AlarmARN [ResourceName] <p>The Amazon Resource Name (ARN) of the alarm.</p>
-- @return Alarm structure as a key-value pair table
function M.Alarm(args)
	assert(args, "You must provide an argument table when creating Alarm")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AlarmName"] = args["AlarmName"],
		["AlarmARN"] = args["AlarmARN"],
	}
	asserts.AssertAlarm(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AttachLoadBalancersType = { ["AutoScalingGroupName"] = true, ["LoadBalancerNames"] = true, nil }

function asserts.AssertAttachLoadBalancersType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachLoadBalancersType to be of type 'table'")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	assert(struct["LoadBalancerNames"], "Expected key LoadBalancerNames to exist in table")
	if struct["AutoScalingGroupName"] then asserts.AssertResourceName(struct["AutoScalingGroupName"]) end
	if struct["LoadBalancerNames"] then asserts.AssertLoadBalancerNames(struct["LoadBalancerNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttachLoadBalancersType[k], "AttachLoadBalancersType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachLoadBalancersType
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AutoScalingGroupName [ResourceName] <p>The name of the Auto Scaling group.</p>
-- * LoadBalancerNames [LoadBalancerNames] <p>The names of the load balancers. You can specify up to 10 load balancers.</p>
-- Required key: AutoScalingGroupName
-- Required key: LoadBalancerNames
-- @return AttachLoadBalancersType structure as a key-value pair table
function M.AttachLoadBalancersType(args)
	assert(args, "You must provide an argument table when creating AttachLoadBalancersType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AutoScalingGroupName"] = args["AutoScalingGroupName"],
		["LoadBalancerNames"] = args["LoadBalancerNames"],
	}
	asserts.AssertAttachLoadBalancersType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AttachLoadBalancerTargetGroupsType = { ["TargetGroupARNs"] = true, ["AutoScalingGroupName"] = true, nil }

function asserts.AssertAttachLoadBalancerTargetGroupsType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachLoadBalancerTargetGroupsType to be of type 'table'")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	assert(struct["TargetGroupARNs"], "Expected key TargetGroupARNs to exist in table")
	if struct["TargetGroupARNs"] then asserts.AssertTargetGroupARNs(struct["TargetGroupARNs"]) end
	if struct["AutoScalingGroupName"] then asserts.AssertResourceName(struct["AutoScalingGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttachLoadBalancerTargetGroupsType[k], "AttachLoadBalancerTargetGroupsType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachLoadBalancerTargetGroupsType
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TargetGroupARNs [TargetGroupARNs] <p>The Amazon Resource Names (ARN) of the target groups. You can specify up to 10 target groups.</p>
-- * AutoScalingGroupName [ResourceName] <p>The name of the Auto Scaling group.</p>
-- Required key: AutoScalingGroupName
-- Required key: TargetGroupARNs
-- @return AttachLoadBalancerTargetGroupsType structure as a key-value pair table
function M.AttachLoadBalancerTargetGroupsType(args)
	assert(args, "You must provide an argument table when creating AttachLoadBalancerTargetGroupsType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TargetGroupARNs"] = args["TargetGroupARNs"],
		["AutoScalingGroupName"] = args["AutoScalingGroupName"],
	}
	asserts.AssertAttachLoadBalancerTargetGroupsType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ActivitiesType = { ["Activities"] = true, ["NextToken"] = true, nil }

function asserts.AssertActivitiesType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivitiesType to be of type 'table'")
	assert(struct["Activities"], "Expected key Activities to exist in table")
	if struct["Activities"] then asserts.AssertActivities(struct["Activities"]) end
	if struct["NextToken"] then asserts.AssertXmlString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ActivitiesType[k], "ActivitiesType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivitiesType
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Activities [Activities] <p>The scaling activities. Activities are sorted by start time. Activities still in progress are described first.</p>
-- * NextToken [XmlString] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
-- Required key: Activities
-- @return ActivitiesType structure as a key-value pair table
function M.ActivitiesType(args)
	assert(args, "You must provide an argument table when creating ActivitiesType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Activities"] = args["Activities"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertActivitiesType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutLifecycleHookType = { ["HeartbeatTimeout"] = true, ["RoleARN"] = true, ["AutoScalingGroupName"] = true, ["LifecycleHookName"] = true, ["NotificationMetadata"] = true, ["DefaultResult"] = true, ["NotificationTargetARN"] = true, ["LifecycleTransition"] = true, nil }

function asserts.AssertPutLifecycleHookType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutLifecycleHookType to be of type 'table'")
	assert(struct["LifecycleHookName"], "Expected key LifecycleHookName to exist in table")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	if struct["HeartbeatTimeout"] then asserts.AssertHeartbeatTimeout(struct["HeartbeatTimeout"]) end
	if struct["RoleARN"] then asserts.AssertResourceName(struct["RoleARN"]) end
	if struct["AutoScalingGroupName"] then asserts.AssertResourceName(struct["AutoScalingGroupName"]) end
	if struct["LifecycleHookName"] then asserts.AssertAsciiStringMaxLen255(struct["LifecycleHookName"]) end
	if struct["NotificationMetadata"] then asserts.AssertXmlStringMaxLen1023(struct["NotificationMetadata"]) end
	if struct["DefaultResult"] then asserts.AssertLifecycleActionResult(struct["DefaultResult"]) end
	if struct["NotificationTargetARN"] then asserts.AssertNotificationTargetResourceName(struct["NotificationTargetARN"]) end
	if struct["LifecycleTransition"] then asserts.AssertLifecycleTransition(struct["LifecycleTransition"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutLifecycleHookType[k], "PutLifecycleHookType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutLifecycleHookType
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HeartbeatTimeout [HeartbeatTimeout] <p>The maximum time, in seconds, that can elapse before the lifecycle hook times out. The range is from 30 to 7200 seconds. The default is 3600 seconds (1 hour).</p> <p>If the lifecycle hook times out, Amazon EC2 Auto Scaling performs the default action. You can prevent the lifecycle hook from timing out by calling <a>RecordLifecycleActionHeartbeat</a>.</p>
-- * RoleARN [ResourceName] <p>The ARN of the IAM role that allows the Auto Scaling group to publish to the specified notification target.</p> <p>This parameter is required for new lifecycle hooks, but optional when updating existing hooks.</p>
-- * AutoScalingGroupName [ResourceName] <p>The name of the Auto Scaling group.</p>
-- * LifecycleHookName [AsciiStringMaxLen255] <p>The name of the lifecycle hook.</p>
-- * NotificationMetadata [XmlStringMaxLen1023] <p>Contains additional information that you want to include any time Amazon EC2 Auto Scaling sends a message to the notification target.</p>
-- * DefaultResult [LifecycleActionResult] <p>Defines the action the Auto Scaling group should take when the lifecycle hook timeout elapses or if an unexpected failure occurs. This parameter can be either <code>CONTINUE</code> or <code>ABANDON</code>. The default value is <code>ABANDON</code>.</p>
-- * NotificationTargetARN [NotificationTargetResourceName] <p>The ARN of the notification target that Amazon EC2 Auto Scaling will use to notify you when an instance is in the transition state for the lifecycle hook. This target can be either an SQS queue or an SNS topic. If you specify an empty string, this overrides the current ARN.</p> <p>This operation uses the JSON format when sending notifications to an Amazon SQS queue, and an email key/value pair format when sending notifications to an Amazon SNS topic.</p> <p>When you specify a notification target, Amazon EC2 Auto Scaling sends it a test message. Test messages contains the following additional key/value pair: <code>"Event": "autoscaling:TEST_NOTIFICATION"</code>.</p>
-- * LifecycleTransition [LifecycleTransition] <p>The instance state to which you want to attach the lifecycle hook. The possible values are:</p> <ul> <li> <p>autoscaling:EC2_INSTANCE_LAUNCHING</p> </li> <li> <p>autoscaling:EC2_INSTANCE_TERMINATING</p> </li> </ul> <p>This parameter is required for new lifecycle hooks, but optional when updating existing hooks.</p>
-- Required key: LifecycleHookName
-- Required key: AutoScalingGroupName
-- @return PutLifecycleHookType structure as a key-value pair table
function M.PutLifecycleHookType(args)
	assert(args, "You must provide an argument table when creating PutLifecycleHookType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HeartbeatTimeout"] = args["HeartbeatTimeout"],
		["RoleARN"] = args["RoleARN"],
		["AutoScalingGroupName"] = args["AutoScalingGroupName"],
		["LifecycleHookName"] = args["LifecycleHookName"],
		["NotificationMetadata"] = args["NotificationMetadata"],
		["DefaultResult"] = args["DefaultResult"],
		["NotificationTargetARN"] = args["NotificationTargetARN"],
		["LifecycleTransition"] = args["LifecycleTransition"],
	}
	asserts.AssertPutLifecycleHookType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutLifecycleHookAnswer = { nil }

function asserts.AssertPutLifecycleHookAnswer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutLifecycleHookAnswer to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.PutLifecycleHookAnswer[k], "PutLifecycleHookAnswer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutLifecycleHookAnswer
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return PutLifecycleHookAnswer structure as a key-value pair table
function M.PutLifecycleHookAnswer(args)
	assert(args, "You must provide an argument table when creating PutLifecycleHookAnswer")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertPutLifecycleHookAnswer(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Activity = { ["Description"] = true, ["AutoScalingGroupName"] = true, ["ActivityId"] = true, ["Details"] = true, ["StartTime"] = true, ["Progress"] = true, ["EndTime"] = true, ["Cause"] = true, ["StatusMessage"] = true, ["StatusCode"] = true, nil }

function asserts.AssertActivity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Activity to be of type 'table'")
	assert(struct["ActivityId"], "Expected key ActivityId to exist in table")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	assert(struct["Cause"], "Expected key Cause to exist in table")
	assert(struct["StartTime"], "Expected key StartTime to exist in table")
	assert(struct["StatusCode"], "Expected key StatusCode to exist in table")
	if struct["Description"] then asserts.AssertXmlString(struct["Description"]) end
	if struct["AutoScalingGroupName"] then asserts.AssertXmlStringMaxLen255(struct["AutoScalingGroupName"]) end
	if struct["ActivityId"] then asserts.AssertXmlString(struct["ActivityId"]) end
	if struct["Details"] then asserts.AssertXmlString(struct["Details"]) end
	if struct["StartTime"] then asserts.AssertTimestampType(struct["StartTime"]) end
	if struct["Progress"] then asserts.AssertProgress(struct["Progress"]) end
	if struct["EndTime"] then asserts.AssertTimestampType(struct["EndTime"]) end
	if struct["Cause"] then asserts.AssertXmlStringMaxLen1023(struct["Cause"]) end
	if struct["StatusMessage"] then asserts.AssertXmlStringMaxLen255(struct["StatusMessage"]) end
	if struct["StatusCode"] then asserts.AssertScalingActivityStatusCode(struct["StatusCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.Activity[k], "Activity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Activity
-- <p>Describes scaling activity, which is a long-running process that represents a change to your Auto Scaling group, such as changing its size or replacing an instance.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Description [XmlString] <p>A friendly, more verbose description of the activity.</p>
-- * AutoScalingGroupName [XmlStringMaxLen255] <p>The name of the Auto Scaling group.</p>
-- * ActivityId [XmlString] <p>The ID of the activity.</p>
-- * Details [XmlString] <p>The details about the activity.</p>
-- * StartTime [TimestampType] <p>The start time of the activity.</p>
-- * Progress [Progress] <p>A value between 0 and 100 that indicates the progress of the activity.</p>
-- * EndTime [TimestampType] <p>The end time of the activity.</p>
-- * Cause [XmlStringMaxLen1023] <p>The reason the activity began.</p>
-- * StatusMessage [XmlStringMaxLen255] <p>A friendly, more verbose description of the activity status.</p>
-- * StatusCode [ScalingActivityStatusCode] <p>The current status of the activity.</p>
-- Required key: ActivityId
-- Required key: AutoScalingGroupName
-- Required key: Cause
-- Required key: StartTime
-- Required key: StatusCode
-- @return Activity structure as a key-value pair table
function M.Activity(args)
	assert(args, "You must provide an argument table when creating Activity")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Description"] = args["Description"],
		["AutoScalingGroupName"] = args["AutoScalingGroupName"],
		["ActivityId"] = args["ActivityId"],
		["Details"] = args["Details"],
		["StartTime"] = args["StartTime"],
		["Progress"] = args["Progress"],
		["EndTime"] = args["EndTime"],
		["Cause"] = args["Cause"],
		["StatusMessage"] = args["StatusMessage"],
		["StatusCode"] = args["StatusCode"],
	}
	asserts.AssertActivity(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MetricCollectionType = { ["Metric"] = true, nil }

function asserts.AssertMetricCollectionType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MetricCollectionType to be of type 'table'")
	if struct["Metric"] then asserts.AssertXmlStringMaxLen255(struct["Metric"]) end
	for k,_ in pairs(struct) do
		assert(keys.MetricCollectionType[k], "MetricCollectionType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MetricCollectionType
-- <p>Describes a metric.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Metric [XmlStringMaxLen255] <p>One of the following metrics:</p> <ul> <li> <p> <code>GroupMinSize</code> </p> </li> <li> <p> <code>GroupMaxSize</code> </p> </li> <li> <p> <code>GroupDesiredCapacity</code> </p> </li> <li> <p> <code>GroupInServiceInstances</code> </p> </li> <li> <p> <code>GroupPendingInstances</code> </p> </li> <li> <p> <code>GroupStandbyInstances</code> </p> </li> <li> <p> <code>GroupTerminatingInstances</code> </p> </li> <li> <p> <code>GroupTotalInstances</code> </p> </li> </ul>
-- @return MetricCollectionType structure as a key-value pair table
function M.MetricCollectionType(args)
	assert(args, "You must provide an argument table when creating MetricCollectionType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Metric"] = args["Metric"],
	}
	asserts.AssertMetricCollectionType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeAutoScalingInstancesType = { ["MaxRecords"] = true, ["NextToken"] = true, ["InstanceIds"] = true, nil }

function asserts.AssertDescribeAutoScalingInstancesType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAutoScalingInstancesType to be of type 'table'")
	if struct["MaxRecords"] then asserts.AssertMaxRecords(struct["MaxRecords"]) end
	if struct["NextToken"] then asserts.AssertXmlString(struct["NextToken"]) end
	if struct["InstanceIds"] then asserts.AssertInstanceIds(struct["InstanceIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAutoScalingInstancesType[k], "DescribeAutoScalingInstancesType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAutoScalingInstancesType
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MaxRecords [MaxRecords] <p>The maximum number of items to return with this call. The default value is 50 and the maximum value is 50.</p>
-- * NextToken [XmlString] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- * InstanceIds [InstanceIds] <p>The IDs of the instances. You can specify up to <code>MaxRecords</code> IDs. If you omit this parameter, all Auto Scaling instances are described. If you specify an ID that does not exist, it is ignored with no error.</p>
-- @return DescribeAutoScalingInstancesType structure as a key-value pair table
function M.DescribeAutoScalingInstancesType(args)
	assert(args, "You must provide an argument table when creating DescribeAutoScalingInstancesType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MaxRecords"] = args["MaxRecords"],
		["NextToken"] = args["NextToken"],
		["InstanceIds"] = args["InstanceIds"],
	}
	asserts.AssertDescribeAutoScalingInstancesType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeLoadBalancerTargetGroupsRequest = { ["MaxRecords"] = true, ["NextToken"] = true, ["AutoScalingGroupName"] = true, nil }

function asserts.AssertDescribeLoadBalancerTargetGroupsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLoadBalancerTargetGroupsRequest to be of type 'table'")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	if struct["MaxRecords"] then asserts.AssertMaxRecords(struct["MaxRecords"]) end
	if struct["NextToken"] then asserts.AssertXmlString(struct["NextToken"]) end
	if struct["AutoScalingGroupName"] then asserts.AssertResourceName(struct["AutoScalingGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeLoadBalancerTargetGroupsRequest[k], "DescribeLoadBalancerTargetGroupsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLoadBalancerTargetGroupsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MaxRecords [MaxRecords] <p>The maximum number of items to return with this call. The default value is 100 and the maximum value is 100.</p>
-- * NextToken [XmlString] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- * AutoScalingGroupName [ResourceName] <p>The name of the Auto Scaling group.</p>
-- Required key: AutoScalingGroupName
-- @return DescribeLoadBalancerTargetGroupsRequest structure as a key-value pair table
function M.DescribeLoadBalancerTargetGroupsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeLoadBalancerTargetGroupsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MaxRecords"] = args["MaxRecords"],
		["NextToken"] = args["NextToken"],
		["AutoScalingGroupName"] = args["AutoScalingGroupName"],
	}
	asserts.AssertDescribeLoadBalancerTargetGroupsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SetInstanceHealthQuery = { ["InstanceId"] = true, ["ShouldRespectGracePeriod"] = true, ["HealthStatus"] = true, nil }

function asserts.AssertSetInstanceHealthQuery(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetInstanceHealthQuery to be of type 'table'")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	assert(struct["HealthStatus"], "Expected key HealthStatus to exist in table")
	if struct["InstanceId"] then asserts.AssertXmlStringMaxLen19(struct["InstanceId"]) end
	if struct["ShouldRespectGracePeriod"] then asserts.AssertShouldRespectGracePeriod(struct["ShouldRespectGracePeriod"]) end
	if struct["HealthStatus"] then asserts.AssertXmlStringMaxLen32(struct["HealthStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetInstanceHealthQuery[k], "SetInstanceHealthQuery contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetInstanceHealthQuery
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [XmlStringMaxLen19] <p>The ID of the instance.</p>
-- * ShouldRespectGracePeriod [ShouldRespectGracePeriod] <p>If the Auto Scaling group of the specified instance has a <code>HealthCheckGracePeriod</code> specified for the group, by default, this call will respect the grace period. Set this to <code>False</code>, if you do not want the call to respect the grace period associated with the group.</p> <p>For more information, see the description of the health check grace period for <a>CreateAutoScalingGroup</a>.</p>
-- * HealthStatus [XmlStringMaxLen32] <p>The health status of the instance. Set to <code>Healthy</code> if you want the instance to remain in service. Set to <code>Unhealthy</code> if you want the instance to be out of service. Amazon EC2 Auto Scaling will terminate and replace the unhealthy instance.</p>
-- Required key: InstanceId
-- Required key: HealthStatus
-- @return SetInstanceHealthQuery structure as a key-value pair table
function M.SetInstanceHealthQuery(args)
	assert(args, "You must provide an argument table when creating SetInstanceHealthQuery")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceId"] = args["InstanceId"],
		["ShouldRespectGracePeriod"] = args["ShouldRespectGracePeriod"],
		["HealthStatus"] = args["HealthStatus"],
	}
	asserts.AssertSetInstanceHealthQuery(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeLoadBalancersResponse = { ["LoadBalancers"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeLoadBalancersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLoadBalancersResponse to be of type 'table'")
	if struct["LoadBalancers"] then asserts.AssertLoadBalancerStates(struct["LoadBalancers"]) end
	if struct["NextToken"] then asserts.AssertXmlString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeLoadBalancersResponse[k], "DescribeLoadBalancersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLoadBalancersResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LoadBalancers [LoadBalancerStates] <p>The load balancers.</p>
-- * NextToken [XmlString] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
-- @return DescribeLoadBalancersResponse structure as a key-value pair table
function M.DescribeLoadBalancersResponse(args)
	assert(args, "You must provide an argument table when creating DescribeLoadBalancersResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LoadBalancers"] = args["LoadBalancers"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeLoadBalancersResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AutoScalingGroupNamesType = { ["MaxRecords"] = true, ["NextToken"] = true, ["AutoScalingGroupNames"] = true, nil }

function asserts.AssertAutoScalingGroupNamesType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AutoScalingGroupNamesType to be of type 'table'")
	if struct["MaxRecords"] then asserts.AssertMaxRecords(struct["MaxRecords"]) end
	if struct["NextToken"] then asserts.AssertXmlString(struct["NextToken"]) end
	if struct["AutoScalingGroupNames"] then asserts.AssertAutoScalingGroupNames(struct["AutoScalingGroupNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.AutoScalingGroupNamesType[k], "AutoScalingGroupNamesType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AutoScalingGroupNamesType
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MaxRecords [MaxRecords] <p>The maximum number of items to return with this call. The default value is 50 and the maximum value is 100.</p>
-- * NextToken [XmlString] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- * AutoScalingGroupNames [AutoScalingGroupNames] <p>The names of the Auto Scaling groups. You can specify up to <code>MaxRecords</code> names. If you omit this parameter, all Auto Scaling groups are described.</p>
-- @return AutoScalingGroupNamesType structure as a key-value pair table
function M.AutoScalingGroupNamesType(args)
	assert(args, "You must provide an argument table when creating AutoScalingGroupNamesType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MaxRecords"] = args["MaxRecords"],
		["NextToken"] = args["NextToken"],
		["AutoScalingGroupNames"] = args["AutoScalingGroupNames"],
	}
	asserts.AssertAutoScalingGroupNamesType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TerminateInstanceInAutoScalingGroupType = { ["InstanceId"] = true, ["ShouldDecrementDesiredCapacity"] = true, nil }

function asserts.AssertTerminateInstanceInAutoScalingGroupType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TerminateInstanceInAutoScalingGroupType to be of type 'table'")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	assert(struct["ShouldDecrementDesiredCapacity"], "Expected key ShouldDecrementDesiredCapacity to exist in table")
	if struct["InstanceId"] then asserts.AssertXmlStringMaxLen19(struct["InstanceId"]) end
	if struct["ShouldDecrementDesiredCapacity"] then asserts.AssertShouldDecrementDesiredCapacity(struct["ShouldDecrementDesiredCapacity"]) end
	for k,_ in pairs(struct) do
		assert(keys.TerminateInstanceInAutoScalingGroupType[k], "TerminateInstanceInAutoScalingGroupType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TerminateInstanceInAutoScalingGroupType
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [XmlStringMaxLen19] <p>The ID of the instance.</p>
-- * ShouldDecrementDesiredCapacity [ShouldDecrementDesiredCapacity] <p>Indicates whether terminating the instance also decrements the size of the Auto Scaling group.</p>
-- Required key: InstanceId
-- Required key: ShouldDecrementDesiredCapacity
-- @return TerminateInstanceInAutoScalingGroupType structure as a key-value pair table
function M.TerminateInstanceInAutoScalingGroupType(args)
	assert(args, "You must provide an argument table when creating TerminateInstanceInAutoScalingGroupType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceId"] = args["InstanceId"],
		["ShouldDecrementDesiredCapacity"] = args["ShouldDecrementDesiredCapacity"],
	}
	asserts.AssertTerminateInstanceInAutoScalingGroupType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertXmlStringMaxLen19(str)
	assert(str)
	assert(type(str) == "string", "Expected XmlStringMaxLen19 to be of type 'string'")
	assert(#str <= 19, "Expected string to be max 19 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.XmlStringMaxLen19(str)
	asserts.AssertXmlStringMaxLen19(str)
	return str
end

function asserts.AssertLaunchTemplateName(str)
	assert(str)
	assert(type(str) == "string", "Expected LaunchTemplateName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
end

--  
function M.LaunchTemplateName(str)
	asserts.AssertLaunchTemplateName(str)
	return str
end

function asserts.AssertMetricDimensionValue(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricDimensionValue to be of type 'string'")
end

--  
function M.MetricDimensionValue(str)
	asserts.AssertMetricDimensionValue(str)
	return str
end

function asserts.AssertXmlStringMaxLen255(str)
	assert(str)
	assert(type(str) == "string", "Expected XmlStringMaxLen255 to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.XmlStringMaxLen255(str)
	asserts.AssertXmlStringMaxLen255(str)
	return str
end

function asserts.AssertNotificationTargetResourceName(str)
	assert(str)
	assert(type(str) == "string", "Expected NotificationTargetResourceName to be of type 'string'")
	assert(#str <= 1600, "Expected string to be max 1600 characters")
end

--  
function M.NotificationTargetResourceName(str)
	asserts.AssertNotificationTargetResourceName(str)
	return str
end

function asserts.AssertXmlStringMaxLen511(str)
	assert(str)
	assert(type(str) == "string", "Expected XmlStringMaxLen511 to be of type 'string'")
	assert(#str <= 511, "Expected string to be max 511 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.XmlStringMaxLen511(str)
	asserts.AssertXmlStringMaxLen511(str)
	return str
end

function asserts.AssertXmlStringMaxLen1600(str)
	assert(str)
	assert(type(str) == "string", "Expected XmlStringMaxLen1600 to be of type 'string'")
	assert(#str <= 1600, "Expected string to be max 1600 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.XmlStringMaxLen1600(str)
	asserts.AssertXmlStringMaxLen1600(str)
	return str
end

function asserts.AssertXmlStringMaxLen32(str)
	assert(str)
	assert(type(str) == "string", "Expected XmlStringMaxLen32 to be of type 'string'")
	assert(#str <= 32, "Expected string to be max 32 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.XmlStringMaxLen32(str)
	asserts.AssertXmlStringMaxLen32(str)
	return str
end

function asserts.AssertScalingActivityStatusCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ScalingActivityStatusCode to be of type 'string'")
end

--  
function M.ScalingActivityStatusCode(str)
	asserts.AssertScalingActivityStatusCode(str)
	return str
end

function asserts.AssertMetricName(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricName to be of type 'string'")
end

--  
function M.MetricName(str)
	asserts.AssertMetricName(str)
	return str
end

function asserts.AssertXmlString(str)
	assert(str)
	assert(type(str) == "string", "Expected XmlString to be of type 'string'")
end

--  
function M.XmlString(str)
	asserts.AssertXmlString(str)
	return str
end

function asserts.AssertLifecycleActionResult(str)
	assert(str)
	assert(type(str) == "string", "Expected LifecycleActionResult to be of type 'string'")
end

--  
function M.LifecycleActionResult(str)
	asserts.AssertLifecycleActionResult(str)
	return str
end

function asserts.AssertAsciiStringMaxLen255(str)
	assert(str)
	assert(type(str) == "string", "Expected AsciiStringMaxLen255 to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AsciiStringMaxLen255(str)
	asserts.AssertAsciiStringMaxLen255(str)
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

function asserts.AssertMetricUnit(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricUnit to be of type 'string'")
end

--  
function M.MetricUnit(str)
	asserts.AssertMetricUnit(str)
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

function asserts.AssertLifecycleTransition(str)
	assert(str)
	assert(type(str) == "string", "Expected LifecycleTransition to be of type 'string'")
end

--  
function M.LifecycleTransition(str)
	asserts.AssertLifecycleTransition(str)
	return str
end

function asserts.AssertMetricDimensionName(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricDimensionName to be of type 'string'")
end

--  
function M.MetricDimensionName(str)
	asserts.AssertMetricDimensionName(str)
	return str
end

function asserts.AssertLifecycleActionToken(str)
	assert(str)
	assert(type(str) == "string", "Expected LifecycleActionToken to be of type 'string'")
	assert(#str <= 36, "Expected string to be max 36 characters")
	assert(#str >= 36, "Expected string to be min 36 characters")
end

--  
function M.LifecycleActionToken(str)
	asserts.AssertLifecycleActionToken(str)
	return str
end

function asserts.AssertXmlStringUserData(str)
	assert(str)
	assert(type(str) == "string", "Expected XmlStringUserData to be of type 'string'")
	assert(#str <= 21847, "Expected string to be max 21847 characters")
end

--  
function M.XmlStringUserData(str)
	asserts.AssertXmlStringUserData(str)
	return str
end

function asserts.AssertBlockDeviceEbsVolumeType(str)
	assert(str)
	assert(type(str) == "string", "Expected BlockDeviceEbsVolumeType to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.BlockDeviceEbsVolumeType(str)
	asserts.AssertBlockDeviceEbsVolumeType(str)
	return str
end

function asserts.AssertMetricStatistic(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricStatistic to be of type 'string'")
end

--  
function M.MetricStatistic(str)
	asserts.AssertMetricStatistic(str)
	return str
end

function asserts.AssertMetricNamespace(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricNamespace to be of type 'string'")
end

--  
function M.MetricNamespace(str)
	asserts.AssertMetricNamespace(str)
	return str
end

function asserts.AssertResourceName(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceName to be of type 'string'")
	assert(#str <= 1600, "Expected string to be max 1600 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ResourceName(str)
	asserts.AssertResourceName(str)
	return str
end

function asserts.AssertSpotPrice(str)
	assert(str)
	assert(type(str) == "string", "Expected SpotPrice to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.SpotPrice(str)
	asserts.AssertSpotPrice(str)
	return str
end

function asserts.AssertXmlStringMaxLen2047(str)
	assert(str)
	assert(type(str) == "string", "Expected XmlStringMaxLen2047 to be of type 'string'")
	assert(#str <= 2047, "Expected string to be max 2047 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.XmlStringMaxLen2047(str)
	asserts.AssertXmlStringMaxLen2047(str)
	return str
end

function asserts.AssertXmlStringMaxLen1023(str)
	assert(str)
	assert(type(str) == "string", "Expected XmlStringMaxLen1023 to be of type 'string'")
	assert(#str <= 1023, "Expected string to be max 1023 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.XmlStringMaxLen1023(str)
	asserts.AssertXmlStringMaxLen1023(str)
	return str
end

function asserts.AssertXmlStringMaxLen64(str)
	assert(str)
	assert(type(str) == "string", "Expected XmlStringMaxLen64 to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.XmlStringMaxLen64(str)
	asserts.AssertXmlStringMaxLen64(str)
	return str
end

function asserts.AssertMetricType(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricType to be of type 'string'")
end

--  
function M.MetricType(str)
	asserts.AssertMetricType(str)
	return str
end

function asserts.AssertLifecycleState(str)
	assert(str)
	assert(type(str) == "string", "Expected LifecycleState to be of type 'string'")
end

--  
function M.LifecycleState(str)
	asserts.AssertLifecycleState(str)
	return str
end

function asserts.AssertMetricScale(double)
	assert(double)
	assert(type(double) == "number", "Expected MetricScale to be of type 'number'")
end

function M.MetricScale(double)
	asserts.AssertMetricScale(double)
	return double
end

function asserts.AssertMinAdjustmentMagnitude(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MinAdjustmentMagnitude to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.MinAdjustmentMagnitude(integer)
	asserts.AssertMinAdjustmentMagnitude(integer)
	return integer
end

function asserts.AssertNumberOfAutoScalingGroups(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected NumberOfAutoScalingGroups to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.NumberOfAutoScalingGroups(integer)
	asserts.AssertNumberOfAutoScalingGroups(integer)
	return integer
end

function asserts.AssertProgress(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Progress to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Progress(integer)
	asserts.AssertProgress(integer)
	return integer
end

function asserts.AssertHealthCheckGracePeriod(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected HealthCheckGracePeriod to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.HealthCheckGracePeriod(integer)
	asserts.AssertHealthCheckGracePeriod(integer)
	return integer
end

function asserts.AssertAutoScalingGroupDesiredCapacity(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected AutoScalingGroupDesiredCapacity to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.AutoScalingGroupDesiredCapacity(integer)
	asserts.AssertAutoScalingGroupDesiredCapacity(integer)
	return integer
end

function asserts.AssertMaxNumberOfLaunchConfigurations(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxNumberOfLaunchConfigurations to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.MaxNumberOfLaunchConfigurations(integer)
	asserts.AssertMaxNumberOfLaunchConfigurations(integer)
	return integer
end

function asserts.AssertGlobalTimeout(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected GlobalTimeout to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.GlobalTimeout(integer)
	asserts.AssertGlobalTimeout(integer)
	return integer
end

function asserts.AssertNumberOfLaunchConfigurations(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected NumberOfLaunchConfigurations to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.NumberOfLaunchConfigurations(integer)
	asserts.AssertNumberOfLaunchConfigurations(integer)
	return integer
end

function asserts.AssertMaxNumberOfAutoScalingGroups(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxNumberOfAutoScalingGroups to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.MaxNumberOfAutoScalingGroups(integer)
	asserts.AssertMaxNumberOfAutoScalingGroups(integer)
	return integer
end

function asserts.AssertMinAdjustmentStep(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MinAdjustmentStep to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.MinAdjustmentStep(integer)
	asserts.AssertMinAdjustmentStep(integer)
	return integer
end

function asserts.AssertHeartbeatTimeout(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected HeartbeatTimeout to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.HeartbeatTimeout(integer)
	asserts.AssertHeartbeatTimeout(integer)
	return integer
end

function asserts.AssertAutoScalingGroupMaxSize(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected AutoScalingGroupMaxSize to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.AutoScalingGroupMaxSize(integer)
	asserts.AssertAutoScalingGroupMaxSize(integer)
	return integer
end

function asserts.AssertBlockDeviceEbsVolumeSize(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected BlockDeviceEbsVolumeSize to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 16384, "Expected integer to be max 16384")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.BlockDeviceEbsVolumeSize(integer)
	asserts.AssertBlockDeviceEbsVolumeSize(integer)
	return integer
end

function asserts.AssertBlockDeviceEbsIops(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected BlockDeviceEbsIops to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 20000, "Expected integer to be max 20000")
	assert(integer >= 100, "Expected integer to be min 100")
end

function M.BlockDeviceEbsIops(integer)
	asserts.AssertBlockDeviceEbsIops(integer)
	return integer
end

function asserts.AssertCooldown(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Cooldown to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Cooldown(integer)
	asserts.AssertCooldown(integer)
	return integer
end

function asserts.AssertEstimatedInstanceWarmup(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected EstimatedInstanceWarmup to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.EstimatedInstanceWarmup(integer)
	asserts.AssertEstimatedInstanceWarmup(integer)
	return integer
end

function asserts.AssertMaxRecords(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxRecords to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.MaxRecords(integer)
	asserts.AssertMaxRecords(integer)
	return integer
end

function asserts.AssertPolicyIncrement(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PolicyIncrement to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.PolicyIncrement(integer)
	asserts.AssertPolicyIncrement(integer)
	return integer
end

function asserts.AssertAutoScalingGroupMinSize(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected AutoScalingGroupMinSize to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.AutoScalingGroupMinSize(integer)
	asserts.AssertAutoScalingGroupMinSize(integer)
	return integer
end

function asserts.AssertProtectedFromScaleIn(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected ProtectedFromScaleIn to be of type 'boolean'")
end

function M.ProtectedFromScaleIn(boolean)
	asserts.AssertProtectedFromScaleIn(boolean)
	return boolean
end

function asserts.AssertShouldRespectGracePeriod(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected ShouldRespectGracePeriod to be of type 'boolean'")
end

function M.ShouldRespectGracePeriod(boolean)
	asserts.AssertShouldRespectGracePeriod(boolean)
	return boolean
end

function asserts.AssertPropagateAtLaunch(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected PropagateAtLaunch to be of type 'boolean'")
end

function M.PropagateAtLaunch(boolean)
	asserts.AssertPropagateAtLaunch(boolean)
	return boolean
end

function asserts.AssertDisableScaleIn(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected DisableScaleIn to be of type 'boolean'")
end

function M.DisableScaleIn(boolean)
	asserts.AssertDisableScaleIn(boolean)
	return boolean
end

function asserts.AssertForceDelete(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected ForceDelete to be of type 'boolean'")
end

function M.ForceDelete(boolean)
	asserts.AssertForceDelete(boolean)
	return boolean
end

function asserts.AssertAssociatePublicIpAddress(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected AssociatePublicIpAddress to be of type 'boolean'")
end

function M.AssociatePublicIpAddress(boolean)
	asserts.AssertAssociatePublicIpAddress(boolean)
	return boolean
end

function asserts.AssertHonorCooldown(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected HonorCooldown to be of type 'boolean'")
end

function M.HonorCooldown(boolean)
	asserts.AssertHonorCooldown(boolean)
	return boolean
end

function asserts.AssertBlockDeviceEbsEncrypted(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected BlockDeviceEbsEncrypted to be of type 'boolean'")
end

function M.BlockDeviceEbsEncrypted(boolean)
	asserts.AssertBlockDeviceEbsEncrypted(boolean)
	return boolean
end

function asserts.AssertInstanceProtected(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected InstanceProtected to be of type 'boolean'")
end

function M.InstanceProtected(boolean)
	asserts.AssertInstanceProtected(boolean)
	return boolean
end

function asserts.AssertEbsOptimized(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected EbsOptimized to be of type 'boolean'")
end

function M.EbsOptimized(boolean)
	asserts.AssertEbsOptimized(boolean)
	return boolean
end

function asserts.AssertBlockDeviceEbsDeleteOnTermination(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected BlockDeviceEbsDeleteOnTermination to be of type 'boolean'")
end

function M.BlockDeviceEbsDeleteOnTermination(boolean)
	asserts.AssertBlockDeviceEbsDeleteOnTermination(boolean)
	return boolean
end

function asserts.AssertMonitoringEnabled(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected MonitoringEnabled to be of type 'boolean'")
end

function M.MonitoringEnabled(boolean)
	asserts.AssertMonitoringEnabled(boolean)
	return boolean
end

function asserts.AssertNoDevice(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected NoDevice to be of type 'boolean'")
end

function M.NoDevice(boolean)
	asserts.AssertNoDevice(boolean)
	return boolean
end

function asserts.AssertShouldDecrementDesiredCapacity(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected ShouldDecrementDesiredCapacity to be of type 'boolean'")
end

function M.ShouldDecrementDesiredCapacity(boolean)
	asserts.AssertShouldDecrementDesiredCapacity(boolean)
	return boolean
end

function asserts.AssertTimestampType(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected TimestampType to be of type 'string'")
end

function M.TimestampType(timestamp)
	asserts.AssertTimestampType(timestamp)
	return timestamp
end

function asserts.AssertNotificationConfigurations(list)
	assert(list)
	assert(type(list) == "table", "Expected NotificationConfigurations to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertNotificationConfiguration(v)
	end
end

--  
-- List of NotificationConfiguration objects
function M.NotificationConfigurations(list)
	asserts.AssertNotificationConfigurations(list)
	return list
end

function asserts.AssertAutoScalingNotificationTypes(list)
	assert(list)
	assert(type(list) == "table", "Expected AutoScalingNotificationTypes to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertXmlStringMaxLen255(v)
	end
end

--  
-- List of XmlStringMaxLen255 objects
function M.AutoScalingNotificationTypes(list)
	asserts.AssertAutoScalingNotificationTypes(list)
	return list
end

function asserts.AssertMetricDimensions(list)
	assert(list)
	assert(type(list) == "table", "Expected MetricDimensions to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertMetricDimension(v)
	end
end

--  
-- List of MetricDimension objects
function M.MetricDimensions(list)
	asserts.AssertMetricDimensions(list)
	return list
end

function asserts.AssertSecurityGroups(list)
	assert(list)
	assert(type(list) == "table", "Expected SecurityGroups to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertXmlString(v)
	end
end

--  
-- List of XmlString objects
function M.SecurityGroups(list)
	asserts.AssertSecurityGroups(list)
	return list
end

function asserts.AssertLifecycleHookNames(list)
	assert(list)
	assert(type(list) == "table", "Expected LifecycleHookNames to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	for _,v in ipairs(list) do
		asserts.AssertAsciiStringMaxLen255(v)
	end
end

--  
-- List of AsciiStringMaxLen255 objects
function M.LifecycleHookNames(list)
	asserts.AssertLifecycleHookNames(list)
	return list
end

function asserts.AssertScalingPolicies(list)
	assert(list)
	assert(type(list) == "table", "Expected ScalingPolicies to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertScalingPolicy(v)
	end
end

--  
-- List of ScalingPolicy objects
function M.ScalingPolicies(list)
	asserts.AssertScalingPolicies(list)
	return list
end

function asserts.AssertBlockDeviceMappings(list)
	assert(list)
	assert(type(list) == "table", "Expected BlockDeviceMappings to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBlockDeviceMapping(v)
	end
end

--  
-- List of BlockDeviceMapping objects
function M.BlockDeviceMappings(list)
	asserts.AssertBlockDeviceMappings(list)
	return list
end

function asserts.AssertTargetGroupARNs(list)
	assert(list)
	assert(type(list) == "table", "Expected TargetGroupARNs to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertXmlStringMaxLen511(v)
	end
end

--  
-- List of XmlStringMaxLen511 objects
function M.TargetGroupARNs(list)
	asserts.AssertTargetGroupARNs(list)
	return list
end

function asserts.AssertEnabledMetrics(list)
	assert(list)
	assert(type(list) == "table", "Expected EnabledMetrics to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEnabledMetric(v)
	end
end

--  
-- List of EnabledMetric objects
function M.EnabledMetrics(list)
	asserts.AssertEnabledMetrics(list)
	return list
end

function asserts.AssertAutoScalingInstances(list)
	assert(list)
	assert(type(list) == "table", "Expected AutoScalingInstances to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAutoScalingInstanceDetails(v)
	end
end

--  
-- List of AutoScalingInstanceDetails objects
function M.AutoScalingInstances(list)
	asserts.AssertAutoScalingInstances(list)
	return list
end

function asserts.AssertAutoScalingGroupNames(list)
	assert(list)
	assert(type(list) == "table", "Expected AutoScalingGroupNames to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertResourceName(v)
	end
end

--  
-- List of ResourceName objects
function M.AutoScalingGroupNames(list)
	asserts.AssertAutoScalingGroupNames(list)
	return list
end

function asserts.AssertLoadBalancerNames(list)
	assert(list)
	assert(type(list) == "table", "Expected LoadBalancerNames to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertXmlStringMaxLen255(v)
	end
end

--  
-- List of XmlStringMaxLen255 objects
function M.LoadBalancerNames(list)
	asserts.AssertLoadBalancerNames(list)
	return list
end

function asserts.AssertProcessNames(list)
	assert(list)
	assert(type(list) == "table", "Expected ProcessNames to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertXmlStringMaxLen255(v)
	end
end

--  
-- List of XmlStringMaxLen255 objects
function M.ProcessNames(list)
	asserts.AssertProcessNames(list)
	return list
end

function asserts.AssertStepAdjustments(list)
	assert(list)
	assert(type(list) == "table", "Expected StepAdjustments to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertStepAdjustment(v)
	end
end

--  
-- List of StepAdjustment objects
function M.StepAdjustments(list)
	asserts.AssertStepAdjustments(list)
	return list
end

function asserts.AssertLaunchConfigurations(list)
	assert(list)
	assert(type(list) == "table", "Expected LaunchConfigurations to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLaunchConfiguration(v)
	end
end

--  
-- List of LaunchConfiguration objects
function M.LaunchConfigurations(list)
	asserts.AssertLaunchConfigurations(list)
	return list
end

function asserts.AssertValues(list)
	assert(list)
	assert(type(list) == "table", "Expected Values to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertXmlString(v)
	end
end

--  
-- List of XmlString objects
function M.Values(list)
	asserts.AssertValues(list)
	return list
end

function asserts.AssertLaunchConfigurationNames(list)
	assert(list)
	assert(type(list) == "table", "Expected LaunchConfigurationNames to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertResourceName(v)
	end
end

--  
-- List of ResourceName objects
function M.LaunchConfigurationNames(list)
	asserts.AssertLaunchConfigurationNames(list)
	return list
end

function asserts.AssertClassicLinkVPCSecurityGroups(list)
	assert(list)
	assert(type(list) == "table", "Expected ClassicLinkVPCSecurityGroups to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertXmlStringMaxLen255(v)
	end
end

--  
-- List of XmlStringMaxLen255 objects
function M.ClassicLinkVPCSecurityGroups(list)
	asserts.AssertClassicLinkVPCSecurityGroups(list)
	return list
end

function asserts.AssertPolicyNames(list)
	assert(list)
	assert(type(list) == "table", "Expected PolicyNames to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertResourceName(v)
	end
end

--  
-- List of ResourceName objects
function M.PolicyNames(list)
	asserts.AssertPolicyNames(list)
	return list
end

function asserts.AssertLoadBalancerStates(list)
	assert(list)
	assert(type(list) == "table", "Expected LoadBalancerStates to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLoadBalancerState(v)
	end
end

--  
-- List of LoadBalancerState objects
function M.LoadBalancerStates(list)
	asserts.AssertLoadBalancerStates(list)
	return list
end

function asserts.AssertInstanceIds(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceIds to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertXmlStringMaxLen19(v)
	end
end

--  
-- List of XmlStringMaxLen19 objects
function M.InstanceIds(list)
	asserts.AssertInstanceIds(list)
	return list
end

function asserts.AssertTags(list)
	assert(list)
	assert(type(list) == "table", "Expected Tags to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTag(v)
	end
end

--  
-- List of Tag objects
function M.Tags(list)
	asserts.AssertTags(list)
	return list
end

function asserts.AssertTagDescriptionList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagDescriptionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTagDescription(v)
	end
end

--  
-- List of TagDescription objects
function M.TagDescriptionList(list)
	asserts.AssertTagDescriptionList(list)
	return list
end

function asserts.AssertProcesses(list)
	assert(list)
	assert(type(list) == "table", "Expected Processes to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertProcessType(v)
	end
end

--  
-- List of ProcessType objects
function M.Processes(list)
	asserts.AssertProcesses(list)
	return list
end

function asserts.AssertMetricGranularityTypes(list)
	assert(list)
	assert(type(list) == "table", "Expected MetricGranularityTypes to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertMetricGranularityType(v)
	end
end

--  
-- List of MetricGranularityType objects
function M.MetricGranularityTypes(list)
	asserts.AssertMetricGranularityTypes(list)
	return list
end

function asserts.AssertLifecycleHooks(list)
	assert(list)
	assert(type(list) == "table", "Expected LifecycleHooks to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLifecycleHook(v)
	end
end

--  
-- List of LifecycleHook objects
function M.LifecycleHooks(list)
	asserts.AssertLifecycleHooks(list)
	return list
end

function asserts.AssertAdjustmentTypes(list)
	assert(list)
	assert(type(list) == "table", "Expected AdjustmentTypes to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAdjustmentType(v)
	end
end

--  
-- List of AdjustmentType objects
function M.AdjustmentTypes(list)
	asserts.AssertAdjustmentTypes(list)
	return list
end

function asserts.AssertAlarms(list)
	assert(list)
	assert(type(list) == "table", "Expected Alarms to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAlarm(v)
	end
end

--  
-- List of Alarm objects
function M.Alarms(list)
	asserts.AssertAlarms(list)
	return list
end

function asserts.AssertLoadBalancerTargetGroupStates(list)
	assert(list)
	assert(type(list) == "table", "Expected LoadBalancerTargetGroupStates to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLoadBalancerTargetGroupState(v)
	end
end

--  
-- List of LoadBalancerTargetGroupState objects
function M.LoadBalancerTargetGroupStates(list)
	asserts.AssertLoadBalancerTargetGroupStates(list)
	return list
end

function asserts.AssertActivityIds(list)
	assert(list)
	assert(type(list) == "table", "Expected ActivityIds to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertXmlString(v)
	end
end

--  
-- List of XmlString objects
function M.ActivityIds(list)
	asserts.AssertActivityIds(list)
	return list
end

function asserts.AssertMetricCollectionTypes(list)
	assert(list)
	assert(type(list) == "table", "Expected MetricCollectionTypes to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertMetricCollectionType(v)
	end
end

--  
-- List of MetricCollectionType objects
function M.MetricCollectionTypes(list)
	asserts.AssertMetricCollectionTypes(list)
	return list
end

function asserts.AssertPolicyTypes(list)
	assert(list)
	assert(type(list) == "table", "Expected PolicyTypes to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertXmlStringMaxLen64(v)
	end
end

--  
-- List of XmlStringMaxLen64 objects
function M.PolicyTypes(list)
	asserts.AssertPolicyTypes(list)
	return list
end

function asserts.AssertFailedScheduledUpdateGroupActionRequests(list)
	assert(list)
	assert(type(list) == "table", "Expected FailedScheduledUpdateGroupActionRequests to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertFailedScheduledUpdateGroupActionRequest(v)
	end
end

--  
-- List of FailedScheduledUpdateGroupActionRequest objects
function M.FailedScheduledUpdateGroupActionRequests(list)
	asserts.AssertFailedScheduledUpdateGroupActionRequests(list)
	return list
end

function asserts.AssertActivities(list)
	assert(list)
	assert(type(list) == "table", "Expected Activities to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertActivity(v)
	end
end

--  
-- List of Activity objects
function M.Activities(list)
	asserts.AssertActivities(list)
	return list
end

function asserts.AssertMetrics(list)
	assert(list)
	assert(type(list) == "table", "Expected Metrics to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertXmlStringMaxLen255(v)
	end
end

--  
-- List of XmlStringMaxLen255 objects
function M.Metrics(list)
	asserts.AssertMetrics(list)
	return list
end

function asserts.AssertTerminationPolicies(list)
	assert(list)
	assert(type(list) == "table", "Expected TerminationPolicies to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertXmlStringMaxLen1600(v)
	end
end

--  
-- List of XmlStringMaxLen1600 objects
function M.TerminationPolicies(list)
	asserts.AssertTerminationPolicies(list)
	return list
end

function asserts.AssertScheduledUpdateGroupActions(list)
	assert(list)
	assert(type(list) == "table", "Expected ScheduledUpdateGroupActions to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertScheduledUpdateGroupAction(v)
	end
end

--  
-- List of ScheduledUpdateGroupAction objects
function M.ScheduledUpdateGroupActions(list)
	asserts.AssertScheduledUpdateGroupActions(list)
	return list
end

function asserts.AssertLifecycleHookSpecifications(list)
	assert(list)
	assert(type(list) == "table", "Expected LifecycleHookSpecifications to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLifecycleHookSpecification(v)
	end
end

--  
-- List of LifecycleHookSpecification objects
function M.LifecycleHookSpecifications(list)
	asserts.AssertLifecycleHookSpecifications(list)
	return list
end

function asserts.AssertAutoScalingGroups(list)
	assert(list)
	assert(type(list) == "table", "Expected AutoScalingGroups to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAutoScalingGroup(v)
	end
end

--  
-- List of AutoScalingGroup objects
function M.AutoScalingGroups(list)
	asserts.AssertAutoScalingGroups(list)
	return list
end

function asserts.AssertScheduledActionNames(list)
	assert(list)
	assert(type(list) == "table", "Expected ScheduledActionNames to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertResourceName(v)
	end
end

--  
-- List of ResourceName objects
function M.ScheduledActionNames(list)
	asserts.AssertScheduledActionNames(list)
	return list
end

function asserts.AssertScheduledUpdateGroupActionRequests(list)
	assert(list)
	assert(type(list) == "table", "Expected ScheduledUpdateGroupActionRequests to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertScheduledUpdateGroupActionRequest(v)
	end
end

--  
-- List of ScheduledUpdateGroupActionRequest objects
function M.ScheduledUpdateGroupActionRequests(list)
	asserts.AssertScheduledUpdateGroupActionRequests(list)
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

function asserts.AssertFilters(list)
	assert(list)
	assert(type(list) == "table", "Expected Filters to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertFilter(v)
	end
end

--  
-- List of Filter objects
function M.Filters(list)
	asserts.AssertFilters(list)
	return list
end

function asserts.AssertAvailabilityZones(list)
	assert(list)
	assert(type(list) == "table", "Expected AvailabilityZones to be of type ''table")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertXmlStringMaxLen255(v)
	end
end

--  
-- List of XmlStringMaxLen255 objects
function M.AvailabilityZones(list)
	asserts.AssertAvailabilityZones(list)
	return list
end

function asserts.AssertSuspendedProcesses(list)
	assert(list)
	assert(type(list) == "table", "Expected SuspendedProcesses to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSuspendedProcess(v)
	end
end

--  
-- List of SuspendedProcess objects
function M.SuspendedProcesses(list)
	asserts.AssertSuspendedProcesses(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "autoscaling.amazonaws.com"
		end
	end
	local ss = { "autoscaling" }
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
--- Call DeleteTags asynchronously, invoking a callback when done
-- @param DeleteTagsType
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteTagsAsync(DeleteTagsType, cb)
	assert(DeleteTagsType, "You must provide a DeleteTagsType")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteTags",
	}
	for header,value in pairs(DeleteTagsType.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteTagsType, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteTags synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteTagsType
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteTagsSync(DeleteTagsType, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteTagsAsync(DeleteTagsType, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeScalingActivities asynchronously, invoking a callback when done
-- @param DescribeScalingActivitiesType
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeScalingActivitiesAsync(DescribeScalingActivitiesType, cb)
	assert(DescribeScalingActivitiesType, "You must provide a DescribeScalingActivitiesType")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeScalingActivities",
	}
	for header,value in pairs(DescribeScalingActivitiesType.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeScalingActivitiesType, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeScalingActivities synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeScalingActivitiesType
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeScalingActivitiesSync(DescribeScalingActivitiesType, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeScalingActivitiesAsync(DescribeScalingActivitiesType, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateAutoScalingGroup asynchronously, invoking a callback when done
-- @param CreateAutoScalingGroupType
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateAutoScalingGroupAsync(CreateAutoScalingGroupType, cb)
	assert(CreateAutoScalingGroupType, "You must provide a CreateAutoScalingGroupType")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateAutoScalingGroup",
	}
	for header,value in pairs(CreateAutoScalingGroupType.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateAutoScalingGroupType, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateAutoScalingGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateAutoScalingGroupType
-- @return response
-- @return error_type
-- @return error_message
function M.CreateAutoScalingGroupSync(CreateAutoScalingGroupType, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateAutoScalingGroupAsync(CreateAutoScalingGroupType, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ExecutePolicy asynchronously, invoking a callback when done
-- @param ExecutePolicyType
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ExecutePolicyAsync(ExecutePolicyType, cb)
	assert(ExecutePolicyType, "You must provide a ExecutePolicyType")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ExecutePolicy",
	}
	for header,value in pairs(ExecutePolicyType.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ExecutePolicyType, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ExecutePolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ExecutePolicyType
-- @return response
-- @return error_type
-- @return error_message
function M.ExecutePolicySync(ExecutePolicyType, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ExecutePolicyAsync(ExecutePolicyType, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SetInstanceProtection asynchronously, invoking a callback when done
-- @param SetInstanceProtectionQuery
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SetInstanceProtectionAsync(SetInstanceProtectionQuery, cb)
	assert(SetInstanceProtectionQuery, "You must provide a SetInstanceProtectionQuery")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SetInstanceProtection",
	}
	for header,value in pairs(SetInstanceProtectionQuery.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SetInstanceProtectionQuery, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SetInstanceProtection synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetInstanceProtectionQuery
-- @return response
-- @return error_type
-- @return error_message
function M.SetInstanceProtectionSync(SetInstanceProtectionQuery, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetInstanceProtectionAsync(SetInstanceProtectionQuery, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DetachLoadBalancerTargetGroups asynchronously, invoking a callback when done
-- @param DetachLoadBalancerTargetGroupsType
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DetachLoadBalancerTargetGroupsAsync(DetachLoadBalancerTargetGroupsType, cb)
	assert(DetachLoadBalancerTargetGroupsType, "You must provide a DetachLoadBalancerTargetGroupsType")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DetachLoadBalancerTargetGroups",
	}
	for header,value in pairs(DetachLoadBalancerTargetGroupsType.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DetachLoadBalancerTargetGroupsType, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DetachLoadBalancerTargetGroups synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DetachLoadBalancerTargetGroupsType
-- @return response
-- @return error_type
-- @return error_message
function M.DetachLoadBalancerTargetGroupsSync(DetachLoadBalancerTargetGroupsType, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DetachLoadBalancerTargetGroupsAsync(DetachLoadBalancerTargetGroupsType, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeNotificationConfigurations asynchronously, invoking a callback when done
-- @param DescribeNotificationConfigurationsType
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeNotificationConfigurationsAsync(DescribeNotificationConfigurationsType, cb)
	assert(DescribeNotificationConfigurationsType, "You must provide a DescribeNotificationConfigurationsType")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeNotificationConfigurations",
	}
	for header,value in pairs(DescribeNotificationConfigurationsType.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeNotificationConfigurationsType, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeNotificationConfigurations synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeNotificationConfigurationsType
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeNotificationConfigurationsSync(DescribeNotificationConfigurationsType, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeNotificationConfigurationsAsync(DescribeNotificationConfigurationsType, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteAutoScalingGroup asynchronously, invoking a callback when done
-- @param DeleteAutoScalingGroupType
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteAutoScalingGroupAsync(DeleteAutoScalingGroupType, cb)
	assert(DeleteAutoScalingGroupType, "You must provide a DeleteAutoScalingGroupType")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteAutoScalingGroup",
	}
	for header,value in pairs(DeleteAutoScalingGroupType.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteAutoScalingGroupType, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteAutoScalingGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteAutoScalingGroupType
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteAutoScalingGroupSync(DeleteAutoScalingGroupType, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteAutoScalingGroupAsync(DeleteAutoScalingGroupType, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeletePolicy asynchronously, invoking a callback when done
-- @param DeletePolicyType
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeletePolicyAsync(DeletePolicyType, cb)
	assert(DeletePolicyType, "You must provide a DeletePolicyType")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeletePolicy",
	}
	for header,value in pairs(DeletePolicyType.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeletePolicyType, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeletePolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeletePolicyType
-- @return response
-- @return error_type
-- @return error_message
function M.DeletePolicySync(DeletePolicyType, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeletePolicyAsync(DeletePolicyType, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ExitStandby asynchronously, invoking a callback when done
-- @param ExitStandbyQuery
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ExitStandbyAsync(ExitStandbyQuery, cb)
	assert(ExitStandbyQuery, "You must provide a ExitStandbyQuery")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ExitStandby",
	}
	for header,value in pairs(ExitStandbyQuery.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ExitStandbyQuery, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ExitStandby synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ExitStandbyQuery
-- @return response
-- @return error_type
-- @return error_message
function M.ExitStandbySync(ExitStandbyQuery, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ExitStandbyAsync(ExitStandbyQuery, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SetInstanceHealth asynchronously, invoking a callback when done
-- @param SetInstanceHealthQuery
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SetInstanceHealthAsync(SetInstanceHealthQuery, cb)
	assert(SetInstanceHealthQuery, "You must provide a SetInstanceHealthQuery")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SetInstanceHealth",
	}
	for header,value in pairs(SetInstanceHealthQuery.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SetInstanceHealthQuery, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SetInstanceHealth synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetInstanceHealthQuery
-- @return response
-- @return error_type
-- @return error_message
function M.SetInstanceHealthSync(SetInstanceHealthQuery, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetInstanceHealthAsync(SetInstanceHealthQuery, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateOrUpdateTags asynchronously, invoking a callback when done
-- @param CreateOrUpdateTagsType
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateOrUpdateTagsAsync(CreateOrUpdateTagsType, cb)
	assert(CreateOrUpdateTagsType, "You must provide a CreateOrUpdateTagsType")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateOrUpdateTags",
	}
	for header,value in pairs(CreateOrUpdateTagsType.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateOrUpdateTagsType, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateOrUpdateTags synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateOrUpdateTagsType
-- @return response
-- @return error_type
-- @return error_message
function M.CreateOrUpdateTagsSync(CreateOrUpdateTagsType, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateOrUpdateTagsAsync(CreateOrUpdateTagsType, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeScalingProcessTypes asynchronously, invoking a callback when done
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeScalingProcessTypesAsync(cb)
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeScalingProcessTypes",
	}


	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", {}, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeScalingProcessTypes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeScalingProcessTypesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeScalingProcessTypesAsync(function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutLifecycleHook asynchronously, invoking a callback when done
-- @param PutLifecycleHookType
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutLifecycleHookAsync(PutLifecycleHookType, cb)
	assert(PutLifecycleHookType, "You must provide a PutLifecycleHookType")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutLifecycleHook",
	}
	for header,value in pairs(PutLifecycleHookType.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutLifecycleHookType, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutLifecycleHook synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutLifecycleHookType
-- @return response
-- @return error_type
-- @return error_message
function M.PutLifecycleHookSync(PutLifecycleHookType, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutLifecycleHookAsync(PutLifecycleHookType, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DetachLoadBalancers asynchronously, invoking a callback when done
-- @param DetachLoadBalancersType
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DetachLoadBalancersAsync(DetachLoadBalancersType, cb)
	assert(DetachLoadBalancersType, "You must provide a DetachLoadBalancersType")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DetachLoadBalancers",
	}
	for header,value in pairs(DetachLoadBalancersType.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DetachLoadBalancersType, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DetachLoadBalancers synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DetachLoadBalancersType
-- @return response
-- @return error_type
-- @return error_message
function M.DetachLoadBalancersSync(DetachLoadBalancersType, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DetachLoadBalancersAsync(DetachLoadBalancersType, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AttachInstances asynchronously, invoking a callback when done
-- @param AttachInstancesQuery
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AttachInstancesAsync(AttachInstancesQuery, cb)
	assert(AttachInstancesQuery, "You must provide a AttachInstancesQuery")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".AttachInstances",
	}
	for header,value in pairs(AttachInstancesQuery.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AttachInstancesQuery, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AttachInstances synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AttachInstancesQuery
-- @return response
-- @return error_type
-- @return error_message
function M.AttachInstancesSync(AttachInstancesQuery, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AttachInstancesAsync(AttachInstancesQuery, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutScheduledUpdateGroupAction asynchronously, invoking a callback when done
-- @param PutScheduledUpdateGroupActionType
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutScheduledUpdateGroupActionAsync(PutScheduledUpdateGroupActionType, cb)
	assert(PutScheduledUpdateGroupActionType, "You must provide a PutScheduledUpdateGroupActionType")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutScheduledUpdateGroupAction",
	}
	for header,value in pairs(PutScheduledUpdateGroupActionType.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutScheduledUpdateGroupActionType, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutScheduledUpdateGroupAction synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutScheduledUpdateGroupActionType
-- @return response
-- @return error_type
-- @return error_message
function M.PutScheduledUpdateGroupActionSync(PutScheduledUpdateGroupActionType, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutScheduledUpdateGroupActionAsync(PutScheduledUpdateGroupActionType, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutScalingPolicy asynchronously, invoking a callback when done
-- @param PutScalingPolicyType
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutScalingPolicyAsync(PutScalingPolicyType, cb)
	assert(PutScalingPolicyType, "You must provide a PutScalingPolicyType")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutScalingPolicy",
	}
	for header,value in pairs(PutScalingPolicyType.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutScalingPolicyType, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutScalingPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutScalingPolicyType
-- @return response
-- @return error_type
-- @return error_message
function M.PutScalingPolicySync(PutScalingPolicyType, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutScalingPolicyAsync(PutScalingPolicyType, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteScheduledAction asynchronously, invoking a callback when done
-- @param DeleteScheduledActionType
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteScheduledActionAsync(DeleteScheduledActionType, cb)
	assert(DeleteScheduledActionType, "You must provide a DeleteScheduledActionType")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteScheduledAction",
	}
	for header,value in pairs(DeleteScheduledActionType.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteScheduledActionType, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteScheduledAction synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteScheduledActionType
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteScheduledActionSync(DeleteScheduledActionType, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteScheduledActionAsync(DeleteScheduledActionType, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AttachLoadBalancers asynchronously, invoking a callback when done
-- @param AttachLoadBalancersType
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AttachLoadBalancersAsync(AttachLoadBalancersType, cb)
	assert(AttachLoadBalancersType, "You must provide a AttachLoadBalancersType")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".AttachLoadBalancers",
	}
	for header,value in pairs(AttachLoadBalancersType.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AttachLoadBalancersType, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AttachLoadBalancers synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AttachLoadBalancersType
-- @return response
-- @return error_type
-- @return error_message
function M.AttachLoadBalancersSync(AttachLoadBalancersType, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AttachLoadBalancersAsync(AttachLoadBalancersType, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DetachInstances asynchronously, invoking a callback when done
-- @param DetachInstancesQuery
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DetachInstancesAsync(DetachInstancesQuery, cb)
	assert(DetachInstancesQuery, "You must provide a DetachInstancesQuery")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DetachInstances",
	}
	for header,value in pairs(DetachInstancesQuery.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DetachInstancesQuery, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DetachInstances synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DetachInstancesQuery
-- @return response
-- @return error_type
-- @return error_message
function M.DetachInstancesSync(DetachInstancesQuery, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DetachInstancesAsync(DetachInstancesQuery, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeAdjustmentTypes asynchronously, invoking a callback when done
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeAdjustmentTypesAsync(cb)
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeAdjustmentTypes",
	}


	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", {}, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeAdjustmentTypes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeAdjustmentTypesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeAdjustmentTypesAsync(function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call TerminateInstanceInAutoScalingGroup asynchronously, invoking a callback when done
-- @param TerminateInstanceInAutoScalingGroupType
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.TerminateInstanceInAutoScalingGroupAsync(TerminateInstanceInAutoScalingGroupType, cb)
	assert(TerminateInstanceInAutoScalingGroupType, "You must provide a TerminateInstanceInAutoScalingGroupType")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".TerminateInstanceInAutoScalingGroup",
	}
	for header,value in pairs(TerminateInstanceInAutoScalingGroupType.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", TerminateInstanceInAutoScalingGroupType, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call TerminateInstanceInAutoScalingGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param TerminateInstanceInAutoScalingGroupType
-- @return response
-- @return error_type
-- @return error_message
function M.TerminateInstanceInAutoScalingGroupSync(TerminateInstanceInAutoScalingGroupType, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.TerminateInstanceInAutoScalingGroupAsync(TerminateInstanceInAutoScalingGroupType, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AttachLoadBalancerTargetGroups asynchronously, invoking a callback when done
-- @param AttachLoadBalancerTargetGroupsType
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AttachLoadBalancerTargetGroupsAsync(AttachLoadBalancerTargetGroupsType, cb)
	assert(AttachLoadBalancerTargetGroupsType, "You must provide a AttachLoadBalancerTargetGroupsType")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".AttachLoadBalancerTargetGroups",
	}
	for header,value in pairs(AttachLoadBalancerTargetGroupsType.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AttachLoadBalancerTargetGroupsType, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AttachLoadBalancerTargetGroups synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AttachLoadBalancerTargetGroupsType
-- @return response
-- @return error_type
-- @return error_message
function M.AttachLoadBalancerTargetGroupsSync(AttachLoadBalancerTargetGroupsType, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AttachLoadBalancerTargetGroupsAsync(AttachLoadBalancerTargetGroupsType, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeLoadBalancers asynchronously, invoking a callback when done
-- @param DescribeLoadBalancersRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeLoadBalancersAsync(DescribeLoadBalancersRequest, cb)
	assert(DescribeLoadBalancersRequest, "You must provide a DescribeLoadBalancersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeLoadBalancers",
	}
	for header,value in pairs(DescribeLoadBalancersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeLoadBalancersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeLoadBalancers synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeLoadBalancersRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeLoadBalancersSync(DescribeLoadBalancersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeLoadBalancersAsync(DescribeLoadBalancersRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CompleteLifecycleAction asynchronously, invoking a callback when done
-- @param CompleteLifecycleActionType
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CompleteLifecycleActionAsync(CompleteLifecycleActionType, cb)
	assert(CompleteLifecycleActionType, "You must provide a CompleteLifecycleActionType")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CompleteLifecycleAction",
	}
	for header,value in pairs(CompleteLifecycleActionType.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CompleteLifecycleActionType, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CompleteLifecycleAction synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CompleteLifecycleActionType
-- @return response
-- @return error_type
-- @return error_message
function M.CompleteLifecycleActionSync(CompleteLifecycleActionType, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CompleteLifecycleActionAsync(CompleteLifecycleActionType, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeMetricCollectionTypes asynchronously, invoking a callback when done
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeMetricCollectionTypesAsync(cb)
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeMetricCollectionTypes",
	}


	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", {}, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeMetricCollectionTypes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeMetricCollectionTypesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeMetricCollectionTypesAsync(function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateAutoScalingGroup asynchronously, invoking a callback when done
-- @param UpdateAutoScalingGroupType
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateAutoScalingGroupAsync(UpdateAutoScalingGroupType, cb)
	assert(UpdateAutoScalingGroupType, "You must provide a UpdateAutoScalingGroupType")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateAutoScalingGroup",
	}
	for header,value in pairs(UpdateAutoScalingGroupType.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateAutoScalingGroupType, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateAutoScalingGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateAutoScalingGroupType
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateAutoScalingGroupSync(UpdateAutoScalingGroupType, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateAutoScalingGroupAsync(UpdateAutoScalingGroupType, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RecordLifecycleActionHeartbeat asynchronously, invoking a callback when done
-- @param RecordLifecycleActionHeartbeatType
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RecordLifecycleActionHeartbeatAsync(RecordLifecycleActionHeartbeatType, cb)
	assert(RecordLifecycleActionHeartbeatType, "You must provide a RecordLifecycleActionHeartbeatType")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RecordLifecycleActionHeartbeat",
	}
	for header,value in pairs(RecordLifecycleActionHeartbeatType.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RecordLifecycleActionHeartbeatType, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RecordLifecycleActionHeartbeat synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RecordLifecycleActionHeartbeatType
-- @return response
-- @return error_type
-- @return error_message
function M.RecordLifecycleActionHeartbeatSync(RecordLifecycleActionHeartbeatType, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RecordLifecycleActionHeartbeatAsync(RecordLifecycleActionHeartbeatType, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutNotificationConfiguration asynchronously, invoking a callback when done
-- @param PutNotificationConfigurationType
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutNotificationConfigurationAsync(PutNotificationConfigurationType, cb)
	assert(PutNotificationConfigurationType, "You must provide a PutNotificationConfigurationType")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutNotificationConfiguration",
	}
	for header,value in pairs(PutNotificationConfigurationType.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutNotificationConfigurationType, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutNotificationConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutNotificationConfigurationType
-- @return response
-- @return error_type
-- @return error_message
function M.PutNotificationConfigurationSync(PutNotificationConfigurationType, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutNotificationConfigurationAsync(PutNotificationConfigurationType, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ResumeProcesses asynchronously, invoking a callback when done
-- @param ScalingProcessQuery
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ResumeProcessesAsync(ScalingProcessQuery, cb)
	assert(ScalingProcessQuery, "You must provide a ScalingProcessQuery")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ResumeProcesses",
	}
	for header,value in pairs(ScalingProcessQuery.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ScalingProcessQuery, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ResumeProcesses synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ScalingProcessQuery
-- @return response
-- @return error_type
-- @return error_message
function M.ResumeProcessesSync(ScalingProcessQuery, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ResumeProcessesAsync(ScalingProcessQuery, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateLaunchConfiguration asynchronously, invoking a callback when done
-- @param CreateLaunchConfigurationType
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateLaunchConfigurationAsync(CreateLaunchConfigurationType, cb)
	assert(CreateLaunchConfigurationType, "You must provide a CreateLaunchConfigurationType")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateLaunchConfiguration",
	}
	for header,value in pairs(CreateLaunchConfigurationType.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateLaunchConfigurationType, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateLaunchConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateLaunchConfigurationType
-- @return response
-- @return error_type
-- @return error_message
function M.CreateLaunchConfigurationSync(CreateLaunchConfigurationType, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateLaunchConfigurationAsync(CreateLaunchConfigurationType, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeLifecycleHookTypes asynchronously, invoking a callback when done
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeLifecycleHookTypesAsync(cb)
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeLifecycleHookTypes",
	}


	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", {}, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeLifecycleHookTypes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeLifecycleHookTypesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeLifecycleHookTypesAsync(function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeAutoScalingInstances asynchronously, invoking a callback when done
-- @param DescribeAutoScalingInstancesType
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeAutoScalingInstancesAsync(DescribeAutoScalingInstancesType, cb)
	assert(DescribeAutoScalingInstancesType, "You must provide a DescribeAutoScalingInstancesType")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeAutoScalingInstances",
	}
	for header,value in pairs(DescribeAutoScalingInstancesType.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeAutoScalingInstancesType, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeAutoScalingInstances synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeAutoScalingInstancesType
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeAutoScalingInstancesSync(DescribeAutoScalingInstancesType, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeAutoScalingInstancesAsync(DescribeAutoScalingInstancesType, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeTags asynchronously, invoking a callback when done
-- @param DescribeTagsType
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeTagsAsync(DescribeTagsType, cb)
	assert(DescribeTagsType, "You must provide a DescribeTagsType")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeTags",
	}
	for header,value in pairs(DescribeTagsType.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeTagsType, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeTags synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeTagsType
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeTagsSync(DescribeTagsType, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeTagsAsync(DescribeTagsType, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call BatchDeleteScheduledAction asynchronously, invoking a callback when done
-- @param BatchDeleteScheduledActionType
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.BatchDeleteScheduledActionAsync(BatchDeleteScheduledActionType, cb)
	assert(BatchDeleteScheduledActionType, "You must provide a BatchDeleteScheduledActionType")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".BatchDeleteScheduledAction",
	}
	for header,value in pairs(BatchDeleteScheduledActionType.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", BatchDeleteScheduledActionType, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call BatchDeleteScheduledAction synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param BatchDeleteScheduledActionType
-- @return response
-- @return error_type
-- @return error_message
function M.BatchDeleteScheduledActionSync(BatchDeleteScheduledActionType, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.BatchDeleteScheduledActionAsync(BatchDeleteScheduledActionType, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DisableMetricsCollection asynchronously, invoking a callback when done
-- @param DisableMetricsCollectionQuery
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DisableMetricsCollectionAsync(DisableMetricsCollectionQuery, cb)
	assert(DisableMetricsCollectionQuery, "You must provide a DisableMetricsCollectionQuery")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DisableMetricsCollection",
	}
	for header,value in pairs(DisableMetricsCollectionQuery.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DisableMetricsCollectionQuery, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DisableMetricsCollection synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisableMetricsCollectionQuery
-- @return response
-- @return error_type
-- @return error_message
function M.DisableMetricsCollectionSync(DisableMetricsCollectionQuery, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisableMetricsCollectionAsync(DisableMetricsCollectionQuery, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call BatchPutScheduledUpdateGroupAction asynchronously, invoking a callback when done
-- @param BatchPutScheduledUpdateGroupActionType
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.BatchPutScheduledUpdateGroupActionAsync(BatchPutScheduledUpdateGroupActionType, cb)
	assert(BatchPutScheduledUpdateGroupActionType, "You must provide a BatchPutScheduledUpdateGroupActionType")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".BatchPutScheduledUpdateGroupAction",
	}
	for header,value in pairs(BatchPutScheduledUpdateGroupActionType.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", BatchPutScheduledUpdateGroupActionType, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call BatchPutScheduledUpdateGroupAction synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param BatchPutScheduledUpdateGroupActionType
-- @return response
-- @return error_type
-- @return error_message
function M.BatchPutScheduledUpdateGroupActionSync(BatchPutScheduledUpdateGroupActionType, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.BatchPutScheduledUpdateGroupActionAsync(BatchPutScheduledUpdateGroupActionType, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeLaunchConfigurations asynchronously, invoking a callback when done
-- @param LaunchConfigurationNamesType
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeLaunchConfigurationsAsync(LaunchConfigurationNamesType, cb)
	assert(LaunchConfigurationNamesType, "You must provide a LaunchConfigurationNamesType")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeLaunchConfigurations",
	}
	for header,value in pairs(LaunchConfigurationNamesType.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", LaunchConfigurationNamesType, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeLaunchConfigurations synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param LaunchConfigurationNamesType
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeLaunchConfigurationsSync(LaunchConfigurationNamesType, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeLaunchConfigurationsAsync(LaunchConfigurationNamesType, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call EnterStandby asynchronously, invoking a callback when done
-- @param EnterStandbyQuery
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.EnterStandbyAsync(EnterStandbyQuery, cb)
	assert(EnterStandbyQuery, "You must provide a EnterStandbyQuery")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".EnterStandby",
	}
	for header,value in pairs(EnterStandbyQuery.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", EnterStandbyQuery, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call EnterStandby synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param EnterStandbyQuery
-- @return response
-- @return error_type
-- @return error_message
function M.EnterStandbySync(EnterStandbyQuery, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.EnterStandbyAsync(EnterStandbyQuery, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SetDesiredCapacity asynchronously, invoking a callback when done
-- @param SetDesiredCapacityType
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SetDesiredCapacityAsync(SetDesiredCapacityType, cb)
	assert(SetDesiredCapacityType, "You must provide a SetDesiredCapacityType")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SetDesiredCapacity",
	}
	for header,value in pairs(SetDesiredCapacityType.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SetDesiredCapacityType, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SetDesiredCapacity synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetDesiredCapacityType
-- @return response
-- @return error_type
-- @return error_message
function M.SetDesiredCapacitySync(SetDesiredCapacityType, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetDesiredCapacityAsync(SetDesiredCapacityType, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeLoadBalancerTargetGroups asynchronously, invoking a callback when done
-- @param DescribeLoadBalancerTargetGroupsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeLoadBalancerTargetGroupsAsync(DescribeLoadBalancerTargetGroupsRequest, cb)
	assert(DescribeLoadBalancerTargetGroupsRequest, "You must provide a DescribeLoadBalancerTargetGroupsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeLoadBalancerTargetGroups",
	}
	for header,value in pairs(DescribeLoadBalancerTargetGroupsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeLoadBalancerTargetGroupsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeLoadBalancerTargetGroups synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeLoadBalancerTargetGroupsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeLoadBalancerTargetGroupsSync(DescribeLoadBalancerTargetGroupsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeLoadBalancerTargetGroupsAsync(DescribeLoadBalancerTargetGroupsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteLaunchConfiguration asynchronously, invoking a callback when done
-- @param LaunchConfigurationNameType
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteLaunchConfigurationAsync(LaunchConfigurationNameType, cb)
	assert(LaunchConfigurationNameType, "You must provide a LaunchConfigurationNameType")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteLaunchConfiguration",
	}
	for header,value in pairs(LaunchConfigurationNameType.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", LaunchConfigurationNameType, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteLaunchConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param LaunchConfigurationNameType
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteLaunchConfigurationSync(LaunchConfigurationNameType, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteLaunchConfigurationAsync(LaunchConfigurationNameType, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteLifecycleHook asynchronously, invoking a callback when done
-- @param DeleteLifecycleHookType
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteLifecycleHookAsync(DeleteLifecycleHookType, cb)
	assert(DeleteLifecycleHookType, "You must provide a DeleteLifecycleHookType")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteLifecycleHook",
	}
	for header,value in pairs(DeleteLifecycleHookType.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteLifecycleHookType, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteLifecycleHook synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteLifecycleHookType
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteLifecycleHookSync(DeleteLifecycleHookType, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteLifecycleHookAsync(DeleteLifecycleHookType, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribePolicies asynchronously, invoking a callback when done
-- @param DescribePoliciesType
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribePoliciesAsync(DescribePoliciesType, cb)
	assert(DescribePoliciesType, "You must provide a DescribePoliciesType")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribePolicies",
	}
	for header,value in pairs(DescribePoliciesType.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribePoliciesType, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribePolicies synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribePoliciesType
-- @return response
-- @return error_type
-- @return error_message
function M.DescribePoliciesSync(DescribePoliciesType, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribePoliciesAsync(DescribePoliciesType, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeLifecycleHooks asynchronously, invoking a callback when done
-- @param DescribeLifecycleHooksType
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeLifecycleHooksAsync(DescribeLifecycleHooksType, cb)
	assert(DescribeLifecycleHooksType, "You must provide a DescribeLifecycleHooksType")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeLifecycleHooks",
	}
	for header,value in pairs(DescribeLifecycleHooksType.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeLifecycleHooksType, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeLifecycleHooks synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeLifecycleHooksType
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeLifecycleHooksSync(DescribeLifecycleHooksType, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeLifecycleHooksAsync(DescribeLifecycleHooksType, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeTerminationPolicyTypes asynchronously, invoking a callback when done
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeTerminationPolicyTypesAsync(cb)
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeTerminationPolicyTypes",
	}


	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", {}, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeTerminationPolicyTypes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeTerminationPolicyTypesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeTerminationPolicyTypesAsync(function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeScheduledActions asynchronously, invoking a callback when done
-- @param DescribeScheduledActionsType
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeScheduledActionsAsync(DescribeScheduledActionsType, cb)
	assert(DescribeScheduledActionsType, "You must provide a DescribeScheduledActionsType")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeScheduledActions",
	}
	for header,value in pairs(DescribeScheduledActionsType.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeScheduledActionsType, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeScheduledActions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeScheduledActionsType
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeScheduledActionsSync(DescribeScheduledActionsType, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeScheduledActionsAsync(DescribeScheduledActionsType, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeAutoScalingGroups asynchronously, invoking a callback when done
-- @param AutoScalingGroupNamesType
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeAutoScalingGroupsAsync(AutoScalingGroupNamesType, cb)
	assert(AutoScalingGroupNamesType, "You must provide a AutoScalingGroupNamesType")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeAutoScalingGroups",
	}
	for header,value in pairs(AutoScalingGroupNamesType.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AutoScalingGroupNamesType, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeAutoScalingGroups synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AutoScalingGroupNamesType
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeAutoScalingGroupsSync(AutoScalingGroupNamesType, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeAutoScalingGroupsAsync(AutoScalingGroupNamesType, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call EnableMetricsCollection asynchronously, invoking a callback when done
-- @param EnableMetricsCollectionQuery
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.EnableMetricsCollectionAsync(EnableMetricsCollectionQuery, cb)
	assert(EnableMetricsCollectionQuery, "You must provide a EnableMetricsCollectionQuery")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".EnableMetricsCollection",
	}
	for header,value in pairs(EnableMetricsCollectionQuery.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", EnableMetricsCollectionQuery, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call EnableMetricsCollection synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param EnableMetricsCollectionQuery
-- @return response
-- @return error_type
-- @return error_message
function M.EnableMetricsCollectionSync(EnableMetricsCollectionQuery, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.EnableMetricsCollectionAsync(EnableMetricsCollectionQuery, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteNotificationConfiguration asynchronously, invoking a callback when done
-- @param DeleteNotificationConfigurationType
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteNotificationConfigurationAsync(DeleteNotificationConfigurationType, cb)
	assert(DeleteNotificationConfigurationType, "You must provide a DeleteNotificationConfigurationType")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteNotificationConfiguration",
	}
	for header,value in pairs(DeleteNotificationConfigurationType.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteNotificationConfigurationType, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteNotificationConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteNotificationConfigurationType
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteNotificationConfigurationSync(DeleteNotificationConfigurationType, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteNotificationConfigurationAsync(DeleteNotificationConfigurationType, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeAutoScalingNotificationTypes asynchronously, invoking a callback when done
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeAutoScalingNotificationTypesAsync(cb)
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeAutoScalingNotificationTypes",
	}


	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", {}, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeAutoScalingNotificationTypes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeAutoScalingNotificationTypesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeAutoScalingNotificationTypesAsync(function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SuspendProcesses asynchronously, invoking a callback when done
-- @param ScalingProcessQuery
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SuspendProcessesAsync(ScalingProcessQuery, cb)
	assert(ScalingProcessQuery, "You must provide a ScalingProcessQuery")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SuspendProcesses",
	}
	for header,value in pairs(ScalingProcessQuery.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ScalingProcessQuery, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SuspendProcesses synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ScalingProcessQuery
-- @return response
-- @return error_type
-- @return error_message
function M.SuspendProcessesSync(ScalingProcessQuery, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SuspendProcessesAsync(ScalingProcessQuery, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeAccountLimits asynchronously, invoking a callback when done
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeAccountLimitsAsync(cb)
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeAccountLimits",
	}


	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", {}, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeAccountLimits synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeAccountLimitsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeAccountLimitsAsync(function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
