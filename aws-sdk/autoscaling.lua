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

local ExecutePolicyType_keys = { "MetricValue" = true, "PolicyName" = true, "AutoScalingGroupName" = true, "HonorCooldown" = true, "BreachThreshold" = true, nil }

function M.AssertExecutePolicyType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExecutePolicyType to be of type 'table'")
	assert(struct["PolicyName"], "Expected key PolicyName to exist in table")
	if struct["MetricValue"] then M.AssertMetricScale(struct["MetricValue"]) end
	if struct["PolicyName"] then M.AssertResourceName(struct["PolicyName"]) end
	if struct["AutoScalingGroupName"] then M.AssertResourceName(struct["AutoScalingGroupName"]) end
	if struct["HonorCooldown"] then M.AssertHonorCooldown(struct["HonorCooldown"]) end
	if struct["BreachThreshold"] then M.AssertMetricScale(struct["BreachThreshold"]) end
	for k,_ in pairs(struct) do
		assert(ExecutePolicyType_keys[k], "ExecutePolicyType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExecutePolicyType
--  
-- @param MetricValue [MetricScale] <p>The metric value to compare to <code>BreachThreshold</code>. This enables you to execute a policy of type <code>StepScaling</code> and determine which step adjustment to use. For example, if the breach threshold is 50 and you want to use a step adjustment with a lower bound of 0 and an upper bound of 10, you can set the metric value to 59.</p> <p>If you specify a metric value that doesn't correspond to a step adjustment for the policy, the call returns an error.</p> <p>This parameter is required if the policy type is <code>StepScaling</code> and not supported otherwise.</p>
-- @param PolicyName [ResourceName] <p>The name or ARN of the policy.</p>
-- @param AutoScalingGroupName [ResourceName] <p>The name or Amazon Resource Name (ARN) of the Auto Scaling group.</p>
-- @param HonorCooldown [HonorCooldown] <p>If this parameter is true, Auto Scaling waits for the cooldown period to complete before executing the policy. Otherwise, Auto Scaling executes the policy without waiting for the cooldown period to complete.</p> <p>This parameter is not supported if the policy type is <code>StepScaling</code>.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/autoscaling/latest/userguide/Cooldown.html">Auto Scaling Cooldowns</a> in the <i>Auto Scaling User Guide</i>.</p>
-- @param BreachThreshold [MetricScale] <p>The breach threshold for the alarm.</p> <p>This parameter is required if the policy type is <code>StepScaling</code> and not supported otherwise.</p>
-- Required parameter: PolicyName
function M.ExecutePolicyType(MetricValue, PolicyName, AutoScalingGroupName, HonorCooldown, BreachThreshold, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExecutePolicyType")
	local t = { 
		["MetricValue"] = MetricValue,
		["PolicyName"] = PolicyName,
		["AutoScalingGroupName"] = AutoScalingGroupName,
		["HonorCooldown"] = HonorCooldown,
		["BreachThreshold"] = BreachThreshold,
	}
	M.AssertExecutePolicyType(t)
	return t
end

local DetachInstancesQuery_keys = { "ShouldDecrementDesiredCapacity" = true, "AutoScalingGroupName" = true, "InstanceIds" = true, nil }

function M.AssertDetachInstancesQuery(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetachInstancesQuery to be of type 'table'")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	assert(struct["ShouldDecrementDesiredCapacity"], "Expected key ShouldDecrementDesiredCapacity to exist in table")
	if struct["ShouldDecrementDesiredCapacity"] then M.AssertShouldDecrementDesiredCapacity(struct["ShouldDecrementDesiredCapacity"]) end
	if struct["AutoScalingGroupName"] then M.AssertResourceName(struct["AutoScalingGroupName"]) end
	if struct["InstanceIds"] then M.AssertInstanceIds(struct["InstanceIds"]) end
	for k,_ in pairs(struct) do
		assert(DetachInstancesQuery_keys[k], "DetachInstancesQuery contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetachInstancesQuery
--  
-- @param ShouldDecrementDesiredCapacity [ShouldDecrementDesiredCapacity] <p>If <code>True</code>, the Auto Scaling group decrements the desired capacity value by the number of instances detached.</p>
-- @param AutoScalingGroupName [ResourceName] <p>The name of the group.</p>
-- @param InstanceIds [InstanceIds] <p>One or more instance IDs.</p>
-- Required parameter: AutoScalingGroupName
-- Required parameter: ShouldDecrementDesiredCapacity
function M.DetachInstancesQuery(ShouldDecrementDesiredCapacity, AutoScalingGroupName, InstanceIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DetachInstancesQuery")
	local t = { 
		["ShouldDecrementDesiredCapacity"] = ShouldDecrementDesiredCapacity,
		["AutoScalingGroupName"] = AutoScalingGroupName,
		["InstanceIds"] = InstanceIds,
	}
	M.AssertDetachInstancesQuery(t)
	return t
end

local AttachLoadBalancerTargetGroupsResultType_keys = { nil }

function M.AssertAttachLoadBalancerTargetGroupsResultType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachLoadBalancerTargetGroupsResultType to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(AttachLoadBalancerTargetGroupsResultType_keys[k], "AttachLoadBalancerTargetGroupsResultType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachLoadBalancerTargetGroupsResultType
--  
function M.AttachLoadBalancerTargetGroupsResultType(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttachLoadBalancerTargetGroupsResultType")
	local t = { 
	}
	M.AssertAttachLoadBalancerTargetGroupsResultType(t)
	return t
end

local TerminateInstanceInAutoScalingGroupType_keys = { "InstanceId" = true, "ShouldDecrementDesiredCapacity" = true, nil }

function M.AssertTerminateInstanceInAutoScalingGroupType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TerminateInstanceInAutoScalingGroupType to be of type 'table'")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	assert(struct["ShouldDecrementDesiredCapacity"], "Expected key ShouldDecrementDesiredCapacity to exist in table")
	if struct["InstanceId"] then M.AssertXmlStringMaxLen19(struct["InstanceId"]) end
	if struct["ShouldDecrementDesiredCapacity"] then M.AssertShouldDecrementDesiredCapacity(struct["ShouldDecrementDesiredCapacity"]) end
	for k,_ in pairs(struct) do
		assert(TerminateInstanceInAutoScalingGroupType_keys[k], "TerminateInstanceInAutoScalingGroupType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TerminateInstanceInAutoScalingGroupType
--  
-- @param InstanceId [XmlStringMaxLen19] <p>The ID of the instance.</p>
-- @param ShouldDecrementDesiredCapacity [ShouldDecrementDesiredCapacity] <p>If <code>true</code>, terminating the instance also decrements the size of the Auto Scaling group.</p>
-- Required parameter: InstanceId
-- Required parameter: ShouldDecrementDesiredCapacity
function M.TerminateInstanceInAutoScalingGroupType(InstanceId, ShouldDecrementDesiredCapacity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TerminateInstanceInAutoScalingGroupType")
	local t = { 
		["InstanceId"] = InstanceId,
		["ShouldDecrementDesiredCapacity"] = ShouldDecrementDesiredCapacity,
	}
	M.AssertTerminateInstanceInAutoScalingGroupType(t)
	return t
end

local ScalingActivityInProgressFault_keys = { "message" = true, nil }

function M.AssertScalingActivityInProgressFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScalingActivityInProgressFault to be of type 'table'")
	if struct["message"] then M.AssertXmlStringMaxLen255(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ScalingActivityInProgressFault_keys[k], "ScalingActivityInProgressFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScalingActivityInProgressFault
-- <p>The operation can't be performed because there are scaling activities in progress.</p>
-- @param message [XmlStringMaxLen255] <p/>
function M.ScalingActivityInProgressFault(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ScalingActivityInProgressFault")
	local t = { 
		["message"] = message,
	}
	M.AssertScalingActivityInProgressFault(t)
	return t
end

local AttachInstancesQuery_keys = { "AutoScalingGroupName" = true, "InstanceIds" = true, nil }

function M.AssertAttachInstancesQuery(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachInstancesQuery to be of type 'table'")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	if struct["AutoScalingGroupName"] then M.AssertResourceName(struct["AutoScalingGroupName"]) end
	if struct["InstanceIds"] then M.AssertInstanceIds(struct["InstanceIds"]) end
	for k,_ in pairs(struct) do
		assert(AttachInstancesQuery_keys[k], "AttachInstancesQuery contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachInstancesQuery
--  
-- @param AutoScalingGroupName [ResourceName] <p>The name of the group.</p>
-- @param InstanceIds [InstanceIds] <p>One or more instance IDs.</p>
-- Required parameter: AutoScalingGroupName
function M.AttachInstancesQuery(AutoScalingGroupName, InstanceIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttachInstancesQuery")
	local t = { 
		["AutoScalingGroupName"] = AutoScalingGroupName,
		["InstanceIds"] = InstanceIds,
	}
	M.AssertAttachInstancesQuery(t)
	return t
end

local ActivityType_keys = { "Activity" = true, nil }

function M.AssertActivityType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivityType to be of type 'table'")
	if struct["Activity"] then M.AssertActivity(struct["Activity"]) end
	for k,_ in pairs(struct) do
		assert(ActivityType_keys[k], "ActivityType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivityType
--  
-- @param Activity [Activity] <p>A scaling activity.</p>
function M.ActivityType(Activity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivityType")
	local t = { 
		["Activity"] = Activity,
	}
	M.AssertActivityType(t)
	return t
end

local DescribeScalingActivitiesType_keys = { "ActivityIds" = true, "MaxRecords" = true, "NextToken" = true, "AutoScalingGroupName" = true, nil }

function M.AssertDescribeScalingActivitiesType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeScalingActivitiesType to be of type 'table'")
	if struct["ActivityIds"] then M.AssertActivityIds(struct["ActivityIds"]) end
	if struct["MaxRecords"] then M.AssertMaxRecords(struct["MaxRecords"]) end
	if struct["NextToken"] then M.AssertXmlString(struct["NextToken"]) end
	if struct["AutoScalingGroupName"] then M.AssertResourceName(struct["AutoScalingGroupName"]) end
	for k,_ in pairs(struct) do
		assert(DescribeScalingActivitiesType_keys[k], "DescribeScalingActivitiesType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeScalingActivitiesType
--  
-- @param ActivityIds [ActivityIds] <p>The activity IDs of the desired scaling activities. If you omit this parameter, all activities for the past six weeks are described. If you specify an Auto Scaling group, the results are limited to that group. The list of requested activities cannot contain more than 50 items. If unknown activities are requested, they are ignored with no error.</p>
-- @param MaxRecords [MaxRecords] <p>The maximum number of items to return with this call. The default value is 100.</p>
-- @param NextToken [XmlString] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- @param AutoScalingGroupName [ResourceName] <p>The name of the group.</p>
function M.DescribeScalingActivitiesType(ActivityIds, MaxRecords, NextToken, AutoScalingGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeScalingActivitiesType")
	local t = { 
		["ActivityIds"] = ActivityIds,
		["MaxRecords"] = MaxRecords,
		["NextToken"] = NextToken,
		["AutoScalingGroupName"] = AutoScalingGroupName,
	}
	M.AssertDescribeScalingActivitiesType(t)
	return t
end

local PoliciesType_keys = { "ScalingPolicies" = true, "NextToken" = true, nil }

function M.AssertPoliciesType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PoliciesType to be of type 'table'")
	if struct["ScalingPolicies"] then M.AssertScalingPolicies(struct["ScalingPolicies"]) end
	if struct["NextToken"] then M.AssertXmlString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(PoliciesType_keys[k], "PoliciesType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PoliciesType
--  
-- @param ScalingPolicies [ScalingPolicies] <p>The scaling policies.</p>
-- @param NextToken [XmlString] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
function M.PoliciesType(ScalingPolicies, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PoliciesType")
	local t = { 
		["ScalingPolicies"] = ScalingPolicies,
		["NextToken"] = NextToken,
	}
	M.AssertPoliciesType(t)
	return t
end

local AttachLoadBalancersResultType_keys = { nil }

function M.AssertAttachLoadBalancersResultType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachLoadBalancersResultType to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(AttachLoadBalancersResultType_keys[k], "AttachLoadBalancersResultType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachLoadBalancersResultType
--  
function M.AttachLoadBalancersResultType(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttachLoadBalancersResultType")
	local t = { 
	}
	M.AssertAttachLoadBalancersResultType(t)
	return t
end

local ScheduledActionsType_keys = { "NextToken" = true, "ScheduledUpdateGroupActions" = true, nil }

function M.AssertScheduledActionsType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScheduledActionsType to be of type 'table'")
	if struct["NextToken"] then M.AssertXmlString(struct["NextToken"]) end
	if struct["ScheduledUpdateGroupActions"] then M.AssertScheduledUpdateGroupActions(struct["ScheduledUpdateGroupActions"]) end
	for k,_ in pairs(struct) do
		assert(ScheduledActionsType_keys[k], "ScheduledActionsType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScheduledActionsType
--  
-- @param NextToken [XmlString] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
-- @param ScheduledUpdateGroupActions [ScheduledUpdateGroupActions] <p>The scheduled actions.</p>
function M.ScheduledActionsType(NextToken, ScheduledUpdateGroupActions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ScheduledActionsType")
	local t = { 
		["NextToken"] = NextToken,
		["ScheduledUpdateGroupActions"] = ScheduledUpdateGroupActions,
	}
	M.AssertScheduledActionsType(t)
	return t
end

local ResourceInUseFault_keys = { "message" = true, nil }

function M.AssertResourceInUseFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceInUseFault to be of type 'table'")
	if struct["message"] then M.AssertXmlStringMaxLen255(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ResourceInUseFault_keys[k], "ResourceInUseFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceInUseFault
-- <p>The operation can't be performed because the resource is in use.</p>
-- @param message [XmlStringMaxLen255] <p/>
function M.ResourceInUseFault(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceInUseFault")
	local t = { 
		["message"] = message,
	}
	M.AssertResourceInUseFault(t)
	return t
end

local LaunchConfigurationNameType_keys = { "LaunchConfigurationName" = true, nil }

function M.AssertLaunchConfigurationNameType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LaunchConfigurationNameType to be of type 'table'")
	assert(struct["LaunchConfigurationName"], "Expected key LaunchConfigurationName to exist in table")
	if struct["LaunchConfigurationName"] then M.AssertResourceName(struct["LaunchConfigurationName"]) end
	for k,_ in pairs(struct) do
		assert(LaunchConfigurationNameType_keys[k], "LaunchConfigurationNameType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LaunchConfigurationNameType
--  
-- @param LaunchConfigurationName [ResourceName] <p>The name of the launch configuration.</p>
-- Required parameter: LaunchConfigurationName
function M.LaunchConfigurationNameType(LaunchConfigurationName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LaunchConfigurationNameType")
	local t = { 
		["LaunchConfigurationName"] = LaunchConfigurationName,
	}
	M.AssertLaunchConfigurationNameType(t)
	return t
end

local StepAdjustment_keys = { "ScalingAdjustment" = true, "MetricIntervalLowerBound" = true, "MetricIntervalUpperBound" = true, nil }

function M.AssertStepAdjustment(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StepAdjustment to be of type 'table'")
	assert(struct["ScalingAdjustment"], "Expected key ScalingAdjustment to exist in table")
	if struct["ScalingAdjustment"] then M.AssertPolicyIncrement(struct["ScalingAdjustment"]) end
	if struct["MetricIntervalLowerBound"] then M.AssertMetricScale(struct["MetricIntervalLowerBound"]) end
	if struct["MetricIntervalUpperBound"] then M.AssertMetricScale(struct["MetricIntervalUpperBound"]) end
	for k,_ in pairs(struct) do
		assert(StepAdjustment_keys[k], "StepAdjustment contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StepAdjustment
-- <p>Describes an adjustment based on the difference between the value of the aggregated CloudWatch metric and the breach threshold that you've defined for the alarm.</p> <p>For the following examples, suppose that you have an alarm with a breach threshold of 50:</p> <ul> <li> <p>If you want the adjustment to be triggered when the metric is greater than or equal to 50 and less than 60, specify a lower bound of 0 and an upper bound of 10.</p> </li> <li> <p>If you want the adjustment to be triggered when the metric is greater than 40 and less than or equal to 50, specify a lower bound of -10 and an upper bound of 0.</p> </li> </ul> <p>There are a few rules for the step adjustments for your step policy:</p> <ul> <li> <p>The ranges of your step adjustments can't overlap or have a gap.</p> </li> <li> <p>At most one step adjustment can have a null lower bound. If one step adjustment has a negative lower bound, then there must be a step adjustment with a null lower bound.</p> </li> <li> <p>At most one step adjustment can have a null upper bound. If one step adjustment has a positive upper bound, then there must be a step adjustment with a null upper bound.</p> </li> <li> <p>The upper and lower bound can't be null in the same step adjustment.</p> </li> </ul>
-- @param ScalingAdjustment [PolicyIncrement] <p>The amount by which to scale, based on the specified adjustment type. A positive value adds to the current capacity while a negative number removes from the current capacity.</p>
-- @param MetricIntervalLowerBound [MetricScale] <p>The lower bound for the difference between the alarm threshold and the CloudWatch metric. If the metric value is above the breach threshold, the lower bound is inclusive (the metric must be greater than or equal to the threshold plus the lower bound). Otherwise, it is exclusive (the metric must be greater than the threshold plus the lower bound). A null value indicates negative infinity.</p>
-- @param MetricIntervalUpperBound [MetricScale] <p>The upper bound for the difference between the alarm threshold and the CloudWatch metric. If the metric value is above the breach threshold, the upper bound is exclusive (the metric must be less than the threshold plus the upper bound). Otherwise, it is inclusive (the metric must be less than or equal to the threshold plus the upper bound). A null value indicates positive infinity.</p> <p>The upper bound must be greater than the lower bound.</p>
-- Required parameter: ScalingAdjustment
function M.StepAdjustment(ScalingAdjustment, MetricIntervalLowerBound, MetricIntervalUpperBound, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StepAdjustment")
	local t = { 
		["ScalingAdjustment"] = ScalingAdjustment,
		["MetricIntervalLowerBound"] = MetricIntervalLowerBound,
		["MetricIntervalUpperBound"] = MetricIntervalUpperBound,
	}
	M.AssertStepAdjustment(t)
	return t
end

local DeleteLifecycleHookAnswer_keys = { nil }

function M.AssertDeleteLifecycleHookAnswer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteLifecycleHookAnswer to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteLifecycleHookAnswer_keys[k], "DeleteLifecycleHookAnswer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteLifecycleHookAnswer
--  
function M.DeleteLifecycleHookAnswer(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteLifecycleHookAnswer")
	local t = { 
	}
	M.AssertDeleteLifecycleHookAnswer(t)
	return t
end

local LaunchConfiguration_keys = { "UserData" = true, "IamInstanceProfile" = true, "ClassicLinkVPCId" = true, "EbsOptimized" = true, "PlacementTenancy" = true, "LaunchConfigurationARN" = true, "InstanceMonitoring" = true, "ImageId" = true, "CreatedTime" = true, "BlockDeviceMappings" = true, "KeyName" = true, "SecurityGroups" = true, "AssociatePublicIpAddress" = true, "LaunchConfigurationName" = true, "KernelId" = true, "RamdiskId" = true, "ClassicLinkVPCSecurityGroups" = true, "InstanceType" = true, "SpotPrice" = true, nil }

function M.AssertLaunchConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LaunchConfiguration to be of type 'table'")
	assert(struct["LaunchConfigurationName"], "Expected key LaunchConfigurationName to exist in table")
	assert(struct["ImageId"], "Expected key ImageId to exist in table")
	assert(struct["InstanceType"], "Expected key InstanceType to exist in table")
	assert(struct["CreatedTime"], "Expected key CreatedTime to exist in table")
	if struct["UserData"] then M.AssertXmlStringUserData(struct["UserData"]) end
	if struct["IamInstanceProfile"] then M.AssertXmlStringMaxLen1600(struct["IamInstanceProfile"]) end
	if struct["ClassicLinkVPCId"] then M.AssertXmlStringMaxLen255(struct["ClassicLinkVPCId"]) end
	if struct["EbsOptimized"] then M.AssertEbsOptimized(struct["EbsOptimized"]) end
	if struct["PlacementTenancy"] then M.AssertXmlStringMaxLen64(struct["PlacementTenancy"]) end
	if struct["LaunchConfigurationARN"] then M.AssertResourceName(struct["LaunchConfigurationARN"]) end
	if struct["InstanceMonitoring"] then M.AssertInstanceMonitoring(struct["InstanceMonitoring"]) end
	if struct["ImageId"] then M.AssertXmlStringMaxLen255(struct["ImageId"]) end
	if struct["CreatedTime"] then M.AssertTimestampType(struct["CreatedTime"]) end
	if struct["BlockDeviceMappings"] then M.AssertBlockDeviceMappings(struct["BlockDeviceMappings"]) end
	if struct["KeyName"] then M.AssertXmlStringMaxLen255(struct["KeyName"]) end
	if struct["SecurityGroups"] then M.AssertSecurityGroups(struct["SecurityGroups"]) end
	if struct["AssociatePublicIpAddress"] then M.AssertAssociatePublicIpAddress(struct["AssociatePublicIpAddress"]) end
	if struct["LaunchConfigurationName"] then M.AssertXmlStringMaxLen255(struct["LaunchConfigurationName"]) end
	if struct["KernelId"] then M.AssertXmlStringMaxLen255(struct["KernelId"]) end
	if struct["RamdiskId"] then M.AssertXmlStringMaxLen255(struct["RamdiskId"]) end
	if struct["ClassicLinkVPCSecurityGroups"] then M.AssertClassicLinkVPCSecurityGroups(struct["ClassicLinkVPCSecurityGroups"]) end
	if struct["InstanceType"] then M.AssertXmlStringMaxLen255(struct["InstanceType"]) end
	if struct["SpotPrice"] then M.AssertSpotPrice(struct["SpotPrice"]) end
	for k,_ in pairs(struct) do
		assert(LaunchConfiguration_keys[k], "LaunchConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LaunchConfiguration
-- <p>Describes a launch configuration.</p>
-- @param UserData [XmlStringUserData] <p>The user data available to the instances.</p>
-- @param IamInstanceProfile [XmlStringMaxLen1600] <p>The name or Amazon Resource Name (ARN) of the instance profile associated with the IAM role for the instance.</p>
-- @param ClassicLinkVPCId [XmlStringMaxLen255] <p>The ID of a ClassicLink-enabled VPC to link your EC2-Classic instances to. This parameter can only be used if you are launching EC2-Classic instances. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html">ClassicLink</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
-- @param EbsOptimized [EbsOptimized] <p>Controls whether the instance is optimized for EBS I/O (<code>true</code>) or not (<code>false</code>).</p>
-- @param PlacementTenancy [XmlStringMaxLen64] <p>The tenancy of the instance, either <code>default</code> or <code>dedicated</code>. An instance with <code>dedicated</code> tenancy runs in an isolated, single-tenant hardware and can only be launched into a VPC.</p>
-- @param LaunchConfigurationARN [ResourceName] <p>The Amazon Resource Name (ARN) of the launch configuration.</p>
-- @param InstanceMonitoring [InstanceMonitoring] <p>Controls whether instances in this group are launched with detailed (<code>true</code>) or basic (<code>false</code>) monitoring.</p>
-- @param ImageId [XmlStringMaxLen255] <p>The ID of the Amazon Machine Image (AMI).</p>
-- @param CreatedTime [TimestampType] <p>The creation date and time for the launch configuration.</p>
-- @param BlockDeviceMappings [BlockDeviceMappings] <p>A block device mapping, which specifies the block devices for the instance.</p>
-- @param KeyName [XmlStringMaxLen255] <p>The name of the key pair.</p>
-- @param SecurityGroups [SecurityGroups] <p>The security groups to associate with the instances.</p>
-- @param AssociatePublicIpAddress [AssociatePublicIpAddress] <p>[EC2-VPC] Indicates whether to assign a public IP address to each instance.</p>
-- @param LaunchConfigurationName [XmlStringMaxLen255] <p>The name of the launch configuration.</p>
-- @param KernelId [XmlStringMaxLen255] <p>The ID of the kernel associated with the AMI.</p>
-- @param RamdiskId [XmlStringMaxLen255] <p>The ID of the RAM disk associated with the AMI.</p>
-- @param ClassicLinkVPCSecurityGroups [ClassicLinkVPCSecurityGroups] <p>The IDs of one or more security groups for the VPC specified in <code>ClassicLinkVPCId</code>. This parameter is required if you specify a ClassicLink-enabled VPC, and cannot be used otherwise. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html">ClassicLink</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
-- @param InstanceType [XmlStringMaxLen255] <p>The instance type for the instances.</p>
-- @param SpotPrice [SpotPrice] <p>The price to bid when launching Spot Instances.</p>
-- Required parameter: LaunchConfigurationName
-- Required parameter: ImageId
-- Required parameter: InstanceType
-- Required parameter: CreatedTime
function M.LaunchConfiguration(UserData, IamInstanceProfile, ClassicLinkVPCId, EbsOptimized, PlacementTenancy, LaunchConfigurationARN, InstanceMonitoring, ImageId, CreatedTime, BlockDeviceMappings, KeyName, SecurityGroups, AssociatePublicIpAddress, LaunchConfigurationName, KernelId, RamdiskId, ClassicLinkVPCSecurityGroups, InstanceType, SpotPrice, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LaunchConfiguration")
	local t = { 
		["UserData"] = UserData,
		["IamInstanceProfile"] = IamInstanceProfile,
		["ClassicLinkVPCId"] = ClassicLinkVPCId,
		["EbsOptimized"] = EbsOptimized,
		["PlacementTenancy"] = PlacementTenancy,
		["LaunchConfigurationARN"] = LaunchConfigurationARN,
		["InstanceMonitoring"] = InstanceMonitoring,
		["ImageId"] = ImageId,
		["CreatedTime"] = CreatedTime,
		["BlockDeviceMappings"] = BlockDeviceMappings,
		["KeyName"] = KeyName,
		["SecurityGroups"] = SecurityGroups,
		["AssociatePublicIpAddress"] = AssociatePublicIpAddress,
		["LaunchConfigurationName"] = LaunchConfigurationName,
		["KernelId"] = KernelId,
		["RamdiskId"] = RamdiskId,
		["ClassicLinkVPCSecurityGroups"] = ClassicLinkVPCSecurityGroups,
		["InstanceType"] = InstanceType,
		["SpotPrice"] = SpotPrice,
	}
	M.AssertLaunchConfiguration(t)
	return t
end

local ScalingProcessQuery_keys = { "AutoScalingGroupName" = true, "ScalingProcesses" = true, nil }

function M.AssertScalingProcessQuery(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScalingProcessQuery to be of type 'table'")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	if struct["AutoScalingGroupName"] then M.AssertResourceName(struct["AutoScalingGroupName"]) end
	if struct["ScalingProcesses"] then M.AssertProcessNames(struct["ScalingProcesses"]) end
	for k,_ in pairs(struct) do
		assert(ScalingProcessQuery_keys[k], "ScalingProcessQuery contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScalingProcessQuery
--  
-- @param AutoScalingGroupName [ResourceName] <p>The name or Amazon Resource Name (ARN) of the Auto Scaling group.</p>
-- @param ScalingProcesses [ProcessNames] <p>One or more of the following processes. If you omit this parameter, all processes are specified.</p> <ul> <li> <p> <code>Launch</code> </p> </li> <li> <p> <code>Terminate</code> </p> </li> <li> <p> <code>HealthCheck</code> </p> </li> <li> <p> <code>ReplaceUnhealthy</code> </p> </li> <li> <p> <code>AZRebalance</code> </p> </li> <li> <p> <code>AlarmNotification</code> </p> </li> <li> <p> <code>ScheduledActions</code> </p> </li> <li> <p> <code>AddToLoadBalancer</code> </p> </li> </ul>
-- Required parameter: AutoScalingGroupName
function M.ScalingProcessQuery(AutoScalingGroupName, ScalingProcesses, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ScalingProcessQuery")
	local t = { 
		["AutoScalingGroupName"] = AutoScalingGroupName,
		["ScalingProcesses"] = ScalingProcesses,
	}
	M.AssertScalingProcessQuery(t)
	return t
end

local DescribeAccountLimitsAnswer_keys = { "NumberOfLaunchConfigurations" = true, "MaxNumberOfLaunchConfigurations" = true, "NumberOfAutoScalingGroups" = true, "MaxNumberOfAutoScalingGroups" = true, nil }

function M.AssertDescribeAccountLimitsAnswer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAccountLimitsAnswer to be of type 'table'")
	if struct["NumberOfLaunchConfigurations"] then M.AssertNumberOfLaunchConfigurations(struct["NumberOfLaunchConfigurations"]) end
	if struct["MaxNumberOfLaunchConfigurations"] then M.AssertMaxNumberOfLaunchConfigurations(struct["MaxNumberOfLaunchConfigurations"]) end
	if struct["NumberOfAutoScalingGroups"] then M.AssertNumberOfAutoScalingGroups(struct["NumberOfAutoScalingGroups"]) end
	if struct["MaxNumberOfAutoScalingGroups"] then M.AssertMaxNumberOfAutoScalingGroups(struct["MaxNumberOfAutoScalingGroups"]) end
	for k,_ in pairs(struct) do
		assert(DescribeAccountLimitsAnswer_keys[k], "DescribeAccountLimitsAnswer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAccountLimitsAnswer
--  
-- @param NumberOfLaunchConfigurations [NumberOfLaunchConfigurations] <p>The current number of launch configurations for your AWS account.</p>
-- @param MaxNumberOfLaunchConfigurations [MaxNumberOfLaunchConfigurations] <p>The maximum number of launch configurations allowed for your AWS account. The default limit is 100 per region.</p>
-- @param NumberOfAutoScalingGroups [NumberOfAutoScalingGroups] <p>The current number of groups for your AWS account.</p>
-- @param MaxNumberOfAutoScalingGroups [MaxNumberOfAutoScalingGroups] <p>The maximum number of groups allowed for your AWS account. The default limit is 20 per region.</p>
function M.DescribeAccountLimitsAnswer(NumberOfLaunchConfigurations, MaxNumberOfLaunchConfigurations, NumberOfAutoScalingGroups, MaxNumberOfAutoScalingGroups, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAccountLimitsAnswer")
	local t = { 
		["NumberOfLaunchConfigurations"] = NumberOfLaunchConfigurations,
		["MaxNumberOfLaunchConfigurations"] = MaxNumberOfLaunchConfigurations,
		["NumberOfAutoScalingGroups"] = NumberOfAutoScalingGroups,
		["MaxNumberOfAutoScalingGroups"] = MaxNumberOfAutoScalingGroups,
	}
	M.AssertDescribeAccountLimitsAnswer(t)
	return t
end

local TagDescription_keys = { "ResourceType" = true, "ResourceId" = true, "PropagateAtLaunch" = true, "Value" = true, "Key" = true, nil }

function M.AssertTagDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagDescription to be of type 'table'")
	if struct["ResourceType"] then M.AssertXmlString(struct["ResourceType"]) end
	if struct["ResourceId"] then M.AssertXmlString(struct["ResourceId"]) end
	if struct["PropagateAtLaunch"] then M.AssertPropagateAtLaunch(struct["PropagateAtLaunch"]) end
	if struct["Value"] then M.AssertTagValue(struct["Value"]) end
	if struct["Key"] then M.AssertTagKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(TagDescription_keys[k], "TagDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagDescription
-- <p>Describes a tag for an Auto Scaling group.</p>
-- @param ResourceType [XmlString] <p>The type of resource. The only supported value is <code>auto-scaling-group</code>.</p>
-- @param ResourceId [XmlString] <p>The name of the group.</p>
-- @param PropagateAtLaunch [PropagateAtLaunch] <p>Determines whether the tag is added to new instances as they are launched in the group.</p>
-- @param Value [TagValue] <p>The tag value.</p>
-- @param Key [TagKey] <p>The tag key.</p>
function M.TagDescription(ResourceType, ResourceId, PropagateAtLaunch, Value, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagDescription")
	local t = { 
		["ResourceType"] = ResourceType,
		["ResourceId"] = ResourceId,
		["PropagateAtLaunch"] = PropagateAtLaunch,
		["Value"] = Value,
		["Key"] = Key,
	}
	M.AssertTagDescription(t)
	return t
end

local Tag_keys = { "ResourceType" = true, "ResourceId" = true, "PropagateAtLaunch" = true, "Value" = true, "Key" = true, nil }

function M.AssertTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tag to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	if struct["ResourceType"] then M.AssertXmlString(struct["ResourceType"]) end
	if struct["ResourceId"] then M.AssertXmlString(struct["ResourceId"]) end
	if struct["PropagateAtLaunch"] then M.AssertPropagateAtLaunch(struct["PropagateAtLaunch"]) end
	if struct["Value"] then M.AssertTagValue(struct["Value"]) end
	if struct["Key"] then M.AssertTagKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(Tag_keys[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- <p>Describes a tag for an Auto Scaling group.</p>
-- @param ResourceType [XmlString] <p>The type of resource. The only supported value is <code>auto-scaling-group</code>.</p>
-- @param ResourceId [XmlString] <p>The name of the group.</p>
-- @param PropagateAtLaunch [PropagateAtLaunch] <p>Determines whether the tag is added to new instances as they are launched in the group.</p>
-- @param Value [TagValue] <p>The tag value.</p>
-- @param Key [TagKey] <p>The tag key.</p>
-- Required parameter: Key
function M.Tag(ResourceType, ResourceId, PropagateAtLaunch, Value, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tag")
	local t = { 
		["ResourceType"] = ResourceType,
		["ResourceId"] = ResourceId,
		["PropagateAtLaunch"] = PropagateAtLaunch,
		["Value"] = Value,
		["Key"] = Key,
	}
	M.AssertTag(t)
	return t
end

local CreateOrUpdateTagsType_keys = { "Tags" = true, nil }

function M.AssertCreateOrUpdateTagsType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateOrUpdateTagsType to be of type 'table'")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["Tags"] then M.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(CreateOrUpdateTagsType_keys[k], "CreateOrUpdateTagsType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateOrUpdateTagsType
--  
-- @param Tags [Tags] <p>One or more tags.</p>
-- Required parameter: Tags
function M.CreateOrUpdateTagsType(Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateOrUpdateTagsType")
	local t = { 
		["Tags"] = Tags,
	}
	M.AssertCreateOrUpdateTagsType(t)
	return t
end

local Ebs_keys = { "VolumeSize" = true, "Encrypted" = true, "VolumeType" = true, "DeleteOnTermination" = true, "SnapshotId" = true, "Iops" = true, nil }

function M.AssertEbs(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Ebs to be of type 'table'")
	if struct["VolumeSize"] then M.AssertBlockDeviceEbsVolumeSize(struct["VolumeSize"]) end
	if struct["Encrypted"] then M.AssertBlockDeviceEbsEncrypted(struct["Encrypted"]) end
	if struct["VolumeType"] then M.AssertBlockDeviceEbsVolumeType(struct["VolumeType"]) end
	if struct["DeleteOnTermination"] then M.AssertBlockDeviceEbsDeleteOnTermination(struct["DeleteOnTermination"]) end
	if struct["SnapshotId"] then M.AssertXmlStringMaxLen255(struct["SnapshotId"]) end
	if struct["Iops"] then M.AssertBlockDeviceEbsIops(struct["Iops"]) end
	for k,_ in pairs(struct) do
		assert(Ebs_keys[k], "Ebs contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Ebs
-- <p>Describes an Amazon EBS volume.</p>
-- @param VolumeSize [BlockDeviceEbsVolumeSize] <p>The volume size, in GiB. For <code>standard</code> volumes, specify a value from 1 to 1,024. For <code>io1</code> volumes, specify a value from 4 to 16,384. For <code>gp2</code> volumes, specify a value from 1 to 16,384. If you specify a snapshot, the volume size must be equal to or larger than the snapshot size.</p> <p>Default: If you create a volume from a snapshot and you don't specify a volume size, the default is the snapshot size.</p>
-- @param Encrypted [BlockDeviceEbsEncrypted] <p>Indicates whether the volume should be encrypted. Encrypted EBS volumes must be attached to instances that support Amazon EBS encryption. Volumes that are created from encrypted snapshots are automatically encrypted. There is no way to create an encrypted volume from an unencrypted snapshot or an unencrypted volume from an encrypted snapshot. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html">Amazon EBS Encryption</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
-- @param VolumeType [BlockDeviceEbsVolumeType] <p>The volume type. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html">Amazon EBS Volume Types</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> <p>Valid values: <code>standard</code> | <code>io1</code> | <code>gp2</code> </p> <p>Default: <code>standard</code> </p>
-- @param DeleteOnTermination [BlockDeviceEbsDeleteOnTermination] <p>Indicates whether the volume is deleted on instance termination.</p> <p>Default: <code>true</code> </p>
-- @param SnapshotId [XmlStringMaxLen255] <p>The ID of the snapshot.</p>
-- @param Iops [BlockDeviceEbsIops] <p>The number of I/O operations per second (IOPS) to provision for the volume.</p> <p>Constraint: Required when the volume type is <code>io1</code>.</p>
function M.Ebs(VolumeSize, Encrypted, VolumeType, DeleteOnTermination, SnapshotId, Iops, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Ebs")
	local t = { 
		["VolumeSize"] = VolumeSize,
		["Encrypted"] = Encrypted,
		["VolumeType"] = VolumeType,
		["DeleteOnTermination"] = DeleteOnTermination,
		["SnapshotId"] = SnapshotId,
		["Iops"] = Iops,
	}
	M.AssertEbs(t)
	return t
end

local ExitStandbyQuery_keys = { "AutoScalingGroupName" = true, "InstanceIds" = true, nil }

function M.AssertExitStandbyQuery(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExitStandbyQuery to be of type 'table'")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	if struct["AutoScalingGroupName"] then M.AssertResourceName(struct["AutoScalingGroupName"]) end
	if struct["InstanceIds"] then M.AssertInstanceIds(struct["InstanceIds"]) end
	for k,_ in pairs(struct) do
		assert(ExitStandbyQuery_keys[k], "ExitStandbyQuery contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExitStandbyQuery
--  
-- @param AutoScalingGroupName [ResourceName] <p>The name of the Auto Scaling group.</p>
-- @param InstanceIds [InstanceIds] <p>One or more instance IDs. You must specify at least one instance ID.</p>
-- Required parameter: AutoScalingGroupName
function M.ExitStandbyQuery(AutoScalingGroupName, InstanceIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExitStandbyQuery")
	local t = { 
		["AutoScalingGroupName"] = AutoScalingGroupName,
		["InstanceIds"] = InstanceIds,
	}
	M.AssertExitStandbyQuery(t)
	return t
end

local DescribeMetricCollectionTypesAnswer_keys = { "Metrics" = true, "Granularities" = true, nil }

function M.AssertDescribeMetricCollectionTypesAnswer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeMetricCollectionTypesAnswer to be of type 'table'")
	if struct["Metrics"] then M.AssertMetricCollectionTypes(struct["Metrics"]) end
	if struct["Granularities"] then M.AssertMetricGranularityTypes(struct["Granularities"]) end
	for k,_ in pairs(struct) do
		assert(DescribeMetricCollectionTypesAnswer_keys[k], "DescribeMetricCollectionTypesAnswer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeMetricCollectionTypesAnswer
--  
-- @param Metrics [MetricCollectionTypes] <p>One or more metrics.</p>
-- @param Granularities [MetricGranularityTypes] <p>The granularities for the metrics.</p>
function M.DescribeMetricCollectionTypesAnswer(Metrics, Granularities, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeMetricCollectionTypesAnswer")
	local t = { 
		["Metrics"] = Metrics,
		["Granularities"] = Granularities,
	}
	M.AssertDescribeMetricCollectionTypesAnswer(t)
	return t
end

local DeleteTagsType_keys = { "Tags" = true, nil }

function M.AssertDeleteTagsType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTagsType to be of type 'table'")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["Tags"] then M.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(DeleteTagsType_keys[k], "DeleteTagsType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTagsType
--  
-- @param Tags [Tags] <p>One or more tags.</p>
-- Required parameter: Tags
function M.DeleteTagsType(Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteTagsType")
	local t = { 
		["Tags"] = Tags,
	}
	M.AssertDeleteTagsType(t)
	return t
end

local AlreadyExistsFault_keys = { "message" = true, nil }

function M.AssertAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AlreadyExistsFault to be of type 'table'")
	if struct["message"] then M.AssertXmlStringMaxLen255(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(AlreadyExistsFault_keys[k], "AlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AlreadyExistsFault
-- <p>You already have an Auto Scaling group or launch configuration with this name.</p>
-- @param message [XmlStringMaxLen255] <p/>
function M.AlreadyExistsFault(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AlreadyExistsFault")
	local t = { 
		["message"] = message,
	}
	M.AssertAlreadyExistsFault(t)
	return t
end

local AutoScalingGroup_keys = { "PlacementGroup" = true, "VPCZoneIdentifier" = true, "LoadBalancerNames" = true, "CreatedTime" = true, "Status" = true, "AutoScalingGroupARN" = true, "SuspendedProcesses" = true, "Tags" = true, "MaxSize" = true, "TerminationPolicies" = true, "TargetGroupARNs" = true, "HealthCheckType" = true, "AutoScalingGroupName" = true, "MinSize" = true, "LaunchConfigurationName" = true, "HealthCheckGracePeriod" = true, "DesiredCapacity" = true, "EnabledMetrics" = true, "DefaultCooldown" = true, "Instances" = true, "AvailabilityZones" = true, "NewInstancesProtectedFromScaleIn" = true, nil }

function M.AssertAutoScalingGroup(struct)
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
	if struct["PlacementGroup"] then M.AssertXmlStringMaxLen255(struct["PlacementGroup"]) end
	if struct["VPCZoneIdentifier"] then M.AssertXmlStringMaxLen2047(struct["VPCZoneIdentifier"]) end
	if struct["LoadBalancerNames"] then M.AssertLoadBalancerNames(struct["LoadBalancerNames"]) end
	if struct["CreatedTime"] then M.AssertTimestampType(struct["CreatedTime"]) end
	if struct["Status"] then M.AssertXmlStringMaxLen255(struct["Status"]) end
	if struct["AutoScalingGroupARN"] then M.AssertResourceName(struct["AutoScalingGroupARN"]) end
	if struct["SuspendedProcesses"] then M.AssertSuspendedProcesses(struct["SuspendedProcesses"]) end
	if struct["Tags"] then M.AssertTagDescriptionList(struct["Tags"]) end
	if struct["MaxSize"] then M.AssertAutoScalingGroupMaxSize(struct["MaxSize"]) end
	if struct["TerminationPolicies"] then M.AssertTerminationPolicies(struct["TerminationPolicies"]) end
	if struct["TargetGroupARNs"] then M.AssertTargetGroupARNs(struct["TargetGroupARNs"]) end
	if struct["HealthCheckType"] then M.AssertXmlStringMaxLen32(struct["HealthCheckType"]) end
	if struct["AutoScalingGroupName"] then M.AssertXmlStringMaxLen255(struct["AutoScalingGroupName"]) end
	if struct["MinSize"] then M.AssertAutoScalingGroupMinSize(struct["MinSize"]) end
	if struct["LaunchConfigurationName"] then M.AssertXmlStringMaxLen255(struct["LaunchConfigurationName"]) end
	if struct["HealthCheckGracePeriod"] then M.AssertHealthCheckGracePeriod(struct["HealthCheckGracePeriod"]) end
	if struct["DesiredCapacity"] then M.AssertAutoScalingGroupDesiredCapacity(struct["DesiredCapacity"]) end
	if struct["EnabledMetrics"] then M.AssertEnabledMetrics(struct["EnabledMetrics"]) end
	if struct["DefaultCooldown"] then M.AssertCooldown(struct["DefaultCooldown"]) end
	if struct["Instances"] then M.AssertInstances(struct["Instances"]) end
	if struct["AvailabilityZones"] then M.AssertAvailabilityZones(struct["AvailabilityZones"]) end
	if struct["NewInstancesProtectedFromScaleIn"] then M.AssertInstanceProtected(struct["NewInstancesProtectedFromScaleIn"]) end
	for k,_ in pairs(struct) do
		assert(AutoScalingGroup_keys[k], "AutoScalingGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AutoScalingGroup
-- <p>Describes an Auto Scaling group.</p>
-- @param PlacementGroup [XmlStringMaxLen255] <p>The name of the placement group into which you'll launch your instances, if any. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html">Placement Groups</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
-- @param VPCZoneIdentifier [XmlStringMaxLen2047] <p>One or more subnet IDs, if applicable, separated by commas.</p> <p>If you specify <code>VPCZoneIdentifier</code> and <code>AvailabilityZones</code>, ensure that the Availability Zones of the subnets match the values for <code>AvailabilityZones</code>.</p>
-- @param LoadBalancerNames [LoadBalancerNames] <p>One or more load balancers associated with the group.</p>
-- @param CreatedTime [TimestampType] <p>The date and time the group was created.</p>
-- @param Status [XmlStringMaxLen255] <p>The current state of the group when <a>DeleteAutoScalingGroup</a> is in progress.</p>
-- @param AutoScalingGroupARN [ResourceName] <p>The Amazon Resource Name (ARN) of the group.</p>
-- @param SuspendedProcesses [SuspendedProcesses] <p>The suspended processes associated with the group.</p>
-- @param Tags [TagDescriptionList] <p>The tags for the group.</p>
-- @param MaxSize [AutoScalingGroupMaxSize] <p>The maximum size of the group.</p>
-- @param TerminationPolicies [TerminationPolicies] <p>The termination policies for the group.</p>
-- @param TargetGroupARNs [TargetGroupARNs] <p>The Amazon Resource Names (ARN) of the target groups for your load balancer.</p>
-- @param HealthCheckType [XmlStringMaxLen32] <p>The service to use for the health checks. The valid values are <code>EC2</code> and <code>ELB</code>.</p>
-- @param AutoScalingGroupName [XmlStringMaxLen255] <p>The name of the group.</p>
-- @param MinSize [AutoScalingGroupMinSize] <p>The minimum size of the group.</p>
-- @param LaunchConfigurationName [XmlStringMaxLen255] <p>The name of the associated launch configuration.</p>
-- @param HealthCheckGracePeriod [HealthCheckGracePeriod] <p>The amount of time, in seconds, that Auto Scaling waits before checking the health status of an EC2 instance that has come into service.</p>
-- @param DesiredCapacity [AutoScalingGroupDesiredCapacity] <p>The desired size of the group.</p>
-- @param EnabledMetrics [EnabledMetrics] <p>The metrics enabled for the group.</p>
-- @param DefaultCooldown [Cooldown] <p>The amount of time, in seconds, after a scaling activity completes before another scaling activity can start.</p>
-- @param Instances [Instances] <p>The EC2 instances associated with the group.</p>
-- @param AvailabilityZones [AvailabilityZones] <p>One or more Availability Zones for the group.</p>
-- @param NewInstancesProtectedFromScaleIn [InstanceProtected] <p>Indicates whether newly launched instances are protected from termination by Auto Scaling when scaling in.</p>
-- Required parameter: AutoScalingGroupName
-- Required parameter: MinSize
-- Required parameter: MaxSize
-- Required parameter: DesiredCapacity
-- Required parameter: DefaultCooldown
-- Required parameter: AvailabilityZones
-- Required parameter: HealthCheckType
-- Required parameter: CreatedTime
function M.AutoScalingGroup(PlacementGroup, VPCZoneIdentifier, LoadBalancerNames, CreatedTime, Status, AutoScalingGroupARN, SuspendedProcesses, Tags, MaxSize, TerminationPolicies, TargetGroupARNs, HealthCheckType, AutoScalingGroupName, MinSize, LaunchConfigurationName, HealthCheckGracePeriod, DesiredCapacity, EnabledMetrics, DefaultCooldown, Instances, AvailabilityZones, NewInstancesProtectedFromScaleIn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AutoScalingGroup")
	local t = { 
		["PlacementGroup"] = PlacementGroup,
		["VPCZoneIdentifier"] = VPCZoneIdentifier,
		["LoadBalancerNames"] = LoadBalancerNames,
		["CreatedTime"] = CreatedTime,
		["Status"] = Status,
		["AutoScalingGroupARN"] = AutoScalingGroupARN,
		["SuspendedProcesses"] = SuspendedProcesses,
		["Tags"] = Tags,
		["MaxSize"] = MaxSize,
		["TerminationPolicies"] = TerminationPolicies,
		["TargetGroupARNs"] = TargetGroupARNs,
		["HealthCheckType"] = HealthCheckType,
		["AutoScalingGroupName"] = AutoScalingGroupName,
		["MinSize"] = MinSize,
		["LaunchConfigurationName"] = LaunchConfigurationName,
		["HealthCheckGracePeriod"] = HealthCheckGracePeriod,
		["DesiredCapacity"] = DesiredCapacity,
		["EnabledMetrics"] = EnabledMetrics,
		["DefaultCooldown"] = DefaultCooldown,
		["Instances"] = Instances,
		["AvailabilityZones"] = AvailabilityZones,
		["NewInstancesProtectedFromScaleIn"] = NewInstancesProtectedFromScaleIn,
	}
	M.AssertAutoScalingGroup(t)
	return t
end

local DetachInstancesAnswer_keys = { "Activities" = true, nil }

function M.AssertDetachInstancesAnswer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetachInstancesAnswer to be of type 'table'")
	if struct["Activities"] then M.AssertActivities(struct["Activities"]) end
	for k,_ in pairs(struct) do
		assert(DetachInstancesAnswer_keys[k], "DetachInstancesAnswer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetachInstancesAnswer
--  
-- @param Activities [Activities] <p>The activities related to detaching the instances from the Auto Scaling group.</p>
function M.DetachInstancesAnswer(Activities, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DetachInstancesAnswer")
	local t = { 
		["Activities"] = Activities,
	}
	M.AssertDetachInstancesAnswer(t)
	return t
end

local ScalingPolicy_keys = { "PolicyName" = true, "EstimatedInstanceWarmup" = true, "MinAdjustmentStep" = true, "MinAdjustmentMagnitude" = true, "MetricAggregationType" = true, "AutoScalingGroupName" = true, "PolicyARN" = true, "Cooldown" = true, "PolicyType" = true, "StepAdjustments" = true, "AdjustmentType" = true, "Alarms" = true, "ScalingAdjustment" = true, nil }

function M.AssertScalingPolicy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScalingPolicy to be of type 'table'")
	if struct["PolicyName"] then M.AssertXmlStringMaxLen255(struct["PolicyName"]) end
	if struct["EstimatedInstanceWarmup"] then M.AssertEstimatedInstanceWarmup(struct["EstimatedInstanceWarmup"]) end
	if struct["MinAdjustmentStep"] then M.AssertMinAdjustmentStep(struct["MinAdjustmentStep"]) end
	if struct["MinAdjustmentMagnitude"] then M.AssertMinAdjustmentMagnitude(struct["MinAdjustmentMagnitude"]) end
	if struct["MetricAggregationType"] then M.AssertXmlStringMaxLen32(struct["MetricAggregationType"]) end
	if struct["AutoScalingGroupName"] then M.AssertXmlStringMaxLen255(struct["AutoScalingGroupName"]) end
	if struct["PolicyARN"] then M.AssertResourceName(struct["PolicyARN"]) end
	if struct["Cooldown"] then M.AssertCooldown(struct["Cooldown"]) end
	if struct["PolicyType"] then M.AssertXmlStringMaxLen64(struct["PolicyType"]) end
	if struct["StepAdjustments"] then M.AssertStepAdjustments(struct["StepAdjustments"]) end
	if struct["AdjustmentType"] then M.AssertXmlStringMaxLen255(struct["AdjustmentType"]) end
	if struct["Alarms"] then M.AssertAlarms(struct["Alarms"]) end
	if struct["ScalingAdjustment"] then M.AssertPolicyIncrement(struct["ScalingAdjustment"]) end
	for k,_ in pairs(struct) do
		assert(ScalingPolicy_keys[k], "ScalingPolicy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScalingPolicy
-- <p>Describes a scaling policy.</p>
-- @param PolicyName [XmlStringMaxLen255] <p>The name of the scaling policy.</p>
-- @param EstimatedInstanceWarmup [EstimatedInstanceWarmup] <p>The estimated time, in seconds, until a newly launched instance can contribute to the CloudWatch metrics.</p>
-- @param MinAdjustmentStep [MinAdjustmentStep] <p>Available for backward compatibility. Use <code>MinAdjustmentMagnitude</code> instead.</p>
-- @param MinAdjustmentMagnitude [MinAdjustmentMagnitude] <p>The minimum number of instances to scale. If the value of <code>AdjustmentType</code> is <code>PercentChangeInCapacity</code>, the scaling policy changes the <code>DesiredCapacity</code> of the Auto Scaling group by at least this many instances. Otherwise, the error is <code>ValidationError</code>.</p>
-- @param MetricAggregationType [XmlStringMaxLen32] <p>The aggregation type for the CloudWatch metrics. Valid values are <code>Minimum</code>, <code>Maximum</code>, and <code>Average</code>.</p>
-- @param AutoScalingGroupName [XmlStringMaxLen255] <p>The name of the Auto Scaling group associated with this scaling policy.</p>
-- @param PolicyARN [ResourceName] <p>The Amazon Resource Name (ARN) of the policy.</p>
-- @param Cooldown [Cooldown] <p>The amount of time, in seconds, after a scaling activity completes before any further dynamic scaling activities can start.</p>
-- @param PolicyType [XmlStringMaxLen64] <p>The policy type. Valid values are <code>SimpleScaling</code> and <code>StepScaling</code>.</p>
-- @param StepAdjustments [StepAdjustments] <p>A set of adjustments that enable you to scale based on the size of the alarm breach.</p>
-- @param AdjustmentType [XmlStringMaxLen255] <p>The adjustment type, which specifies how <code>ScalingAdjustment</code> is interpreted. Valid values are <code>ChangeInCapacity</code>, <code>ExactCapacity</code>, and <code>PercentChangeInCapacity</code>.</p>
-- @param Alarms [Alarms] <p>The CloudWatch alarms related to the policy.</p>
-- @param ScalingAdjustment [PolicyIncrement] <p>The amount by which to scale, based on the specified adjustment type. A positive value adds to the current capacity while a negative number removes from the current capacity.</p>
function M.ScalingPolicy(PolicyName, EstimatedInstanceWarmup, MinAdjustmentStep, MinAdjustmentMagnitude, MetricAggregationType, AutoScalingGroupName, PolicyARN, Cooldown, PolicyType, StepAdjustments, AdjustmentType, Alarms, ScalingAdjustment, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ScalingPolicy")
	local t = { 
		["PolicyName"] = PolicyName,
		["EstimatedInstanceWarmup"] = EstimatedInstanceWarmup,
		["MinAdjustmentStep"] = MinAdjustmentStep,
		["MinAdjustmentMagnitude"] = MinAdjustmentMagnitude,
		["MetricAggregationType"] = MetricAggregationType,
		["AutoScalingGroupName"] = AutoScalingGroupName,
		["PolicyARN"] = PolicyARN,
		["Cooldown"] = Cooldown,
		["PolicyType"] = PolicyType,
		["StepAdjustments"] = StepAdjustments,
		["AdjustmentType"] = AdjustmentType,
		["Alarms"] = Alarms,
		["ScalingAdjustment"] = ScalingAdjustment,
	}
	M.AssertScalingPolicy(t)
	return t
end

local RecordLifecycleActionHeartbeatAnswer_keys = { nil }

function M.AssertRecordLifecycleActionHeartbeatAnswer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RecordLifecycleActionHeartbeatAnswer to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(RecordLifecycleActionHeartbeatAnswer_keys[k], "RecordLifecycleActionHeartbeatAnswer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RecordLifecycleActionHeartbeatAnswer
--  
function M.RecordLifecycleActionHeartbeatAnswer(...)
	assert(select("#", ...) == 0, "Too many arguments when creating RecordLifecycleActionHeartbeatAnswer")
	local t = { 
	}
	M.AssertRecordLifecycleActionHeartbeatAnswer(t)
	return t
end

local DeleteScheduledActionType_keys = { "AutoScalingGroupName" = true, "ScheduledActionName" = true, nil }

function M.AssertDeleteScheduledActionType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteScheduledActionType to be of type 'table'")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	assert(struct["ScheduledActionName"], "Expected key ScheduledActionName to exist in table")
	if struct["AutoScalingGroupName"] then M.AssertResourceName(struct["AutoScalingGroupName"]) end
	if struct["ScheduledActionName"] then M.AssertResourceName(struct["ScheduledActionName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteScheduledActionType_keys[k], "DeleteScheduledActionType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteScheduledActionType
--  
-- @param AutoScalingGroupName [ResourceName] <p>The name of the Auto Scaling group.</p>
-- @param ScheduledActionName [ResourceName] <p>The name of the action to delete.</p>
-- Required parameter: AutoScalingGroupName
-- Required parameter: ScheduledActionName
function M.DeleteScheduledActionType(AutoScalingGroupName, ScheduledActionName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteScheduledActionType")
	local t = { 
		["AutoScalingGroupName"] = AutoScalingGroupName,
		["ScheduledActionName"] = ScheduledActionName,
	}
	M.AssertDeleteScheduledActionType(t)
	return t
end

local DescribeNotificationConfigurationsType_keys = { "MaxRecords" = true, "NextToken" = true, "AutoScalingGroupNames" = true, nil }

function M.AssertDescribeNotificationConfigurationsType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeNotificationConfigurationsType to be of type 'table'")
	if struct["MaxRecords"] then M.AssertMaxRecords(struct["MaxRecords"]) end
	if struct["NextToken"] then M.AssertXmlString(struct["NextToken"]) end
	if struct["AutoScalingGroupNames"] then M.AssertAutoScalingGroupNames(struct["AutoScalingGroupNames"]) end
	for k,_ in pairs(struct) do
		assert(DescribeNotificationConfigurationsType_keys[k], "DescribeNotificationConfigurationsType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeNotificationConfigurationsType
--  
-- @param MaxRecords [MaxRecords] <p>The maximum number of items to return with this call. The default value is 50 and the maximum value is 100.</p>
-- @param NextToken [XmlString] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- @param AutoScalingGroupNames [AutoScalingGroupNames] <p>The name of the group.</p>
function M.DescribeNotificationConfigurationsType(MaxRecords, NextToken, AutoScalingGroupNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeNotificationConfigurationsType")
	local t = { 
		["MaxRecords"] = MaxRecords,
		["NextToken"] = NextToken,
		["AutoScalingGroupNames"] = AutoScalingGroupNames,
	}
	M.AssertDescribeNotificationConfigurationsType(t)
	return t
end

local MetricGranularityType_keys = { "Granularity" = true, nil }

function M.AssertMetricGranularityType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MetricGranularityType to be of type 'table'")
	if struct["Granularity"] then M.AssertXmlStringMaxLen255(struct["Granularity"]) end
	for k,_ in pairs(struct) do
		assert(MetricGranularityType_keys[k], "MetricGranularityType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MetricGranularityType
-- <p>Describes a granularity of a metric.</p>
-- @param Granularity [XmlStringMaxLen255] <p>The granularity. The only valid value is <code>1Minute</code>.</p>
function M.MetricGranularityType(Granularity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MetricGranularityType")
	local t = { 
		["Granularity"] = Granularity,
	}
	M.AssertMetricGranularityType(t)
	return t
end

local DescribeScheduledActionsType_keys = { "EndTime" = true, "AutoScalingGroupName" = true, "MaxRecords" = true, "ScheduledActionNames" = true, "StartTime" = true, "NextToken" = true, nil }

function M.AssertDescribeScheduledActionsType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeScheduledActionsType to be of type 'table'")
	if struct["EndTime"] then M.AssertTimestampType(struct["EndTime"]) end
	if struct["AutoScalingGroupName"] then M.AssertResourceName(struct["AutoScalingGroupName"]) end
	if struct["MaxRecords"] then M.AssertMaxRecords(struct["MaxRecords"]) end
	if struct["ScheduledActionNames"] then M.AssertScheduledActionNames(struct["ScheduledActionNames"]) end
	if struct["StartTime"] then M.AssertTimestampType(struct["StartTime"]) end
	if struct["NextToken"] then M.AssertXmlString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(DescribeScheduledActionsType_keys[k], "DescribeScheduledActionsType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeScheduledActionsType
--  
-- @param EndTime [TimestampType] <p>The latest scheduled start time to return. If scheduled action names are provided, this parameter is ignored.</p>
-- @param AutoScalingGroupName [ResourceName] <p>The name of the group.</p>
-- @param MaxRecords [MaxRecords] <p>The maximum number of items to return with this call. The default value is 50 and the maximum value is 100.</p>
-- @param ScheduledActionNames [ScheduledActionNames] <p>Describes one or more scheduled actions. If you omit this parameter, all scheduled actions are described. If you specify an unknown scheduled action, it is ignored with no error.</p> <p>You can describe up to a maximum of 50 instances with a single call. If there are more items to return, the call returns a token. To get the next set of items, repeat the call with the returned token.</p>
-- @param StartTime [TimestampType] <p>The earliest scheduled start time to return. If scheduled action names are provided, this parameter is ignored.</p>
-- @param NextToken [XmlString] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
function M.DescribeScheduledActionsType(EndTime, AutoScalingGroupName, MaxRecords, ScheduledActionNames, StartTime, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeScheduledActionsType")
	local t = { 
		["EndTime"] = EndTime,
		["AutoScalingGroupName"] = AutoScalingGroupName,
		["MaxRecords"] = MaxRecords,
		["ScheduledActionNames"] = ScheduledActionNames,
		["StartTime"] = StartTime,
		["NextToken"] = NextToken,
	}
	M.AssertDescribeScheduledActionsType(t)
	return t
end

local ResourceContentionFault_keys = { "message" = true, nil }

function M.AssertResourceContentionFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceContentionFault to be of type 'table'")
	if struct["message"] then M.AssertXmlStringMaxLen255(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ResourceContentionFault_keys[k], "ResourceContentionFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceContentionFault
-- <p>You already have a pending update to an Auto Scaling resource (for example, a group, instance, or load balancer).</p>
-- @param message [XmlStringMaxLen255] <p/>
function M.ResourceContentionFault(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceContentionFault")
	local t = { 
		["message"] = message,
	}
	M.AssertResourceContentionFault(t)
	return t
end

local ScheduledUpdateGroupAction_keys = { "MinSize" = true, "DesiredCapacity" = true, "AutoScalingGroupName" = true, "MaxSize" = true, "Recurrence" = true, "ScheduledActionARN" = true, "ScheduledActionName" = true, "StartTime" = true, "Time" = true, "EndTime" = true, nil }

function M.AssertScheduledUpdateGroupAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScheduledUpdateGroupAction to be of type 'table'")
	if struct["MinSize"] then M.AssertAutoScalingGroupMinSize(struct["MinSize"]) end
	if struct["DesiredCapacity"] then M.AssertAutoScalingGroupDesiredCapacity(struct["DesiredCapacity"]) end
	if struct["AutoScalingGroupName"] then M.AssertXmlStringMaxLen255(struct["AutoScalingGroupName"]) end
	if struct["MaxSize"] then M.AssertAutoScalingGroupMaxSize(struct["MaxSize"]) end
	if struct["Recurrence"] then M.AssertXmlStringMaxLen255(struct["Recurrence"]) end
	if struct["ScheduledActionARN"] then M.AssertResourceName(struct["ScheduledActionARN"]) end
	if struct["ScheduledActionName"] then M.AssertXmlStringMaxLen255(struct["ScheduledActionName"]) end
	if struct["StartTime"] then M.AssertTimestampType(struct["StartTime"]) end
	if struct["Time"] then M.AssertTimestampType(struct["Time"]) end
	if struct["EndTime"] then M.AssertTimestampType(struct["EndTime"]) end
	for k,_ in pairs(struct) do
		assert(ScheduledUpdateGroupAction_keys[k], "ScheduledUpdateGroupAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScheduledUpdateGroupAction
-- <p>Describes a scheduled update to an Auto Scaling group.</p>
-- @param MinSize [AutoScalingGroupMinSize] <p>The minimum size of the group.</p>
-- @param DesiredCapacity [AutoScalingGroupDesiredCapacity] <p>The number of instances you prefer to maintain in the group.</p>
-- @param AutoScalingGroupName [XmlStringMaxLen255] <p>The name of the group.</p>
-- @param MaxSize [AutoScalingGroupMaxSize] <p>The maximum size of the group.</p>
-- @param Recurrence [XmlStringMaxLen255] <p>The recurring schedule for the action.</p>
-- @param ScheduledActionARN [ResourceName] <p>The Amazon Resource Name (ARN) of the scheduled action.</p>
-- @param ScheduledActionName [XmlStringMaxLen255] <p>The name of the scheduled action.</p>
-- @param StartTime [TimestampType] <p>The date and time that the action is scheduled to begin. This date and time can be up to one month in the future.</p> <p>When <code>StartTime</code> and <code>EndTime</code> are specified with <code>Recurrence</code>, they form the boundaries of when the recurring action will start and stop.</p>
-- @param Time [TimestampType] <p>This parameter is deprecated.</p>
-- @param EndTime [TimestampType] <p>The date and time that the action is scheduled to end. This date and time can be up to one month in the future.</p>
function M.ScheduledUpdateGroupAction(MinSize, DesiredCapacity, AutoScalingGroupName, MaxSize, Recurrence, ScheduledActionARN, ScheduledActionName, StartTime, Time, EndTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ScheduledUpdateGroupAction")
	local t = { 
		["MinSize"] = MinSize,
		["DesiredCapacity"] = DesiredCapacity,
		["AutoScalingGroupName"] = AutoScalingGroupName,
		["MaxSize"] = MaxSize,
		["Recurrence"] = Recurrence,
		["ScheduledActionARN"] = ScheduledActionARN,
		["ScheduledActionName"] = ScheduledActionName,
		["StartTime"] = StartTime,
		["Time"] = Time,
		["EndTime"] = EndTime,
	}
	M.AssertScheduledUpdateGroupAction(t)
	return t
end

local EnabledMetric_keys = { "Metric" = true, "Granularity" = true, nil }

function M.AssertEnabledMetric(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnabledMetric to be of type 'table'")
	if struct["Metric"] then M.AssertXmlStringMaxLen255(struct["Metric"]) end
	if struct["Granularity"] then M.AssertXmlStringMaxLen255(struct["Granularity"]) end
	for k,_ in pairs(struct) do
		assert(EnabledMetric_keys[k], "EnabledMetric contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnabledMetric
-- <p>Describes an enabled metric.</p>
-- @param Metric [XmlStringMaxLen255] <p>One of the following metrics:</p> <ul> <li> <p> <code>GroupMinSize</code> </p> </li> <li> <p> <code>GroupMaxSize</code> </p> </li> <li> <p> <code>GroupDesiredCapacity</code> </p> </li> <li> <p> <code>GroupInServiceInstances</code> </p> </li> <li> <p> <code>GroupPendingInstances</code> </p> </li> <li> <p> <code>GroupStandbyInstances</code> </p> </li> <li> <p> <code>GroupTerminatingInstances</code> </p> </li> <li> <p> <code>GroupTotalInstances</code> </p> </li> </ul>
-- @param Granularity [XmlStringMaxLen255] <p>The granularity of the metric. The only valid value is <code>1Minute</code>.</p>
function M.EnabledMetric(Metric, Granularity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnabledMetric")
	local t = { 
		["Metric"] = Metric,
		["Granularity"] = Granularity,
	}
	M.AssertEnabledMetric(t)
	return t
end

local DeletePolicyType_keys = { "PolicyName" = true, "AutoScalingGroupName" = true, nil }

function M.AssertDeletePolicyType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePolicyType to be of type 'table'")
	assert(struct["PolicyName"], "Expected key PolicyName to exist in table")
	if struct["PolicyName"] then M.AssertResourceName(struct["PolicyName"]) end
	if struct["AutoScalingGroupName"] then M.AssertResourceName(struct["AutoScalingGroupName"]) end
	for k,_ in pairs(struct) do
		assert(DeletePolicyType_keys[k], "DeletePolicyType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePolicyType
--  
-- @param PolicyName [ResourceName] <p>The name or Amazon Resource Name (ARN) of the policy.</p>
-- @param AutoScalingGroupName [ResourceName] <p>The name of the Auto Scaling group.</p>
-- Required parameter: PolicyName
function M.DeletePolicyType(PolicyName, AutoScalingGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeletePolicyType")
	local t = { 
		["PolicyName"] = PolicyName,
		["AutoScalingGroupName"] = AutoScalingGroupName,
	}
	M.AssertDeletePolicyType(t)
	return t
end

local DeleteLifecycleHookType_keys = { "LifecycleHookName" = true, "AutoScalingGroupName" = true, nil }

function M.AssertDeleteLifecycleHookType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteLifecycleHookType to be of type 'table'")
	assert(struct["LifecycleHookName"], "Expected key LifecycleHookName to exist in table")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	if struct["LifecycleHookName"] then M.AssertAsciiStringMaxLen255(struct["LifecycleHookName"]) end
	if struct["AutoScalingGroupName"] then M.AssertResourceName(struct["AutoScalingGroupName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteLifecycleHookType_keys[k], "DeleteLifecycleHookType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteLifecycleHookType
--  
-- @param LifecycleHookName [AsciiStringMaxLen255] <p>The name of the lifecycle hook.</p>
-- @param AutoScalingGroupName [ResourceName] <p>The name of the Auto Scaling group for the lifecycle hook.</p>
-- Required parameter: LifecycleHookName
-- Required parameter: AutoScalingGroupName
function M.DeleteLifecycleHookType(LifecycleHookName, AutoScalingGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteLifecycleHookType")
	local t = { 
		["LifecycleHookName"] = LifecycleHookName,
		["AutoScalingGroupName"] = AutoScalingGroupName,
	}
	M.AssertDeleteLifecycleHookType(t)
	return t
end

local ProcessType_keys = { "ProcessName" = true, nil }

function M.AssertProcessType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProcessType to be of type 'table'")
	assert(struct["ProcessName"], "Expected key ProcessName to exist in table")
	if struct["ProcessName"] then M.AssertXmlStringMaxLen255(struct["ProcessName"]) end
	for k,_ in pairs(struct) do
		assert(ProcessType_keys[k], "ProcessType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProcessType
-- <p>Describes a process type.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/autoscaling/latest/userguide/as-suspend-resume-processes.html#process-types">Auto Scaling Processes</a> in the <i>Auto Scaling User Guide</i>.</p>
-- @param ProcessName [XmlStringMaxLen255] <p>One of the following processes:</p> <ul> <li> <p> <code>Launch</code> </p> </li> <li> <p> <code>Terminate</code> </p> </li> <li> <p> <code>AddToLoadBalancer</code> </p> </li> <li> <p> <code>AlarmNotification</code> </p> </li> <li> <p> <code>AZRebalance</code> </p> </li> <li> <p> <code>HealthCheck</code> </p> </li> <li> <p> <code>ReplaceUnhealthy</code> </p> </li> <li> <p> <code>ScheduledActions</code> </p> </li> </ul>
-- Required parameter: ProcessName
function M.ProcessType(ProcessName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProcessType")
	local t = { 
		["ProcessName"] = ProcessName,
	}
	M.AssertProcessType(t)
	return t
end

local ProcessesType_keys = { "Processes" = true, nil }

function M.AssertProcessesType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProcessesType to be of type 'table'")
	if struct["Processes"] then M.AssertProcesses(struct["Processes"]) end
	for k,_ in pairs(struct) do
		assert(ProcessesType_keys[k], "ProcessesType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProcessesType
--  
-- @param Processes [Processes] <p>The names of the process types.</p>
function M.ProcessesType(Processes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProcessesType")
	local t = { 
		["Processes"] = Processes,
	}
	M.AssertProcessesType(t)
	return t
end

local PutNotificationConfigurationType_keys = { "AutoScalingGroupName" = true, "NotificationTypes" = true, "TopicARN" = true, nil }

function M.AssertPutNotificationConfigurationType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutNotificationConfigurationType to be of type 'table'")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	assert(struct["TopicARN"], "Expected key TopicARN to exist in table")
	assert(struct["NotificationTypes"], "Expected key NotificationTypes to exist in table")
	if struct["AutoScalingGroupName"] then M.AssertResourceName(struct["AutoScalingGroupName"]) end
	if struct["NotificationTypes"] then M.AssertAutoScalingNotificationTypes(struct["NotificationTypes"]) end
	if struct["TopicARN"] then M.AssertResourceName(struct["TopicARN"]) end
	for k,_ in pairs(struct) do
		assert(PutNotificationConfigurationType_keys[k], "PutNotificationConfigurationType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutNotificationConfigurationType
--  
-- @param AutoScalingGroupName [ResourceName] <p>The name of the Auto Scaling group.</p>
-- @param NotificationTypes [AutoScalingNotificationTypes] <p>The type of event that will cause the notification to be sent. For details about notification types supported by Auto Scaling, see <a>DescribeAutoScalingNotificationTypes</a>.</p>
-- @param TopicARN [ResourceName] <p>The Amazon Resource Name (ARN) of the Amazon Simple Notification Service (SNS) topic.</p>
-- Required parameter: AutoScalingGroupName
-- Required parameter: TopicARN
-- Required parameter: NotificationTypes
function M.PutNotificationConfigurationType(AutoScalingGroupName, NotificationTypes, TopicARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutNotificationConfigurationType")
	local t = { 
		["AutoScalingGroupName"] = AutoScalingGroupName,
		["NotificationTypes"] = NotificationTypes,
		["TopicARN"] = TopicARN,
	}
	M.AssertPutNotificationConfigurationType(t)
	return t
end

local EnterStandbyAnswer_keys = { "Activities" = true, nil }

function M.AssertEnterStandbyAnswer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnterStandbyAnswer to be of type 'table'")
	if struct["Activities"] then M.AssertActivities(struct["Activities"]) end
	for k,_ in pairs(struct) do
		assert(EnterStandbyAnswer_keys[k], "EnterStandbyAnswer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnterStandbyAnswer
--  
-- @param Activities [Activities] <p>The activities related to moving instances into <code>Standby</code> mode.</p>
function M.EnterStandbyAnswer(Activities, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnterStandbyAnswer")
	local t = { 
		["Activities"] = Activities,
	}
	M.AssertEnterStandbyAnswer(t)
	return t
end

local ExitStandbyAnswer_keys = { "Activities" = true, nil }

function M.AssertExitStandbyAnswer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExitStandbyAnswer to be of type 'table'")
	if struct["Activities"] then M.AssertActivities(struct["Activities"]) end
	for k,_ in pairs(struct) do
		assert(ExitStandbyAnswer_keys[k], "ExitStandbyAnswer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExitStandbyAnswer
--  
-- @param Activities [Activities] <p>The activities related to moving instances out of <code>Standby</code> mode.</p>
function M.ExitStandbyAnswer(Activities, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExitStandbyAnswer")
	local t = { 
		["Activities"] = Activities,
	}
	M.AssertExitStandbyAnswer(t)
	return t
end

local DescribeAdjustmentTypesAnswer_keys = { "AdjustmentTypes" = true, nil }

function M.AssertDescribeAdjustmentTypesAnswer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAdjustmentTypesAnswer to be of type 'table'")
	if struct["AdjustmentTypes"] then M.AssertAdjustmentTypes(struct["AdjustmentTypes"]) end
	for k,_ in pairs(struct) do
		assert(DescribeAdjustmentTypesAnswer_keys[k], "DescribeAdjustmentTypesAnswer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAdjustmentTypesAnswer
--  
-- @param AdjustmentTypes [AdjustmentTypes] <p>The policy adjustment types.</p>
function M.DescribeAdjustmentTypesAnswer(AdjustmentTypes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAdjustmentTypesAnswer")
	local t = { 
		["AdjustmentTypes"] = AdjustmentTypes,
	}
	M.AssertDescribeAdjustmentTypesAnswer(t)
	return t
end

local AdjustmentType_keys = { "AdjustmentType" = true, nil }

function M.AssertAdjustmentType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdjustmentType to be of type 'table'")
	if struct["AdjustmentType"] then M.AssertXmlStringMaxLen255(struct["AdjustmentType"]) end
	for k,_ in pairs(struct) do
		assert(AdjustmentType_keys[k], "AdjustmentType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdjustmentType
-- <p>Describes a policy adjustment type.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AutoScaling/latest/DeveloperGuide/as-scale-based-on-demand.html">Dynamic Scaling</a> in the <i>Auto Scaling User Guide</i>.</p>
-- @param AdjustmentType [XmlStringMaxLen255] <p>The policy adjustment type. The valid values are <code>ChangeInCapacity</code>, <code>ExactCapacity</code>, and <code>PercentChangeInCapacity</code>.</p>
function M.AdjustmentType(AdjustmentType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AdjustmentType")
	local t = { 
		["AdjustmentType"] = AdjustmentType,
	}
	M.AssertAdjustmentType(t)
	return t
end

local DisableMetricsCollectionQuery_keys = { "Metrics" = true, "AutoScalingGroupName" = true, nil }

function M.AssertDisableMetricsCollectionQuery(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisableMetricsCollectionQuery to be of type 'table'")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	if struct["Metrics"] then M.AssertMetrics(struct["Metrics"]) end
	if struct["AutoScalingGroupName"] then M.AssertResourceName(struct["AutoScalingGroupName"]) end
	for k,_ in pairs(struct) do
		assert(DisableMetricsCollectionQuery_keys[k], "DisableMetricsCollectionQuery contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisableMetricsCollectionQuery
--  
-- @param Metrics [Metrics] <p>One or more of the following metrics. If you omit this parameter, all metrics are disabled.</p> <ul> <li> <p> <code>GroupMinSize</code> </p> </li> <li> <p> <code>GroupMaxSize</code> </p> </li> <li> <p> <code>GroupDesiredCapacity</code> </p> </li> <li> <p> <code>GroupInServiceInstances</code> </p> </li> <li> <p> <code>GroupPendingInstances</code> </p> </li> <li> <p> <code>GroupStandbyInstances</code> </p> </li> <li> <p> <code>GroupTerminatingInstances</code> </p> </li> <li> <p> <code>GroupTotalInstances</code> </p> </li> </ul>
-- @param AutoScalingGroupName [ResourceName] <p>The name or Amazon Resource Name (ARN) of the group.</p>
-- Required parameter: AutoScalingGroupName
function M.DisableMetricsCollectionQuery(Metrics, AutoScalingGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisableMetricsCollectionQuery")
	local t = { 
		["Metrics"] = Metrics,
		["AutoScalingGroupName"] = AutoScalingGroupName,
	}
	M.AssertDisableMetricsCollectionQuery(t)
	return t
end

local NotificationConfiguration_keys = { "AutoScalingGroupName" = true, "NotificationType" = true, "TopicARN" = true, nil }

function M.AssertNotificationConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotificationConfiguration to be of type 'table'")
	if struct["AutoScalingGroupName"] then M.AssertResourceName(struct["AutoScalingGroupName"]) end
	if struct["NotificationType"] then M.AssertXmlStringMaxLen255(struct["NotificationType"]) end
	if struct["TopicARN"] then M.AssertResourceName(struct["TopicARN"]) end
	for k,_ in pairs(struct) do
		assert(NotificationConfiguration_keys[k], "NotificationConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotificationConfiguration
-- <p>Describes a notification.</p>
-- @param AutoScalingGroupName [ResourceName] <p>The name of the group.</p>
-- @param NotificationType [XmlStringMaxLen255] <p>One of the following event notification types:</p> <ul> <li> <p> <code>autoscaling:EC2_INSTANCE_LAUNCH</code> </p> </li> <li> <p> <code>autoscaling:EC2_INSTANCE_LAUNCH_ERROR</code> </p> </li> <li> <p> <code>autoscaling:EC2_INSTANCE_TERMINATE</code> </p> </li> <li> <p> <code>autoscaling:EC2_INSTANCE_TERMINATE_ERROR</code> </p> </li> <li> <p> <code>autoscaling:TEST_NOTIFICATION</code> </p> </li> </ul>
-- @param TopicARN [ResourceName] <p>The Amazon Resource Name (ARN) of the Amazon Simple Notification Service (SNS) topic.</p>
function M.NotificationConfiguration(AutoScalingGroupName, NotificationType, TopicARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NotificationConfiguration")
	local t = { 
		["AutoScalingGroupName"] = AutoScalingGroupName,
		["NotificationType"] = NotificationType,
		["TopicARN"] = TopicARN,
	}
	M.AssertNotificationConfiguration(t)
	return t
end

local LaunchConfigurationNamesType_keys = { "MaxRecords" = true, "LaunchConfigurationNames" = true, "NextToken" = true, nil }

function M.AssertLaunchConfigurationNamesType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LaunchConfigurationNamesType to be of type 'table'")
	if struct["MaxRecords"] then M.AssertMaxRecords(struct["MaxRecords"]) end
	if struct["LaunchConfigurationNames"] then M.AssertLaunchConfigurationNames(struct["LaunchConfigurationNames"]) end
	if struct["NextToken"] then M.AssertXmlString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(LaunchConfigurationNamesType_keys[k], "LaunchConfigurationNamesType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LaunchConfigurationNamesType
--  
-- @param MaxRecords [MaxRecords] <p>The maximum number of items to return with this call. The default value is 50 and the maximum value is 100.</p>
-- @param LaunchConfigurationNames [LaunchConfigurationNames] <p>The launch configuration names. If you omit this parameter, all launch configurations are described.</p>
-- @param NextToken [XmlString] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
function M.LaunchConfigurationNamesType(MaxRecords, LaunchConfigurationNames, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LaunchConfigurationNamesType")
	local t = { 
		["MaxRecords"] = MaxRecords,
		["LaunchConfigurationNames"] = LaunchConfigurationNames,
		["NextToken"] = NextToken,
	}
	M.AssertLaunchConfigurationNamesType(t)
	return t
end

local PutScalingPolicyType_keys = { "PolicyName" = true, "EstimatedInstanceWarmup" = true, "MinAdjustmentStep" = true, "MinAdjustmentMagnitude" = true, "MetricAggregationType" = true, "AutoScalingGroupName" = true, "Cooldown" = true, "PolicyType" = true, "StepAdjustments" = true, "AdjustmentType" = true, "ScalingAdjustment" = true, nil }

function M.AssertPutScalingPolicyType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutScalingPolicyType to be of type 'table'")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	assert(struct["PolicyName"], "Expected key PolicyName to exist in table")
	assert(struct["AdjustmentType"], "Expected key AdjustmentType to exist in table")
	if struct["PolicyName"] then M.AssertXmlStringMaxLen255(struct["PolicyName"]) end
	if struct["EstimatedInstanceWarmup"] then M.AssertEstimatedInstanceWarmup(struct["EstimatedInstanceWarmup"]) end
	if struct["MinAdjustmentStep"] then M.AssertMinAdjustmentStep(struct["MinAdjustmentStep"]) end
	if struct["MinAdjustmentMagnitude"] then M.AssertMinAdjustmentMagnitude(struct["MinAdjustmentMagnitude"]) end
	if struct["MetricAggregationType"] then M.AssertXmlStringMaxLen32(struct["MetricAggregationType"]) end
	if struct["AutoScalingGroupName"] then M.AssertResourceName(struct["AutoScalingGroupName"]) end
	if struct["Cooldown"] then M.AssertCooldown(struct["Cooldown"]) end
	if struct["PolicyType"] then M.AssertXmlStringMaxLen64(struct["PolicyType"]) end
	if struct["StepAdjustments"] then M.AssertStepAdjustments(struct["StepAdjustments"]) end
	if struct["AdjustmentType"] then M.AssertXmlStringMaxLen255(struct["AdjustmentType"]) end
	if struct["ScalingAdjustment"] then M.AssertPolicyIncrement(struct["ScalingAdjustment"]) end
	for k,_ in pairs(struct) do
		assert(PutScalingPolicyType_keys[k], "PutScalingPolicyType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutScalingPolicyType
--  
-- @param PolicyName [XmlStringMaxLen255] <p>The name of the policy.</p>
-- @param EstimatedInstanceWarmup [EstimatedInstanceWarmup] <p>The estimated time, in seconds, until a newly launched instance can contribute to the CloudWatch metrics. The default is to use the value specified for the default cooldown period for the group.</p> <p>This parameter is not supported if the policy type is <code>SimpleScaling</code>.</p>
-- @param MinAdjustmentStep [MinAdjustmentStep] <p>Available for backward compatibility. Use <code>MinAdjustmentMagnitude</code> instead.</p>
-- @param MinAdjustmentMagnitude [MinAdjustmentMagnitude] <p>The minimum number of instances to scale. If the value of <code>AdjustmentType</code> is <code>PercentChangeInCapacity</code>, the scaling policy changes the <code>DesiredCapacity</code> of the Auto Scaling group by at least this many instances. Otherwise, the error is <code>ValidationError</code>.</p>
-- @param MetricAggregationType [XmlStringMaxLen32] <p>The aggregation type for the CloudWatch metrics. Valid values are <code>Minimum</code>, <code>Maximum</code>, and <code>Average</code>. If the aggregation type is null, the value is treated as <code>Average</code>.</p> <p>This parameter is not supported if the policy type is <code>SimpleScaling</code>.</p>
-- @param AutoScalingGroupName [ResourceName] <p>The name or ARN of the group.</p>
-- @param Cooldown [Cooldown] <p>The amount of time, in seconds, after a scaling activity completes and before the next scaling activity can start. If this parameter is not specified, the default cooldown period for the group applies.</p> <p>This parameter is not supported unless the policy type is <code>SimpleScaling</code>.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/autoscaling/latest/userguide/Cooldown.html">Auto Scaling Cooldowns</a> in the <i>Auto Scaling User Guide</i>.</p>
-- @param PolicyType [XmlStringMaxLen64] <p>The policy type. Valid values are <code>SimpleScaling</code> and <code>StepScaling</code>. If the policy type is null, the value is treated as <code>SimpleScaling</code>.</p>
-- @param StepAdjustments [StepAdjustments] <p>A set of adjustments that enable you to scale based on the size of the alarm breach.</p> <p>This parameter is required if the policy type is <code>StepScaling</code> and not supported otherwise.</p>
-- @param AdjustmentType [XmlStringMaxLen255] <p>The adjustment type. Valid values are <code>ChangeInCapacity</code>, <code>ExactCapacity</code>, and <code>PercentChangeInCapacity</code>.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/autoscaling/latest/userguide/as-scale-based-on-demand.html">Dynamic Scaling</a> in the <i>Auto Scaling User Guide</i>.</p>
-- @param ScalingAdjustment [PolicyIncrement] <p>The amount by which to scale, based on the specified adjustment type. A positive value adds to the current capacity while a negative number removes from the current capacity.</p> <p>This parameter is required if the policy type is <code>SimpleScaling</code> and not supported otherwise.</p>
-- Required parameter: AutoScalingGroupName
-- Required parameter: PolicyName
-- Required parameter: AdjustmentType
function M.PutScalingPolicyType(PolicyName, EstimatedInstanceWarmup, MinAdjustmentStep, MinAdjustmentMagnitude, MetricAggregationType, AutoScalingGroupName, Cooldown, PolicyType, StepAdjustments, AdjustmentType, ScalingAdjustment, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutScalingPolicyType")
	local t = { 
		["PolicyName"] = PolicyName,
		["EstimatedInstanceWarmup"] = EstimatedInstanceWarmup,
		["MinAdjustmentStep"] = MinAdjustmentStep,
		["MinAdjustmentMagnitude"] = MinAdjustmentMagnitude,
		["MetricAggregationType"] = MetricAggregationType,
		["AutoScalingGroupName"] = AutoScalingGroupName,
		["Cooldown"] = Cooldown,
		["PolicyType"] = PolicyType,
		["StepAdjustments"] = StepAdjustments,
		["AdjustmentType"] = AdjustmentType,
		["ScalingAdjustment"] = ScalingAdjustment,
	}
	M.AssertPutScalingPolicyType(t)
	return t
end

local InstanceMonitoring_keys = { "Enabled" = true, nil }

function M.AssertInstanceMonitoring(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceMonitoring to be of type 'table'")
	if struct["Enabled"] then M.AssertMonitoringEnabled(struct["Enabled"]) end
	for k,_ in pairs(struct) do
		assert(InstanceMonitoring_keys[k], "InstanceMonitoring contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceMonitoring
-- <p>Describes whether detailed monitoring is enabled for the Auto Scaling instances.</p>
-- @param Enabled [MonitoringEnabled] <p>If <code>true</code>, detailed monitoring is enabled. Otherwise, basic monitoring is enabled.</p>
function M.InstanceMonitoring(Enabled, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceMonitoring")
	local t = { 
		["Enabled"] = Enabled,
	}
	M.AssertInstanceMonitoring(t)
	return t
end

local Instance_keys = { "ProtectedFromScaleIn" = true, "AvailabilityZone" = true, "InstanceId" = true, "HealthStatus" = true, "LifecycleState" = true, "LaunchConfigurationName" = true, nil }

function M.AssertInstance(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Instance to be of type 'table'")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	assert(struct["AvailabilityZone"], "Expected key AvailabilityZone to exist in table")
	assert(struct["LifecycleState"], "Expected key LifecycleState to exist in table")
	assert(struct["HealthStatus"], "Expected key HealthStatus to exist in table")
	assert(struct["LaunchConfigurationName"], "Expected key LaunchConfigurationName to exist in table")
	assert(struct["ProtectedFromScaleIn"], "Expected key ProtectedFromScaleIn to exist in table")
	if struct["ProtectedFromScaleIn"] then M.AssertInstanceProtected(struct["ProtectedFromScaleIn"]) end
	if struct["AvailabilityZone"] then M.AssertXmlStringMaxLen255(struct["AvailabilityZone"]) end
	if struct["InstanceId"] then M.AssertXmlStringMaxLen19(struct["InstanceId"]) end
	if struct["HealthStatus"] then M.AssertXmlStringMaxLen32(struct["HealthStatus"]) end
	if struct["LifecycleState"] then M.AssertLifecycleState(struct["LifecycleState"]) end
	if struct["LaunchConfigurationName"] then M.AssertXmlStringMaxLen255(struct["LaunchConfigurationName"]) end
	for k,_ in pairs(struct) do
		assert(Instance_keys[k], "Instance contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Instance
-- <p>Describes an EC2 instance.</p>
-- @param ProtectedFromScaleIn [InstanceProtected] <p>Indicates whether the instance is protected from termination by Auto Scaling when scaling in.</p>
-- @param AvailabilityZone [XmlStringMaxLen255] <p>The Availability Zone in which the instance is running.</p>
-- @param InstanceId [XmlStringMaxLen19] <p>The ID of the instance.</p>
-- @param HealthStatus [XmlStringMaxLen32] <p>The last reported health status of the instance. "Healthy" means that the instance is healthy and should remain in service. "Unhealthy" means that the instance is unhealthy and Auto Scaling should terminate and replace it.</p>
-- @param LifecycleState [LifecycleState] <p>A description of the current lifecycle state. Note that the <code>Quarantined</code> state is not used.</p>
-- @param LaunchConfigurationName [XmlStringMaxLen255] <p>The launch configuration associated with the instance.</p>
-- Required parameter: InstanceId
-- Required parameter: AvailabilityZone
-- Required parameter: LifecycleState
-- Required parameter: HealthStatus
-- Required parameter: LaunchConfigurationName
-- Required parameter: ProtectedFromScaleIn
function M.Instance(ProtectedFromScaleIn, AvailabilityZone, InstanceId, HealthStatus, LifecycleState, LaunchConfigurationName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Instance")
	local t = { 
		["ProtectedFromScaleIn"] = ProtectedFromScaleIn,
		["AvailabilityZone"] = AvailabilityZone,
		["InstanceId"] = InstanceId,
		["HealthStatus"] = HealthStatus,
		["LifecycleState"] = LifecycleState,
		["LaunchConfigurationName"] = LaunchConfigurationName,
	}
	M.AssertInstance(t)
	return t
end

local DetachLoadBalancersType_keys = { "AutoScalingGroupName" = true, "LoadBalancerNames" = true, nil }

function M.AssertDetachLoadBalancersType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetachLoadBalancersType to be of type 'table'")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	assert(struct["LoadBalancerNames"], "Expected key LoadBalancerNames to exist in table")
	if struct["AutoScalingGroupName"] then M.AssertResourceName(struct["AutoScalingGroupName"]) end
	if struct["LoadBalancerNames"] then M.AssertLoadBalancerNames(struct["LoadBalancerNames"]) end
	for k,_ in pairs(struct) do
		assert(DetachLoadBalancersType_keys[k], "DetachLoadBalancersType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetachLoadBalancersType
--  
-- @param AutoScalingGroupName [ResourceName] <p>The name of the Auto Scaling group.</p>
-- @param LoadBalancerNames [LoadBalancerNames] <p>One or more load balancer names.</p>
-- Required parameter: AutoScalingGroupName
-- Required parameter: LoadBalancerNames
function M.DetachLoadBalancersType(AutoScalingGroupName, LoadBalancerNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DetachLoadBalancersType")
	local t = { 
		["AutoScalingGroupName"] = AutoScalingGroupName,
		["LoadBalancerNames"] = LoadBalancerNames,
	}
	M.AssertDetachLoadBalancersType(t)
	return t
end

local SetInstanceProtectionQuery_keys = { "ProtectedFromScaleIn" = true, "AutoScalingGroupName" = true, "InstanceIds" = true, nil }

function M.AssertSetInstanceProtectionQuery(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetInstanceProtectionQuery to be of type 'table'")
	assert(struct["InstanceIds"], "Expected key InstanceIds to exist in table")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	assert(struct["ProtectedFromScaleIn"], "Expected key ProtectedFromScaleIn to exist in table")
	if struct["ProtectedFromScaleIn"] then M.AssertProtectedFromScaleIn(struct["ProtectedFromScaleIn"]) end
	if struct["AutoScalingGroupName"] then M.AssertResourceName(struct["AutoScalingGroupName"]) end
	if struct["InstanceIds"] then M.AssertInstanceIds(struct["InstanceIds"]) end
	for k,_ in pairs(struct) do
		assert(SetInstanceProtectionQuery_keys[k], "SetInstanceProtectionQuery contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetInstanceProtectionQuery
--  
-- @param ProtectedFromScaleIn [ProtectedFromScaleIn] <p>Indicates whether the instance is protected from termination by Auto Scaling when scaling in.</p>
-- @param AutoScalingGroupName [ResourceName] <p>The name of the group.</p>
-- @param InstanceIds [InstanceIds] <p>One or more instance IDs.</p>
-- Required parameter: InstanceIds
-- Required parameter: AutoScalingGroupName
-- Required parameter: ProtectedFromScaleIn
function M.SetInstanceProtectionQuery(ProtectedFromScaleIn, AutoScalingGroupName, InstanceIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetInstanceProtectionQuery")
	local t = { 
		["ProtectedFromScaleIn"] = ProtectedFromScaleIn,
		["AutoScalingGroupName"] = AutoScalingGroupName,
		["InstanceIds"] = InstanceIds,
	}
	M.AssertSetInstanceProtectionQuery(t)
	return t
end

local TagsType_keys = { "NextToken" = true, "Tags" = true, nil }

function M.AssertTagsType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagsType to be of type 'table'")
	if struct["NextToken"] then M.AssertXmlString(struct["NextToken"]) end
	if struct["Tags"] then M.AssertTagDescriptionList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(TagsType_keys[k], "TagsType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagsType
--  
-- @param NextToken [XmlString] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
-- @param Tags [TagDescriptionList] <p>One or more tags.</p>
function M.TagsType(NextToken, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagsType")
	local t = { 
		["NextToken"] = NextToken,
		["Tags"] = Tags,
	}
	M.AssertTagsType(t)
	return t
end

local LaunchConfigurationsType_keys = { "NextToken" = true, "LaunchConfigurations" = true, nil }

function M.AssertLaunchConfigurationsType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LaunchConfigurationsType to be of type 'table'")
	assert(struct["LaunchConfigurations"], "Expected key LaunchConfigurations to exist in table")
	if struct["NextToken"] then M.AssertXmlString(struct["NextToken"]) end
	if struct["LaunchConfigurations"] then M.AssertLaunchConfigurations(struct["LaunchConfigurations"]) end
	for k,_ in pairs(struct) do
		assert(LaunchConfigurationsType_keys[k], "LaunchConfigurationsType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LaunchConfigurationsType
--  
-- @param NextToken [XmlString] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
-- @param LaunchConfigurations [LaunchConfigurations] <p>The launch configurations.</p>
-- Required parameter: LaunchConfigurations
function M.LaunchConfigurationsType(NextToken, LaunchConfigurations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LaunchConfigurationsType")
	local t = { 
		["NextToken"] = NextToken,
		["LaunchConfigurations"] = LaunchConfigurations,
	}
	M.AssertLaunchConfigurationsType(t)
	return t
end

local LimitExceededFault_keys = { "message" = true, nil }

function M.AssertLimitExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededFault to be of type 'table'")
	if struct["message"] then M.AssertXmlStringMaxLen255(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(LimitExceededFault_keys[k], "LimitExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededFault
-- <p>You have already reached a limit for your Auto Scaling resources (for example, groups, launch configurations, or lifecycle hooks). For more information, see <a>DescribeAccountLimits</a>.</p>
-- @param message [XmlStringMaxLen255] <p/>
function M.LimitExceededFault(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededFault")
	local t = { 
		["message"] = message,
	}
	M.AssertLimitExceededFault(t)
	return t
end

local CreateLaunchConfigurationType_keys = { "UserData" = true, "IamInstanceProfile" = true, "ClassicLinkVPCId" = true, "InstanceId" = true, "PlacementTenancy" = true, "AssociatePublicIpAddress" = true, "InstanceMonitoring" = true, "ClassicLinkVPCSecurityGroups" = true, "BlockDeviceMappings" = true, "KeyName" = true, "SecurityGroups" = true, "EbsOptimized" = true, "LaunchConfigurationName" = true, "KernelId" = true, "RamdiskId" = true, "ImageId" = true, "InstanceType" = true, "SpotPrice" = true, nil }

function M.AssertCreateLaunchConfigurationType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateLaunchConfigurationType to be of type 'table'")
	assert(struct["LaunchConfigurationName"], "Expected key LaunchConfigurationName to exist in table")
	if struct["UserData"] then M.AssertXmlStringUserData(struct["UserData"]) end
	if struct["IamInstanceProfile"] then M.AssertXmlStringMaxLen1600(struct["IamInstanceProfile"]) end
	if struct["ClassicLinkVPCId"] then M.AssertXmlStringMaxLen255(struct["ClassicLinkVPCId"]) end
	if struct["InstanceId"] then M.AssertXmlStringMaxLen19(struct["InstanceId"]) end
	if struct["PlacementTenancy"] then M.AssertXmlStringMaxLen64(struct["PlacementTenancy"]) end
	if struct["AssociatePublicIpAddress"] then M.AssertAssociatePublicIpAddress(struct["AssociatePublicIpAddress"]) end
	if struct["InstanceMonitoring"] then M.AssertInstanceMonitoring(struct["InstanceMonitoring"]) end
	if struct["ClassicLinkVPCSecurityGroups"] then M.AssertClassicLinkVPCSecurityGroups(struct["ClassicLinkVPCSecurityGroups"]) end
	if struct["BlockDeviceMappings"] then M.AssertBlockDeviceMappings(struct["BlockDeviceMappings"]) end
	if struct["KeyName"] then M.AssertXmlStringMaxLen255(struct["KeyName"]) end
	if struct["SecurityGroups"] then M.AssertSecurityGroups(struct["SecurityGroups"]) end
	if struct["EbsOptimized"] then M.AssertEbsOptimized(struct["EbsOptimized"]) end
	if struct["LaunchConfigurationName"] then M.AssertXmlStringMaxLen255(struct["LaunchConfigurationName"]) end
	if struct["KernelId"] then M.AssertXmlStringMaxLen255(struct["KernelId"]) end
	if struct["RamdiskId"] then M.AssertXmlStringMaxLen255(struct["RamdiskId"]) end
	if struct["ImageId"] then M.AssertXmlStringMaxLen255(struct["ImageId"]) end
	if struct["InstanceType"] then M.AssertXmlStringMaxLen255(struct["InstanceType"]) end
	if struct["SpotPrice"] then M.AssertSpotPrice(struct["SpotPrice"]) end
	for k,_ in pairs(struct) do
		assert(CreateLaunchConfigurationType_keys[k], "CreateLaunchConfigurationType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateLaunchConfigurationType
--  
-- @param UserData [XmlStringUserData] <p>The user data to make available to the launched EC2 instances. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html">Instance Metadata and User Data</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
-- @param IamInstanceProfile [XmlStringMaxLen1600] <p>The name or the Amazon Resource Name (ARN) of the instance profile associated with the IAM role for the instance.</p> <p>EC2 instances launched with an IAM role will automatically have AWS security credentials available. You can use IAM roles with Auto Scaling to automatically enable applications running on your EC2 instances to securely access other AWS resources. For more information, see <a href="http://docs.aws.amazon.com/autoscaling/latest/userguide/us-iam-role.html">Launch Auto Scaling Instances with an IAM Role</a> in the <i>Auto Scaling User Guide</i>.</p>
-- @param ClassicLinkVPCId [XmlStringMaxLen255] <p>The ID of a ClassicLink-enabled VPC to link your EC2-Classic instances to. This parameter is supported only if you are launching EC2-Classic instances. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html">ClassicLink</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
-- @param InstanceId [XmlStringMaxLen19] <p>The ID of the instance to use to create the launch configuration. The new launch configuration derives attributes from the instance, with the exception of the block device mapping.</p> <p>If you do not specify <code>InstanceId</code>, you must specify both <code>ImageId</code> and <code>InstanceType</code>.</p> <p>To create a launch configuration with a block device mapping or override any other instance attributes, specify them as part of the same request.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/autoscaling/latest/userguide/create-lc-with-instanceID.html">Create a Launch Configuration Using an EC2 Instance</a> in the <i>Auto Scaling User Guide</i>.</p>
-- @param PlacementTenancy [XmlStringMaxLen64] <p>The tenancy of the instance. An instance with a tenancy of <code>dedicated</code> runs on single-tenant hardware and can only be launched into a VPC.</p> <p>You must set the value of this parameter to <code>dedicated</code> if want to launch Dedicated Instances into a shared tenancy VPC (VPC with instance placement tenancy attribute set to <code>default</code>).</p> <p>If you specify this parameter, be sure to specify at least one subnet when you create your group.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/autoscaling/latest/userguide/asg-in-vpc.html">Launching Auto Scaling Instances in a VPC</a> in the <i>Auto Scaling User Guide</i>.</p> <p>Valid values: <code>default</code> | <code>dedicated</code> </p>
-- @param AssociatePublicIpAddress [AssociatePublicIpAddress] <p>Used for groups that launch instances into a virtual private cloud (VPC). Specifies whether to assign a public IP address to each instance. For more information, see <a href="http://docs.aws.amazon.com/autoscaling/latest/userguide/asg-in-vpc.html">Launching Auto Scaling Instances in a VPC</a> in the <i>Auto Scaling User Guide</i>.</p> <p>If you specify this parameter, be sure to specify at least one subnet when you create your group.</p> <p>Default: If the instance is launched into a default subnet, the default is <code>true</code>. If the instance is launched into a nondefault subnet, the default is <code>false</code>. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html">Supported Platforms</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
-- @param InstanceMonitoring [InstanceMonitoring] <p>Enables detailed monitoring (<code>true</code>) or basic monitoring (<code>false</code>) for the Auto Scaling instances. The default is <code>true</code>.</p>
-- @param ClassicLinkVPCSecurityGroups [ClassicLinkVPCSecurityGroups] <p>The IDs of one or more security groups for the specified ClassicLink-enabled VPC. This parameter is required if you specify a ClassicLink-enabled VPC, and is not supported otherwise. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html">ClassicLink</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
-- @param BlockDeviceMappings [BlockDeviceMappings] <p>One or more mappings that specify how block devices are exposed to the instance. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html">Block Device Mapping</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
-- @param KeyName [XmlStringMaxLen255] <p>The name of the key pair. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html">Amazon EC2 Key Pairs</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
-- @param SecurityGroups [SecurityGroups] <p>One or more security groups with which to associate the instances.</p> <p>If your instances are launched in EC2-Classic, you can either specify security group names or the security group IDs. For more information about security groups for EC2-Classic, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html">Amazon EC2 Security Groups</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> <p>If your instances are launched into a VPC, specify security group IDs. For more information, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html">Security Groups for Your VPC</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>
-- @param EbsOptimized [EbsOptimized] <p>Indicates whether the instance is optimized for Amazon EBS I/O. By default, the instance is not optimized for EBS I/O. The optimization provides dedicated throughput to Amazon EBS and an optimized configuration stack to provide optimal I/O performance. This optimization is not available with all instance types. Additional usage charges apply. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSOptimized.html">Amazon EBS-Optimized Instances</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
-- @param LaunchConfigurationName [XmlStringMaxLen255] <p>The name of the launch configuration. This name must be unique within the scope of your AWS account.</p>
-- @param KernelId [XmlStringMaxLen255] <p>The ID of the kernel associated with the AMI.</p>
-- @param RamdiskId [XmlStringMaxLen255] <p>The ID of the RAM disk associated with the AMI.</p>
-- @param ImageId [XmlStringMaxLen255] <p>The ID of the Amazon Machine Image (AMI) to use to launch your EC2 instances.</p> <p>If you do not specify <code>InstanceId</code>, you must specify <code>ImageId</code>.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/finding-an-ami.html">Finding an AMI</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
-- @param InstanceType [XmlStringMaxLen255] <p>The instance type of the EC2 instance.</p> <p>If you do not specify <code>InstanceId</code>, you must specify <code>InstanceType</code>.</p> <p>For information about available instance types, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#AvailableInstanceTypes">Available Instance Types</a> in the <i>Amazon Elastic Compute Cloud User Guide.</i> </p>
-- @param SpotPrice [SpotPrice] <p>The maximum hourly price to be paid for any Spot Instance launched to fulfill the request. Spot Instances are launched when the price you specify exceeds the current Spot market price. For more information, see <a href="http://docs.aws.amazon.com/autoscaling/latest/userguide/US-SpotInstances.html">Launching Spot Instances in Your Auto Scaling Group</a> in the <i>Auto Scaling User Guide</i>.</p>
-- Required parameter: LaunchConfigurationName
function M.CreateLaunchConfigurationType(UserData, IamInstanceProfile, ClassicLinkVPCId, InstanceId, PlacementTenancy, AssociatePublicIpAddress, InstanceMonitoring, ClassicLinkVPCSecurityGroups, BlockDeviceMappings, KeyName, SecurityGroups, EbsOptimized, LaunchConfigurationName, KernelId, RamdiskId, ImageId, InstanceType, SpotPrice, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateLaunchConfigurationType")
	local t = { 
		["UserData"] = UserData,
		["IamInstanceProfile"] = IamInstanceProfile,
		["ClassicLinkVPCId"] = ClassicLinkVPCId,
		["InstanceId"] = InstanceId,
		["PlacementTenancy"] = PlacementTenancy,
		["AssociatePublicIpAddress"] = AssociatePublicIpAddress,
		["InstanceMonitoring"] = InstanceMonitoring,
		["ClassicLinkVPCSecurityGroups"] = ClassicLinkVPCSecurityGroups,
		["BlockDeviceMappings"] = BlockDeviceMappings,
		["KeyName"] = KeyName,
		["SecurityGroups"] = SecurityGroups,
		["EbsOptimized"] = EbsOptimized,
		["LaunchConfigurationName"] = LaunchConfigurationName,
		["KernelId"] = KernelId,
		["RamdiskId"] = RamdiskId,
		["ImageId"] = ImageId,
		["InstanceType"] = InstanceType,
		["SpotPrice"] = SpotPrice,
	}
	M.AssertCreateLaunchConfigurationType(t)
	return t
end

local PolicyARNType_keys = { "PolicyARN" = true, nil }

function M.AssertPolicyARNType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PolicyARNType to be of type 'table'")
	if struct["PolicyARN"] then M.AssertResourceName(struct["PolicyARN"]) end
	for k,_ in pairs(struct) do
		assert(PolicyARNType_keys[k], "PolicyARNType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PolicyARNType
--  
-- @param PolicyARN [ResourceName] <p>The Amazon Resource Name (ARN) of the policy.</p>
function M.PolicyARNType(PolicyARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PolicyARNType")
	local t = { 
		["PolicyARN"] = PolicyARN,
	}
	M.AssertPolicyARNType(t)
	return t
end

local AutoScalingInstancesType_keys = { "NextToken" = true, "AutoScalingInstances" = true, nil }

function M.AssertAutoScalingInstancesType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AutoScalingInstancesType to be of type 'table'")
	if struct["NextToken"] then M.AssertXmlString(struct["NextToken"]) end
	if struct["AutoScalingInstances"] then M.AssertAutoScalingInstances(struct["AutoScalingInstances"]) end
	for k,_ in pairs(struct) do
		assert(AutoScalingInstancesType_keys[k], "AutoScalingInstancesType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AutoScalingInstancesType
--  
-- @param NextToken [XmlString] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
-- @param AutoScalingInstances [AutoScalingInstances] <p>The instances.</p>
function M.AutoScalingInstancesType(NextToken, AutoScalingInstances, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AutoScalingInstancesType")
	local t = { 
		["NextToken"] = NextToken,
		["AutoScalingInstances"] = AutoScalingInstances,
	}
	M.AssertAutoScalingInstancesType(t)
	return t
end

local SetDesiredCapacityType_keys = { "AutoScalingGroupName" = true, "DesiredCapacity" = true, "HonorCooldown" = true, nil }

function M.AssertSetDesiredCapacityType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetDesiredCapacityType to be of type 'table'")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	assert(struct["DesiredCapacity"], "Expected key DesiredCapacity to exist in table")
	if struct["AutoScalingGroupName"] then M.AssertResourceName(struct["AutoScalingGroupName"]) end
	if struct["DesiredCapacity"] then M.AssertAutoScalingGroupDesiredCapacity(struct["DesiredCapacity"]) end
	if struct["HonorCooldown"] then M.AssertHonorCooldown(struct["HonorCooldown"]) end
	for k,_ in pairs(struct) do
		assert(SetDesiredCapacityType_keys[k], "SetDesiredCapacityType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetDesiredCapacityType
--  
-- @param AutoScalingGroupName [ResourceName] <p>The name of the Auto Scaling group.</p>
-- @param DesiredCapacity [AutoScalingGroupDesiredCapacity] <p>The number of EC2 instances that should be running in the Auto Scaling group.</p>
-- @param HonorCooldown [HonorCooldown] <p>By default, <code>SetDesiredCapacity</code> overrides any cooldown period associated with the Auto Scaling group. Specify <code>True</code> to make Auto Scaling to wait for the cool-down period associated with the Auto Scaling group to complete before initiating a scaling activity to set your Auto Scaling group to its new capacity.</p>
-- Required parameter: AutoScalingGroupName
-- Required parameter: DesiredCapacity
function M.SetDesiredCapacityType(AutoScalingGroupName, DesiredCapacity, HonorCooldown, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetDesiredCapacityType")
	local t = { 
		["AutoScalingGroupName"] = AutoScalingGroupName,
		["DesiredCapacity"] = DesiredCapacity,
		["HonorCooldown"] = HonorCooldown,
	}
	M.AssertSetDesiredCapacityType(t)
	return t
end

local AutoScalingGroupsType_keys = { "AutoScalingGroups" = true, "NextToken" = true, nil }

function M.AssertAutoScalingGroupsType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AutoScalingGroupsType to be of type 'table'")
	assert(struct["AutoScalingGroups"], "Expected key AutoScalingGroups to exist in table")
	if struct["AutoScalingGroups"] then M.AssertAutoScalingGroups(struct["AutoScalingGroups"]) end
	if struct["NextToken"] then M.AssertXmlString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(AutoScalingGroupsType_keys[k], "AutoScalingGroupsType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AutoScalingGroupsType
--  
-- @param AutoScalingGroups [AutoScalingGroups] <p>The groups.</p>
-- @param NextToken [XmlString] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
-- Required parameter: AutoScalingGroups
function M.AutoScalingGroupsType(AutoScalingGroups, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AutoScalingGroupsType")
	local t = { 
		["AutoScalingGroups"] = AutoScalingGroups,
		["NextToken"] = NextToken,
	}
	M.AssertAutoScalingGroupsType(t)
	return t
end

local BlockDeviceMapping_keys = { "DeviceName" = true, "VirtualName" = true, "NoDevice" = true, "Ebs" = true, nil }

function M.AssertBlockDeviceMapping(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BlockDeviceMapping to be of type 'table'")
	assert(struct["DeviceName"], "Expected key DeviceName to exist in table")
	if struct["DeviceName"] then M.AssertXmlStringMaxLen255(struct["DeviceName"]) end
	if struct["VirtualName"] then M.AssertXmlStringMaxLen255(struct["VirtualName"]) end
	if struct["NoDevice"] then M.AssertNoDevice(struct["NoDevice"]) end
	if struct["Ebs"] then M.AssertEbs(struct["Ebs"]) end
	for k,_ in pairs(struct) do
		assert(BlockDeviceMapping_keys[k], "BlockDeviceMapping contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BlockDeviceMapping
-- <p>Describes a block device mapping.</p>
-- @param DeviceName [XmlStringMaxLen255] <p>The device name exposed to the EC2 instance (for example, <code>/dev/sdh</code> or <code>xvdh</code>).</p>
-- @param VirtualName [XmlStringMaxLen255] <p>The name of the virtual device (for example, <code>ephemeral0</code>).</p>
-- @param NoDevice [NoDevice] <p>Suppresses a device mapping.</p> <p>If this parameter is true for the root device, the instance might fail the EC2 health check. Auto Scaling launches a replacement instance if the instance fails the health check.</p>
-- @param Ebs [Ebs] <p>The information about the Amazon EBS volume.</p>
-- Required parameter: DeviceName
function M.BlockDeviceMapping(DeviceName, VirtualName, NoDevice, Ebs, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BlockDeviceMapping")
	local t = { 
		["DeviceName"] = DeviceName,
		["VirtualName"] = VirtualName,
		["NoDevice"] = NoDevice,
		["Ebs"] = Ebs,
	}
	M.AssertBlockDeviceMapping(t)
	return t
end

local Filter_keys = { "Values" = true, "Name" = true, nil }

function M.AssertFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Filter to be of type 'table'")
	if struct["Values"] then M.AssertValues(struct["Values"]) end
	if struct["Name"] then M.AssertXmlString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(Filter_keys[k], "Filter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Filter
-- <p>Describes a filter.</p>
-- @param Values [Values] <p>The value of the filter.</p>
-- @param Name [XmlString] <p>The name of the filter. The valid values are: <code>"auto-scaling-group"</code>, <code>"key"</code>, <code>"value"</code>, and <code>"propagate-at-launch"</code>.</p>
function M.Filter(Values, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Filter")
	local t = { 
		["Values"] = Values,
		["Name"] = Name,
	}
	M.AssertFilter(t)
	return t
end

local PutScheduledUpdateGroupActionType_keys = { "MinSize" = true, "DesiredCapacity" = true, "AutoScalingGroupName" = true, "Recurrence" = true, "MaxSize" = true, "ScheduledActionName" = true, "StartTime" = true, "Time" = true, "EndTime" = true, nil }

function M.AssertPutScheduledUpdateGroupActionType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutScheduledUpdateGroupActionType to be of type 'table'")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	assert(struct["ScheduledActionName"], "Expected key ScheduledActionName to exist in table")
	if struct["MinSize"] then M.AssertAutoScalingGroupMinSize(struct["MinSize"]) end
	if struct["DesiredCapacity"] then M.AssertAutoScalingGroupDesiredCapacity(struct["DesiredCapacity"]) end
	if struct["AutoScalingGroupName"] then M.AssertResourceName(struct["AutoScalingGroupName"]) end
	if struct["Recurrence"] then M.AssertXmlStringMaxLen255(struct["Recurrence"]) end
	if struct["MaxSize"] then M.AssertAutoScalingGroupMaxSize(struct["MaxSize"]) end
	if struct["ScheduledActionName"] then M.AssertXmlStringMaxLen255(struct["ScheduledActionName"]) end
	if struct["StartTime"] then M.AssertTimestampType(struct["StartTime"]) end
	if struct["Time"] then M.AssertTimestampType(struct["Time"]) end
	if struct["EndTime"] then M.AssertTimestampType(struct["EndTime"]) end
	for k,_ in pairs(struct) do
		assert(PutScheduledUpdateGroupActionType_keys[k], "PutScheduledUpdateGroupActionType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutScheduledUpdateGroupActionType
--  
-- @param MinSize [AutoScalingGroupMinSize] <p>The minimum size for the Auto Scaling group.</p>
-- @param DesiredCapacity [AutoScalingGroupDesiredCapacity] <p>The number of EC2 instances that should be running in the group.</p>
-- @param AutoScalingGroupName [ResourceName] <p>The name or Amazon Resource Name (ARN) of the Auto Scaling group.</p>
-- @param Recurrence [XmlStringMaxLen255] <p>The recurring schedule for this action, in Unix cron syntax format. For more information, see <a href="http://en.wikipedia.org/wiki/Cron">Cron</a> in Wikipedia.</p>
-- @param MaxSize [AutoScalingGroupMaxSize] <p>The maximum size for the Auto Scaling group.</p>
-- @param ScheduledActionName [XmlStringMaxLen255] <p>The name of this scaling action.</p>
-- @param StartTime [TimestampType] <p>The time for this action to start, in "YYYY-MM-DDThh:mm:ssZ" format in UTC/GMT only (for example, <code>2014-06-01T00:00:00Z</code>).</p> <p>If you specify <code>Recurrence</code> and <code>StartTime</code>, Auto Scaling performs the action at this time, and then performs the action based on the specified recurrence.</p> <p>If you try to schedule your action in the past, Auto Scaling returns an error message.</p>
-- @param Time [TimestampType] <p>This parameter is deprecated.</p>
-- @param EndTime [TimestampType] <p>The time for the recurring schedule to end. Auto Scaling does not perform the action after this time.</p>
-- Required parameter: AutoScalingGroupName
-- Required parameter: ScheduledActionName
function M.PutScheduledUpdateGroupActionType(MinSize, DesiredCapacity, AutoScalingGroupName, Recurrence, MaxSize, ScheduledActionName, StartTime, Time, EndTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutScheduledUpdateGroupActionType")
	local t = { 
		["MinSize"] = MinSize,
		["DesiredCapacity"] = DesiredCapacity,
		["AutoScalingGroupName"] = AutoScalingGroupName,
		["Recurrence"] = Recurrence,
		["MaxSize"] = MaxSize,
		["ScheduledActionName"] = ScheduledActionName,
		["StartTime"] = StartTime,
		["Time"] = Time,
		["EndTime"] = EndTime,
	}
	M.AssertPutScheduledUpdateGroupActionType(t)
	return t
end

local DescribeTagsType_keys = { "MaxRecords" = true, "NextToken" = true, "Filters" = true, nil }

function M.AssertDescribeTagsType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTagsType to be of type 'table'")
	if struct["MaxRecords"] then M.AssertMaxRecords(struct["MaxRecords"]) end
	if struct["NextToken"] then M.AssertXmlString(struct["NextToken"]) end
	if struct["Filters"] then M.AssertFilters(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(DescribeTagsType_keys[k], "DescribeTagsType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTagsType
--  
-- @param MaxRecords [MaxRecords] <p>The maximum number of items to return with this call. The default value is 50 and the maximum value is 100.</p>
-- @param NextToken [XmlString] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- @param Filters [Filters] <p>A filter used to scope the tags to return.</p>
function M.DescribeTagsType(MaxRecords, NextToken, Filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTagsType")
	local t = { 
		["MaxRecords"] = MaxRecords,
		["NextToken"] = NextToken,
		["Filters"] = Filters,
	}
	M.AssertDescribeTagsType(t)
	return t
end

local EnterStandbyQuery_keys = { "ShouldDecrementDesiredCapacity" = true, "AutoScalingGroupName" = true, "InstanceIds" = true, nil }

function M.AssertEnterStandbyQuery(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnterStandbyQuery to be of type 'table'")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	assert(struct["ShouldDecrementDesiredCapacity"], "Expected key ShouldDecrementDesiredCapacity to exist in table")
	if struct["ShouldDecrementDesiredCapacity"] then M.AssertShouldDecrementDesiredCapacity(struct["ShouldDecrementDesiredCapacity"]) end
	if struct["AutoScalingGroupName"] then M.AssertResourceName(struct["AutoScalingGroupName"]) end
	if struct["InstanceIds"] then M.AssertInstanceIds(struct["InstanceIds"]) end
	for k,_ in pairs(struct) do
		assert(EnterStandbyQuery_keys[k], "EnterStandbyQuery contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnterStandbyQuery
--  
-- @param ShouldDecrementDesiredCapacity [ShouldDecrementDesiredCapacity] <p>Specifies whether the instances moved to <code>Standby</code> mode count as part of the Auto Scaling group's desired capacity. If set, the desired capacity for the Auto Scaling group decrements by the number of instances moved to <code>Standby</code> mode.</p>
-- @param AutoScalingGroupName [ResourceName] <p>The name of the Auto Scaling group.</p>
-- @param InstanceIds [InstanceIds] <p>One or more instances to move into <code>Standby</code> mode. You must specify at least one instance ID.</p>
-- Required parameter: AutoScalingGroupName
-- Required parameter: ShouldDecrementDesiredCapacity
function M.EnterStandbyQuery(ShouldDecrementDesiredCapacity, AutoScalingGroupName, InstanceIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnterStandbyQuery")
	local t = { 
		["ShouldDecrementDesiredCapacity"] = ShouldDecrementDesiredCapacity,
		["AutoScalingGroupName"] = AutoScalingGroupName,
		["InstanceIds"] = InstanceIds,
	}
	M.AssertEnterStandbyQuery(t)
	return t
end

local InvalidNextToken_keys = { "message" = true, nil }

function M.AssertInvalidNextToken(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidNextToken to be of type 'table'")
	if struct["message"] then M.AssertXmlStringMaxLen255(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidNextToken_keys[k], "InvalidNextToken contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidNextToken
-- <p>The <code>NextToken</code> value is not valid.</p>
-- @param message [XmlStringMaxLen255] <p/>
function M.InvalidNextToken(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidNextToken")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidNextToken(t)
	return t
end

local DescribeLoadBalancersRequest_keys = { "MaxRecords" = true, "NextToken" = true, "AutoScalingGroupName" = true, nil }

function M.AssertDescribeLoadBalancersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLoadBalancersRequest to be of type 'table'")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	if struct["MaxRecords"] then M.AssertMaxRecords(struct["MaxRecords"]) end
	if struct["NextToken"] then M.AssertXmlString(struct["NextToken"]) end
	if struct["AutoScalingGroupName"] then M.AssertResourceName(struct["AutoScalingGroupName"]) end
	for k,_ in pairs(struct) do
		assert(DescribeLoadBalancersRequest_keys[k], "DescribeLoadBalancersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLoadBalancersRequest
--  
-- @param MaxRecords [MaxRecords] <p>The maximum number of items to return with this call. The default value is 50 and the maximum value is 100.</p>
-- @param NextToken [XmlString] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- @param AutoScalingGroupName [ResourceName] <p>The name of the group.</p>
-- Required parameter: AutoScalingGroupName
function M.DescribeLoadBalancersRequest(MaxRecords, NextToken, AutoScalingGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeLoadBalancersRequest")
	local t = { 
		["MaxRecords"] = MaxRecords,
		["NextToken"] = NextToken,
		["AutoScalingGroupName"] = AutoScalingGroupName,
	}
	M.AssertDescribeLoadBalancersRequest(t)
	return t
end

local RecordLifecycleActionHeartbeatType_keys = { "InstanceId" = true, "LifecycleHookName" = true, "AutoScalingGroupName" = true, "LifecycleActionToken" = true, nil }

function M.AssertRecordLifecycleActionHeartbeatType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RecordLifecycleActionHeartbeatType to be of type 'table'")
	assert(struct["LifecycleHookName"], "Expected key LifecycleHookName to exist in table")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	if struct["InstanceId"] then M.AssertXmlStringMaxLen19(struct["InstanceId"]) end
	if struct["LifecycleHookName"] then M.AssertAsciiStringMaxLen255(struct["LifecycleHookName"]) end
	if struct["AutoScalingGroupName"] then M.AssertResourceName(struct["AutoScalingGroupName"]) end
	if struct["LifecycleActionToken"] then M.AssertLifecycleActionToken(struct["LifecycleActionToken"]) end
	for k,_ in pairs(struct) do
		assert(RecordLifecycleActionHeartbeatType_keys[k], "RecordLifecycleActionHeartbeatType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RecordLifecycleActionHeartbeatType
--  
-- @param InstanceId [XmlStringMaxLen19] <p>The ID of the instance.</p>
-- @param LifecycleHookName [AsciiStringMaxLen255] <p>The name of the lifecycle hook.</p>
-- @param AutoScalingGroupName [ResourceName] <p>The name of the Auto Scaling group for the hook.</p>
-- @param LifecycleActionToken [LifecycleActionToken] <p>A token that uniquely identifies a specific lifecycle action associated with an instance. Auto Scaling sends this token to the notification target you specified when you created the lifecycle hook.</p>
-- Required parameter: LifecycleHookName
-- Required parameter: AutoScalingGroupName
function M.RecordLifecycleActionHeartbeatType(InstanceId, LifecycleHookName, AutoScalingGroupName, LifecycleActionToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RecordLifecycleActionHeartbeatType")
	local t = { 
		["InstanceId"] = InstanceId,
		["LifecycleHookName"] = LifecycleHookName,
		["AutoScalingGroupName"] = AutoScalingGroupName,
		["LifecycleActionToken"] = LifecycleActionToken,
	}
	M.AssertRecordLifecycleActionHeartbeatType(t)
	return t
end

local DetachLoadBalancerTargetGroupsType_keys = { "TargetGroupARNs" = true, "AutoScalingGroupName" = true, nil }

function M.AssertDetachLoadBalancerTargetGroupsType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetachLoadBalancerTargetGroupsType to be of type 'table'")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	assert(struct["TargetGroupARNs"], "Expected key TargetGroupARNs to exist in table")
	if struct["TargetGroupARNs"] then M.AssertTargetGroupARNs(struct["TargetGroupARNs"]) end
	if struct["AutoScalingGroupName"] then M.AssertResourceName(struct["AutoScalingGroupName"]) end
	for k,_ in pairs(struct) do
		assert(DetachLoadBalancerTargetGroupsType_keys[k], "DetachLoadBalancerTargetGroupsType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetachLoadBalancerTargetGroupsType
--  
-- @param TargetGroupARNs [TargetGroupARNs] <p>The Amazon Resource Names (ARN) of the target groups.</p>
-- @param AutoScalingGroupName [ResourceName] <p>The name of the Auto Scaling group.</p>
-- Required parameter: AutoScalingGroupName
-- Required parameter: TargetGroupARNs
function M.DetachLoadBalancerTargetGroupsType(TargetGroupARNs, AutoScalingGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DetachLoadBalancerTargetGroupsType")
	local t = { 
		["TargetGroupARNs"] = TargetGroupARNs,
		["AutoScalingGroupName"] = AutoScalingGroupName,
	}
	M.AssertDetachLoadBalancerTargetGroupsType(t)
	return t
end

local DescribeLoadBalancerTargetGroupsResponse_keys = { "NextToken" = true, "LoadBalancerTargetGroups" = true, nil }

function M.AssertDescribeLoadBalancerTargetGroupsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLoadBalancerTargetGroupsResponse to be of type 'table'")
	if struct["NextToken"] then M.AssertXmlString(struct["NextToken"]) end
	if struct["LoadBalancerTargetGroups"] then M.AssertLoadBalancerTargetGroupStates(struct["LoadBalancerTargetGroups"]) end
	for k,_ in pairs(struct) do
		assert(DescribeLoadBalancerTargetGroupsResponse_keys[k], "DescribeLoadBalancerTargetGroupsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLoadBalancerTargetGroupsResponse
--  
-- @param NextToken [XmlString] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
-- @param LoadBalancerTargetGroups [LoadBalancerTargetGroupStates] <p>Information about the target groups.</p>
function M.DescribeLoadBalancerTargetGroupsResponse(NextToken, LoadBalancerTargetGroups, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeLoadBalancerTargetGroupsResponse")
	local t = { 
		["NextToken"] = NextToken,
		["LoadBalancerTargetGroups"] = LoadBalancerTargetGroups,
	}
	M.AssertDescribeLoadBalancerTargetGroupsResponse(t)
	return t
end

local DescribeNotificationConfigurationsAnswer_keys = { "NextToken" = true, "NotificationConfigurations" = true, nil }

function M.AssertDescribeNotificationConfigurationsAnswer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeNotificationConfigurationsAnswer to be of type 'table'")
	assert(struct["NotificationConfigurations"], "Expected key NotificationConfigurations to exist in table")
	if struct["NextToken"] then M.AssertXmlString(struct["NextToken"]) end
	if struct["NotificationConfigurations"] then M.AssertNotificationConfigurations(struct["NotificationConfigurations"]) end
	for k,_ in pairs(struct) do
		assert(DescribeNotificationConfigurationsAnswer_keys[k], "DescribeNotificationConfigurationsAnswer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeNotificationConfigurationsAnswer
--  
-- @param NextToken [XmlString] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
-- @param NotificationConfigurations [NotificationConfigurations] <p>The notification configurations.</p>
-- Required parameter: NotificationConfigurations
function M.DescribeNotificationConfigurationsAnswer(NextToken, NotificationConfigurations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeNotificationConfigurationsAnswer")
	local t = { 
		["NextToken"] = NextToken,
		["NotificationConfigurations"] = NotificationConfigurations,
	}
	M.AssertDescribeNotificationConfigurationsAnswer(t)
	return t
end

local CreateAutoScalingGroupType_keys = { "HealthCheckGracePeriod" = true, "TargetGroupARNs" = true, "PlacementGroup" = true, "DesiredCapacity" = true, "Tags" = true, "InstanceId" = true, "LoadBalancerNames" = true, "AutoScalingGroupName" = true, "DefaultCooldown" = true, "MinSize" = true, "MaxSize" = true, "VPCZoneIdentifier" = true, "TerminationPolicies" = true, "LaunchConfigurationName" = true, "AvailabilityZones" = true, "HealthCheckType" = true, "NewInstancesProtectedFromScaleIn" = true, nil }

function M.AssertCreateAutoScalingGroupType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAutoScalingGroupType to be of type 'table'")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	assert(struct["MinSize"], "Expected key MinSize to exist in table")
	assert(struct["MaxSize"], "Expected key MaxSize to exist in table")
	if struct["HealthCheckGracePeriod"] then M.AssertHealthCheckGracePeriod(struct["HealthCheckGracePeriod"]) end
	if struct["TargetGroupARNs"] then M.AssertTargetGroupARNs(struct["TargetGroupARNs"]) end
	if struct["PlacementGroup"] then M.AssertXmlStringMaxLen255(struct["PlacementGroup"]) end
	if struct["DesiredCapacity"] then M.AssertAutoScalingGroupDesiredCapacity(struct["DesiredCapacity"]) end
	if struct["Tags"] then M.AssertTags(struct["Tags"]) end
	if struct["InstanceId"] then M.AssertXmlStringMaxLen19(struct["InstanceId"]) end
	if struct["LoadBalancerNames"] then M.AssertLoadBalancerNames(struct["LoadBalancerNames"]) end
	if struct["AutoScalingGroupName"] then M.AssertXmlStringMaxLen255(struct["AutoScalingGroupName"]) end
	if struct["DefaultCooldown"] then M.AssertCooldown(struct["DefaultCooldown"]) end
	if struct["MinSize"] then M.AssertAutoScalingGroupMinSize(struct["MinSize"]) end
	if struct["MaxSize"] then M.AssertAutoScalingGroupMaxSize(struct["MaxSize"]) end
	if struct["VPCZoneIdentifier"] then M.AssertXmlStringMaxLen2047(struct["VPCZoneIdentifier"]) end
	if struct["TerminationPolicies"] then M.AssertTerminationPolicies(struct["TerminationPolicies"]) end
	if struct["LaunchConfigurationName"] then M.AssertResourceName(struct["LaunchConfigurationName"]) end
	if struct["AvailabilityZones"] then M.AssertAvailabilityZones(struct["AvailabilityZones"]) end
	if struct["HealthCheckType"] then M.AssertXmlStringMaxLen32(struct["HealthCheckType"]) end
	if struct["NewInstancesProtectedFromScaleIn"] then M.AssertInstanceProtected(struct["NewInstancesProtectedFromScaleIn"]) end
	for k,_ in pairs(struct) do
		assert(CreateAutoScalingGroupType_keys[k], "CreateAutoScalingGroupType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAutoScalingGroupType
--  
-- @param HealthCheckGracePeriod [HealthCheckGracePeriod] <p>The amount of time, in seconds, that Auto Scaling waits before checking the health status of an EC2 instance that has come into service. During this time, any health check failures for the instance are ignored. The default is 0.</p> <p>This parameter is required if you are adding an <code>ELB</code> health check.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/autoscaling/latest/userguide/healthcheck.html">Health Checks</a> in the <i>Auto Scaling User Guide</i>.</p>
-- @param TargetGroupARNs [TargetGroupARNs] <p>The Amazon Resource Names (ARN) of the target groups.</p>
-- @param PlacementGroup [XmlStringMaxLen255] <p>The name of the placement group into which you'll launch your instances, if any. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html">Placement Groups</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
-- @param DesiredCapacity [AutoScalingGroupDesiredCapacity] <p>The number of EC2 instances that should be running in the group. This number must be greater than or equal to the minimum size of the group and less than or equal to the maximum size of the group. If you do not specify a desired capacity, the default is the minimum size of the group.</p>
-- @param Tags [Tags] <p>One or more tags.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/autoscaling/latest/userguide/autoscaling-tagging.html">Tagging Auto Scaling Groups and Instances</a> in the <i>Auto Scaling User Guide</i>.</p>
-- @param InstanceId [XmlStringMaxLen19] <p>The ID of the instance used to create a launch configuration for the group. Alternatively, specify a launch configuration instead of an EC2 instance.</p> <p>When you specify an ID of an instance, Auto Scaling creates a new launch configuration and associates it with the group. This launch configuration derives its attributes from the specified instance, with the exception of the block device mapping.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/autoscaling/latest/userguide/create-asg-from-instance.html">Create an Auto Scaling Group Using an EC2 Instance</a> in the <i>Auto Scaling User Guide</i>.</p>
-- @param LoadBalancerNames [LoadBalancerNames] <p>One or more Classic Load Balancers. To specify an Application Load Balancer, use <code>TargetGroupARNs</code> instead.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/autoscaling/latest/userguide/create-asg-from-instance.html">Using a Load Balancer With an Auto Scaling Group</a> in the <i>Auto Scaling User Guide</i>.</p>
-- @param AutoScalingGroupName [XmlStringMaxLen255] <p>The name of the group. This name must be unique within the scope of your AWS account.</p>
-- @param DefaultCooldown [Cooldown] <p>The amount of time, in seconds, after a scaling activity completes before another scaling activity can start. The default is 300.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/autoscaling/latest/userguide/Cooldown.html">Auto Scaling Cooldowns</a> in the <i>Auto Scaling User Guide</i>.</p>
-- @param MinSize [AutoScalingGroupMinSize] <p>The minimum size of the group.</p>
-- @param MaxSize [AutoScalingGroupMaxSize] <p>The maximum size of the group.</p>
-- @param VPCZoneIdentifier [XmlStringMaxLen2047] <p>A comma-separated list of subnet identifiers for your virtual private cloud (VPC).</p> <p>If you specify subnets and Availability Zones with this call, ensure that the subnets' Availability Zones match the Availability Zones specified.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/autoscaling/latest/userguide/asg-in-vpc.html">Launching Auto Scaling Instances in a VPC</a> in the <i>Auto Scaling User Guide</i>.</p>
-- @param TerminationPolicies [TerminationPolicies] <p>One or more termination policies used to select the instance to terminate. These policies are executed in the order that they are listed.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/autoscaling/latest/userguide/as-instance-termination.html">Controlling Which Instances Auto Scaling Terminates During Scale In</a> in the <i>Auto Scaling User Guide</i>.</p>
-- @param LaunchConfigurationName [ResourceName] <p>The name of the launch configuration. Alternatively, specify an EC2 instance instead of a launch configuration.</p>
-- @param AvailabilityZones [AvailabilityZones] <p>One or more Availability Zones for the group. This parameter is optional if you specify one or more subnets.</p>
-- @param HealthCheckType [XmlStringMaxLen32] <p>The service to use for the health checks. The valid values are <code>EC2</code> and <code>ELB</code>.</p> <p>By default, health checks use Amazon EC2 instance status checks to determine the health of an instance. For more information, see <a href="http://docs.aws.amazon.com/autoscaling/latest/userguide/healthcheck.html">Health Checks</a> in the <i>Auto Scaling User Guide</i>.</p>
-- @param NewInstancesProtectedFromScaleIn [InstanceProtected] <p>Indicates whether newly launched instances are protected from termination by Auto Scaling when scaling in.</p>
-- Required parameter: AutoScalingGroupName
-- Required parameter: MinSize
-- Required parameter: MaxSize
function M.CreateAutoScalingGroupType(HealthCheckGracePeriod, TargetGroupARNs, PlacementGroup, DesiredCapacity, Tags, InstanceId, LoadBalancerNames, AutoScalingGroupName, DefaultCooldown, MinSize, MaxSize, VPCZoneIdentifier, TerminationPolicies, LaunchConfigurationName, AvailabilityZones, HealthCheckType, NewInstancesProtectedFromScaleIn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateAutoScalingGroupType")
	local t = { 
		["HealthCheckGracePeriod"] = HealthCheckGracePeriod,
		["TargetGroupARNs"] = TargetGroupARNs,
		["PlacementGroup"] = PlacementGroup,
		["DesiredCapacity"] = DesiredCapacity,
		["Tags"] = Tags,
		["InstanceId"] = InstanceId,
		["LoadBalancerNames"] = LoadBalancerNames,
		["AutoScalingGroupName"] = AutoScalingGroupName,
		["DefaultCooldown"] = DefaultCooldown,
		["MinSize"] = MinSize,
		["MaxSize"] = MaxSize,
		["VPCZoneIdentifier"] = VPCZoneIdentifier,
		["TerminationPolicies"] = TerminationPolicies,
		["LaunchConfigurationName"] = LaunchConfigurationName,
		["AvailabilityZones"] = AvailabilityZones,
		["HealthCheckType"] = HealthCheckType,
		["NewInstancesProtectedFromScaleIn"] = NewInstancesProtectedFromScaleIn,
	}
	M.AssertCreateAutoScalingGroupType(t)
	return t
end

local CompleteLifecycleActionType_keys = { "LifecycleActionResult" = true, "LifecycleHookName" = true, "InstanceId" = true, "AutoScalingGroupName" = true, "LifecycleActionToken" = true, nil }

function M.AssertCompleteLifecycleActionType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CompleteLifecycleActionType to be of type 'table'")
	assert(struct["LifecycleHookName"], "Expected key LifecycleHookName to exist in table")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	assert(struct["LifecycleActionResult"], "Expected key LifecycleActionResult to exist in table")
	if struct["LifecycleActionResult"] then M.AssertLifecycleActionResult(struct["LifecycleActionResult"]) end
	if struct["LifecycleHookName"] then M.AssertAsciiStringMaxLen255(struct["LifecycleHookName"]) end
	if struct["InstanceId"] then M.AssertXmlStringMaxLen19(struct["InstanceId"]) end
	if struct["AutoScalingGroupName"] then M.AssertResourceName(struct["AutoScalingGroupName"]) end
	if struct["LifecycleActionToken"] then M.AssertLifecycleActionToken(struct["LifecycleActionToken"]) end
	for k,_ in pairs(struct) do
		assert(CompleteLifecycleActionType_keys[k], "CompleteLifecycleActionType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CompleteLifecycleActionType
--  
-- @param LifecycleActionResult [LifecycleActionResult] <p>The action for the group to take. This parameter can be either <code>CONTINUE</code> or <code>ABANDON</code>.</p>
-- @param LifecycleHookName [AsciiStringMaxLen255] <p>The name of the lifecycle hook.</p>
-- @param InstanceId [XmlStringMaxLen19] <p>The ID of the instance.</p>
-- @param AutoScalingGroupName [ResourceName] <p>The name of the group for the lifecycle hook.</p>
-- @param LifecycleActionToken [LifecycleActionToken] <p>A universally unique identifier (UUID) that identifies a specific lifecycle action associated with an instance. Auto Scaling sends this token to the notification target you specified when you created the lifecycle hook.</p>
-- Required parameter: LifecycleHookName
-- Required parameter: AutoScalingGroupName
-- Required parameter: LifecycleActionResult
function M.CompleteLifecycleActionType(LifecycleActionResult, LifecycleHookName, InstanceId, AutoScalingGroupName, LifecycleActionToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CompleteLifecycleActionType")
	local t = { 
		["LifecycleActionResult"] = LifecycleActionResult,
		["LifecycleHookName"] = LifecycleHookName,
		["InstanceId"] = InstanceId,
		["AutoScalingGroupName"] = AutoScalingGroupName,
		["LifecycleActionToken"] = LifecycleActionToken,
	}
	M.AssertCompleteLifecycleActionType(t)
	return t
end

local DescribePoliciesType_keys = { "PolicyNames" = true, "PolicyTypes" = true, "NextToken" = true, "AutoScalingGroupName" = true, "MaxRecords" = true, nil }

function M.AssertDescribePoliciesType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribePoliciesType to be of type 'table'")
	if struct["PolicyNames"] then M.AssertPolicyNames(struct["PolicyNames"]) end
	if struct["PolicyTypes"] then M.AssertPolicyTypes(struct["PolicyTypes"]) end
	if struct["NextToken"] then M.AssertXmlString(struct["NextToken"]) end
	if struct["AutoScalingGroupName"] then M.AssertResourceName(struct["AutoScalingGroupName"]) end
	if struct["MaxRecords"] then M.AssertMaxRecords(struct["MaxRecords"]) end
	for k,_ in pairs(struct) do
		assert(DescribePoliciesType_keys[k], "DescribePoliciesType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribePoliciesType
--  
-- @param PolicyNames [PolicyNames] <p>One or more policy names or policy ARNs to be described. If you omit this parameter, all policy names are described. If an group name is provided, the results are limited to that group. This list is limited to 50 items. If you specify an unknown policy name, it is ignored with no error.</p>
-- @param PolicyTypes [PolicyTypes] <p>One or more policy types. Valid values are <code>SimpleScaling</code> and <code>StepScaling</code>.</p>
-- @param NextToken [XmlString] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- @param AutoScalingGroupName [ResourceName] <p>The name of the group.</p>
-- @param MaxRecords [MaxRecords] <p>The maximum number of items to be returned with each call. The default value is 50 and the maximum value is 100.</p>
function M.DescribePoliciesType(PolicyNames, PolicyTypes, NextToken, AutoScalingGroupName, MaxRecords, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribePoliciesType")
	local t = { 
		["PolicyNames"] = PolicyNames,
		["PolicyTypes"] = PolicyTypes,
		["NextToken"] = NextToken,
		["AutoScalingGroupName"] = AutoScalingGroupName,
		["MaxRecords"] = MaxRecords,
	}
	M.AssertDescribePoliciesType(t)
	return t
end

local DescribeLifecycleHooksAnswer_keys = { "LifecycleHooks" = true, nil }

function M.AssertDescribeLifecycleHooksAnswer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLifecycleHooksAnswer to be of type 'table'")
	if struct["LifecycleHooks"] then M.AssertLifecycleHooks(struct["LifecycleHooks"]) end
	for k,_ in pairs(struct) do
		assert(DescribeLifecycleHooksAnswer_keys[k], "DescribeLifecycleHooksAnswer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLifecycleHooksAnswer
--  
-- @param LifecycleHooks [LifecycleHooks] <p>The lifecycle hooks for the specified group.</p>
function M.DescribeLifecycleHooksAnswer(LifecycleHooks, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeLifecycleHooksAnswer")
	local t = { 
		["LifecycleHooks"] = LifecycleHooks,
	}
	M.AssertDescribeLifecycleHooksAnswer(t)
	return t
end

local DetachLoadBalancersResultType_keys = { nil }

function M.AssertDetachLoadBalancersResultType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetachLoadBalancersResultType to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DetachLoadBalancersResultType_keys[k], "DetachLoadBalancersResultType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetachLoadBalancersResultType
--  
function M.DetachLoadBalancersResultType(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DetachLoadBalancersResultType")
	local t = { 
	}
	M.AssertDetachLoadBalancersResultType(t)
	return t
end

local SetInstanceProtectionAnswer_keys = { nil }

function M.AssertSetInstanceProtectionAnswer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetInstanceProtectionAnswer to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(SetInstanceProtectionAnswer_keys[k], "SetInstanceProtectionAnswer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetInstanceProtectionAnswer
--  
function M.SetInstanceProtectionAnswer(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetInstanceProtectionAnswer")
	local t = { 
	}
	M.AssertSetInstanceProtectionAnswer(t)
	return t
end

local AutoScalingInstanceDetails_keys = { "ProtectedFromScaleIn" = true, "AvailabilityZone" = true, "InstanceId" = true, "AutoScalingGroupName" = true, "HealthStatus" = true, "LifecycleState" = true, "LaunchConfigurationName" = true, nil }

function M.AssertAutoScalingInstanceDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AutoScalingInstanceDetails to be of type 'table'")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	assert(struct["AvailabilityZone"], "Expected key AvailabilityZone to exist in table")
	assert(struct["LifecycleState"], "Expected key LifecycleState to exist in table")
	assert(struct["HealthStatus"], "Expected key HealthStatus to exist in table")
	assert(struct["LaunchConfigurationName"], "Expected key LaunchConfigurationName to exist in table")
	assert(struct["ProtectedFromScaleIn"], "Expected key ProtectedFromScaleIn to exist in table")
	if struct["ProtectedFromScaleIn"] then M.AssertInstanceProtected(struct["ProtectedFromScaleIn"]) end
	if struct["AvailabilityZone"] then M.AssertXmlStringMaxLen255(struct["AvailabilityZone"]) end
	if struct["InstanceId"] then M.AssertXmlStringMaxLen19(struct["InstanceId"]) end
	if struct["AutoScalingGroupName"] then M.AssertXmlStringMaxLen255(struct["AutoScalingGroupName"]) end
	if struct["HealthStatus"] then M.AssertXmlStringMaxLen32(struct["HealthStatus"]) end
	if struct["LifecycleState"] then M.AssertXmlStringMaxLen32(struct["LifecycleState"]) end
	if struct["LaunchConfigurationName"] then M.AssertXmlStringMaxLen255(struct["LaunchConfigurationName"]) end
	for k,_ in pairs(struct) do
		assert(AutoScalingInstanceDetails_keys[k], "AutoScalingInstanceDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AutoScalingInstanceDetails
-- <p>Describes an EC2 instance associated with an Auto Scaling group.</p>
-- @param ProtectedFromScaleIn [InstanceProtected] <p>Indicates whether the instance is protected from termination by Auto Scaling when scaling in.</p>
-- @param AvailabilityZone [XmlStringMaxLen255] <p>The Availability Zone for the instance.</p>
-- @param InstanceId [XmlStringMaxLen19] <p>The ID of the instance.</p>
-- @param AutoScalingGroupName [XmlStringMaxLen255] <p>The name of the Auto Scaling group associated with the instance.</p>
-- @param HealthStatus [XmlStringMaxLen32] <p>The last reported health status of this instance. "Healthy" means that the instance is healthy and should remain in service. "Unhealthy" means that the instance is unhealthy and Auto Scaling should terminate and replace it.</p>
-- @param LifecycleState [XmlStringMaxLen32] <p>The lifecycle state for the instance. For more information, see <a href="http://docs.aws.amazon.com/autoscaling/latest/userguide/AutoScalingGroupLifecycle.html">Auto Scaling Lifecycle</a> in the <i>Auto Scaling User Guide</i>.</p>
-- @param LaunchConfigurationName [XmlStringMaxLen255] <p>The launch configuration used to launch the instance. This value is not available if you attached the instance to the Auto Scaling group.</p>
-- Required parameter: InstanceId
-- Required parameter: AutoScalingGroupName
-- Required parameter: AvailabilityZone
-- Required parameter: LifecycleState
-- Required parameter: HealthStatus
-- Required parameter: LaunchConfigurationName
-- Required parameter: ProtectedFromScaleIn
function M.AutoScalingInstanceDetails(ProtectedFromScaleIn, AvailabilityZone, InstanceId, AutoScalingGroupName, HealthStatus, LifecycleState, LaunchConfigurationName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AutoScalingInstanceDetails")
	local t = { 
		["ProtectedFromScaleIn"] = ProtectedFromScaleIn,
		["AvailabilityZone"] = AvailabilityZone,
		["InstanceId"] = InstanceId,
		["AutoScalingGroupName"] = AutoScalingGroupName,
		["HealthStatus"] = HealthStatus,
		["LifecycleState"] = LifecycleState,
		["LaunchConfigurationName"] = LaunchConfigurationName,
	}
	M.AssertAutoScalingInstanceDetails(t)
	return t
end

local DeleteAutoScalingGroupType_keys = { "ForceDelete" = true, "AutoScalingGroupName" = true, nil }

function M.AssertDeleteAutoScalingGroupType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteAutoScalingGroupType to be of type 'table'")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	if struct["ForceDelete"] then M.AssertForceDelete(struct["ForceDelete"]) end
	if struct["AutoScalingGroupName"] then M.AssertResourceName(struct["AutoScalingGroupName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteAutoScalingGroupType_keys[k], "DeleteAutoScalingGroupType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteAutoScalingGroupType
--  
-- @param ForceDelete [ForceDelete] <p>Specifies that the group will be deleted along with all instances associated with the group, without waiting for all instances to be terminated. This parameter also deletes any lifecycle actions associated with the group.</p>
-- @param AutoScalingGroupName [ResourceName] <p>The name of the group to delete.</p>
-- Required parameter: AutoScalingGroupName
function M.DeleteAutoScalingGroupType(ForceDelete, AutoScalingGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteAutoScalingGroupType")
	local t = { 
		["ForceDelete"] = ForceDelete,
		["AutoScalingGroupName"] = AutoScalingGroupName,
	}
	M.AssertDeleteAutoScalingGroupType(t)
	return t
end

local DescribeLifecycleHooksType_keys = { "LifecycleHookNames" = true, "AutoScalingGroupName" = true, nil }

function M.AssertDescribeLifecycleHooksType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLifecycleHooksType to be of type 'table'")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	if struct["LifecycleHookNames"] then M.AssertLifecycleHookNames(struct["LifecycleHookNames"]) end
	if struct["AutoScalingGroupName"] then M.AssertResourceName(struct["AutoScalingGroupName"]) end
	for k,_ in pairs(struct) do
		assert(DescribeLifecycleHooksType_keys[k], "DescribeLifecycleHooksType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLifecycleHooksType
--  
-- @param LifecycleHookNames [LifecycleHookNames] <p>The names of one or more lifecycle hooks. If you omit this parameter, all lifecycle hooks are described.</p>
-- @param AutoScalingGroupName [ResourceName] <p>The name of the group.</p>
-- Required parameter: AutoScalingGroupName
function M.DescribeLifecycleHooksType(LifecycleHookNames, AutoScalingGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeLifecycleHooksType")
	local t = { 
		["LifecycleHookNames"] = LifecycleHookNames,
		["AutoScalingGroupName"] = AutoScalingGroupName,
	}
	M.AssertDescribeLifecycleHooksType(t)
	return t
end

local DescribeAutoScalingNotificationTypesAnswer_keys = { "AutoScalingNotificationTypes" = true, nil }

function M.AssertDescribeAutoScalingNotificationTypesAnswer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAutoScalingNotificationTypesAnswer to be of type 'table'")
	if struct["AutoScalingNotificationTypes"] then M.AssertAutoScalingNotificationTypes(struct["AutoScalingNotificationTypes"]) end
	for k,_ in pairs(struct) do
		assert(DescribeAutoScalingNotificationTypesAnswer_keys[k], "DescribeAutoScalingNotificationTypesAnswer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAutoScalingNotificationTypesAnswer
--  
-- @param AutoScalingNotificationTypes [AutoScalingNotificationTypes] <p>The notification types.</p>
function M.DescribeAutoScalingNotificationTypesAnswer(AutoScalingNotificationTypes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAutoScalingNotificationTypesAnswer")
	local t = { 
		["AutoScalingNotificationTypes"] = AutoScalingNotificationTypes,
	}
	M.AssertDescribeAutoScalingNotificationTypesAnswer(t)
	return t
end

local CompleteLifecycleActionAnswer_keys = { nil }

function M.AssertCompleteLifecycleActionAnswer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CompleteLifecycleActionAnswer to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(CompleteLifecycleActionAnswer_keys[k], "CompleteLifecycleActionAnswer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CompleteLifecycleActionAnswer
--  
function M.CompleteLifecycleActionAnswer(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CompleteLifecycleActionAnswer")
	local t = { 
	}
	M.AssertCompleteLifecycleActionAnswer(t)
	return t
end

local DetachLoadBalancerTargetGroupsResultType_keys = { nil }

function M.AssertDetachLoadBalancerTargetGroupsResultType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetachLoadBalancerTargetGroupsResultType to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DetachLoadBalancerTargetGroupsResultType_keys[k], "DetachLoadBalancerTargetGroupsResultType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetachLoadBalancerTargetGroupsResultType
--  
function M.DetachLoadBalancerTargetGroupsResultType(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DetachLoadBalancerTargetGroupsResultType")
	local t = { 
	}
	M.AssertDetachLoadBalancerTargetGroupsResultType(t)
	return t
end

local LifecycleHook_keys = { "GlobalTimeout" = true, "HeartbeatTimeout" = true, "RoleARN" = true, "AutoScalingGroupName" = true, "LifecycleHookName" = true, "NotificationMetadata" = true, "DefaultResult" = true, "NotificationTargetARN" = true, "LifecycleTransition" = true, nil }

function M.AssertLifecycleHook(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LifecycleHook to be of type 'table'")
	if struct["GlobalTimeout"] then M.AssertGlobalTimeout(struct["GlobalTimeout"]) end
	if struct["HeartbeatTimeout"] then M.AssertHeartbeatTimeout(struct["HeartbeatTimeout"]) end
	if struct["RoleARN"] then M.AssertResourceName(struct["RoleARN"]) end
	if struct["AutoScalingGroupName"] then M.AssertResourceName(struct["AutoScalingGroupName"]) end
	if struct["LifecycleHookName"] then M.AssertAsciiStringMaxLen255(struct["LifecycleHookName"]) end
	if struct["NotificationMetadata"] then M.AssertXmlStringMaxLen1023(struct["NotificationMetadata"]) end
	if struct["DefaultResult"] then M.AssertLifecycleActionResult(struct["DefaultResult"]) end
	if struct["NotificationTargetARN"] then M.AssertResourceName(struct["NotificationTargetARN"]) end
	if struct["LifecycleTransition"] then M.AssertLifecycleTransition(struct["LifecycleTransition"]) end
	for k,_ in pairs(struct) do
		assert(LifecycleHook_keys[k], "LifecycleHook contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LifecycleHook
-- <p>Describes a lifecycle hook, which tells Auto Scaling that you want to perform an action when an instance launches or terminates. When you have a lifecycle hook in place, the Auto Scaling group will either:</p> <ul> <li> <p>Pause the instance after it launches, but before it is put into service</p> </li> <li> <p>Pause the instance as it terminates, but before it is fully terminated</p> </li> </ul> <p>For more information, see <a href="http://docs.aws.amazon.com/autoscaling/latest/userguide/AutoScalingGroupLifecycle.html">Auto Scaling Lifecycle</a> in the <i>Auto Scaling User Guide</i>.</p>
-- @param GlobalTimeout [GlobalTimeout] <p>The maximum time, in seconds, that an instance can remain in a <code>Pending:Wait</code> or <code>Terminating:Wait</code> state. The maximum is 172800 seconds (48 hours) or 100 times <code>HeartbeatTimeout</code>, whichever is smaller.</p>
-- @param HeartbeatTimeout [HeartbeatTimeout] <p>The maximum time, in seconds, that can elapse before the lifecycle hook times out. The default is 3600 seconds (1 hour). When the lifecycle hook times out, Auto Scaling performs the default action. You can prevent the lifecycle hook from timing out by calling <a>RecordLifecycleActionHeartbeat</a>.</p>
-- @param RoleARN [ResourceName] <p>The ARN of the IAM role that allows the Auto Scaling group to publish to the specified notification target.</p>
-- @param AutoScalingGroupName [ResourceName] <p>The name of the Auto Scaling group for the lifecycle hook.</p>
-- @param LifecycleHookName [AsciiStringMaxLen255] <p>The name of the lifecycle hook.</p>
-- @param NotificationMetadata [XmlStringMaxLen1023] <p>Additional information that you want to include any time Auto Scaling sends a message to the notification target.</p>
-- @param DefaultResult [LifecycleActionResult] <p>Defines the action the Auto Scaling group should take when the lifecycle hook timeout elapses or if an unexpected failure occurs. The valid values are <code>CONTINUE</code> and <code>ABANDON</code>. The default value is <code>CONTINUE</code>.</p>
-- @param NotificationTargetARN [ResourceName] <p>The ARN of the notification target that Auto Scaling uses to notify you when an instance is in the transition state for the lifecycle hook. This ARN target can be either an SQS queue or an SNS topic. The notification message sent to the target includes the following:</p> <ul> <li> <p>Lifecycle action token</p> </li> <li> <p>User account ID</p> </li> <li> <p>Name of the Auto Scaling group</p> </li> <li> <p>Lifecycle hook name</p> </li> <li> <p>EC2 instance ID</p> </li> <li> <p>Lifecycle transition</p> </li> <li> <p>Notification metadata</p> </li> </ul>
-- @param LifecycleTransition [LifecycleTransition] <p>The state of the EC2 instance to which you want to attach the lifecycle hook. For a list of lifecycle hook types, see <a>DescribeLifecycleHookTypes</a>.</p>
function M.LifecycleHook(GlobalTimeout, HeartbeatTimeout, RoleARN, AutoScalingGroupName, LifecycleHookName, NotificationMetadata, DefaultResult, NotificationTargetARN, LifecycleTransition, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LifecycleHook")
	local t = { 
		["GlobalTimeout"] = GlobalTimeout,
		["HeartbeatTimeout"] = HeartbeatTimeout,
		["RoleARN"] = RoleARN,
		["AutoScalingGroupName"] = AutoScalingGroupName,
		["LifecycleHookName"] = LifecycleHookName,
		["NotificationMetadata"] = NotificationMetadata,
		["DefaultResult"] = DefaultResult,
		["NotificationTargetARN"] = NotificationTargetARN,
		["LifecycleTransition"] = LifecycleTransition,
	}
	M.AssertLifecycleHook(t)
	return t
end

local DescribeLifecycleHookTypesAnswer_keys = { "LifecycleHookTypes" = true, nil }

function M.AssertDescribeLifecycleHookTypesAnswer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLifecycleHookTypesAnswer to be of type 'table'")
	if struct["LifecycleHookTypes"] then M.AssertAutoScalingNotificationTypes(struct["LifecycleHookTypes"]) end
	for k,_ in pairs(struct) do
		assert(DescribeLifecycleHookTypesAnswer_keys[k], "DescribeLifecycleHookTypesAnswer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLifecycleHookTypesAnswer
--  
-- @param LifecycleHookTypes [AutoScalingNotificationTypes] <p>The lifecycle hook types.</p>
function M.DescribeLifecycleHookTypesAnswer(LifecycleHookTypes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeLifecycleHookTypesAnswer")
	local t = { 
		["LifecycleHookTypes"] = LifecycleHookTypes,
	}
	M.AssertDescribeLifecycleHookTypesAnswer(t)
	return t
end

local DescribeTerminationPolicyTypesAnswer_keys = { "TerminationPolicyTypes" = true, nil }

function M.AssertDescribeTerminationPolicyTypesAnswer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTerminationPolicyTypesAnswer to be of type 'table'")
	if struct["TerminationPolicyTypes"] then M.AssertTerminationPolicies(struct["TerminationPolicyTypes"]) end
	for k,_ in pairs(struct) do
		assert(DescribeTerminationPolicyTypesAnswer_keys[k], "DescribeTerminationPolicyTypesAnswer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTerminationPolicyTypesAnswer
--  
-- @param TerminationPolicyTypes [TerminationPolicies] <p>The termination policies supported by Auto Scaling (<code>OldestInstance</code>, <code>OldestLaunchConfiguration</code>, <code>NewestInstance</code>, <code>ClosestToNextInstanceHour</code>, and <code>Default</code>).</p>
function M.DescribeTerminationPolicyTypesAnswer(TerminationPolicyTypes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTerminationPolicyTypesAnswer")
	local t = { 
		["TerminationPolicyTypes"] = TerminationPolicyTypes,
	}
	M.AssertDescribeTerminationPolicyTypesAnswer(t)
	return t
end

local DeleteNotificationConfigurationType_keys = { "AutoScalingGroupName" = true, "TopicARN" = true, nil }

function M.AssertDeleteNotificationConfigurationType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteNotificationConfigurationType to be of type 'table'")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	assert(struct["TopicARN"], "Expected key TopicARN to exist in table")
	if struct["AutoScalingGroupName"] then M.AssertResourceName(struct["AutoScalingGroupName"]) end
	if struct["TopicARN"] then M.AssertResourceName(struct["TopicARN"]) end
	for k,_ in pairs(struct) do
		assert(DeleteNotificationConfigurationType_keys[k], "DeleteNotificationConfigurationType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteNotificationConfigurationType
--  
-- @param AutoScalingGroupName [ResourceName] <p>The name of the Auto Scaling group.</p>
-- @param TopicARN [ResourceName] <p>The Amazon Resource Name (ARN) of the Amazon Simple Notification Service (SNS) topic.</p>
-- Required parameter: AutoScalingGroupName
-- Required parameter: TopicARN
function M.DeleteNotificationConfigurationType(AutoScalingGroupName, TopicARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteNotificationConfigurationType")
	local t = { 
		["AutoScalingGroupName"] = AutoScalingGroupName,
		["TopicARN"] = TopicARN,
	}
	M.AssertDeleteNotificationConfigurationType(t)
	return t
end

local LoadBalancerTargetGroupState_keys = { "LoadBalancerTargetGroupARN" = true, "State" = true, nil }

function M.AssertLoadBalancerTargetGroupState(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LoadBalancerTargetGroupState to be of type 'table'")
	if struct["LoadBalancerTargetGroupARN"] then M.AssertXmlStringMaxLen511(struct["LoadBalancerTargetGroupARN"]) end
	if struct["State"] then M.AssertXmlStringMaxLen255(struct["State"]) end
	for k,_ in pairs(struct) do
		assert(LoadBalancerTargetGroupState_keys[k], "LoadBalancerTargetGroupState contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LoadBalancerTargetGroupState
-- <p>Describes the state of a target group.</p> <p>If you attach a target group to an existing Auto Scaling group, the initial state is <code>Adding</code>. The state transitions to <code>Added</code> after all Auto Scaling instances are registered with the target group. If ELB health checks are enabled, the state transitions to <code>InService</code> after at least one Auto Scaling instance passes the health check. If EC2 health checks are enabled instead, the target group remains in the <code>Added</code> state.</p>
-- @param LoadBalancerTargetGroupARN [XmlStringMaxLen511] <p>The Amazon Resource Name (ARN) of the target group.</p>
-- @param State [XmlStringMaxLen255] <p>The state of the target group.</p> <ul> <li> <p> <code>Adding</code> - The Auto Scaling instances are being registered with the target group.</p> </li> <li> <p> <code>Added</code> - All Auto Scaling instances are registered with the target group.</p> </li> <li> <p> <code>InService</code> - At least one Auto Scaling instance passed an ELB health check.</p> </li> <li> <p> <code>Removing</code> - The Auto Scaling instances are being deregistered from the target group. If connection draining is enabled, Elastic Load Balancing waits for in-flight requests to complete before deregistering the instances.</p> </li> <li> <p> <code>Removed</code> - All Auto Scaling instances are deregistered from the target group.</p> </li> </ul>
function M.LoadBalancerTargetGroupState(LoadBalancerTargetGroupARN, State, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LoadBalancerTargetGroupState")
	local t = { 
		["LoadBalancerTargetGroupARN"] = LoadBalancerTargetGroupARN,
		["State"] = State,
	}
	M.AssertLoadBalancerTargetGroupState(t)
	return t
end

local EnableMetricsCollectionQuery_keys = { "Metrics" = true, "AutoScalingGroupName" = true, "Granularity" = true, nil }

function M.AssertEnableMetricsCollectionQuery(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnableMetricsCollectionQuery to be of type 'table'")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	assert(struct["Granularity"], "Expected key Granularity to exist in table")
	if struct["Metrics"] then M.AssertMetrics(struct["Metrics"]) end
	if struct["AutoScalingGroupName"] then M.AssertResourceName(struct["AutoScalingGroupName"]) end
	if struct["Granularity"] then M.AssertXmlStringMaxLen255(struct["Granularity"]) end
	for k,_ in pairs(struct) do
		assert(EnableMetricsCollectionQuery_keys[k], "EnableMetricsCollectionQuery contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnableMetricsCollectionQuery
--  
-- @param Metrics [Metrics] <p>One or more of the following metrics. If you omit this parameter, all metrics are enabled.</p> <ul> <li> <p> <code>GroupMinSize</code> </p> </li> <li> <p> <code>GroupMaxSize</code> </p> </li> <li> <p> <code>GroupDesiredCapacity</code> </p> </li> <li> <p> <code>GroupInServiceInstances</code> </p> </li> <li> <p> <code>GroupPendingInstances</code> </p> </li> <li> <p> <code>GroupStandbyInstances</code> </p> </li> <li> <p> <code>GroupTerminatingInstances</code> </p> </li> <li> <p> <code>GroupTotalInstances</code> </p> </li> </ul>
-- @param AutoScalingGroupName [ResourceName] <p>The name or ARN of the Auto Scaling group.</p>
-- @param Granularity [XmlStringMaxLen255] <p>The granularity to associate with the metrics to collect. The only valid value is <code>1Minute</code>.</p>
-- Required parameter: AutoScalingGroupName
-- Required parameter: Granularity
function M.EnableMetricsCollectionQuery(Metrics, AutoScalingGroupName, Granularity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnableMetricsCollectionQuery")
	local t = { 
		["Metrics"] = Metrics,
		["AutoScalingGroupName"] = AutoScalingGroupName,
		["Granularity"] = Granularity,
	}
	M.AssertEnableMetricsCollectionQuery(t)
	return t
end

local LoadBalancerState_keys = { "State" = true, "LoadBalancerName" = true, nil }

function M.AssertLoadBalancerState(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LoadBalancerState to be of type 'table'")
	if struct["State"] then M.AssertXmlStringMaxLen255(struct["State"]) end
	if struct["LoadBalancerName"] then M.AssertXmlStringMaxLen255(struct["LoadBalancerName"]) end
	for k,_ in pairs(struct) do
		assert(LoadBalancerState_keys[k], "LoadBalancerState contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LoadBalancerState
-- <p>Describes the state of a Classic Load Balancer.</p> <p>If you specify a load balancer when creating the Auto Scaling group, the state of the load balancer is <code>InService</code>.</p> <p>If you attach a load balancer to an existing Auto Scaling group, the initial state is <code>Adding</code>. The state transitions to <code>Added</code> after all instances in the group are registered with the load balancer. If ELB health checks are enabled for the load balancer, the state transitions to <code>InService</code> after at least one instance in the group passes the health check. If EC2 health checks are enabled instead, the load balancer remains in the <code>Added</code> state.</p>
-- @param State [XmlStringMaxLen255] <p>One of the following load balancer states:</p> <ul> <li> <p> <code>Adding</code> - The instances in the group are being registered with the load balancer.</p> </li> <li> <p> <code>Added</code> - All instances in the group are registered with the load balancer.</p> </li> <li> <p> <code>InService</code> - At least one instance in the group passed an ELB health check.</p> </li> <li> <p> <code>Removing</code> - The instances in the group are being deregistered from the load balancer. If connection draining is enabled, Elastic Load Balancing waits for in-flight requests to complete before deregistering the instances.</p> </li> <li> <p> <code>Removed</code> - All instances in the group are deregistered from the load balancer.</p> </li> </ul>
-- @param LoadBalancerName [XmlStringMaxLen255] <p>The name of the load balancer.</p>
function M.LoadBalancerState(State, LoadBalancerName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LoadBalancerState")
	local t = { 
		["State"] = State,
		["LoadBalancerName"] = LoadBalancerName,
	}
	M.AssertLoadBalancerState(t)
	return t
end

local SuspendedProcess_keys = { "ProcessName" = true, "SuspensionReason" = true, nil }

function M.AssertSuspendedProcess(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SuspendedProcess to be of type 'table'")
	if struct["ProcessName"] then M.AssertXmlStringMaxLen255(struct["ProcessName"]) end
	if struct["SuspensionReason"] then M.AssertXmlStringMaxLen255(struct["SuspensionReason"]) end
	for k,_ in pairs(struct) do
		assert(SuspendedProcess_keys[k], "SuspendedProcess contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SuspendedProcess
-- <p>Describes an Auto Scaling process that has been suspended. For more information, see <a>ProcessType</a>.</p>
-- @param ProcessName [XmlStringMaxLen255] <p>The name of the suspended process.</p>
-- @param SuspensionReason [XmlStringMaxLen255] <p>The reason that the process was suspended.</p>
function M.SuspendedProcess(ProcessName, SuspensionReason, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SuspendedProcess")
	local t = { 
		["ProcessName"] = ProcessName,
		["SuspensionReason"] = SuspensionReason,
	}
	M.AssertSuspendedProcess(t)
	return t
end

local Alarm_keys = { "AlarmName" = true, "AlarmARN" = true, nil }

function M.AssertAlarm(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Alarm to be of type 'table'")
	if struct["AlarmName"] then M.AssertXmlStringMaxLen255(struct["AlarmName"]) end
	if struct["AlarmARN"] then M.AssertResourceName(struct["AlarmARN"]) end
	for k,_ in pairs(struct) do
		assert(Alarm_keys[k], "Alarm contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Alarm
-- <p>Describes an alarm.</p>
-- @param AlarmName [XmlStringMaxLen255] <p>The name of the alarm.</p>
-- @param AlarmARN [ResourceName] <p>The Amazon Resource Name (ARN) of the alarm.</p>
function M.Alarm(AlarmName, AlarmARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Alarm")
	local t = { 
		["AlarmName"] = AlarmName,
		["AlarmARN"] = AlarmARN,
	}
	M.AssertAlarm(t)
	return t
end

local AttachLoadBalancersType_keys = { "AutoScalingGroupName" = true, "LoadBalancerNames" = true, nil }

function M.AssertAttachLoadBalancersType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachLoadBalancersType to be of type 'table'")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	assert(struct["LoadBalancerNames"], "Expected key LoadBalancerNames to exist in table")
	if struct["AutoScalingGroupName"] then M.AssertResourceName(struct["AutoScalingGroupName"]) end
	if struct["LoadBalancerNames"] then M.AssertLoadBalancerNames(struct["LoadBalancerNames"]) end
	for k,_ in pairs(struct) do
		assert(AttachLoadBalancersType_keys[k], "AttachLoadBalancersType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachLoadBalancersType
--  
-- @param AutoScalingGroupName [ResourceName] <p>The name of the group.</p>
-- @param LoadBalancerNames [LoadBalancerNames] <p>One or more load balancer names.</p>
-- Required parameter: AutoScalingGroupName
-- Required parameter: LoadBalancerNames
function M.AttachLoadBalancersType(AutoScalingGroupName, LoadBalancerNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttachLoadBalancersType")
	local t = { 
		["AutoScalingGroupName"] = AutoScalingGroupName,
		["LoadBalancerNames"] = LoadBalancerNames,
	}
	M.AssertAttachLoadBalancersType(t)
	return t
end

local AttachLoadBalancerTargetGroupsType_keys = { "TargetGroupARNs" = true, "AutoScalingGroupName" = true, nil }

function M.AssertAttachLoadBalancerTargetGroupsType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachLoadBalancerTargetGroupsType to be of type 'table'")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	assert(struct["TargetGroupARNs"], "Expected key TargetGroupARNs to exist in table")
	if struct["TargetGroupARNs"] then M.AssertTargetGroupARNs(struct["TargetGroupARNs"]) end
	if struct["AutoScalingGroupName"] then M.AssertResourceName(struct["AutoScalingGroupName"]) end
	for k,_ in pairs(struct) do
		assert(AttachLoadBalancerTargetGroupsType_keys[k], "AttachLoadBalancerTargetGroupsType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachLoadBalancerTargetGroupsType
--  
-- @param TargetGroupARNs [TargetGroupARNs] <p>The Amazon Resource Names (ARN) of the target groups.</p>
-- @param AutoScalingGroupName [ResourceName] <p>The name of the Auto Scaling group.</p>
-- Required parameter: AutoScalingGroupName
-- Required parameter: TargetGroupARNs
function M.AttachLoadBalancerTargetGroupsType(TargetGroupARNs, AutoScalingGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttachLoadBalancerTargetGroupsType")
	local t = { 
		["TargetGroupARNs"] = TargetGroupARNs,
		["AutoScalingGroupName"] = AutoScalingGroupName,
	}
	M.AssertAttachLoadBalancerTargetGroupsType(t)
	return t
end

local ActivitiesType_keys = { "Activities" = true, "NextToken" = true, nil }

function M.AssertActivitiesType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivitiesType to be of type 'table'")
	assert(struct["Activities"], "Expected key Activities to exist in table")
	if struct["Activities"] then M.AssertActivities(struct["Activities"]) end
	if struct["NextToken"] then M.AssertXmlString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ActivitiesType_keys[k], "ActivitiesType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivitiesType
--  
-- @param Activities [Activities] <p>The scaling activities. Activities are sorted by start time. Activities still in progress are described first.</p>
-- @param NextToken [XmlString] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
-- Required parameter: Activities
function M.ActivitiesType(Activities, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivitiesType")
	local t = { 
		["Activities"] = Activities,
		["NextToken"] = NextToken,
	}
	M.AssertActivitiesType(t)
	return t
end

local PutLifecycleHookType_keys = { "HeartbeatTimeout" = true, "RoleARN" = true, "AutoScalingGroupName" = true, "LifecycleHookName" = true, "NotificationMetadata" = true, "DefaultResult" = true, "NotificationTargetARN" = true, "LifecycleTransition" = true, nil }

function M.AssertPutLifecycleHookType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutLifecycleHookType to be of type 'table'")
	assert(struct["LifecycleHookName"], "Expected key LifecycleHookName to exist in table")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	if struct["HeartbeatTimeout"] then M.AssertHeartbeatTimeout(struct["HeartbeatTimeout"]) end
	if struct["RoleARN"] then M.AssertResourceName(struct["RoleARN"]) end
	if struct["AutoScalingGroupName"] then M.AssertResourceName(struct["AutoScalingGroupName"]) end
	if struct["LifecycleHookName"] then M.AssertAsciiStringMaxLen255(struct["LifecycleHookName"]) end
	if struct["NotificationMetadata"] then M.AssertXmlStringMaxLen1023(struct["NotificationMetadata"]) end
	if struct["DefaultResult"] then M.AssertLifecycleActionResult(struct["DefaultResult"]) end
	if struct["NotificationTargetARN"] then M.AssertNotificationTargetResourceName(struct["NotificationTargetARN"]) end
	if struct["LifecycleTransition"] then M.AssertLifecycleTransition(struct["LifecycleTransition"]) end
	for k,_ in pairs(struct) do
		assert(PutLifecycleHookType_keys[k], "PutLifecycleHookType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutLifecycleHookType
--  
-- @param HeartbeatTimeout [HeartbeatTimeout] <p>The amount of time, in seconds, that can elapse before the lifecycle hook times out. When the lifecycle hook times out, Auto Scaling performs the default action. You can prevent the lifecycle hook from timing out by calling <a>RecordLifecycleActionHeartbeat</a>. The default is 3600 seconds (1 hour).</p>
-- @param RoleARN [ResourceName] <p>The ARN of the IAM role that allows the Auto Scaling group to publish to the specified notification target.</p> <p>This parameter is required for new lifecycle hooks, but optional when updating existing hooks.</p>
-- @param AutoScalingGroupName [ResourceName] <p>The name of the Auto Scaling group to which you want to assign the lifecycle hook.</p>
-- @param LifecycleHookName [AsciiStringMaxLen255] <p>The name of the lifecycle hook.</p>
-- @param NotificationMetadata [XmlStringMaxLen1023] <p>Contains additional information that you want to include any time Auto Scaling sends a message to the notification target.</p>
-- @param DefaultResult [LifecycleActionResult] <p>Defines the action the Auto Scaling group should take when the lifecycle hook timeout elapses or if an unexpected failure occurs. This parameter can be either <code>CONTINUE</code> or <code>ABANDON</code>. The default value is <code>ABANDON</code>.</p>
-- @param NotificationTargetARN [NotificationTargetResourceName] <p>The ARN of the notification target that Auto Scaling will use to notify you when an instance is in the transition state for the lifecycle hook. This target can be either an SQS queue or an SNS topic. If you specify an empty string, this overrides the current ARN.</p> <p>This operation uses the JSON format when sending notifications to an Amazon SQS queue, and an email key/value pair format when sending notifications to an Amazon SNS topic.</p> <p>When you specify a notification target, Auto Scaling sends it a test message. Test messages contains the following additional key/value pair: <code>"Event": "autoscaling:TEST_NOTIFICATION"</code>.</p>
-- @param LifecycleTransition [LifecycleTransition] <p>The instance state to which you want to attach the lifecycle hook. For a list of lifecycle hook types, see <a>DescribeLifecycleHookTypes</a>.</p> <p>This parameter is required for new lifecycle hooks, but optional when updating existing hooks.</p>
-- Required parameter: LifecycleHookName
-- Required parameter: AutoScalingGroupName
function M.PutLifecycleHookType(HeartbeatTimeout, RoleARN, AutoScalingGroupName, LifecycleHookName, NotificationMetadata, DefaultResult, NotificationTargetARN, LifecycleTransition, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutLifecycleHookType")
	local t = { 
		["HeartbeatTimeout"] = HeartbeatTimeout,
		["RoleARN"] = RoleARN,
		["AutoScalingGroupName"] = AutoScalingGroupName,
		["LifecycleHookName"] = LifecycleHookName,
		["NotificationMetadata"] = NotificationMetadata,
		["DefaultResult"] = DefaultResult,
		["NotificationTargetARN"] = NotificationTargetARN,
		["LifecycleTransition"] = LifecycleTransition,
	}
	M.AssertPutLifecycleHookType(t)
	return t
end

local PutLifecycleHookAnswer_keys = { nil }

function M.AssertPutLifecycleHookAnswer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutLifecycleHookAnswer to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(PutLifecycleHookAnswer_keys[k], "PutLifecycleHookAnswer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutLifecycleHookAnswer
--  
function M.PutLifecycleHookAnswer(...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutLifecycleHookAnswer")
	local t = { 
	}
	M.AssertPutLifecycleHookAnswer(t)
	return t
end

local Activity_keys = { "Description" = true, "AutoScalingGroupName" = true, "ActivityId" = true, "Details" = true, "StartTime" = true, "Progress" = true, "EndTime" = true, "Cause" = true, "StatusMessage" = true, "StatusCode" = true, nil }

function M.AssertActivity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Activity to be of type 'table'")
	assert(struct["ActivityId"], "Expected key ActivityId to exist in table")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	assert(struct["Cause"], "Expected key Cause to exist in table")
	assert(struct["StartTime"], "Expected key StartTime to exist in table")
	assert(struct["StatusCode"], "Expected key StatusCode to exist in table")
	if struct["Description"] then M.AssertXmlString(struct["Description"]) end
	if struct["AutoScalingGroupName"] then M.AssertXmlStringMaxLen255(struct["AutoScalingGroupName"]) end
	if struct["ActivityId"] then M.AssertXmlString(struct["ActivityId"]) end
	if struct["Details"] then M.AssertXmlString(struct["Details"]) end
	if struct["StartTime"] then M.AssertTimestampType(struct["StartTime"]) end
	if struct["Progress"] then M.AssertProgress(struct["Progress"]) end
	if struct["EndTime"] then M.AssertTimestampType(struct["EndTime"]) end
	if struct["Cause"] then M.AssertXmlStringMaxLen1023(struct["Cause"]) end
	if struct["StatusMessage"] then M.AssertXmlStringMaxLen255(struct["StatusMessage"]) end
	if struct["StatusCode"] then M.AssertScalingActivityStatusCode(struct["StatusCode"]) end
	for k,_ in pairs(struct) do
		assert(Activity_keys[k], "Activity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Activity
-- <p>Describes scaling activity, which is a long-running process that represents a change to your Auto Scaling group, such as changing its size or replacing an instance.</p>
-- @param Description [XmlString] <p>A friendly, more verbose description of the activity.</p>
-- @param AutoScalingGroupName [XmlStringMaxLen255] <p>The name of the Auto Scaling group.</p>
-- @param ActivityId [XmlString] <p>The ID of the activity.</p>
-- @param Details [XmlString] <p>The details about the activity.</p>
-- @param StartTime [TimestampType] <p>The start time of the activity.</p>
-- @param Progress [Progress] <p>A value between 0 and 100 that indicates the progress of the activity.</p>
-- @param EndTime [TimestampType] <p>The end time of the activity.</p>
-- @param Cause [XmlStringMaxLen1023] <p>The reason the activity began.</p>
-- @param StatusMessage [XmlStringMaxLen255] <p>A friendly, more verbose description of the activity status.</p>
-- @param StatusCode [ScalingActivityStatusCode] <p>The current status of the activity.</p>
-- Required parameter: ActivityId
-- Required parameter: AutoScalingGroupName
-- Required parameter: Cause
-- Required parameter: StartTime
-- Required parameter: StatusCode
function M.Activity(Description, AutoScalingGroupName, ActivityId, Details, StartTime, Progress, EndTime, Cause, StatusMessage, StatusCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Activity")
	local t = { 
		["Description"] = Description,
		["AutoScalingGroupName"] = AutoScalingGroupName,
		["ActivityId"] = ActivityId,
		["Details"] = Details,
		["StartTime"] = StartTime,
		["Progress"] = Progress,
		["EndTime"] = EndTime,
		["Cause"] = Cause,
		["StatusMessage"] = StatusMessage,
		["StatusCode"] = StatusCode,
	}
	M.AssertActivity(t)
	return t
end

local MetricCollectionType_keys = { "Metric" = true, nil }

function M.AssertMetricCollectionType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MetricCollectionType to be of type 'table'")
	if struct["Metric"] then M.AssertXmlStringMaxLen255(struct["Metric"]) end
	for k,_ in pairs(struct) do
		assert(MetricCollectionType_keys[k], "MetricCollectionType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MetricCollectionType
-- <p>Describes a metric.</p>
-- @param Metric [XmlStringMaxLen255] <p>One of the following metrics:</p> <ul> <li> <p> <code>GroupMinSize</code> </p> </li> <li> <p> <code>GroupMaxSize</code> </p> </li> <li> <p> <code>GroupDesiredCapacity</code> </p> </li> <li> <p> <code>GroupInServiceInstances</code> </p> </li> <li> <p> <code>GroupPendingInstances</code> </p> </li> <li> <p> <code>GroupStandbyInstances</code> </p> </li> <li> <p> <code>GroupTerminatingInstances</code> </p> </li> <li> <p> <code>GroupTotalInstances</code> </p> </li> </ul>
function M.MetricCollectionType(Metric, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MetricCollectionType")
	local t = { 
		["Metric"] = Metric,
	}
	M.AssertMetricCollectionType(t)
	return t
end

local DescribeAutoScalingInstancesType_keys = { "MaxRecords" = true, "NextToken" = true, "InstanceIds" = true, nil }

function M.AssertDescribeAutoScalingInstancesType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAutoScalingInstancesType to be of type 'table'")
	if struct["MaxRecords"] then M.AssertMaxRecords(struct["MaxRecords"]) end
	if struct["NextToken"] then M.AssertXmlString(struct["NextToken"]) end
	if struct["InstanceIds"] then M.AssertInstanceIds(struct["InstanceIds"]) end
	for k,_ in pairs(struct) do
		assert(DescribeAutoScalingInstancesType_keys[k], "DescribeAutoScalingInstancesType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAutoScalingInstancesType
--  
-- @param MaxRecords [MaxRecords] <p>The maximum number of items to return with this call. The default value is 50 and the maximum value is 100.</p>
-- @param NextToken [XmlString] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- @param InstanceIds [InstanceIds] <p>The instances to describe; up to 50 instance IDs. If you omit this parameter, all Auto Scaling instances are described. If you specify an ID that does not exist, it is ignored with no error.</p>
function M.DescribeAutoScalingInstancesType(MaxRecords, NextToken, InstanceIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAutoScalingInstancesType")
	local t = { 
		["MaxRecords"] = MaxRecords,
		["NextToken"] = NextToken,
		["InstanceIds"] = InstanceIds,
	}
	M.AssertDescribeAutoScalingInstancesType(t)
	return t
end

local DescribeLoadBalancerTargetGroupsRequest_keys = { "MaxRecords" = true, "NextToken" = true, "AutoScalingGroupName" = true, nil }

function M.AssertDescribeLoadBalancerTargetGroupsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLoadBalancerTargetGroupsRequest to be of type 'table'")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	if struct["MaxRecords"] then M.AssertMaxRecords(struct["MaxRecords"]) end
	if struct["NextToken"] then M.AssertXmlString(struct["NextToken"]) end
	if struct["AutoScalingGroupName"] then M.AssertResourceName(struct["AutoScalingGroupName"]) end
	for k,_ in pairs(struct) do
		assert(DescribeLoadBalancerTargetGroupsRequest_keys[k], "DescribeLoadBalancerTargetGroupsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLoadBalancerTargetGroupsRequest
--  
-- @param MaxRecords [MaxRecords] <p>The maximum number of items to return with this call. The default value is 50 and the maximum value is 100.</p>
-- @param NextToken [XmlString] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- @param AutoScalingGroupName [ResourceName] <p>The name of the Auto Scaling group.</p>
-- Required parameter: AutoScalingGroupName
function M.DescribeLoadBalancerTargetGroupsRequest(MaxRecords, NextToken, AutoScalingGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeLoadBalancerTargetGroupsRequest")
	local t = { 
		["MaxRecords"] = MaxRecords,
		["NextToken"] = NextToken,
		["AutoScalingGroupName"] = AutoScalingGroupName,
	}
	M.AssertDescribeLoadBalancerTargetGroupsRequest(t)
	return t
end

local SetInstanceHealthQuery_keys = { "InstanceId" = true, "ShouldRespectGracePeriod" = true, "HealthStatus" = true, nil }

function M.AssertSetInstanceHealthQuery(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetInstanceHealthQuery to be of type 'table'")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	assert(struct["HealthStatus"], "Expected key HealthStatus to exist in table")
	if struct["InstanceId"] then M.AssertXmlStringMaxLen19(struct["InstanceId"]) end
	if struct["ShouldRespectGracePeriod"] then M.AssertShouldRespectGracePeriod(struct["ShouldRespectGracePeriod"]) end
	if struct["HealthStatus"] then M.AssertXmlStringMaxLen32(struct["HealthStatus"]) end
	for k,_ in pairs(struct) do
		assert(SetInstanceHealthQuery_keys[k], "SetInstanceHealthQuery contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetInstanceHealthQuery
--  
-- @param InstanceId [XmlStringMaxLen19] <p>The ID of the instance.</p>
-- @param ShouldRespectGracePeriod [ShouldRespectGracePeriod] <p>If the Auto Scaling group of the specified instance has a <code>HealthCheckGracePeriod</code> specified for the group, by default, this call will respect the grace period. Set this to <code>False</code>, if you do not want the call to respect the grace period associated with the group.</p> <p>For more information, see the description of the health check grace period for <a>CreateAutoScalingGroup</a>.</p>
-- @param HealthStatus [XmlStringMaxLen32] <p>The health status of the instance. Set to <code>Healthy</code> if you want the instance to remain in service. Set to <code>Unhealthy</code> if you want the instance to be out of service. Auto Scaling will terminate and replace the unhealthy instance.</p>
-- Required parameter: InstanceId
-- Required parameter: HealthStatus
function M.SetInstanceHealthQuery(InstanceId, ShouldRespectGracePeriod, HealthStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetInstanceHealthQuery")
	local t = { 
		["InstanceId"] = InstanceId,
		["ShouldRespectGracePeriod"] = ShouldRespectGracePeriod,
		["HealthStatus"] = HealthStatus,
	}
	M.AssertSetInstanceHealthQuery(t)
	return t
end

local DescribeLoadBalancersResponse_keys = { "LoadBalancers" = true, "NextToken" = true, nil }

function M.AssertDescribeLoadBalancersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLoadBalancersResponse to be of type 'table'")
	if struct["LoadBalancers"] then M.AssertLoadBalancerStates(struct["LoadBalancers"]) end
	if struct["NextToken"] then M.AssertXmlString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(DescribeLoadBalancersResponse_keys[k], "DescribeLoadBalancersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLoadBalancersResponse
--  
-- @param LoadBalancers [LoadBalancerStates] <p>The load balancers.</p>
-- @param NextToken [XmlString] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
function M.DescribeLoadBalancersResponse(LoadBalancers, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeLoadBalancersResponse")
	local t = { 
		["LoadBalancers"] = LoadBalancers,
		["NextToken"] = NextToken,
	}
	M.AssertDescribeLoadBalancersResponse(t)
	return t
end

local UpdateAutoScalingGroupType_keys = { "HealthCheckGracePeriod" = true, "PlacementGroup" = true, "DesiredCapacity" = true, "TerminationPolicies" = true, "AutoScalingGroupName" = true, "DefaultCooldown" = true, "MinSize" = true, "MaxSize" = true, "VPCZoneIdentifier" = true, "LaunchConfigurationName" = true, "AvailabilityZones" = true, "HealthCheckType" = true, "NewInstancesProtectedFromScaleIn" = true, nil }

function M.AssertUpdateAutoScalingGroupType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateAutoScalingGroupType to be of type 'table'")
	assert(struct["AutoScalingGroupName"], "Expected key AutoScalingGroupName to exist in table")
	if struct["HealthCheckGracePeriod"] then M.AssertHealthCheckGracePeriod(struct["HealthCheckGracePeriod"]) end
	if struct["PlacementGroup"] then M.AssertXmlStringMaxLen255(struct["PlacementGroup"]) end
	if struct["DesiredCapacity"] then M.AssertAutoScalingGroupDesiredCapacity(struct["DesiredCapacity"]) end
	if struct["TerminationPolicies"] then M.AssertTerminationPolicies(struct["TerminationPolicies"]) end
	if struct["AutoScalingGroupName"] then M.AssertResourceName(struct["AutoScalingGroupName"]) end
	if struct["DefaultCooldown"] then M.AssertCooldown(struct["DefaultCooldown"]) end
	if struct["MinSize"] then M.AssertAutoScalingGroupMinSize(struct["MinSize"]) end
	if struct["MaxSize"] then M.AssertAutoScalingGroupMaxSize(struct["MaxSize"]) end
	if struct["VPCZoneIdentifier"] then M.AssertXmlStringMaxLen2047(struct["VPCZoneIdentifier"]) end
	if struct["LaunchConfigurationName"] then M.AssertResourceName(struct["LaunchConfigurationName"]) end
	if struct["AvailabilityZones"] then M.AssertAvailabilityZones(struct["AvailabilityZones"]) end
	if struct["HealthCheckType"] then M.AssertXmlStringMaxLen32(struct["HealthCheckType"]) end
	if struct["NewInstancesProtectedFromScaleIn"] then M.AssertInstanceProtected(struct["NewInstancesProtectedFromScaleIn"]) end
	for k,_ in pairs(struct) do
		assert(UpdateAutoScalingGroupType_keys[k], "UpdateAutoScalingGroupType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateAutoScalingGroupType
--  
-- @param HealthCheckGracePeriod [HealthCheckGracePeriod] <p>The amount of time, in seconds, that Auto Scaling waits before checking the health status of an EC2 instance that has come into service. The default is 0.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/autoscaling/latest/userguide/healthcheck.html">Health Checks</a> in the <i>Auto Scaling User Guide</i>.</p>
-- @param PlacementGroup [XmlStringMaxLen255] <p>The name of the placement group into which you'll launch your instances, if any. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html">Placement Groups</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
-- @param DesiredCapacity [AutoScalingGroupDesiredCapacity] <p>The number of EC2 instances that should be running in the Auto Scaling group. This number must be greater than or equal to the minimum size of the group and less than or equal to the maximum size of the group.</p>
-- @param TerminationPolicies [TerminationPolicies] <p>A standalone termination policy or a list of termination policies used to select the instance to terminate. The policies are executed in the order that they are listed.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/autoscaling/latest/userguide/as-instance-termination.html">Controlling Which Instances Auto Scaling Terminates During Scale In</a> in the <i>Auto Scaling User Guide</i>.</p>
-- @param AutoScalingGroupName [ResourceName] <p>The name of the Auto Scaling group.</p>
-- @param DefaultCooldown [Cooldown] <p>The amount of time, in seconds, after a scaling activity completes before another scaling activity can start. The default is 300.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/autoscaling/latest/userguide/Cooldown.html">Auto Scaling Cooldowns</a> in the <i>Auto Scaling User Guide</i>.</p>
-- @param MinSize [AutoScalingGroupMinSize] <p>The minimum size of the Auto Scaling group.</p>
-- @param MaxSize [AutoScalingGroupMaxSize] <p>The maximum size of the Auto Scaling group.</p>
-- @param VPCZoneIdentifier [XmlStringMaxLen2047] <p>The ID of the subnet, if you are launching into a VPC. You can specify several subnets in a comma-separated list.</p> <p>When you specify <code>VPCZoneIdentifier</code> with <code>AvailabilityZones</code>, ensure that the subnets' Availability Zones match the values you specify for <code>AvailabilityZones</code>.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/autoscaling/latest/userguide/asg-in-vpc.html">Launching Auto Scaling Instances in a VPC</a> in the <i>Auto Scaling User Guide</i>.</p>
-- @param LaunchConfigurationName [ResourceName] <p>The name of the launch configuration.</p>
-- @param AvailabilityZones [AvailabilityZones] <p>One or more Availability Zones for the group.</p>
-- @param HealthCheckType [XmlStringMaxLen32] <p>The service to use for the health checks. The valid values are <code>EC2</code> and <code>ELB</code>.</p>
-- @param NewInstancesProtectedFromScaleIn [InstanceProtected] <p>Indicates whether newly launched instances are protected from termination by Auto Scaling when scaling in.</p>
-- Required parameter: AutoScalingGroupName
function M.UpdateAutoScalingGroupType(HealthCheckGracePeriod, PlacementGroup, DesiredCapacity, TerminationPolicies, AutoScalingGroupName, DefaultCooldown, MinSize, MaxSize, VPCZoneIdentifier, LaunchConfigurationName, AvailabilityZones, HealthCheckType, NewInstancesProtectedFromScaleIn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateAutoScalingGroupType")
	local t = { 
		["HealthCheckGracePeriod"] = HealthCheckGracePeriod,
		["PlacementGroup"] = PlacementGroup,
		["DesiredCapacity"] = DesiredCapacity,
		["TerminationPolicies"] = TerminationPolicies,
		["AutoScalingGroupName"] = AutoScalingGroupName,
		["DefaultCooldown"] = DefaultCooldown,
		["MinSize"] = MinSize,
		["MaxSize"] = MaxSize,
		["VPCZoneIdentifier"] = VPCZoneIdentifier,
		["LaunchConfigurationName"] = LaunchConfigurationName,
		["AvailabilityZones"] = AvailabilityZones,
		["HealthCheckType"] = HealthCheckType,
		["NewInstancesProtectedFromScaleIn"] = NewInstancesProtectedFromScaleIn,
	}
	M.AssertUpdateAutoScalingGroupType(t)
	return t
end

local AutoScalingGroupNamesType_keys = { "MaxRecords" = true, "NextToken" = true, "AutoScalingGroupNames" = true, nil }

function M.AssertAutoScalingGroupNamesType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AutoScalingGroupNamesType to be of type 'table'")
	if struct["MaxRecords"] then M.AssertMaxRecords(struct["MaxRecords"]) end
	if struct["NextToken"] then M.AssertXmlString(struct["NextToken"]) end
	if struct["AutoScalingGroupNames"] then M.AssertAutoScalingGroupNames(struct["AutoScalingGroupNames"]) end
	for k,_ in pairs(struct) do
		assert(AutoScalingGroupNamesType_keys[k], "AutoScalingGroupNamesType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AutoScalingGroupNamesType
--  
-- @param MaxRecords [MaxRecords] <p>The maximum number of items to return with this call. The default value is 50 and the maximum value is 100.</p>
-- @param NextToken [XmlString] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- @param AutoScalingGroupNames [AutoScalingGroupNames] <p>The group names. If you omit this parameter, all Auto Scaling groups are described.</p>
function M.AutoScalingGroupNamesType(MaxRecords, NextToken, AutoScalingGroupNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AutoScalingGroupNamesType")
	local t = { 
		["MaxRecords"] = MaxRecords,
		["NextToken"] = NextToken,
		["AutoScalingGroupNames"] = AutoScalingGroupNames,
	}
	M.AssertAutoScalingGroupNamesType(t)
	return t
end

function M.AssertXmlStringMaxLen19(str)
	assert(str)
	assert(type(str) == "string", "Expected XmlStringMaxLen19 to be of type 'string'")
	assert(#str <= 19, "Expected string to be max 19 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%u0020-%uD7FF%uE000-%uFFFD%uD800%uDC00-%uDBFF%uDFFF%r%n%t]*"), "Expected string to match pattern '[%u0020-%uD7FF%uE000-%uFFFD%uD800%uDC00-%uDBFF%uDFFF%r%n%t]*'")
end

--  
function M.XmlStringMaxLen19(str)
	M.AssertXmlStringMaxLen19(str)
	return str
end

function M.AssertTagKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TagKey to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%u0020-%uD7FF%uE000-%uFFFD%uD800%uDC00-%uDBFF%uDFFF%r%n%t]*"), "Expected string to match pattern '[%u0020-%uD7FF%uE000-%uFFFD%uD800%uDC00-%uDBFF%uDFFF%r%n%t]*'")
end

--  
function M.TagKey(str)
	M.AssertTagKey(str)
	return str
end

function M.AssertXmlStringMaxLen255(str)
	assert(str)
	assert(type(str) == "string", "Expected XmlStringMaxLen255 to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%u0020-%uD7FF%uE000-%uFFFD%uD800%uDC00-%uDBFF%uDFFF%r%n%t]*"), "Expected string to match pattern '[%u0020-%uD7FF%uE000-%uFFFD%uD800%uDC00-%uDBFF%uDFFF%r%n%t]*'")
end

--  
function M.XmlStringMaxLen255(str)
	M.AssertXmlStringMaxLen255(str)
	return str
end

function M.AssertXmlStringMaxLen511(str)
	assert(str)
	assert(type(str) == "string", "Expected XmlStringMaxLen511 to be of type 'string'")
	assert(#str <= 511, "Expected string to be max 511 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%u0020-%uD7FF%uE000-%uFFFD%uD800%uDC00-%uDBFF%uDFFF%r%n%t]*"), "Expected string to match pattern '[%u0020-%uD7FF%uE000-%uFFFD%uD800%uDC00-%uDBFF%uDFFF%r%n%t]*'")
end

--  
function M.XmlStringMaxLen511(str)
	M.AssertXmlStringMaxLen511(str)
	return str
end

function M.AssertXmlStringMaxLen1600(str)
	assert(str)
	assert(type(str) == "string", "Expected XmlStringMaxLen1600 to be of type 'string'")
	assert(#str <= 1600, "Expected string to be max 1600 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%u0020-%uD7FF%uE000-%uFFFD%uD800%uDC00-%uDBFF%uDFFF%r%n%t]*"), "Expected string to match pattern '[%u0020-%uD7FF%uE000-%uFFFD%uD800%uDC00-%uDBFF%uDFFF%r%n%t]*'")
end

--  
function M.XmlStringMaxLen1600(str)
	M.AssertXmlStringMaxLen1600(str)
	return str
end

function M.AssertXmlStringMaxLen32(str)
	assert(str)
	assert(type(str) == "string", "Expected XmlStringMaxLen32 to be of type 'string'")
	assert(#str <= 32, "Expected string to be max 32 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%u0020-%uD7FF%uE000-%uFFFD%uD800%uDC00-%uDBFF%uDFFF%r%n%t]*"), "Expected string to match pattern '[%u0020-%uD7FF%uE000-%uFFFD%uD800%uDC00-%uDBFF%uDFFF%r%n%t]*'")
end

--  
function M.XmlStringMaxLen32(str)
	M.AssertXmlStringMaxLen32(str)
	return str
end

function M.AssertScalingActivityStatusCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ScalingActivityStatusCode to be of type 'string'")
end

--  
function M.ScalingActivityStatusCode(str)
	M.AssertScalingActivityStatusCode(str)
	return str
end

function M.AssertXmlString(str)
	assert(str)
	assert(type(str) == "string", "Expected XmlString to be of type 'string'")
	assert(str:match("[%u0020-%uD7FF%uE000-%uFFFD%uD800%uDC00-%uDBFF%uDFFF%r%n%t]*"), "Expected string to match pattern '[%u0020-%uD7FF%uE000-%uFFFD%uD800%uDC00-%uDBFF%uDFFF%r%n%t]*'")
end

--  
function M.XmlString(str)
	M.AssertXmlString(str)
	return str
end

function M.AssertLifecycleActionResult(str)
	assert(str)
	assert(type(str) == "string", "Expected LifecycleActionResult to be of type 'string'")
end

--  
function M.LifecycleActionResult(str)
	M.AssertLifecycleActionResult(str)
	return str
end

function M.AssertAsciiStringMaxLen255(str)
	assert(str)
	assert(type(str) == "string", "Expected AsciiStringMaxLen255 to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[A-Za-z0-9%-_%/]+"), "Expected string to match pattern '[A-Za-z0-9%-_%/]+'")
end

--  
function M.AsciiStringMaxLen255(str)
	M.AssertAsciiStringMaxLen255(str)
	return str
end

function M.AssertTagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TagValue to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(str:match("[%u0020-%uD7FF%uE000-%uFFFD%uD800%uDC00-%uDBFF%uDFFF%r%n%t]*"), "Expected string to match pattern '[%u0020-%uD7FF%uE000-%uFFFD%uD800%uDC00-%uDBFF%uDFFF%r%n%t]*'")
end

--  
function M.TagValue(str)
	M.AssertTagValue(str)
	return str
end

function M.AssertLifecycleTransition(str)
	assert(str)
	assert(type(str) == "string", "Expected LifecycleTransition to be of type 'string'")
end

--  
function M.LifecycleTransition(str)
	M.AssertLifecycleTransition(str)
	return str
end

function M.AssertNotificationTargetResourceName(str)
	assert(str)
	assert(type(str) == "string", "Expected NotificationTargetResourceName to be of type 'string'")
	assert(#str <= 1600, "Expected string to be max 1600 characters")
	assert(str:match("[%u0020-%uD7FF%uE000-%uFFFD%uD800%uDC00-%uDBFF%uDFFF%r%n%t]*"), "Expected string to match pattern '[%u0020-%uD7FF%uE000-%uFFFD%uD800%uDC00-%uDBFF%uDFFF%r%n%t]*'")
end

--  
function M.NotificationTargetResourceName(str)
	M.AssertNotificationTargetResourceName(str)
	return str
end

function M.AssertLifecycleActionToken(str)
	assert(str)
	assert(type(str) == "string", "Expected LifecycleActionToken to be of type 'string'")
	assert(#str <= 36, "Expected string to be max 36 characters")
	assert(#str >= 36, "Expected string to be min 36 characters")
end

--  
function M.LifecycleActionToken(str)
	M.AssertLifecycleActionToken(str)
	return str
end

function M.AssertXmlStringUserData(str)
	assert(str)
	assert(type(str) == "string", "Expected XmlStringUserData to be of type 'string'")
	assert(#str <= 21847, "Expected string to be max 21847 characters")
	assert(str:match("[%u0020-%uD7FF%uE000-%uFFFD%uD800%uDC00-%uDBFF%uDFFF%r%n%t]*"), "Expected string to match pattern '[%u0020-%uD7FF%uE000-%uFFFD%uD800%uDC00-%uDBFF%uDFFF%r%n%t]*'")
end

--  
function M.XmlStringUserData(str)
	M.AssertXmlStringUserData(str)
	return str
end

function M.AssertBlockDeviceEbsVolumeType(str)
	assert(str)
	assert(type(str) == "string", "Expected BlockDeviceEbsVolumeType to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.BlockDeviceEbsVolumeType(str)
	M.AssertBlockDeviceEbsVolumeType(str)
	return str
end

function M.AssertResourceName(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceName to be of type 'string'")
	assert(#str <= 1600, "Expected string to be max 1600 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%u0020-%uD7FF%uE000-%uFFFD%uD800%uDC00-%uDBFF%uDFFF%r%n%t]*"), "Expected string to match pattern '[%u0020-%uD7FF%uE000-%uFFFD%uD800%uDC00-%uDBFF%uDFFF%r%n%t]*'")
end

--  
function M.ResourceName(str)
	M.AssertResourceName(str)
	return str
end

function M.AssertSpotPrice(str)
	assert(str)
	assert(type(str) == "string", "Expected SpotPrice to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.SpotPrice(str)
	M.AssertSpotPrice(str)
	return str
end

function M.AssertXmlStringMaxLen2047(str)
	assert(str)
	assert(type(str) == "string", "Expected XmlStringMaxLen2047 to be of type 'string'")
	assert(#str <= 2047, "Expected string to be max 2047 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%u0020-%uD7FF%uE000-%uFFFD%uD800%uDC00-%uDBFF%uDFFF%r%n%t]*"), "Expected string to match pattern '[%u0020-%uD7FF%uE000-%uFFFD%uD800%uDC00-%uDBFF%uDFFF%r%n%t]*'")
end

--  
function M.XmlStringMaxLen2047(str)
	M.AssertXmlStringMaxLen2047(str)
	return str
end

function M.AssertXmlStringMaxLen1023(str)
	assert(str)
	assert(type(str) == "string", "Expected XmlStringMaxLen1023 to be of type 'string'")
	assert(#str <= 1023, "Expected string to be max 1023 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%u0020-%uD7FF%uE000-%uFFFD%uD800%uDC00-%uDBFF%uDFFF%r%n%t]*"), "Expected string to match pattern '[%u0020-%uD7FF%uE000-%uFFFD%uD800%uDC00-%uDBFF%uDFFF%r%n%t]*'")
end

--  
function M.XmlStringMaxLen1023(str)
	M.AssertXmlStringMaxLen1023(str)
	return str
end

function M.AssertXmlStringMaxLen64(str)
	assert(str)
	assert(type(str) == "string", "Expected XmlStringMaxLen64 to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%u0020-%uD7FF%uE000-%uFFFD%uD800%uDC00-%uDBFF%uDFFF%r%n%t]*"), "Expected string to match pattern '[%u0020-%uD7FF%uE000-%uFFFD%uD800%uDC00-%uDBFF%uDFFF%r%n%t]*'")
end

--  
function M.XmlStringMaxLen64(str)
	M.AssertXmlStringMaxLen64(str)
	return str
end

function M.AssertLifecycleState(str)
	assert(str)
	assert(type(str) == "string", "Expected LifecycleState to be of type 'string'")
end

--  
function M.LifecycleState(str)
	M.AssertLifecycleState(str)
	return str
end

function M.AssertMetricScale(double)
	assert(double)
	assert(type(double) == "number", "Expected MetricScale to be of type 'number'")
end

function M.MetricScale(double)
	M.AssertMetricScale(double)
	return double
end

function M.AssertMinAdjustmentMagnitude(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MinAdjustmentMagnitude to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.MinAdjustmentMagnitude(integer)
	M.AssertMinAdjustmentMagnitude(integer)
	return integer
end

function M.AssertNumberOfAutoScalingGroups(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected NumberOfAutoScalingGroups to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.NumberOfAutoScalingGroups(integer)
	M.AssertNumberOfAutoScalingGroups(integer)
	return integer
end

function M.AssertProgress(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Progress to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Progress(integer)
	M.AssertProgress(integer)
	return integer
end

function M.AssertBlockDeviceEbsVolumeSize(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected BlockDeviceEbsVolumeSize to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 16384, "Expected integer to be max 16384")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.BlockDeviceEbsVolumeSize(integer)
	M.AssertBlockDeviceEbsVolumeSize(integer)
	return integer
end

function M.AssertHealthCheckGracePeriod(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected HealthCheckGracePeriod to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.HealthCheckGracePeriod(integer)
	M.AssertHealthCheckGracePeriod(integer)
	return integer
end

function M.AssertAutoScalingGroupDesiredCapacity(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected AutoScalingGroupDesiredCapacity to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.AutoScalingGroupDesiredCapacity(integer)
	M.AssertAutoScalingGroupDesiredCapacity(integer)
	return integer
end

function M.AssertMaxNumberOfLaunchConfigurations(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxNumberOfLaunchConfigurations to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.MaxNumberOfLaunchConfigurations(integer)
	M.AssertMaxNumberOfLaunchConfigurations(integer)
	return integer
end

function M.AssertGlobalTimeout(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected GlobalTimeout to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.GlobalTimeout(integer)
	M.AssertGlobalTimeout(integer)
	return integer
end

function M.AssertNumberOfLaunchConfigurations(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected NumberOfLaunchConfigurations to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.NumberOfLaunchConfigurations(integer)
	M.AssertNumberOfLaunchConfigurations(integer)
	return integer
end

function M.AssertEstimatedInstanceWarmup(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected EstimatedInstanceWarmup to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.EstimatedInstanceWarmup(integer)
	M.AssertEstimatedInstanceWarmup(integer)
	return integer
end

function M.AssertMaxNumberOfAutoScalingGroups(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxNumberOfAutoScalingGroups to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.MaxNumberOfAutoScalingGroups(integer)
	M.AssertMaxNumberOfAutoScalingGroups(integer)
	return integer
end

function M.AssertMinAdjustmentStep(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MinAdjustmentStep to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.MinAdjustmentStep(integer)
	M.AssertMinAdjustmentStep(integer)
	return integer
end

function M.AssertHeartbeatTimeout(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected HeartbeatTimeout to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.HeartbeatTimeout(integer)
	M.AssertHeartbeatTimeout(integer)
	return integer
end

function M.AssertAutoScalingGroupMaxSize(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected AutoScalingGroupMaxSize to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.AutoScalingGroupMaxSize(integer)
	M.AssertAutoScalingGroupMaxSize(integer)
	return integer
end

function M.AssertBlockDeviceEbsIops(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected BlockDeviceEbsIops to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 20000, "Expected integer to be max 20000")
	assert(integer >= 100, "Expected integer to be min 100")
end

function M.BlockDeviceEbsIops(integer)
	M.AssertBlockDeviceEbsIops(integer)
	return integer
end

function M.AssertCooldown(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Cooldown to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Cooldown(integer)
	M.AssertCooldown(integer)
	return integer
end

function M.AssertPolicyIncrement(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PolicyIncrement to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.PolicyIncrement(integer)
	M.AssertPolicyIncrement(integer)
	return integer
end

function M.AssertMaxRecords(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxRecords to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.MaxRecords(integer)
	M.AssertMaxRecords(integer)
	return integer
end

function M.AssertAutoScalingGroupMinSize(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected AutoScalingGroupMinSize to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.AutoScalingGroupMinSize(integer)
	M.AssertAutoScalingGroupMinSize(integer)
	return integer
end

function M.AssertShouldRespectGracePeriod(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected ShouldRespectGracePeriod to be of type 'boolean'")
end

function M.ShouldRespectGracePeriod(boolean)
	M.AssertShouldRespectGracePeriod(boolean)
	return boolean
end

function M.AssertPropagateAtLaunch(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected PropagateAtLaunch to be of type 'boolean'")
end

function M.PropagateAtLaunch(boolean)
	M.AssertPropagateAtLaunch(boolean)
	return boolean
end

function M.AssertForceDelete(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected ForceDelete to be of type 'boolean'")
end

function M.ForceDelete(boolean)
	M.AssertForceDelete(boolean)
	return boolean
end

function M.AssertAssociatePublicIpAddress(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected AssociatePublicIpAddress to be of type 'boolean'")
end

function M.AssociatePublicIpAddress(boolean)
	M.AssertAssociatePublicIpAddress(boolean)
	return boolean
end

function M.AssertHonorCooldown(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected HonorCooldown to be of type 'boolean'")
end

function M.HonorCooldown(boolean)
	M.AssertHonorCooldown(boolean)
	return boolean
end

function M.AssertBlockDeviceEbsEncrypted(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected BlockDeviceEbsEncrypted to be of type 'boolean'")
end

function M.BlockDeviceEbsEncrypted(boolean)
	M.AssertBlockDeviceEbsEncrypted(boolean)
	return boolean
end

function M.AssertInstanceProtected(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected InstanceProtected to be of type 'boolean'")
end

function M.InstanceProtected(boolean)
	M.AssertInstanceProtected(boolean)
	return boolean
end

function M.AssertEbsOptimized(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected EbsOptimized to be of type 'boolean'")
end

function M.EbsOptimized(boolean)
	M.AssertEbsOptimized(boolean)
	return boolean
end

function M.AssertProtectedFromScaleIn(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected ProtectedFromScaleIn to be of type 'boolean'")
end

function M.ProtectedFromScaleIn(boolean)
	M.AssertProtectedFromScaleIn(boolean)
	return boolean
end

function M.AssertBlockDeviceEbsDeleteOnTermination(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected BlockDeviceEbsDeleteOnTermination to be of type 'boolean'")
end

function M.BlockDeviceEbsDeleteOnTermination(boolean)
	M.AssertBlockDeviceEbsDeleteOnTermination(boolean)
	return boolean
end

function M.AssertMonitoringEnabled(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected MonitoringEnabled to be of type 'boolean'")
end

function M.MonitoringEnabled(boolean)
	M.AssertMonitoringEnabled(boolean)
	return boolean
end

function M.AssertNoDevice(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected NoDevice to be of type 'boolean'")
end

function M.NoDevice(boolean)
	M.AssertNoDevice(boolean)
	return boolean
end

function M.AssertShouldDecrementDesiredCapacity(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected ShouldDecrementDesiredCapacity to be of type 'boolean'")
end

function M.ShouldDecrementDesiredCapacity(boolean)
	M.AssertShouldDecrementDesiredCapacity(boolean)
	return boolean
end

function M.AssertTimestampType(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected TimestampType to be of type 'string'")
end

function M.TimestampType(timestamp)
	M.AssertTimestampType(timestamp)
	return timestamp
end

function M.AssertNotificationConfigurations(list)
	assert(list)
	assert(type(list) == "table", "Expected NotificationConfigurations to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertNotificationConfiguration(v)
	end
end

--  
-- List of NotificationConfiguration objects
function M.NotificationConfigurations(list)
	M.AssertNotificationConfigurations(list)
	return list
end

function M.AssertAutoScalingNotificationTypes(list)
	assert(list)
	assert(type(list) == "table", "Expected AutoScalingNotificationTypes to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertXmlStringMaxLen255(v)
	end
end

--  
-- List of XmlStringMaxLen255 objects
function M.AutoScalingNotificationTypes(list)
	M.AssertAutoScalingNotificationTypes(list)
	return list
end

function M.AssertSecurityGroups(list)
	assert(list)
	assert(type(list) == "table", "Expected SecurityGroups to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertXmlString(v)
	end
end

--  
-- List of XmlString objects
function M.SecurityGroups(list)
	M.AssertSecurityGroups(list)
	return list
end

function M.AssertLifecycleHookNames(list)
	assert(list)
	assert(type(list) == "table", "Expected LifecycleHookNames to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAsciiStringMaxLen255(v)
	end
end

--  
-- List of AsciiStringMaxLen255 objects
function M.LifecycleHookNames(list)
	M.AssertLifecycleHookNames(list)
	return list
end

function M.AssertScalingPolicies(list)
	assert(list)
	assert(type(list) == "table", "Expected ScalingPolicies to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertScalingPolicy(v)
	end
end

--  
-- List of ScalingPolicy objects
function M.ScalingPolicies(list)
	M.AssertScalingPolicies(list)
	return list
end

function M.AssertBlockDeviceMappings(list)
	assert(list)
	assert(type(list) == "table", "Expected BlockDeviceMappings to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertBlockDeviceMapping(v)
	end
end

--  
-- List of BlockDeviceMapping objects
function M.BlockDeviceMappings(list)
	M.AssertBlockDeviceMappings(list)
	return list
end

function M.AssertTargetGroupARNs(list)
	assert(list)
	assert(type(list) == "table", "Expected TargetGroupARNs to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertXmlStringMaxLen511(v)
	end
end

--  
-- List of XmlStringMaxLen511 objects
function M.TargetGroupARNs(list)
	M.AssertTargetGroupARNs(list)
	return list
end

function M.AssertEnabledMetrics(list)
	assert(list)
	assert(type(list) == "table", "Expected EnabledMetrics to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertEnabledMetric(v)
	end
end

--  
-- List of EnabledMetric objects
function M.EnabledMetrics(list)
	M.AssertEnabledMetrics(list)
	return list
end

function M.AssertAutoScalingInstances(list)
	assert(list)
	assert(type(list) == "table", "Expected AutoScalingInstances to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAutoScalingInstanceDetails(v)
	end
end

--  
-- List of AutoScalingInstanceDetails objects
function M.AutoScalingInstances(list)
	M.AssertAutoScalingInstances(list)
	return list
end

function M.AssertAutoScalingGroupNames(list)
	assert(list)
	assert(type(list) == "table", "Expected AutoScalingGroupNames to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertResourceName(v)
	end
end

--  
-- List of ResourceName objects
function M.AutoScalingGroupNames(list)
	M.AssertAutoScalingGroupNames(list)
	return list
end

function M.AssertLoadBalancerNames(list)
	assert(list)
	assert(type(list) == "table", "Expected LoadBalancerNames to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertXmlStringMaxLen255(v)
	end
end

--  
-- List of XmlStringMaxLen255 objects
function M.LoadBalancerNames(list)
	M.AssertLoadBalancerNames(list)
	return list
end

function M.AssertProcessNames(list)
	assert(list)
	assert(type(list) == "table", "Expected ProcessNames to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertXmlStringMaxLen255(v)
	end
end

--  
-- List of XmlStringMaxLen255 objects
function M.ProcessNames(list)
	M.AssertProcessNames(list)
	return list
end

function M.AssertSuspendedProcesses(list)
	assert(list)
	assert(type(list) == "table", "Expected SuspendedProcesses to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertSuspendedProcess(v)
	end
end

--  
-- List of SuspendedProcess objects
function M.SuspendedProcesses(list)
	M.AssertSuspendedProcesses(list)
	return list
end

function M.AssertStepAdjustments(list)
	assert(list)
	assert(type(list) == "table", "Expected StepAdjustments to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertStepAdjustment(v)
	end
end

--  
-- List of StepAdjustment objects
function M.StepAdjustments(list)
	M.AssertStepAdjustments(list)
	return list
end

function M.AssertLaunchConfigurations(list)
	assert(list)
	assert(type(list) == "table", "Expected LaunchConfigurations to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertLaunchConfiguration(v)
	end
end

--  
-- List of LaunchConfiguration objects
function M.LaunchConfigurations(list)
	M.AssertLaunchConfigurations(list)
	return list
end

function M.AssertValues(list)
	assert(list)
	assert(type(list) == "table", "Expected Values to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertXmlString(v)
	end
end

--  
-- List of XmlString objects
function M.Values(list)
	M.AssertValues(list)
	return list
end

function M.AssertLaunchConfigurationNames(list)
	assert(list)
	assert(type(list) == "table", "Expected LaunchConfigurationNames to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertResourceName(v)
	end
end

--  
-- List of ResourceName objects
function M.LaunchConfigurationNames(list)
	M.AssertLaunchConfigurationNames(list)
	return list
end

function M.AssertClassicLinkVPCSecurityGroups(list)
	assert(list)
	assert(type(list) == "table", "Expected ClassicLinkVPCSecurityGroups to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertXmlStringMaxLen255(v)
	end
end

--  
-- List of XmlStringMaxLen255 objects
function M.ClassicLinkVPCSecurityGroups(list)
	M.AssertClassicLinkVPCSecurityGroups(list)
	return list
end

function M.AssertPolicyNames(list)
	assert(list)
	assert(type(list) == "table", "Expected PolicyNames to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertResourceName(v)
	end
end

--  
-- List of ResourceName objects
function M.PolicyNames(list)
	M.AssertPolicyNames(list)
	return list
end

function M.AssertLoadBalancerStates(list)
	assert(list)
	assert(type(list) == "table", "Expected LoadBalancerStates to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertLoadBalancerState(v)
	end
end

--  
-- List of LoadBalancerState objects
function M.LoadBalancerStates(list)
	M.AssertLoadBalancerStates(list)
	return list
end

function M.AssertInstanceIds(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceIds to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertXmlStringMaxLen19(v)
	end
end

--  
-- List of XmlStringMaxLen19 objects
function M.InstanceIds(list)
	M.AssertInstanceIds(list)
	return list
end

function M.AssertTags(list)
	assert(list)
	assert(type(list) == "table", "Expected Tags to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTag(v)
	end
end

--  
-- List of Tag objects
function M.Tags(list)
	M.AssertTags(list)
	return list
end

function M.AssertTagDescriptionList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagDescriptionList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTagDescription(v)
	end
end

--  
-- List of TagDescription objects
function M.TagDescriptionList(list)
	M.AssertTagDescriptionList(list)
	return list
end

function M.AssertProcesses(list)
	assert(list)
	assert(type(list) == "table", "Expected Processes to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertProcessType(v)
	end
end

--  
-- List of ProcessType objects
function M.Processes(list)
	M.AssertProcesses(list)
	return list
end

function M.AssertMetricGranularityTypes(list)
	assert(list)
	assert(type(list) == "table", "Expected MetricGranularityTypes to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertMetricGranularityType(v)
	end
end

--  
-- List of MetricGranularityType objects
function M.MetricGranularityTypes(list)
	M.AssertMetricGranularityTypes(list)
	return list
end

function M.AssertLifecycleHooks(list)
	assert(list)
	assert(type(list) == "table", "Expected LifecycleHooks to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertLifecycleHook(v)
	end
end

--  
-- List of LifecycleHook objects
function M.LifecycleHooks(list)
	M.AssertLifecycleHooks(list)
	return list
end

function M.AssertAdjustmentTypes(list)
	assert(list)
	assert(type(list) == "table", "Expected AdjustmentTypes to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAdjustmentType(v)
	end
end

--  
-- List of AdjustmentType objects
function M.AdjustmentTypes(list)
	M.AssertAdjustmentTypes(list)
	return list
end

function M.AssertAlarms(list)
	assert(list)
	assert(type(list) == "table", "Expected Alarms to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAlarm(v)
	end
end

--  
-- List of Alarm objects
function M.Alarms(list)
	M.AssertAlarms(list)
	return list
end

function M.AssertLoadBalancerTargetGroupStates(list)
	assert(list)
	assert(type(list) == "table", "Expected LoadBalancerTargetGroupStates to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertLoadBalancerTargetGroupState(v)
	end
end

--  
-- List of LoadBalancerTargetGroupState objects
function M.LoadBalancerTargetGroupStates(list)
	M.AssertLoadBalancerTargetGroupStates(list)
	return list
end

function M.AssertActivityIds(list)
	assert(list)
	assert(type(list) == "table", "Expected ActivityIds to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertXmlString(v)
	end
end

--  
-- List of XmlString objects
function M.ActivityIds(list)
	M.AssertActivityIds(list)
	return list
end

function M.AssertMetricCollectionTypes(list)
	assert(list)
	assert(type(list) == "table", "Expected MetricCollectionTypes to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertMetricCollectionType(v)
	end
end

--  
-- List of MetricCollectionType objects
function M.MetricCollectionTypes(list)
	M.AssertMetricCollectionTypes(list)
	return list
end

function M.AssertPolicyTypes(list)
	assert(list)
	assert(type(list) == "table", "Expected PolicyTypes to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertXmlStringMaxLen64(v)
	end
end

--  
-- List of XmlStringMaxLen64 objects
function M.PolicyTypes(list)
	M.AssertPolicyTypes(list)
	return list
end

function M.AssertActivities(list)
	assert(list)
	assert(type(list) == "table", "Expected Activities to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertActivity(v)
	end
end

--  
-- List of Activity objects
function M.Activities(list)
	M.AssertActivities(list)
	return list
end

function M.AssertMetrics(list)
	assert(list)
	assert(type(list) == "table", "Expected Metrics to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertXmlStringMaxLen255(v)
	end
end

--  
-- List of XmlStringMaxLen255 objects
function M.Metrics(list)
	M.AssertMetrics(list)
	return list
end

function M.AssertTerminationPolicies(list)
	assert(list)
	assert(type(list) == "table", "Expected TerminationPolicies to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertXmlStringMaxLen1600(v)
	end
end

--  
-- List of XmlStringMaxLen1600 objects
function M.TerminationPolicies(list)
	M.AssertTerminationPolicies(list)
	return list
end

function M.AssertScheduledUpdateGroupActions(list)
	assert(list)
	assert(type(list) == "table", "Expected ScheduledUpdateGroupActions to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertScheduledUpdateGroupAction(v)
	end
end

--  
-- List of ScheduledUpdateGroupAction objects
function M.ScheduledUpdateGroupActions(list)
	M.AssertScheduledUpdateGroupActions(list)
	return list
end

function M.AssertAutoScalingGroups(list)
	assert(list)
	assert(type(list) == "table", "Expected AutoScalingGroups to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAutoScalingGroup(v)
	end
end

--  
-- List of AutoScalingGroup objects
function M.AutoScalingGroups(list)
	M.AssertAutoScalingGroups(list)
	return list
end

function M.AssertScheduledActionNames(list)
	assert(list)
	assert(type(list) == "table", "Expected ScheduledActionNames to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertResourceName(v)
	end
end

--  
-- List of ResourceName objects
function M.ScheduledActionNames(list)
	M.AssertScheduledActionNames(list)
	return list
end

function M.AssertInstances(list)
	assert(list)
	assert(type(list) == "table", "Expected Instances to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertInstance(v)
	end
end

--  
-- List of Instance objects
function M.Instances(list)
	M.AssertInstances(list)
	return list
end

function M.AssertFilters(list)
	assert(list)
	assert(type(list) == "table", "Expected Filters to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertFilter(v)
	end
end

--  
-- List of Filter objects
function M.Filters(list)
	M.AssertFilters(list)
	return list
end

function M.AssertAvailabilityZones(list)
	assert(list)
	assert(type(list) == "table", "Expected AvailabilityZones to be of type ''table")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertXmlStringMaxLen255(v)
	end
end

--  
-- List of XmlStringMaxLen255 objects
function M.AvailabilityZones(list)
	M.AssertAvailabilityZones(list)
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
	uri = scheme_mapper.from_string(config.scheme) .. "://"
	uri = uri .. config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
end


--
-- OPERATIONS
--
--- DeleteTags
-- @param DeleteTagsType
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteTagsAsync(DeleteTagsType, cb)
	assert(DeleteTagsType, "You must provide a DeleteTagsType")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteTags",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteTagsType, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeScalingActivities
-- @param DescribeScalingActivitiesType
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeScalingActivitiesAsync(DescribeScalingActivitiesType, cb)
	assert(DescribeScalingActivitiesType, "You must provide a DescribeScalingActivitiesType")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeScalingActivities",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeScalingActivitiesType, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateAutoScalingGroup
-- @param CreateAutoScalingGroupType
-- @param cb Callback function accepting two args: response, error_message
function M.CreateAutoScalingGroupAsync(CreateAutoScalingGroupType, cb)
	assert(CreateAutoScalingGroupType, "You must provide a CreateAutoScalingGroupType")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateAutoScalingGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateAutoScalingGroupType, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ExecutePolicy
-- @param ExecutePolicyType
-- @param cb Callback function accepting two args: response, error_message
function M.ExecutePolicyAsync(ExecutePolicyType, cb)
	assert(ExecutePolicyType, "You must provide a ExecutePolicyType")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ExecutePolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ExecutePolicyType, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SetInstanceProtection
-- @param SetInstanceProtectionQuery
-- @param cb Callback function accepting two args: response, error_message
function M.SetInstanceProtectionAsync(SetInstanceProtectionQuery, cb)
	assert(SetInstanceProtectionQuery, "You must provide a SetInstanceProtectionQuery")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".SetInstanceProtection",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SetInstanceProtectionQuery, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DetachLoadBalancerTargetGroups
-- @param DetachLoadBalancerTargetGroupsType
-- @param cb Callback function accepting two args: response, error_message
function M.DetachLoadBalancerTargetGroupsAsync(DetachLoadBalancerTargetGroupsType, cb)
	assert(DetachLoadBalancerTargetGroupsType, "You must provide a DetachLoadBalancerTargetGroupsType")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DetachLoadBalancerTargetGroups",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DetachLoadBalancerTargetGroupsType, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeNotificationConfigurations
-- @param DescribeNotificationConfigurationsType
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeNotificationConfigurationsAsync(DescribeNotificationConfigurationsType, cb)
	assert(DescribeNotificationConfigurationsType, "You must provide a DescribeNotificationConfigurationsType")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeNotificationConfigurations",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeNotificationConfigurationsType, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteAutoScalingGroup
-- @param DeleteAutoScalingGroupType
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteAutoScalingGroupAsync(DeleteAutoScalingGroupType, cb)
	assert(DeleteAutoScalingGroupType, "You must provide a DeleteAutoScalingGroupType")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteAutoScalingGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteAutoScalingGroupType, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeletePolicy
-- @param DeletePolicyType
-- @param cb Callback function accepting two args: response, error_message
function M.DeletePolicyAsync(DeletePolicyType, cb)
	assert(DeletePolicyType, "You must provide a DeletePolicyType")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeletePolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeletePolicyType, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ExitStandby
-- @param ExitStandbyQuery
-- @param cb Callback function accepting two args: response, error_message
function M.ExitStandbyAsync(ExitStandbyQuery, cb)
	assert(ExitStandbyQuery, "You must provide a ExitStandbyQuery")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ExitStandby",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ExitStandbyQuery, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SetInstanceHealth
-- @param SetInstanceHealthQuery
-- @param cb Callback function accepting two args: response, error_message
function M.SetInstanceHealthAsync(SetInstanceHealthQuery, cb)
	assert(SetInstanceHealthQuery, "You must provide a SetInstanceHealthQuery")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".SetInstanceHealth",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SetInstanceHealthQuery, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateOrUpdateTags
-- @param CreateOrUpdateTagsType
-- @param cb Callback function accepting two args: response, error_message
function M.CreateOrUpdateTagsAsync(CreateOrUpdateTagsType, cb)
	assert(CreateOrUpdateTagsType, "You must provide a CreateOrUpdateTagsType")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateOrUpdateTags",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateOrUpdateTagsType, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeScalingProcessTypes
-- @param 
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeScalingProcessTypesAsync(, cb)
	assert(, "You must provide a ")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeScalingProcessTypes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", , headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutLifecycleHook
-- @param PutLifecycleHookType
-- @param cb Callback function accepting two args: response, error_message
function M.PutLifecycleHookAsync(PutLifecycleHookType, cb)
	assert(PutLifecycleHookType, "You must provide a PutLifecycleHookType")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PutLifecycleHook",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PutLifecycleHookType, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DetachLoadBalancers
-- @param DetachLoadBalancersType
-- @param cb Callback function accepting two args: response, error_message
function M.DetachLoadBalancersAsync(DetachLoadBalancersType, cb)
	assert(DetachLoadBalancersType, "You must provide a DetachLoadBalancersType")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DetachLoadBalancers",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DetachLoadBalancersType, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AttachInstances
-- @param AttachInstancesQuery
-- @param cb Callback function accepting two args: response, error_message
function M.AttachInstancesAsync(AttachInstancesQuery, cb)
	assert(AttachInstancesQuery, "You must provide a AttachInstancesQuery")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".AttachInstances",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AttachInstancesQuery, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutScheduledUpdateGroupAction
-- @param PutScheduledUpdateGroupActionType
-- @param cb Callback function accepting two args: response, error_message
function M.PutScheduledUpdateGroupActionAsync(PutScheduledUpdateGroupActionType, cb)
	assert(PutScheduledUpdateGroupActionType, "You must provide a PutScheduledUpdateGroupActionType")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PutScheduledUpdateGroupAction",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PutScheduledUpdateGroupActionType, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutScalingPolicy
-- @param PutScalingPolicyType
-- @param cb Callback function accepting two args: response, error_message
function M.PutScalingPolicyAsync(PutScalingPolicyType, cb)
	assert(PutScalingPolicyType, "You must provide a PutScalingPolicyType")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PutScalingPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PutScalingPolicyType, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteScheduledAction
-- @param DeleteScheduledActionType
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteScheduledActionAsync(DeleteScheduledActionType, cb)
	assert(DeleteScheduledActionType, "You must provide a DeleteScheduledActionType")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteScheduledAction",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteScheduledActionType, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AttachLoadBalancers
-- @param AttachLoadBalancersType
-- @param cb Callback function accepting two args: response, error_message
function M.AttachLoadBalancersAsync(AttachLoadBalancersType, cb)
	assert(AttachLoadBalancersType, "You must provide a AttachLoadBalancersType")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".AttachLoadBalancers",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AttachLoadBalancersType, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DetachInstances
-- @param DetachInstancesQuery
-- @param cb Callback function accepting two args: response, error_message
function M.DetachInstancesAsync(DetachInstancesQuery, cb)
	assert(DetachInstancesQuery, "You must provide a DetachInstancesQuery")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DetachInstances",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DetachInstancesQuery, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeAdjustmentTypes
-- @param 
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeAdjustmentTypesAsync(, cb)
	assert(, "You must provide a ")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeAdjustmentTypes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", , headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- TerminateInstanceInAutoScalingGroup
-- @param TerminateInstanceInAutoScalingGroupType
-- @param cb Callback function accepting two args: response, error_message
function M.TerminateInstanceInAutoScalingGroupAsync(TerminateInstanceInAutoScalingGroupType, cb)
	assert(TerminateInstanceInAutoScalingGroupType, "You must provide a TerminateInstanceInAutoScalingGroupType")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".TerminateInstanceInAutoScalingGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", TerminateInstanceInAutoScalingGroupType, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AttachLoadBalancerTargetGroups
-- @param AttachLoadBalancerTargetGroupsType
-- @param cb Callback function accepting two args: response, error_message
function M.AttachLoadBalancerTargetGroupsAsync(AttachLoadBalancerTargetGroupsType, cb)
	assert(AttachLoadBalancerTargetGroupsType, "You must provide a AttachLoadBalancerTargetGroupsType")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".AttachLoadBalancerTargetGroups",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AttachLoadBalancerTargetGroupsType, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeLoadBalancers
-- @param DescribeLoadBalancersRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeLoadBalancersAsync(DescribeLoadBalancersRequest, cb)
	assert(DescribeLoadBalancersRequest, "You must provide a DescribeLoadBalancersRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeLoadBalancers",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeLoadBalancersRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CompleteLifecycleAction
-- @param CompleteLifecycleActionType
-- @param cb Callback function accepting two args: response, error_message
function M.CompleteLifecycleActionAsync(CompleteLifecycleActionType, cb)
	assert(CompleteLifecycleActionType, "You must provide a CompleteLifecycleActionType")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CompleteLifecycleAction",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CompleteLifecycleActionType, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeMetricCollectionTypes
-- @param 
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeMetricCollectionTypesAsync(, cb)
	assert(, "You must provide a ")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeMetricCollectionTypes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", , headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateAutoScalingGroup
-- @param UpdateAutoScalingGroupType
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateAutoScalingGroupAsync(UpdateAutoScalingGroupType, cb)
	assert(UpdateAutoScalingGroupType, "You must provide a UpdateAutoScalingGroupType")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateAutoScalingGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateAutoScalingGroupType, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RecordLifecycleActionHeartbeat
-- @param RecordLifecycleActionHeartbeatType
-- @param cb Callback function accepting two args: response, error_message
function M.RecordLifecycleActionHeartbeatAsync(RecordLifecycleActionHeartbeatType, cb)
	assert(RecordLifecycleActionHeartbeatType, "You must provide a RecordLifecycleActionHeartbeatType")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".RecordLifecycleActionHeartbeat",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RecordLifecycleActionHeartbeatType, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutNotificationConfiguration
-- @param PutNotificationConfigurationType
-- @param cb Callback function accepting two args: response, error_message
function M.PutNotificationConfigurationAsync(PutNotificationConfigurationType, cb)
	assert(PutNotificationConfigurationType, "You must provide a PutNotificationConfigurationType")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PutNotificationConfiguration",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PutNotificationConfigurationType, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ResumeProcesses
-- @param ScalingProcessQuery
-- @param cb Callback function accepting two args: response, error_message
function M.ResumeProcessesAsync(ScalingProcessQuery, cb)
	assert(ScalingProcessQuery, "You must provide a ScalingProcessQuery")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ResumeProcesses",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ScalingProcessQuery, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateLaunchConfiguration
-- @param CreateLaunchConfigurationType
-- @param cb Callback function accepting two args: response, error_message
function M.CreateLaunchConfigurationAsync(CreateLaunchConfigurationType, cb)
	assert(CreateLaunchConfigurationType, "You must provide a CreateLaunchConfigurationType")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateLaunchConfiguration",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateLaunchConfigurationType, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeLifecycleHookTypes
-- @param 
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeLifecycleHookTypesAsync(, cb)
	assert(, "You must provide a ")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeLifecycleHookTypes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", , headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeAutoScalingInstances
-- @param DescribeAutoScalingInstancesType
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeAutoScalingInstancesAsync(DescribeAutoScalingInstancesType, cb)
	assert(DescribeAutoScalingInstancesType, "You must provide a DescribeAutoScalingInstancesType")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeAutoScalingInstances",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeAutoScalingInstancesType, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeTags
-- @param DescribeTagsType
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeTagsAsync(DescribeTagsType, cb)
	assert(DescribeTagsType, "You must provide a DescribeTagsType")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeTags",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeTagsType, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeTerminationPolicyTypes
-- @param 
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeTerminationPolicyTypesAsync(, cb)
	assert(, "You must provide a ")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeTerminationPolicyTypes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", , headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DisableMetricsCollection
-- @param DisableMetricsCollectionQuery
-- @param cb Callback function accepting two args: response, error_message
function M.DisableMetricsCollectionAsync(DisableMetricsCollectionQuery, cb)
	assert(DisableMetricsCollectionQuery, "You must provide a DisableMetricsCollectionQuery")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DisableMetricsCollection",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DisableMetricsCollectionQuery, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SetDesiredCapacity
-- @param SetDesiredCapacityType
-- @param cb Callback function accepting two args: response, error_message
function M.SetDesiredCapacityAsync(SetDesiredCapacityType, cb)
	assert(SetDesiredCapacityType, "You must provide a SetDesiredCapacityType")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".SetDesiredCapacity",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SetDesiredCapacityType, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeLaunchConfigurations
-- @param LaunchConfigurationNamesType
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeLaunchConfigurationsAsync(LaunchConfigurationNamesType, cb)
	assert(LaunchConfigurationNamesType, "You must provide a LaunchConfigurationNamesType")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeLaunchConfigurations",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", LaunchConfigurationNamesType, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- EnterStandby
-- @param EnterStandbyQuery
-- @param cb Callback function accepting two args: response, error_message
function M.EnterStandbyAsync(EnterStandbyQuery, cb)
	assert(EnterStandbyQuery, "You must provide a EnterStandbyQuery")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".EnterStandby",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", EnterStandbyQuery, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeLoadBalancerTargetGroups
-- @param DescribeLoadBalancerTargetGroupsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeLoadBalancerTargetGroupsAsync(DescribeLoadBalancerTargetGroupsRequest, cb)
	assert(DescribeLoadBalancerTargetGroupsRequest, "You must provide a DescribeLoadBalancerTargetGroupsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeLoadBalancerTargetGroups",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeLoadBalancerTargetGroupsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteLaunchConfiguration
-- @param LaunchConfigurationNameType
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteLaunchConfigurationAsync(LaunchConfigurationNameType, cb)
	assert(LaunchConfigurationNameType, "You must provide a LaunchConfigurationNameType")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteLaunchConfiguration",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", LaunchConfigurationNameType, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteLifecycleHook
-- @param DeleteLifecycleHookType
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteLifecycleHookAsync(DeleteLifecycleHookType, cb)
	assert(DeleteLifecycleHookType, "You must provide a DeleteLifecycleHookType")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteLifecycleHook",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteLifecycleHookType, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribePolicies
-- @param DescribePoliciesType
-- @param cb Callback function accepting two args: response, error_message
function M.DescribePoliciesAsync(DescribePoliciesType, cb)
	assert(DescribePoliciesType, "You must provide a DescribePoliciesType")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribePolicies",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribePoliciesType, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeLifecycleHooks
-- @param DescribeLifecycleHooksType
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeLifecycleHooksAsync(DescribeLifecycleHooksType, cb)
	assert(DescribeLifecycleHooksType, "You must provide a DescribeLifecycleHooksType")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeLifecycleHooks",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeLifecycleHooksType, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeScheduledActions
-- @param DescribeScheduledActionsType
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeScheduledActionsAsync(DescribeScheduledActionsType, cb)
	assert(DescribeScheduledActionsType, "You must provide a DescribeScheduledActionsType")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeScheduledActions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeScheduledActionsType, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeAutoScalingGroups
-- @param AutoScalingGroupNamesType
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeAutoScalingGroupsAsync(AutoScalingGroupNamesType, cb)
	assert(AutoScalingGroupNamesType, "You must provide a AutoScalingGroupNamesType")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeAutoScalingGroups",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AutoScalingGroupNamesType, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- EnableMetricsCollection
-- @param EnableMetricsCollectionQuery
-- @param cb Callback function accepting two args: response, error_message
function M.EnableMetricsCollectionAsync(EnableMetricsCollectionQuery, cb)
	assert(EnableMetricsCollectionQuery, "You must provide a EnableMetricsCollectionQuery")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".EnableMetricsCollection",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", EnableMetricsCollectionQuery, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteNotificationConfiguration
-- @param DeleteNotificationConfigurationType
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteNotificationConfigurationAsync(DeleteNotificationConfigurationType, cb)
	assert(DeleteNotificationConfigurationType, "You must provide a DeleteNotificationConfigurationType")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteNotificationConfiguration",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteNotificationConfigurationType, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeAutoScalingNotificationTypes
-- @param 
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeAutoScalingNotificationTypesAsync(, cb)
	assert(, "You must provide a ")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeAutoScalingNotificationTypes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", , headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SuspendProcesses
-- @param ScalingProcessQuery
-- @param cb Callback function accepting two args: response, error_message
function M.SuspendProcessesAsync(ScalingProcessQuery, cb)
	assert(ScalingProcessQuery, "You must provide a ScalingProcessQuery")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".SuspendProcesses",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ScalingProcessQuery, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeAccountLimits
-- @param 
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeAccountLimitsAsync(, cb)
	assert(, "You must provide a ")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeAccountLimits",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", , headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
