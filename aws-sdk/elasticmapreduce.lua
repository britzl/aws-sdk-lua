--- GENERATED CODE - DO NOT MODIFY
-- Amazon Elastic MapReduce (elasticmapreduce-2009-03-31)

local M = {}

M.metadata = {
	api_version = "2009-03-31",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "elasticmapreduce",
	service_abbreviation = "Amazon EMR",
	service_full_name = "Amazon Elastic MapReduce",
	signature_version = "v4",
	target_prefix = "ElasticMapReduce",
	timestamp_format = "unixTimestamp",
	global_endpoint = "",
	uid = "elasticmapreduce-2009-03-31",
}

local InternalServerException_keys = { "Message" = true, nil }

function M.AssertInternalServerException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalServerException to be of type 'table'")
	if struct["Message"] then M.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InternalServerException_keys[k], "InternalServerException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalServerException
-- &lt;p&gt;This exception occurs when there is an internal failure in the EMR service.&lt;/p&gt;
-- @param Message [ErrorMessage] &lt;p&gt;The message associated with the exception.&lt;/p&gt;
function M.InternalServerException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalServerException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInternalServerException(t)
	return t
end

local CancelStepsInfo_keys = { "Status" = true, "Reason" = true, "StepId" = true, nil }

function M.AssertCancelStepsInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelStepsInfo to be of type 'table'")
	if struct["Status"] then M.AssertCancelStepsRequestStatus(struct["Status"]) end
	if struct["Reason"] then M.AssertString(struct["Reason"]) end
	if struct["StepId"] then M.AssertStepId(struct["StepId"]) end
	for k,_ in pairs(struct) do
		assert(CancelStepsInfo_keys[k], "CancelStepsInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelStepsInfo
-- &lt;p&gt;Specification of the status of a CancelSteps request. Available only in Amazon EMR version 4.8.0 and later, excluding version 5.0.0.&lt;/p&gt;
-- @param Status [CancelStepsRequestStatus] &lt;p&gt;The status of a CancelSteps Request. The value may be SUBMITTED or FAILED.&lt;/p&gt;
-- @param Reason [String] &lt;p&gt;The reason for the failure if the CancelSteps request fails.&lt;/p&gt;
-- @param StepId [StepId] &lt;p&gt;The encrypted StepId of a step.&lt;/p&gt;
function M.CancelStepsInfo(Status, Reason, StepId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CancelStepsInfo")
	local t = { 
		["Status"] = Status,
		["Reason"] = Reason,
		["StepId"] = StepId,
	}
	M.AssertCancelStepsInfo(t)
	return t
end

local InstanceFleetTimeline_keys = { "ReadyDateTime" = true, "CreationDateTime" = true, "EndDateTime" = true, nil }

function M.AssertInstanceFleetTimeline(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceFleetTimeline to be of type 'table'")
	if struct["ReadyDateTime"] then M.AssertDate(struct["ReadyDateTime"]) end
	if struct["CreationDateTime"] then M.AssertDate(struct["CreationDateTime"]) end
	if struct["EndDateTime"] then M.AssertDate(struct["EndDateTime"]) end
	for k,_ in pairs(struct) do
		assert(InstanceFleetTimeline_keys[k], "InstanceFleetTimeline contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceFleetTimeline
-- &lt;p&gt;Provides historical timestamps for the instance fleet, including the time of creation, the time it became ready to run jobs, and the time of termination.&lt;/p&gt; &lt;note&gt; &lt;p&gt;The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.&lt;/p&gt; &lt;/note&gt;
-- @param ReadyDateTime [Date] &lt;p&gt;The time and date the instance fleet was ready to run jobs.&lt;/p&gt;
-- @param CreationDateTime [Date] &lt;p&gt;The time and date the instance fleet was created.&lt;/p&gt;
-- @param EndDateTime [Date] &lt;p&gt;The time and date the instance fleet terminated.&lt;/p&gt;
function M.InstanceFleetTimeline(ReadyDateTime, CreationDateTime, EndDateTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceFleetTimeline")
	local t = { 
		["ReadyDateTime"] = ReadyDateTime,
		["CreationDateTime"] = CreationDateTime,
		["EndDateTime"] = EndDateTime,
	}
	M.AssertInstanceFleetTimeline(t)
	return t
end

local ListStepsInput_keys = { "Marker" = true, "StepIds" = true, "ClusterId" = true, "StepStates" = true, nil }

function M.AssertListStepsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListStepsInput to be of type 'table'")
	assert(struct["ClusterId"], "Expected key ClusterId to exist in table")
	if struct["Marker"] then M.AssertMarker(struct["Marker"]) end
	if struct["StepIds"] then M.AssertXmlStringList(struct["StepIds"]) end
	if struct["ClusterId"] then M.AssertClusterId(struct["ClusterId"]) end
	if struct["StepStates"] then M.AssertStepStateList(struct["StepStates"]) end
	for k,_ in pairs(struct) do
		assert(ListStepsInput_keys[k], "ListStepsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListStepsInput
-- &lt;p&gt;This input determines which steps to list.&lt;/p&gt;
-- @param Marker [Marker] &lt;p&gt;The pagination token that indicates the next set of results to retrieve.&lt;/p&gt;
-- @param StepIds [XmlStringList] &lt;p&gt;The filter to limit the step list based on the identifier of the steps.&lt;/p&gt;
-- @param ClusterId [ClusterId] &lt;p&gt;The identifier of the cluster for which to list the steps.&lt;/p&gt;
-- @param StepStates [StepStateList] &lt;p&gt;The filter to limit the step list based on certain states.&lt;/p&gt;
-- Required parameter: ClusterId
function M.ListStepsInput(Marker, StepIds, ClusterId, StepStates, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListStepsInput")
	local t = { 
		["Marker"] = Marker,
		["StepIds"] = StepIds,
		["ClusterId"] = ClusterId,
		["StepStates"] = StepStates,
	}
	M.AssertListStepsInput(t)
	return t
end

local JobFlowInstancesDetail_keys = { "InstanceCount" = true, "Placement" = true, "MasterPublicDnsName" = true, "NormalizedInstanceHours" = true, "MasterInstanceId" = true, "InstanceGroups" = true, "MasterInstanceType" = true, "TerminationProtected" = true, "HadoopVersion" = true, "Ec2SubnetId" = true, "KeepJobFlowAliveWhenNoSteps" = true, "SlaveInstanceType" = true, "Ec2KeyName" = true, nil }

function M.AssertJobFlowInstancesDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobFlowInstancesDetail to be of type 'table'")
	assert(struct["MasterInstanceType"], "Expected key MasterInstanceType to exist in table")
	assert(struct["SlaveInstanceType"], "Expected key SlaveInstanceType to exist in table")
	assert(struct["InstanceCount"], "Expected key InstanceCount to exist in table")
	if struct["InstanceCount"] then M.AssertInteger(struct["InstanceCount"]) end
	if struct["Placement"] then M.AssertPlacementType(struct["Placement"]) end
	if struct["MasterPublicDnsName"] then M.AssertXmlString(struct["MasterPublicDnsName"]) end
	if struct["NormalizedInstanceHours"] then M.AssertInteger(struct["NormalizedInstanceHours"]) end
	if struct["MasterInstanceId"] then M.AssertXmlString(struct["MasterInstanceId"]) end
	if struct["InstanceGroups"] then M.AssertInstanceGroupDetailList(struct["InstanceGroups"]) end
	if struct["MasterInstanceType"] then M.AssertInstanceType(struct["MasterInstanceType"]) end
	if struct["TerminationProtected"] then M.AssertBoolean(struct["TerminationProtected"]) end
	if struct["HadoopVersion"] then M.AssertXmlStringMaxLen256(struct["HadoopVersion"]) end
	if struct["Ec2SubnetId"] then M.AssertXmlStringMaxLen256(struct["Ec2SubnetId"]) end
	if struct["KeepJobFlowAliveWhenNoSteps"] then M.AssertBoolean(struct["KeepJobFlowAliveWhenNoSteps"]) end
	if struct["SlaveInstanceType"] then M.AssertInstanceType(struct["SlaveInstanceType"]) end
	if struct["Ec2KeyName"] then M.AssertXmlStringMaxLen256(struct["Ec2KeyName"]) end
	for k,_ in pairs(struct) do
		assert(JobFlowInstancesDetail_keys[k], "JobFlowInstancesDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobFlowInstancesDetail
-- &lt;p&gt;Specify the type of Amazon EC2 instances that the cluster (job flow) runs on.&lt;/p&gt;
-- @param InstanceCount [Integer] &lt;p&gt;The number of Amazon EC2 instances in the cluster. If the value is 1, the same instance serves as both the master and slave node. If the value is greater than 1, one instance is the master node and all others are slave nodes.&lt;/p&gt;
-- @param Placement [PlacementType] &lt;p&gt;The Amazon EC2 Availability Zone for the cluster.&lt;/p&gt;
-- @param MasterPublicDnsName [XmlString] &lt;p&gt;The DNS name of the master node.&lt;/p&gt;
-- @param NormalizedInstanceHours [Integer] &lt;p&gt;An approximation of the cost of the cluster, represented in m1.small/hours. This value is incremented one time for every hour that an m1.small runs. Larger instances are weighted more, so an Amazon EC2 instance that is roughly four times more expensive would result in the normalized instance hours being incremented by four. This result is only an approximation and does not reflect the actual billing rate.&lt;/p&gt;
-- @param MasterInstanceId [XmlString] &lt;p&gt;The Amazon EC2 instance identifier of the master node.&lt;/p&gt;
-- @param InstanceGroups [InstanceGroupDetailList] &lt;p&gt;Details about the instance groups in a cluster.&lt;/p&gt;
-- @param MasterInstanceType [InstanceType] &lt;p&gt;The Amazon EC2 master node instance type.&lt;/p&gt;
-- @param TerminationProtected [Boolean] &lt;p&gt;Specifies whether the Amazon EC2 instances in the cluster are protected from termination by API calls, user intervention, or in the event of a job-flow error.&lt;/p&gt;
-- @param HadoopVersion [XmlStringMaxLen256] &lt;p&gt;The Hadoop version for the cluster.&lt;/p&gt;
-- @param Ec2SubnetId [XmlStringMaxLen256] &lt;p&gt;For clusters launched within Amazon Virtual Private Cloud, this is the identifier of the subnet where the cluster was launched.&lt;/p&gt;
-- @param KeepJobFlowAliveWhenNoSteps [Boolean] &lt;p&gt;Specifies whether the cluster should remain available after completing all steps.&lt;/p&gt;
-- @param SlaveInstanceType [InstanceType] &lt;p&gt;The Amazon EC2 slave node instance type.&lt;/p&gt;
-- @param Ec2KeyName [XmlStringMaxLen256] &lt;p&gt;The name of an Amazon EC2 key pair that can be used to ssh to the master node.&lt;/p&gt;
-- Required parameter: MasterInstanceType
-- Required parameter: SlaveInstanceType
-- Required parameter: InstanceCount
function M.JobFlowInstancesDetail(InstanceCount, Placement, MasterPublicDnsName, NormalizedInstanceHours, MasterInstanceId, InstanceGroups, MasterInstanceType, TerminationProtected, HadoopVersion, Ec2SubnetId, KeepJobFlowAliveWhenNoSteps, SlaveInstanceType, Ec2KeyName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating JobFlowInstancesDetail")
	local t = { 
		["InstanceCount"] = InstanceCount,
		["Placement"] = Placement,
		["MasterPublicDnsName"] = MasterPublicDnsName,
		["NormalizedInstanceHours"] = NormalizedInstanceHours,
		["MasterInstanceId"] = MasterInstanceId,
		["InstanceGroups"] = InstanceGroups,
		["MasterInstanceType"] = MasterInstanceType,
		["TerminationProtected"] = TerminationProtected,
		["HadoopVersion"] = HadoopVersion,
		["Ec2SubnetId"] = Ec2SubnetId,
		["KeepJobFlowAliveWhenNoSteps"] = KeepJobFlowAliveWhenNoSteps,
		["SlaveInstanceType"] = SlaveInstanceType,
		["Ec2KeyName"] = Ec2KeyName,
	}
	M.AssertJobFlowInstancesDetail(t)
	return t
end

local JobFlowInstancesConfig_keys = { "ServiceAccessSecurityGroup" = true, "InstanceCount" = true, "Placement" = true, "TerminationProtected" = true, "Ec2SubnetIds" = true, "InstanceGroups" = true, "InstanceFleets" = true, "MasterInstanceType" = true, "AdditionalSlaveSecurityGroups" = true, "HadoopVersion" = true, "AdditionalMasterSecurityGroups" = true, "Ec2SubnetId" = true, "KeepJobFlowAliveWhenNoSteps" = true, "SlaveInstanceType" = true, "EmrManagedMasterSecurityGroup" = true, "Ec2KeyName" = true, "EmrManagedSlaveSecurityGroup" = true, nil }

function M.AssertJobFlowInstancesConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobFlowInstancesConfig to be of type 'table'")
	if struct["ServiceAccessSecurityGroup"] then M.AssertXmlStringMaxLen256(struct["ServiceAccessSecurityGroup"]) end
	if struct["InstanceCount"] then M.AssertInteger(struct["InstanceCount"]) end
	if struct["Placement"] then M.AssertPlacementType(struct["Placement"]) end
	if struct["TerminationProtected"] then M.AssertBoolean(struct["TerminationProtected"]) end
	if struct["Ec2SubnetIds"] then M.AssertXmlStringMaxLen256List(struct["Ec2SubnetIds"]) end
	if struct["InstanceGroups"] then M.AssertInstanceGroupConfigList(struct["InstanceGroups"]) end
	if struct["InstanceFleets"] then M.AssertInstanceFleetConfigList(struct["InstanceFleets"]) end
	if struct["MasterInstanceType"] then M.AssertInstanceType(struct["MasterInstanceType"]) end
	if struct["AdditionalSlaveSecurityGroups"] then M.AssertSecurityGroupsList(struct["AdditionalSlaveSecurityGroups"]) end
	if struct["HadoopVersion"] then M.AssertXmlStringMaxLen256(struct["HadoopVersion"]) end
	if struct["AdditionalMasterSecurityGroups"] then M.AssertSecurityGroupsList(struct["AdditionalMasterSecurityGroups"]) end
	if struct["Ec2SubnetId"] then M.AssertXmlStringMaxLen256(struct["Ec2SubnetId"]) end
	if struct["KeepJobFlowAliveWhenNoSteps"] then M.AssertBoolean(struct["KeepJobFlowAliveWhenNoSteps"]) end
	if struct["SlaveInstanceType"] then M.AssertInstanceType(struct["SlaveInstanceType"]) end
	if struct["EmrManagedMasterSecurityGroup"] then M.AssertXmlStringMaxLen256(struct["EmrManagedMasterSecurityGroup"]) end
	if struct["Ec2KeyName"] then M.AssertXmlStringMaxLen256(struct["Ec2KeyName"]) end
	if struct["EmrManagedSlaveSecurityGroup"] then M.AssertXmlStringMaxLen256(struct["EmrManagedSlaveSecurityGroup"]) end
	for k,_ in pairs(struct) do
		assert(JobFlowInstancesConfig_keys[k], "JobFlowInstancesConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobFlowInstancesConfig
-- &lt;p&gt;A description of the Amazon EC2 instance on which the cluster (job flow) runs. A valid JobFlowInstancesConfig must contain either InstanceGroups or InstanceFleets, which is the recommended configuration. They cannot be used together. You may also have MasterInstanceType, SlaveInstanceType, and InstanceCount (all three must be present), but we don't recommend this configuration.&lt;/p&gt;
-- @param ServiceAccessSecurityGroup [XmlStringMaxLen256] &lt;p&gt;The identifier of the Amazon EC2 security group for the Amazon EMR service to access clusters in VPC private subnets.&lt;/p&gt;
-- @param InstanceCount [Integer] &lt;p&gt;The number of EC2 instances in the cluster.&lt;/p&gt;
-- @param Placement [PlacementType] &lt;p&gt;The Availability Zone in which the cluster runs.&lt;/p&gt;
-- @param TerminationProtected [Boolean] &lt;p&gt;Specifies whether to lock the cluster to prevent the Amazon EC2 instances from being terminated by API call, user intervention, or in the event of a job-flow error.&lt;/p&gt;
-- @param Ec2SubnetIds [XmlStringMaxLen256List] &lt;p&gt;Applies to clusters that use the instance fleet configuration. When multiple EC2 subnet IDs are specified, Amazon EMR evaluates them and launches instances in the optimal subnet.&lt;/p&gt; &lt;note&gt; &lt;p&gt;The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.&lt;/p&gt; &lt;/note&gt;
-- @param InstanceGroups [InstanceGroupConfigList] &lt;p&gt;Configuration for the instance groups in a cluster.&lt;/p&gt;
-- @param InstanceFleets [InstanceFleetConfigList] &lt;note&gt; &lt;p&gt;The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.&lt;/p&gt; &lt;/note&gt; &lt;p&gt;Describes the EC2 instances and instance configurations for clusters that use the instance fleet configuration.&lt;/p&gt;
-- @param MasterInstanceType [InstanceType] &lt;p&gt;The EC2 instance type of the master node.&lt;/p&gt;
-- @param AdditionalSlaveSecurityGroups [SecurityGroupsList] &lt;p&gt;A list of additional Amazon EC2 security group IDs for the slave nodes.&lt;/p&gt;
-- @param HadoopVersion [XmlStringMaxLen256] &lt;p&gt;The Hadoop version for the cluster. Valid inputs are &quot;0.18&quot; (deprecated), &quot;0.20&quot; (deprecated), &quot;0.20.205&quot; (deprecated), &quot;1.0.3&quot;, &quot;2.2.0&quot;, or &quot;2.4.0&quot;. If you do not set this value, the default of 0.18 is used, unless the AmiVersion parameter is set in the RunJobFlow call, in which case the default version of Hadoop for that AMI version is used.&lt;/p&gt;
-- @param AdditionalMasterSecurityGroups [SecurityGroupsList] &lt;p&gt;A list of additional Amazon EC2 security group IDs for the master node.&lt;/p&gt;
-- @param Ec2SubnetId [XmlStringMaxLen256] &lt;p&gt;Applies to clusters that use the uniform instance group configuration. To launch the cluster in Amazon Virtual Private Cloud (Amazon VPC), set this parameter to the identifier of the Amazon VPC subnet where you want the cluster to launch. If you do not specify this value, the cluster launches in the normal Amazon Web Services cloud, outside of an Amazon VPC, if the account launching the cluster supports EC2 Classic networks in the region where the cluster launches.&lt;/p&gt; &lt;p&gt;Amazon VPC currently does not support cluster compute quadruple extra large (cc1.4xlarge) instances. Thus you cannot specify the cc1.4xlarge instance type for clusters launched in an Amazon VPC.&lt;/p&gt;
-- @param KeepJobFlowAliveWhenNoSteps [Boolean] &lt;p&gt;Specifies whether the cluster should remain available after completing all steps.&lt;/p&gt;
-- @param SlaveInstanceType [InstanceType] &lt;p&gt;The EC2 instance type of the slave nodes.&lt;/p&gt;
-- @param EmrManagedMasterSecurityGroup [XmlStringMaxLen256] &lt;p&gt;The identifier of the Amazon EC2 security group for the master node.&lt;/p&gt;
-- @param Ec2KeyName [XmlStringMaxLen256] &lt;p&gt;The name of the EC2 key pair that can be used to ssh to the master node as the user called &quot;hadoop.&quot;&lt;/p&gt;
-- @param EmrManagedSlaveSecurityGroup [XmlStringMaxLen256] &lt;p&gt;The identifier of the Amazon EC2 security group for the slave nodes.&lt;/p&gt;
function M.JobFlowInstancesConfig(ServiceAccessSecurityGroup, InstanceCount, Placement, TerminationProtected, Ec2SubnetIds, InstanceGroups, InstanceFleets, MasterInstanceType, AdditionalSlaveSecurityGroups, HadoopVersion, AdditionalMasterSecurityGroups, Ec2SubnetId, KeepJobFlowAliveWhenNoSteps, SlaveInstanceType, EmrManagedMasterSecurityGroup, Ec2KeyName, EmrManagedSlaveSecurityGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating JobFlowInstancesConfig")
	local t = { 
		["ServiceAccessSecurityGroup"] = ServiceAccessSecurityGroup,
		["InstanceCount"] = InstanceCount,
		["Placement"] = Placement,
		["TerminationProtected"] = TerminationProtected,
		["Ec2SubnetIds"] = Ec2SubnetIds,
		["InstanceGroups"] = InstanceGroups,
		["InstanceFleets"] = InstanceFleets,
		["MasterInstanceType"] = MasterInstanceType,
		["AdditionalSlaveSecurityGroups"] = AdditionalSlaveSecurityGroups,
		["HadoopVersion"] = HadoopVersion,
		["AdditionalMasterSecurityGroups"] = AdditionalMasterSecurityGroups,
		["Ec2SubnetId"] = Ec2SubnetId,
		["KeepJobFlowAliveWhenNoSteps"] = KeepJobFlowAliveWhenNoSteps,
		["SlaveInstanceType"] = SlaveInstanceType,
		["EmrManagedMasterSecurityGroup"] = EmrManagedMasterSecurityGroup,
		["Ec2KeyName"] = Ec2KeyName,
		["EmrManagedSlaveSecurityGroup"] = EmrManagedSlaveSecurityGroup,
	}
	M.AssertJobFlowInstancesConfig(t)
	return t
end

local InstanceFleetStateChangeReason_keys = { "Message" = true, "Code" = true, nil }

function M.AssertInstanceFleetStateChangeReason(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceFleetStateChangeReason to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	if struct["Code"] then M.AssertInstanceFleetStateChangeReasonCode(struct["Code"]) end
	for k,_ in pairs(struct) do
		assert(InstanceFleetStateChangeReason_keys[k], "InstanceFleetStateChangeReason contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceFleetStateChangeReason
-- &lt;p&gt;Provides status change reason details for the instance fleet.&lt;/p&gt; &lt;note&gt; &lt;p&gt;The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.&lt;/p&gt; &lt;/note&gt;
-- @param Message [String] &lt;p&gt;An explanatory message.&lt;/p&gt;
-- @param Code [InstanceFleetStateChangeReasonCode] &lt;p&gt;A code corresponding to the reason the state change occurred.&lt;/p&gt;
function M.InstanceFleetStateChangeReason(Message, Code, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceFleetStateChangeReason")
	local t = { 
		["Message"] = Message,
		["Code"] = Code,
	}
	M.AssertInstanceFleetStateChangeReason(t)
	return t
end

local StepStateChangeReason_keys = { "Message" = true, "Code" = true, nil }

function M.AssertStepStateChangeReason(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StepStateChangeReason to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	if struct["Code"] then M.AssertStepStateChangeReasonCode(struct["Code"]) end
	for k,_ in pairs(struct) do
		assert(StepStateChangeReason_keys[k], "StepStateChangeReason contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StepStateChangeReason
-- &lt;p&gt;The details of the step state change reason.&lt;/p&gt;
-- @param Message [String] &lt;p&gt;The descriptive message for the state change reason.&lt;/p&gt;
-- @param Code [StepStateChangeReasonCode] &lt;p&gt;The programmable code for the state change reason. Note: Currently, the service provides no code for the state change.&lt;/p&gt;
function M.StepStateChangeReason(Message, Code, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StepStateChangeReason")
	local t = { 
		["Message"] = Message,
		["Code"] = Code,
	}
	M.AssertStepStateChangeReason(t)
	return t
end

local PlacementType_keys = { "AvailabilityZone" = true, "AvailabilityZones" = true, nil }

function M.AssertPlacementType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PlacementType to be of type 'table'")
	if struct["AvailabilityZone"] then M.AssertXmlString(struct["AvailabilityZone"]) end
	if struct["AvailabilityZones"] then M.AssertXmlStringMaxLen256List(struct["AvailabilityZones"]) end
	for k,_ in pairs(struct) do
		assert(PlacementType_keys[k], "PlacementType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PlacementType
-- &lt;p&gt;The Amazon EC2 Availability Zone configuration of the cluster (job flow).&lt;/p&gt;
-- @param AvailabilityZone [XmlString] &lt;p&gt;The Amazon EC2 Availability Zone for the cluster. &lt;code&gt;AvailabilityZone&lt;/code&gt; is used for uniform instance groups, while &lt;code&gt;AvailabilityZones&lt;/code&gt; (plural) is used for instance fleets.&lt;/p&gt;
-- @param AvailabilityZones [XmlStringMaxLen256List] &lt;p&gt;When multiple Availability Zones are specified, Amazon EMR evaluates them and launches instances in the optimal Availability Zone. &lt;code&gt;AvailabilityZones&lt;/code&gt; is used for instance fleets, while &lt;code&gt;AvailabilityZone&lt;/code&gt; (singular) is used for uniform instance groups.&lt;/p&gt; &lt;note&gt; &lt;p&gt;The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.&lt;/p&gt; &lt;/note&gt;
function M.PlacementType(AvailabilityZone, AvailabilityZones, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PlacementType")
	local t = { 
		["AvailabilityZone"] = AvailabilityZone,
		["AvailabilityZones"] = AvailabilityZones,
	}
	M.AssertPlacementType(t)
	return t
end

local ListInstanceFleetsOutput_keys = { "InstanceFleets" = true, "Marker" = true, nil }

function M.AssertListInstanceFleetsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListInstanceFleetsOutput to be of type 'table'")
	if struct["InstanceFleets"] then M.AssertInstanceFleetList(struct["InstanceFleets"]) end
	if struct["Marker"] then M.AssertMarker(struct["Marker"]) end
	for k,_ in pairs(struct) do
		assert(ListInstanceFleetsOutput_keys[k], "ListInstanceFleetsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListInstanceFleetsOutput
--  
-- @param InstanceFleets [InstanceFleetList] &lt;p&gt;The list of instance fleets for the cluster and given filters.&lt;/p&gt;
-- @param Marker [Marker] &lt;p&gt;The pagination token that indicates the next set of results to retrieve.&lt;/p&gt;
function M.ListInstanceFleetsOutput(InstanceFleets, Marker, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListInstanceFleetsOutput")
	local t = { 
		["InstanceFleets"] = InstanceFleets,
		["Marker"] = Marker,
	}
	M.AssertListInstanceFleetsOutput(t)
	return t
end

local ListBootstrapActionsOutput_keys = { "Marker" = true, "BootstrapActions" = true, nil }

function M.AssertListBootstrapActionsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListBootstrapActionsOutput to be of type 'table'")
	if struct["Marker"] then M.AssertMarker(struct["Marker"]) end
	if struct["BootstrapActions"] then M.AssertCommandList(struct["BootstrapActions"]) end
	for k,_ in pairs(struct) do
		assert(ListBootstrapActionsOutput_keys[k], "ListBootstrapActionsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListBootstrapActionsOutput
-- &lt;p&gt;This output contains the bootstrap actions detail.&lt;/p&gt;
-- @param Marker [Marker] &lt;p&gt;The pagination token that indicates the next set of results to retrieve.&lt;/p&gt;
-- @param BootstrapActions [CommandList] &lt;p&gt;The bootstrap actions associated with the cluster.&lt;/p&gt;
function M.ListBootstrapActionsOutput(Marker, BootstrapActions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListBootstrapActionsOutput")
	local t = { 
		["Marker"] = Marker,
		["BootstrapActions"] = BootstrapActions,
	}
	M.AssertListBootstrapActionsOutput(t)
	return t
end

local DescribeStepInput_keys = { "StepId" = true, "ClusterId" = true, nil }

function M.AssertDescribeStepInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStepInput to be of type 'table'")
	assert(struct["ClusterId"], "Expected key ClusterId to exist in table")
	assert(struct["StepId"], "Expected key StepId to exist in table")
	if struct["StepId"] then M.AssertStepId(struct["StepId"]) end
	if struct["ClusterId"] then M.AssertClusterId(struct["ClusterId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeStepInput_keys[k], "DescribeStepInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStepInput
-- &lt;p&gt;This input determines which step to describe.&lt;/p&gt;
-- @param StepId [StepId] &lt;p&gt;The identifier of the step to describe.&lt;/p&gt;
-- @param ClusterId [ClusterId] &lt;p&gt;The identifier of the cluster with steps to describe.&lt;/p&gt;
-- Required parameter: ClusterId
-- Required parameter: StepId
function M.DescribeStepInput(StepId, ClusterId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeStepInput")
	local t = { 
		["StepId"] = StepId,
		["ClusterId"] = ClusterId,
	}
	M.AssertDescribeStepInput(t)
	return t
end

local ModifyInstanceGroupsInput_keys = { "ClusterId" = true, "InstanceGroups" = true, nil }

function M.AssertModifyInstanceGroupsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyInstanceGroupsInput to be of type 'table'")
	if struct["ClusterId"] then M.AssertClusterId(struct["ClusterId"]) end
	if struct["InstanceGroups"] then M.AssertInstanceGroupModifyConfigList(struct["InstanceGroups"]) end
	for k,_ in pairs(struct) do
		assert(ModifyInstanceGroupsInput_keys[k], "ModifyInstanceGroupsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyInstanceGroupsInput
-- &lt;p&gt;Change the size of some instance groups.&lt;/p&gt;
-- @param ClusterId [ClusterId] &lt;p&gt;The ID of the cluster to which the instance group belongs.&lt;/p&gt;
-- @param InstanceGroups [InstanceGroupModifyConfigList] &lt;p&gt;Instance groups to change.&lt;/p&gt;
function M.ModifyInstanceGroupsInput(ClusterId, InstanceGroups, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyInstanceGroupsInput")
	local t = { 
		["ClusterId"] = ClusterId,
		["InstanceGroups"] = InstanceGroups,
	}
	M.AssertModifyInstanceGroupsInput(t)
	return t
end

local DescribeJobFlowsOutput_keys = { "JobFlows" = true, nil }

function M.AssertDescribeJobFlowsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeJobFlowsOutput to be of type 'table'")
	if struct["JobFlows"] then M.AssertJobFlowDetailList(struct["JobFlows"]) end
	for k,_ in pairs(struct) do
		assert(DescribeJobFlowsOutput_keys[k], "DescribeJobFlowsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeJobFlowsOutput
-- &lt;p&gt; The output for the &lt;a&gt;DescribeJobFlows&lt;/a&gt; operation. &lt;/p&gt;
-- @param JobFlows [JobFlowDetailList] &lt;p&gt;A list of job flows matching the parameters supplied.&lt;/p&gt;
function M.DescribeJobFlowsOutput(JobFlows, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeJobFlowsOutput")
	local t = { 
		["JobFlows"] = JobFlows,
	}
	M.AssertDescribeJobFlowsOutput(t)
	return t
end

local StepTimeline_keys = { "EndDateTime" = true, "CreationDateTime" = true, "StartDateTime" = true, nil }

function M.AssertStepTimeline(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StepTimeline to be of type 'table'")
	if struct["EndDateTime"] then M.AssertDate(struct["EndDateTime"]) end
	if struct["CreationDateTime"] then M.AssertDate(struct["CreationDateTime"]) end
	if struct["StartDateTime"] then M.AssertDate(struct["StartDateTime"]) end
	for k,_ in pairs(struct) do
		assert(StepTimeline_keys[k], "StepTimeline contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StepTimeline
-- &lt;p&gt;The timeline of the cluster step lifecycle.&lt;/p&gt;
-- @param EndDateTime [Date] &lt;p&gt;The date and time when the cluster step execution completed or failed.&lt;/p&gt;
-- @param CreationDateTime [Date] &lt;p&gt;The date and time when the cluster step was created.&lt;/p&gt;
-- @param StartDateTime [Date] &lt;p&gt;The date and time when the cluster step execution started.&lt;/p&gt;
function M.StepTimeline(EndDateTime, CreationDateTime, StartDateTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StepTimeline")
	local t = { 
		["EndDateTime"] = EndDateTime,
		["CreationDateTime"] = CreationDateTime,
		["StartDateTime"] = StartDateTime,
	}
	M.AssertStepTimeline(t)
	return t
end

local Step_keys = { "Status" = true, "Config" = true, "Id" = true, "ActionOnFailure" = true, "Name" = true, nil }

function M.AssertStep(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Step to be of type 'table'")
	if struct["Status"] then M.AssertStepStatus(struct["Status"]) end
	if struct["Config"] then M.AssertHadoopStepConfig(struct["Config"]) end
	if struct["Id"] then M.AssertStepId(struct["Id"]) end
	if struct["ActionOnFailure"] then M.AssertActionOnFailure(struct["ActionOnFailure"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(Step_keys[k], "Step contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Step
-- &lt;p&gt;This represents a step in a cluster.&lt;/p&gt;
-- @param Status [StepStatus] &lt;p&gt;The current execution status details of the cluster step.&lt;/p&gt;
-- @param Config [HadoopStepConfig] &lt;p&gt;The Hadoop job configuration of the cluster step.&lt;/p&gt;
-- @param Id [StepId] &lt;p&gt;The identifier of the cluster step.&lt;/p&gt;
-- @param ActionOnFailure [ActionOnFailure] &lt;p&gt;This specifies what action to take when the cluster step fails. Possible values are TERMINATE_CLUSTER, CANCEL_AND_WAIT, and CONTINUE.&lt;/p&gt;
-- @param Name [String] &lt;p&gt;The name of the cluster step.&lt;/p&gt;
function M.Step(Status, Config, Id, ActionOnFailure, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Step")
	local t = { 
		["Status"] = Status,
		["Config"] = Config,
		["Id"] = Id,
		["ActionOnFailure"] = ActionOnFailure,
		["Name"] = Name,
	}
	M.AssertStep(t)
	return t
end

local KeyValue_keys = { "Value" = true, "Key" = true, nil }

function M.AssertKeyValue(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KeyValue to be of type 'table'")
	if struct["Value"] then M.AssertXmlString(struct["Value"]) end
	if struct["Key"] then M.AssertXmlString(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(KeyValue_keys[k], "KeyValue contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KeyValue
-- &lt;p&gt;A key value pair.&lt;/p&gt;
-- @param Value [XmlString] &lt;p&gt;The value part of the identified key.&lt;/p&gt;
-- @param Key [XmlString] &lt;p&gt;The unique identifier of a key value pair.&lt;/p&gt;
function M.KeyValue(Value, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KeyValue")
	local t = { 
		["Value"] = Value,
		["Key"] = Key,
	}
	M.AssertKeyValue(t)
	return t
end

local ClusterStateChangeReason_keys = { "Message" = true, "Code" = true, nil }

function M.AssertClusterStateChangeReason(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterStateChangeReason to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	if struct["Code"] then M.AssertClusterStateChangeReasonCode(struct["Code"]) end
	for k,_ in pairs(struct) do
		assert(ClusterStateChangeReason_keys[k], "ClusterStateChangeReason contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterStateChangeReason
-- &lt;p&gt;The reason that the cluster changed to its current state.&lt;/p&gt;
-- @param Message [String] &lt;p&gt;The descriptive message for the state change reason.&lt;/p&gt;
-- @param Code [ClusterStateChangeReasonCode] &lt;p&gt;The programmatic code for the state change reason.&lt;/p&gt;
function M.ClusterStateChangeReason(Message, Code, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterStateChangeReason")
	local t = { 
		["Message"] = Message,
		["Code"] = Code,
	}
	M.AssertClusterStateChangeReason(t)
	return t
end

local InstanceStateChangeReason_keys = { "Message" = true, "Code" = true, nil }

function M.AssertInstanceStateChangeReason(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceStateChangeReason to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	if struct["Code"] then M.AssertInstanceStateChangeReasonCode(struct["Code"]) end
	for k,_ in pairs(struct) do
		assert(InstanceStateChangeReason_keys[k], "InstanceStateChangeReason contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceStateChangeReason
-- &lt;p&gt;The details of the status change reason for the instance.&lt;/p&gt;
-- @param Message [String] &lt;p&gt;The status change reason description.&lt;/p&gt;
-- @param Code [InstanceStateChangeReasonCode] &lt;p&gt;The programmable code for the state change reason.&lt;/p&gt;
function M.InstanceStateChangeReason(Message, Code, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceStateChangeReason")
	local t = { 
		["Message"] = Message,
		["Code"] = Code,
	}
	M.AssertInstanceStateChangeReason(t)
	return t
end

local Ec2InstanceAttributes_keys = { "ServiceAccessSecurityGroup" = true, "EmrManagedMasterSecurityGroup" = true, "RequestedEc2AvailabilityZones" = true, "AdditionalSlaveSecurityGroups" = true, "AdditionalMasterSecurityGroups" = true, "RequestedEc2SubnetIds" = true, "Ec2SubnetId" = true, "IamInstanceProfile" = true, "Ec2KeyName" = true, "Ec2AvailabilityZone" = true, "EmrManagedSlaveSecurityGroup" = true, nil }

function M.AssertEc2InstanceAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Ec2InstanceAttributes to be of type 'table'")
	if struct["ServiceAccessSecurityGroup"] then M.AssertString(struct["ServiceAccessSecurityGroup"]) end
	if struct["EmrManagedMasterSecurityGroup"] then M.AssertString(struct["EmrManagedMasterSecurityGroup"]) end
	if struct["RequestedEc2AvailabilityZones"] then M.AssertXmlStringMaxLen256List(struct["RequestedEc2AvailabilityZones"]) end
	if struct["AdditionalSlaveSecurityGroups"] then M.AssertStringList(struct["AdditionalSlaveSecurityGroups"]) end
	if struct["AdditionalMasterSecurityGroups"] then M.AssertStringList(struct["AdditionalMasterSecurityGroups"]) end
	if struct["RequestedEc2SubnetIds"] then M.AssertXmlStringMaxLen256List(struct["RequestedEc2SubnetIds"]) end
	if struct["Ec2SubnetId"] then M.AssertString(struct["Ec2SubnetId"]) end
	if struct["IamInstanceProfile"] then M.AssertString(struct["IamInstanceProfile"]) end
	if struct["Ec2KeyName"] then M.AssertString(struct["Ec2KeyName"]) end
	if struct["Ec2AvailabilityZone"] then M.AssertString(struct["Ec2AvailabilityZone"]) end
	if struct["EmrManagedSlaveSecurityGroup"] then M.AssertString(struct["EmrManagedSlaveSecurityGroup"]) end
	for k,_ in pairs(struct) do
		assert(Ec2InstanceAttributes_keys[k], "Ec2InstanceAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Ec2InstanceAttributes
-- &lt;p&gt;Provides information about the EC2 instances in a cluster grouped by category. For example, key name, subnet ID, IAM instance profile, and so on.&lt;/p&gt;
-- @param ServiceAccessSecurityGroup [String] &lt;p&gt;The identifier of the Amazon EC2 security group for the Amazon EMR service to access clusters in VPC private subnets.&lt;/p&gt;
-- @param EmrManagedMasterSecurityGroup [String] &lt;p&gt;The identifier of the Amazon EC2 security group for the master node.&lt;/p&gt;
-- @param RequestedEc2AvailabilityZones [XmlStringMaxLen256List] &lt;p&gt;Applies to clusters configured with the The list of availability zones to choose from. The service will choose the availability zone with the best mix of available capacity and lowest cost to launch the cluster. If you do not specify this value, the cluster is launched in any availability zone that the customer account has access to.&lt;/p&gt;
-- @param AdditionalSlaveSecurityGroups [StringList] &lt;p&gt;A list of additional Amazon EC2 security group IDs for the slave nodes.&lt;/p&gt;
-- @param AdditionalMasterSecurityGroups [StringList] &lt;p&gt;A list of additional Amazon EC2 security group IDs for the master node.&lt;/p&gt;
-- @param RequestedEc2SubnetIds [XmlStringMaxLen256List] &lt;p&gt;Applies to clusters configured with the instance fleets option. Specifies the unique identifier of one or more Amazon EC2 subnets in which to launch EC2 cluster instances. Amazon EMR chooses the EC2 subnet with the best performance and cost characteristics from among the list of RequestedEc2SubnetIds and launches all cluster instances within that subnet. If this value is not specified, and the account supports EC2-Classic networks, the cluster launches instances in the EC2-Classic network and uses Requested&lt;/p&gt;
-- @param Ec2SubnetId [String] &lt;p&gt;To launch the cluster in Amazon VPC, set this parameter to the identifier of the Amazon VPC subnet where you want the cluster to launch. If you do not specify this value, the cluster is launched in the normal AWS cloud, outside of a VPC.&lt;/p&gt; &lt;p&gt;Amazon VPC currently does not support cluster compute quadruple extra large (cc1.4xlarge) instances. Thus, you cannot specify the cc1.4xlarge instance type for nodes of a cluster launched in a VPC.&lt;/p&gt;
-- @param IamInstanceProfile [String] &lt;p&gt;The IAM role that was specified when the cluster was launched. The EC2 instances of the cluster assume this role.&lt;/p&gt;
-- @param Ec2KeyName [String] &lt;p&gt;The name of the Amazon EC2 key pair to use when connecting with SSH into the master node as a user named &quot;hadoop&quot;.&lt;/p&gt;
-- @param Ec2AvailabilityZone [String] &lt;p&gt;The Availability Zone in which the cluster will run. &lt;/p&gt;
-- @param EmrManagedSlaveSecurityGroup [String] &lt;p&gt;The identifier of the Amazon EC2 security group for the slave nodes.&lt;/p&gt;
function M.Ec2InstanceAttributes(ServiceAccessSecurityGroup, EmrManagedMasterSecurityGroup, RequestedEc2AvailabilityZones, AdditionalSlaveSecurityGroups, AdditionalMasterSecurityGroups, RequestedEc2SubnetIds, Ec2SubnetId, IamInstanceProfile, Ec2KeyName, Ec2AvailabilityZone, EmrManagedSlaveSecurityGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Ec2InstanceAttributes")
	local t = { 
		["ServiceAccessSecurityGroup"] = ServiceAccessSecurityGroup,
		["EmrManagedMasterSecurityGroup"] = EmrManagedMasterSecurityGroup,
		["RequestedEc2AvailabilityZones"] = RequestedEc2AvailabilityZones,
		["AdditionalSlaveSecurityGroups"] = AdditionalSlaveSecurityGroups,
		["AdditionalMasterSecurityGroups"] = AdditionalMasterSecurityGroups,
		["RequestedEc2SubnetIds"] = RequestedEc2SubnetIds,
		["Ec2SubnetId"] = Ec2SubnetId,
		["IamInstanceProfile"] = IamInstanceProfile,
		["Ec2KeyName"] = Ec2KeyName,
		["Ec2AvailabilityZone"] = Ec2AvailabilityZone,
		["EmrManagedSlaveSecurityGroup"] = EmrManagedSlaveSecurityGroup,
	}
	M.AssertEc2InstanceAttributes(t)
	return t
end

local InstanceFleet_keys = { "Status" = true, "ProvisionedSpotCapacity" = true, "Name" = true, "InstanceFleetType" = true, "LaunchSpecifications" = true, "TargetSpotCapacity" = true, "ProvisionedOnDemandCapacity" = true, "InstanceTypeSpecifications" = true, "Id" = true, "TargetOnDemandCapacity" = true, nil }

function M.AssertInstanceFleet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceFleet to be of type 'table'")
	if struct["Status"] then M.AssertInstanceFleetStatus(struct["Status"]) end
	if struct["ProvisionedSpotCapacity"] then M.AssertWholeNumber(struct["ProvisionedSpotCapacity"]) end
	if struct["Name"] then M.AssertXmlStringMaxLen256(struct["Name"]) end
	if struct["InstanceFleetType"] then M.AssertInstanceFleetType(struct["InstanceFleetType"]) end
	if struct["LaunchSpecifications"] then M.AssertInstanceFleetProvisioningSpecifications(struct["LaunchSpecifications"]) end
	if struct["TargetSpotCapacity"] then M.AssertWholeNumber(struct["TargetSpotCapacity"]) end
	if struct["ProvisionedOnDemandCapacity"] then M.AssertWholeNumber(struct["ProvisionedOnDemandCapacity"]) end
	if struct["InstanceTypeSpecifications"] then M.AssertInstanceTypeSpecificationList(struct["InstanceTypeSpecifications"]) end
	if struct["Id"] then M.AssertInstanceFleetId(struct["Id"]) end
	if struct["TargetOnDemandCapacity"] then M.AssertWholeNumber(struct["TargetOnDemandCapacity"]) end
	for k,_ in pairs(struct) do
		assert(InstanceFleet_keys[k], "InstanceFleet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceFleet
-- &lt;p&gt;Describes an instance fleet, which is a group of EC2 instances that host a particular node type (master, core, or task) in an Amazon EMR cluster. Instance fleets can consist of a mix of instance types and On-Demand and Spot instances, which are provisioned to meet a defined target capacity. &lt;/p&gt; &lt;note&gt; &lt;p&gt;The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.&lt;/p&gt; &lt;/note&gt;
-- @param Status [InstanceFleetStatus] &lt;p&gt;The current status of the instance fleet. &lt;/p&gt;
-- @param ProvisionedSpotCapacity [WholeNumber] &lt;p&gt;The number of Spot units that have been provisioned for this instance fleet to fulfill &lt;code&gt;TargetSpotCapacity&lt;/code&gt;. This provisioned capacity might be less than or greater than &lt;code&gt;TargetSpotCapacity&lt;/code&gt;.&lt;/p&gt;
-- @param Name [XmlStringMaxLen256] &lt;p&gt;A friendly name for the instance fleet.&lt;/p&gt;
-- @param InstanceFleetType [InstanceFleetType] &lt;p&gt;The node type that the instance fleet hosts. Valid values are MASTER, CORE, or TASK. &lt;/p&gt;
-- @param LaunchSpecifications [InstanceFleetProvisioningSpecifications] &lt;p&gt;Describes the launch specification for an instance fleet. &lt;/p&gt;
-- @param TargetSpotCapacity [WholeNumber] &lt;p&gt;The target capacity of Spot units for the instance fleet, which determines how many Spot instances to provision. When the instance fleet launches, Amazon EMR tries to provision Spot instances as specified by &lt;a&gt;InstanceTypeConfig&lt;/a&gt;. Each instance configuration has a specified &lt;code&gt;WeightedCapacity&lt;/code&gt;. When a Spot instance is provisioned, the &lt;code&gt;WeightedCapacity&lt;/code&gt; units count toward the target capacity. Amazon EMR provisions instances until the target capacity is totally fulfilled, even if this results in an overage. For example, if there are 2 units remaining to fulfill capacity, and Amazon EMR can only provision an instance with a &lt;code&gt;WeightedCapacity&lt;/code&gt; of 5 units, the instance is provisioned, and the target capacity is exceeded by 3 units. You can use &lt;a&gt;InstanceFleet$ProvisionedSpotCapacity&lt;/a&gt; to determine the Spot capacity units that have been provisioned for the instance fleet.&lt;/p&gt; &lt;note&gt; &lt;p&gt;If not specified or set to 0, only On-Demand instances are provisioned for the instance fleet. At least one of &lt;code&gt;TargetSpotCapacity&lt;/code&gt; and &lt;code&gt;TargetOnDemandCapacity&lt;/code&gt; should be greater than 0. For a master instance fleet, only one of &lt;code&gt;TargetSpotCapacity&lt;/code&gt; and &lt;code&gt;TargetOnDemandCapacity&lt;/code&gt; can be specified, and its value must be 1.&lt;/p&gt; &lt;/note&gt;
-- @param ProvisionedOnDemandCapacity [WholeNumber] &lt;p&gt;The number of On-Demand units that have been provisioned for the instance fleet to fulfill &lt;code&gt;TargetOnDemandCapacity&lt;/code&gt;. This provisioned capacity might be less than or greater than &lt;code&gt;TargetOnDemandCapacity&lt;/code&gt;.&lt;/p&gt;
-- @param InstanceTypeSpecifications [InstanceTypeSpecificationList] &lt;p&gt;The specification for the instance types that comprise an instance fleet. Up to five unique instance specifications may be defined for each instance fleet. &lt;/p&gt;
-- @param Id [InstanceFleetId] &lt;p&gt;The unique identifier of the instance fleet.&lt;/p&gt;
-- @param TargetOnDemandCapacity [WholeNumber] &lt;p&gt;The target capacity of On-Demand units for the instance fleet, which determines how many On-Demand instances to provision. When the instance fleet launches, Amazon EMR tries to provision On-Demand instances as specified by &lt;a&gt;InstanceTypeConfig&lt;/a&gt;. Each instance configuration has a specified &lt;code&gt;WeightedCapacity&lt;/code&gt;. When an On-Demand instance is provisioned, the &lt;code&gt;WeightedCapacity&lt;/code&gt; units count toward the target capacity. Amazon EMR provisions instances until the target capacity is totally fulfilled, even if this results in an overage. For example, if there are 2 units remaining to fulfill capacity, and Amazon EMR can only provision an instance with a &lt;code&gt;WeightedCapacity&lt;/code&gt; of 5 units, the instance is provisioned, and the target capacity is exceeded by 3 units. You can use &lt;a&gt;InstanceFleet$ProvisionedOnDemandCapacity&lt;/a&gt; to determine the Spot capacity units that have been provisioned for the instance fleet.&lt;/p&gt; &lt;note&gt; &lt;p&gt;If not specified or set to 0, only Spot instances are provisioned for the instance fleet using &lt;code&gt;TargetSpotCapacity&lt;/code&gt;. At least one of &lt;code&gt;TargetSpotCapacity&lt;/code&gt; and &lt;code&gt;TargetOnDemandCapacity&lt;/code&gt; should be greater than 0. For a master instance fleet, only one of &lt;code&gt;TargetSpotCapacity&lt;/code&gt; and &lt;code&gt;TargetOnDemandCapacity&lt;/code&gt; can be specified, and its value must be 1.&lt;/p&gt; &lt;/note&gt;
function M.InstanceFleet(Status, ProvisionedSpotCapacity, Name, InstanceFleetType, LaunchSpecifications, TargetSpotCapacity, ProvisionedOnDemandCapacity, InstanceTypeSpecifications, Id, TargetOnDemandCapacity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceFleet")
	local t = { 
		["Status"] = Status,
		["ProvisionedSpotCapacity"] = ProvisionedSpotCapacity,
		["Name"] = Name,
		["InstanceFleetType"] = InstanceFleetType,
		["LaunchSpecifications"] = LaunchSpecifications,
		["TargetSpotCapacity"] = TargetSpotCapacity,
		["ProvisionedOnDemandCapacity"] = ProvisionedOnDemandCapacity,
		["InstanceTypeSpecifications"] = InstanceTypeSpecifications,
		["Id"] = Id,
		["TargetOnDemandCapacity"] = TargetOnDemandCapacity,
	}
	M.AssertInstanceFleet(t)
	return t
end

local InstanceGroupStateChangeReason_keys = { "Message" = true, "Code" = true, nil }

function M.AssertInstanceGroupStateChangeReason(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceGroupStateChangeReason to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	if struct["Code"] then M.AssertInstanceGroupStateChangeReasonCode(struct["Code"]) end
	for k,_ in pairs(struct) do
		assert(InstanceGroupStateChangeReason_keys[k], "InstanceGroupStateChangeReason contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceGroupStateChangeReason
-- &lt;p&gt;The status change reason details for the instance group.&lt;/p&gt;
-- @param Message [String] &lt;p&gt;The status change reason description.&lt;/p&gt;
-- @param Code [InstanceGroupStateChangeReasonCode] &lt;p&gt;The programmable code for the state change reason.&lt;/p&gt;
function M.InstanceGroupStateChangeReason(Message, Code, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceGroupStateChangeReason")
	local t = { 
		["Message"] = Message,
		["Code"] = Code,
	}
	M.AssertInstanceGroupStateChangeReason(t)
	return t
end

local ShrinkPolicy_keys = { "DecommissionTimeout" = true, "InstanceResizePolicy" = true, nil }

function M.AssertShrinkPolicy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ShrinkPolicy to be of type 'table'")
	if struct["DecommissionTimeout"] then M.AssertInteger(struct["DecommissionTimeout"]) end
	if struct["InstanceResizePolicy"] then M.AssertInstanceResizePolicy(struct["InstanceResizePolicy"]) end
	for k,_ in pairs(struct) do
		assert(ShrinkPolicy_keys[k], "ShrinkPolicy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ShrinkPolicy
-- &lt;p&gt;Policy for customizing shrink operations. Allows configuration of decommissioning timeout and targeted instance shrinking.&lt;/p&gt;
-- @param DecommissionTimeout [Integer] &lt;p&gt;The desired timeout for decommissioning an instance. Overrides the default YARN decommissioning timeout.&lt;/p&gt;
-- @param InstanceResizePolicy [InstanceResizePolicy] &lt;p&gt;Custom policy for requesting termination protection or termination of specific instances when shrinking an instance group.&lt;/p&gt;
function M.ShrinkPolicy(DecommissionTimeout, InstanceResizePolicy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ShrinkPolicy")
	local t = { 
		["DecommissionTimeout"] = DecommissionTimeout,
		["InstanceResizePolicy"] = InstanceResizePolicy,
	}
	M.AssertShrinkPolicy(t)
	return t
end

local InstanceTypeConfig_keys = { "WeightedCapacity" = true, "EbsConfiguration" = true, "BidPrice" = true, "BidPriceAsPercentageOfOnDemandPrice" = true, "InstanceType" = true, "Configurations" = true, nil }

function M.AssertInstanceTypeConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceTypeConfig to be of type 'table'")
	assert(struct["InstanceType"], "Expected key InstanceType to exist in table")
	if struct["WeightedCapacity"] then M.AssertWholeNumber(struct["WeightedCapacity"]) end
	if struct["EbsConfiguration"] then M.AssertEbsConfiguration(struct["EbsConfiguration"]) end
	if struct["BidPrice"] then M.AssertXmlStringMaxLen256(struct["BidPrice"]) end
	if struct["BidPriceAsPercentageOfOnDemandPrice"] then M.AssertNonNegativeDouble(struct["BidPriceAsPercentageOfOnDemandPrice"]) end
	if struct["InstanceType"] then M.AssertInstanceType(struct["InstanceType"]) end
	if struct["Configurations"] then M.AssertConfigurationList(struct["Configurations"]) end
	for k,_ in pairs(struct) do
		assert(InstanceTypeConfig_keys[k], "InstanceTypeConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceTypeConfig
-- &lt;p&gt;An instance type configuration for each instance type in an instance fleet, which determines the EC2 instances Amazon EMR attempts to provision to fulfill On-Demand and Spot target capacities. There can be a maximum of 5 instance type configurations in a fleet.&lt;/p&gt; &lt;note&gt; &lt;p&gt;The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.&lt;/p&gt; &lt;/note&gt;
-- @param WeightedCapacity [WholeNumber] &lt;p&gt;The number of units that a provisioned instance of this type provides toward fulfilling the target capacities defined in &lt;a&gt;InstanceFleetConfig&lt;/a&gt;. This value is 1 for a master instance fleet, and must be greater than 0 for core and task instance fleets. &lt;/p&gt;
-- @param EbsConfiguration [EbsConfiguration] &lt;p&gt;The configuration of Amazon Elastic Block Storage (EBS) attached to each instance as defined by &lt;code&gt;InstanceType&lt;/code&gt;. &lt;/p&gt;
-- @param BidPrice [XmlStringMaxLen256] &lt;p&gt;The bid price for each EC2 Spot instance type as defined by &lt;code&gt;InstanceType&lt;/code&gt;. Expressed in USD. If neither &lt;code&gt;BidPrice&lt;/code&gt; nor &lt;code&gt;BidPriceAsPercentageOfOnDemandPrice&lt;/code&gt; is provided, &lt;code&gt;BidPriceAsPercentageOfOnDemandPrice&lt;/code&gt; defaults to 100%. &lt;/p&gt;
-- @param BidPriceAsPercentageOfOnDemandPrice [NonNegativeDouble] &lt;p&gt;The bid price, as a percentage of On-Demand price, for each EC2 Spot instance as defined by &lt;code&gt;InstanceType&lt;/code&gt;. Expressed as a number between 0 and 1000 (for example, 20 specifies 20%). If neither &lt;code&gt;BidPrice&lt;/code&gt; nor &lt;code&gt;BidPriceAsPercentageOfOnDemandPrice&lt;/code&gt; is provided, &lt;code&gt;BidPriceAsPercentageOfOnDemandPrice&lt;/code&gt; defaults to 100%.&lt;/p&gt;
-- @param InstanceType [InstanceType] &lt;p&gt;An EC2 instance type, such as &lt;code&gt;m3.xlarge&lt;/code&gt;. &lt;/p&gt;
-- @param Configurations [ConfigurationList] &lt;p&gt;A configuration classification that applies when provisioning cluster instances, which can include configurations for applications and software that run on the cluster.&lt;/p&gt;
-- Required parameter: InstanceType
function M.InstanceTypeConfig(WeightedCapacity, EbsConfiguration, BidPrice, BidPriceAsPercentageOfOnDemandPrice, InstanceType, Configurations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceTypeConfig")
	local t = { 
		["WeightedCapacity"] = WeightedCapacity,
		["EbsConfiguration"] = EbsConfiguration,
		["BidPrice"] = BidPrice,
		["BidPriceAsPercentageOfOnDemandPrice"] = BidPriceAsPercentageOfOnDemandPrice,
		["InstanceType"] = InstanceType,
		["Configurations"] = Configurations,
	}
	M.AssertInstanceTypeConfig(t)
	return t
end

local AutoScalingPolicyStatus_keys = { "State" = true, "StateChangeReason" = true, nil }

function M.AssertAutoScalingPolicyStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AutoScalingPolicyStatus to be of type 'table'")
	if struct["State"] then M.AssertAutoScalingPolicyState(struct["State"]) end
	if struct["StateChangeReason"] then M.AssertAutoScalingPolicyStateChangeReason(struct["StateChangeReason"]) end
	for k,_ in pairs(struct) do
		assert(AutoScalingPolicyStatus_keys[k], "AutoScalingPolicyStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AutoScalingPolicyStatus
-- &lt;p&gt;The status of an automatic scaling policy. &lt;/p&gt;
-- @param State [AutoScalingPolicyState] &lt;p&gt;Indicates the status of the automatic scaling policy.&lt;/p&gt;
-- @param StateChangeReason [AutoScalingPolicyStateChangeReason] &lt;p&gt;The reason for a change in status.&lt;/p&gt;
function M.AutoScalingPolicyStatus(State, StateChangeReason, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AutoScalingPolicyStatus")
	local t = { 
		["State"] = State,
		["StateChangeReason"] = StateChangeReason,
	}
	M.AssertAutoScalingPolicyStatus(t)
	return t
end

local CreateSecurityConfigurationOutput_keys = { "CreationDateTime" = true, "Name" = true, nil }

function M.AssertCreateSecurityConfigurationOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSecurityConfigurationOutput to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["CreationDateTime"], "Expected key CreationDateTime to exist in table")
	if struct["CreationDateTime"] then M.AssertDate(struct["CreationDateTime"]) end
	if struct["Name"] then M.AssertXmlString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(CreateSecurityConfigurationOutput_keys[k], "CreateSecurityConfigurationOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSecurityConfigurationOutput
--  
-- @param CreationDateTime [Date] &lt;p&gt;The date and time the security configuration was created.&lt;/p&gt;
-- @param Name [XmlString] &lt;p&gt;The name of the security configuration.&lt;/p&gt;
-- Required parameter: Name
-- Required parameter: CreationDateTime
function M.CreateSecurityConfigurationOutput(CreationDateTime, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateSecurityConfigurationOutput")
	local t = { 
		["CreationDateTime"] = CreationDateTime,
		["Name"] = Name,
	}
	M.AssertCreateSecurityConfigurationOutput(t)
	return t
end

local InternalServerError_keys = { nil }

function M.AssertInternalServerError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalServerError to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InternalServerError_keys[k], "InternalServerError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalServerError
-- &lt;p&gt;Indicates that an error occurred while processing the request and that the request was not completed.&lt;/p&gt;
function M.InternalServerError(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalServerError")
	local t = { 
	}
	M.AssertInternalServerError(t)
	return t
end

local DescribeStepOutput_keys = { "Step" = true, nil }

function M.AssertDescribeStepOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStepOutput to be of type 'table'")
	if struct["Step"] then M.AssertStep(struct["Step"]) end
	for k,_ in pairs(struct) do
		assert(DescribeStepOutput_keys[k], "DescribeStepOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStepOutput
-- &lt;p&gt;This output contains the description of the cluster step.&lt;/p&gt;
-- @param Step [Step] &lt;p&gt;The step details for the requested step identifier.&lt;/p&gt;
function M.DescribeStepOutput(Step, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeStepOutput")
	local t = { 
		["Step"] = Step,
	}
	M.AssertDescribeStepOutput(t)
	return t
end

local ListSecurityConfigurationsInput_keys = { "Marker" = true, nil }

function M.AssertListSecurityConfigurationsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSecurityConfigurationsInput to be of type 'table'")
	if struct["Marker"] then M.AssertMarker(struct["Marker"]) end
	for k,_ in pairs(struct) do
		assert(ListSecurityConfigurationsInput_keys[k], "ListSecurityConfigurationsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSecurityConfigurationsInput
--  
-- @param Marker [Marker] &lt;p&gt;The pagination token that indicates the set of results to retrieve.&lt;/p&gt;
function M.ListSecurityConfigurationsInput(Marker, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListSecurityConfigurationsInput")
	local t = { 
		["Marker"] = Marker,
	}
	M.AssertListSecurityConfigurationsInput(t)
	return t
end

local ClusterTimeline_keys = { "ReadyDateTime" = true, "CreationDateTime" = true, "EndDateTime" = true, nil }

function M.AssertClusterTimeline(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterTimeline to be of type 'table'")
	if struct["ReadyDateTime"] then M.AssertDate(struct["ReadyDateTime"]) end
	if struct["CreationDateTime"] then M.AssertDate(struct["CreationDateTime"]) end
	if struct["EndDateTime"] then M.AssertDate(struct["EndDateTime"]) end
	for k,_ in pairs(struct) do
		assert(ClusterTimeline_keys[k], "ClusterTimeline contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterTimeline
-- &lt;p&gt;Represents the timeline of the cluster's lifecycle.&lt;/p&gt;
-- @param ReadyDateTime [Date] &lt;p&gt;The date and time when the cluster was ready to execute steps.&lt;/p&gt;
-- @param CreationDateTime [Date] &lt;p&gt;The creation date and time of the cluster.&lt;/p&gt;
-- @param EndDateTime [Date] &lt;p&gt;The date and time when the cluster was terminated.&lt;/p&gt;
function M.ClusterTimeline(ReadyDateTime, CreationDateTime, EndDateTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterTimeline")
	local t = { 
		["ReadyDateTime"] = ReadyDateTime,
		["CreationDateTime"] = CreationDateTime,
		["EndDateTime"] = EndDateTime,
	}
	M.AssertClusterTimeline(t)
	return t
end

local Tag_keys = { "Value" = true, "Key" = true, nil }

function M.AssertTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tag to be of type 'table'")
	if struct["Value"] then M.AssertString(struct["Value"]) end
	if struct["Key"] then M.AssertString(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(Tag_keys[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- &lt;p&gt;A key/value pair containing user-defined metadata that you can associate with an Amazon EMR resource. Tags make it easier to associate clusters in various ways, such as grouping clusters to track your Amazon EMR resource allocation costs. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/ElasticMapReduce/latest/DeveloperGuide/emr-plan-tags.html&quot;&gt;Tagging Amazon EMR Resources&lt;/a&gt;. &lt;/p&gt;
-- @param Value [String] &lt;p&gt;A user-defined value, which is optional in a tag. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/ElasticMapReduce/latest/DeveloperGuide/emr-plan-tags.html&quot;&gt;Tagging Amazon EMR Resources&lt;/a&gt;. &lt;/p&gt;
-- @param Key [String] &lt;p&gt;A user-defined key, which is the minimum required information for a valid tag. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/ElasticMapReduce/latest/DeveloperGuide/emr-plan-tags.html&quot;&gt;Tagging Amazon EMR Resources&lt;/a&gt;. &lt;/p&gt;
function M.Tag(Value, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tag")
	local t = { 
		["Value"] = Value,
		["Key"] = Key,
	}
	M.AssertTag(t)
	return t
end

local ListInstanceGroupsInput_keys = { "Marker" = true, "ClusterId" = true, nil }

function M.AssertListInstanceGroupsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListInstanceGroupsInput to be of type 'table'")
	assert(struct["ClusterId"], "Expected key ClusterId to exist in table")
	if struct["Marker"] then M.AssertMarker(struct["Marker"]) end
	if struct["ClusterId"] then M.AssertClusterId(struct["ClusterId"]) end
	for k,_ in pairs(struct) do
		assert(ListInstanceGroupsInput_keys[k], "ListInstanceGroupsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListInstanceGroupsInput
-- &lt;p&gt;This input determines which instance groups to retrieve.&lt;/p&gt;
-- @param Marker [Marker] &lt;p&gt;The pagination token that indicates the next set of results to retrieve.&lt;/p&gt;
-- @param ClusterId [ClusterId] &lt;p&gt;The identifier of the cluster for which to list the instance groups.&lt;/p&gt;
-- Required parameter: ClusterId
function M.ListInstanceGroupsInput(Marker, ClusterId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListInstanceGroupsInput")
	local t = { 
		["Marker"] = Marker,
		["ClusterId"] = ClusterId,
	}
	M.AssertListInstanceGroupsInput(t)
	return t
end

local InstanceFleetModifyConfig_keys = { "TargetOnDemandCapacity" = true, "TargetSpotCapacity" = true, "InstanceFleetId" = true, nil }

function M.AssertInstanceFleetModifyConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceFleetModifyConfig to be of type 'table'")
	assert(struct["InstanceFleetId"], "Expected key InstanceFleetId to exist in table")
	if struct["TargetOnDemandCapacity"] then M.AssertWholeNumber(struct["TargetOnDemandCapacity"]) end
	if struct["TargetSpotCapacity"] then M.AssertWholeNumber(struct["TargetSpotCapacity"]) end
	if struct["InstanceFleetId"] then M.AssertInstanceFleetId(struct["InstanceFleetId"]) end
	for k,_ in pairs(struct) do
		assert(InstanceFleetModifyConfig_keys[k], "InstanceFleetModifyConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceFleetModifyConfig
-- &lt;p&gt;Configuration parameters for an instance fleet modification request.&lt;/p&gt; &lt;note&gt; &lt;p&gt;The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.&lt;/p&gt; &lt;/note&gt;
-- @param TargetOnDemandCapacity [WholeNumber] &lt;p&gt;The target capacity of On-Demand units for the instance fleet. For more information see &lt;a&gt;InstanceFleetConfig$TargetOnDemandCapacity&lt;/a&gt;.&lt;/p&gt;
-- @param TargetSpotCapacity [WholeNumber] &lt;p&gt;The target capacity of Spot units for the instance fleet. For more information, see &lt;a&gt;InstanceFleetConfig$TargetSpotCapacity&lt;/a&gt;.&lt;/p&gt;
-- @param InstanceFleetId [InstanceFleetId] &lt;p&gt;A unique identifier for the instance fleet.&lt;/p&gt;
-- Required parameter: InstanceFleetId
function M.InstanceFleetModifyConfig(TargetOnDemandCapacity, TargetSpotCapacity, InstanceFleetId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceFleetModifyConfig")
	local t = { 
		["TargetOnDemandCapacity"] = TargetOnDemandCapacity,
		["TargetSpotCapacity"] = TargetSpotCapacity,
		["InstanceFleetId"] = InstanceFleetId,
	}
	M.AssertInstanceFleetModifyConfig(t)
	return t
end

local EbsBlockDevice_keys = { "Device" = true, "VolumeSpecification" = true, nil }

function M.AssertEbsBlockDevice(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EbsBlockDevice to be of type 'table'")
	if struct["Device"] then M.AssertString(struct["Device"]) end
	if struct["VolumeSpecification"] then M.AssertVolumeSpecification(struct["VolumeSpecification"]) end
	for k,_ in pairs(struct) do
		assert(EbsBlockDevice_keys[k], "EbsBlockDevice contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EbsBlockDevice
-- &lt;p&gt;Configuration of requested EBS block device associated with the instance group.&lt;/p&gt;
-- @param Device [String] &lt;p&gt;The device name that is exposed to the instance, such as /dev/sdh.&lt;/p&gt;
-- @param VolumeSpecification [VolumeSpecification] &lt;p&gt;EBS volume specifications such as volume type, IOPS, and size (GiB) that will be requested for the EBS volume attached to an EC2 instance in the cluster.&lt;/p&gt;
function M.EbsBlockDevice(Device, VolumeSpecification, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EbsBlockDevice")
	local t = { 
		["Device"] = Device,
		["VolumeSpecification"] = VolumeSpecification,
	}
	M.AssertEbsBlockDevice(t)
	return t
end

local InstanceGroupConfig_keys = { "InstanceCount" = true, "Name" = true, "InstanceRole" = true, "AutoScalingPolicy" = true, "EbsConfiguration" = true, "BidPrice" = true, "InstanceType" = true, "Market" = true, "Configurations" = true, nil }

function M.AssertInstanceGroupConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceGroupConfig to be of type 'table'")
	assert(struct["InstanceRole"], "Expected key InstanceRole to exist in table")
	assert(struct["InstanceType"], "Expected key InstanceType to exist in table")
	assert(struct["InstanceCount"], "Expected key InstanceCount to exist in table")
	if struct["InstanceCount"] then M.AssertInteger(struct["InstanceCount"]) end
	if struct["Name"] then M.AssertXmlStringMaxLen256(struct["Name"]) end
	if struct["InstanceRole"] then M.AssertInstanceRoleType(struct["InstanceRole"]) end
	if struct["AutoScalingPolicy"] then M.AssertAutoScalingPolicy(struct["AutoScalingPolicy"]) end
	if struct["EbsConfiguration"] then M.AssertEbsConfiguration(struct["EbsConfiguration"]) end
	if struct["BidPrice"] then M.AssertXmlStringMaxLen256(struct["BidPrice"]) end
	if struct["InstanceType"] then M.AssertInstanceType(struct["InstanceType"]) end
	if struct["Market"] then M.AssertMarketType(struct["Market"]) end
	if struct["Configurations"] then M.AssertConfigurationList(struct["Configurations"]) end
	for k,_ in pairs(struct) do
		assert(InstanceGroupConfig_keys[k], "InstanceGroupConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceGroupConfig
-- &lt;p&gt;Configuration defining a new instance group.&lt;/p&gt;
-- @param InstanceCount [Integer] &lt;p&gt;Target number of instances for the instance group.&lt;/p&gt;
-- @param Name [XmlStringMaxLen256] &lt;p&gt;Friendly name given to the instance group.&lt;/p&gt;
-- @param InstanceRole [InstanceRoleType] &lt;p&gt;The role of the instance group in the cluster.&lt;/p&gt;
-- @param AutoScalingPolicy [AutoScalingPolicy] &lt;p&gt;An automatic scaling policy for a core instance group or task instance group in an Amazon EMR cluster. The automatic scaling policy defines how an instance group dynamically adds and terminates EC2 instances in response to the value of a CloudWatch metric. See &lt;a&gt;PutAutoScalingPolicy&lt;/a&gt;.&lt;/p&gt;
-- @param EbsConfiguration [EbsConfiguration] &lt;p&gt;EBS configurations that will be attached to each EC2 instance in the instance group.&lt;/p&gt;
-- @param BidPrice [XmlStringMaxLen256] &lt;p&gt;Bid price for each EC2 instance in the instance group when launching nodes as Spot Instances, expressed in USD.&lt;/p&gt;
-- @param InstanceType [InstanceType] &lt;p&gt;The EC2 instance type for all instances in the instance group.&lt;/p&gt;
-- @param Market [MarketType] &lt;p&gt;Market type of the EC2 instances used to create a cluster node.&lt;/p&gt;
-- @param Configurations [ConfigurationList] &lt;note&gt; &lt;p&gt;Amazon EMR releases 4.x or later.&lt;/p&gt; &lt;/note&gt; &lt;p&gt;The list of configurations supplied for an EMR cluster instance group. You can specify a separate configuration for each instance group (master, core, and task).&lt;/p&gt;
-- Required parameter: InstanceRole
-- Required parameter: InstanceType
-- Required parameter: InstanceCount
function M.InstanceGroupConfig(InstanceCount, Name, InstanceRole, AutoScalingPolicy, EbsConfiguration, BidPrice, InstanceType, Market, Configurations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceGroupConfig")
	local t = { 
		["InstanceCount"] = InstanceCount,
		["Name"] = Name,
		["InstanceRole"] = InstanceRole,
		["AutoScalingPolicy"] = AutoScalingPolicy,
		["EbsConfiguration"] = EbsConfiguration,
		["BidPrice"] = BidPrice,
		["InstanceType"] = InstanceType,
		["Market"] = Market,
		["Configurations"] = Configurations,
	}
	M.AssertInstanceGroupConfig(t)
	return t
end

local AutoScalingPolicyDescription_keys = { "Status" = true, "Rules" = true, "Constraints" = true, nil }

function M.AssertAutoScalingPolicyDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AutoScalingPolicyDescription to be of type 'table'")
	if struct["Status"] then M.AssertAutoScalingPolicyStatus(struct["Status"]) end
	if struct["Rules"] then M.AssertScalingRuleList(struct["Rules"]) end
	if struct["Constraints"] then M.AssertScalingConstraints(struct["Constraints"]) end
	for k,_ in pairs(struct) do
		assert(AutoScalingPolicyDescription_keys[k], "AutoScalingPolicyDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AutoScalingPolicyDescription
-- &lt;p&gt;An automatic scaling policy for a core instance group or task instance group in an Amazon EMR cluster. The automatic scaling policy defines how an instance group dynamically adds and terminates EC2 instances in response to the value of a CloudWatch metric. See &lt;a&gt;PutAutoScalingPolicy&lt;/a&gt;.&lt;/p&gt;
-- @param Status [AutoScalingPolicyStatus] &lt;p&gt;The status of an automatic scaling policy. &lt;/p&gt;
-- @param Rules [ScalingRuleList] &lt;p&gt;The scale-in and scale-out rules that comprise the automatic scaling policy.&lt;/p&gt;
-- @param Constraints [ScalingConstraints] &lt;p&gt;The upper and lower EC2 instance limits for an automatic scaling policy. Automatic scaling activity will not cause an instance group to grow above or below these limits.&lt;/p&gt;
function M.AutoScalingPolicyDescription(Status, Rules, Constraints, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AutoScalingPolicyDescription")
	local t = { 
		["Status"] = Status,
		["Rules"] = Rules,
		["Constraints"] = Constraints,
	}
	M.AssertAutoScalingPolicyDescription(t)
	return t
end

local JobFlowExecutionStatusDetail_keys = { "ReadyDateTime" = true, "EndDateTime" = true, "State" = true, "StartDateTime" = true, "CreationDateTime" = true, "LastStateChangeReason" = true, nil }

function M.AssertJobFlowExecutionStatusDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobFlowExecutionStatusDetail to be of type 'table'")
	assert(struct["State"], "Expected key State to exist in table")
	assert(struct["CreationDateTime"], "Expected key CreationDateTime to exist in table")
	if struct["ReadyDateTime"] then M.AssertDate(struct["ReadyDateTime"]) end
	if struct["EndDateTime"] then M.AssertDate(struct["EndDateTime"]) end
	if struct["State"] then M.AssertJobFlowExecutionState(struct["State"]) end
	if struct["StartDateTime"] then M.AssertDate(struct["StartDateTime"]) end
	if struct["CreationDateTime"] then M.AssertDate(struct["CreationDateTime"]) end
	if struct["LastStateChangeReason"] then M.AssertXmlString(struct["LastStateChangeReason"]) end
	for k,_ in pairs(struct) do
		assert(JobFlowExecutionStatusDetail_keys[k], "JobFlowExecutionStatusDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobFlowExecutionStatusDetail
-- &lt;p&gt;Describes the status of the cluster (job flow).&lt;/p&gt;
-- @param ReadyDateTime [Date] &lt;p&gt;The date and time when the job flow was ready to start running bootstrap actions.&lt;/p&gt;
-- @param EndDateTime [Date] &lt;p&gt;The completion date and time of the job flow.&lt;/p&gt;
-- @param State [JobFlowExecutionState] &lt;p&gt;The state of the job flow.&lt;/p&gt;
-- @param StartDateTime [Date] &lt;p&gt;The start date and time of the job flow.&lt;/p&gt;
-- @param CreationDateTime [Date] &lt;p&gt;The creation date and time of the job flow.&lt;/p&gt;
-- @param LastStateChangeReason [XmlString] &lt;p&gt;Description of the job flow last changed state.&lt;/p&gt;
-- Required parameter: State
-- Required parameter: CreationDateTime
function M.JobFlowExecutionStatusDetail(ReadyDateTime, EndDateTime, State, StartDateTime, CreationDateTime, LastStateChangeReason, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating JobFlowExecutionStatusDetail")
	local t = { 
		["ReadyDateTime"] = ReadyDateTime,
		["EndDateTime"] = EndDateTime,
		["State"] = State,
		["StartDateTime"] = StartDateTime,
		["CreationDateTime"] = CreationDateTime,
		["LastStateChangeReason"] = LastStateChangeReason,
	}
	M.AssertJobFlowExecutionStatusDetail(t)
	return t
end

local Application_keys = { "Args" = true, "Version" = true, "Name" = true, "AdditionalInfo" = true, nil }

function M.AssertApplication(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Application to be of type 'table'")
	if struct["Args"] then M.AssertStringList(struct["Args"]) end
	if struct["Version"] then M.AssertString(struct["Version"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	if struct["AdditionalInfo"] then M.AssertStringMap(struct["AdditionalInfo"]) end
	for k,_ in pairs(struct) do
		assert(Application_keys[k], "Application contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Application
-- &lt;p&gt;An application is any Amazon or third-party software that you can add to the cluster. This structure contains a list of strings that indicates the software to use with the cluster and accepts a user argument list. Amazon EMR accepts and forwards the argument list to the corresponding installation script as bootstrap action argument. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/ElasticMapReduce/latest/ManagementGuide/emr-mapr.html&quot;&gt;Using the MapR Distribution for Hadoop&lt;/a&gt;. Currently supported values are:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;&quot;mapr-m3&quot; - launch the cluster using MapR M3 Edition.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;&quot;mapr-m5&quot; - launch the cluster using MapR M5 Edition.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;&quot;mapr&quot; with the user arguments specifying &quot;--edition,m3&quot; or &quot;--edition,m5&quot; - launch the cluster using MapR M3 or M5 Edition, respectively.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;note&gt; &lt;p&gt;In Amazon EMR releases 4.0 and greater, the only accepted parameter is the application name. To pass arguments to applications, you supply a configuration for each application.&lt;/p&gt; &lt;/note&gt;
-- @param Args [StringList] &lt;p&gt;Arguments for Amazon EMR to pass to the application.&lt;/p&gt;
-- @param Version [String] &lt;p&gt;The version of the application.&lt;/p&gt;
-- @param Name [String] &lt;p&gt;The name of the application.&lt;/p&gt;
-- @param AdditionalInfo [StringMap] &lt;p&gt;This option is for advanced users only. This is meta information about third-party applications that third-party vendors use for testing purposes.&lt;/p&gt;
function M.Application(Args, Version, Name, AdditionalInfo, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Application")
	local t = { 
		["Args"] = Args,
		["Version"] = Version,
		["Name"] = Name,
		["AdditionalInfo"] = AdditionalInfo,
	}
	M.AssertApplication(t)
	return t
end

local EbsConfiguration_keys = { "EbsOptimized" = true, "EbsBlockDeviceConfigs" = true, nil }

function M.AssertEbsConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EbsConfiguration to be of type 'table'")
	if struct["EbsOptimized"] then M.AssertBooleanObject(struct["EbsOptimized"]) end
	if struct["EbsBlockDeviceConfigs"] then M.AssertEbsBlockDeviceConfigList(struct["EbsBlockDeviceConfigs"]) end
	for k,_ in pairs(struct) do
		assert(EbsConfiguration_keys[k], "EbsConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EbsConfiguration
-- &lt;p&gt;The Amazon EBS configuration of a cluster instance.&lt;/p&gt;
-- @param EbsOptimized [BooleanObject] &lt;p&gt;Indicates whether an Amazon EBS volume is EBS-optimized.&lt;/p&gt;
-- @param EbsBlockDeviceConfigs [EbsBlockDeviceConfigList] &lt;p&gt;An array of Amazon EBS volume specifications attached to a cluster instance.&lt;/p&gt;
function M.EbsConfiguration(EbsOptimized, EbsBlockDeviceConfigs, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EbsConfiguration")
	local t = { 
		["EbsOptimized"] = EbsOptimized,
		["EbsBlockDeviceConfigs"] = EbsBlockDeviceConfigs,
	}
	M.AssertEbsConfiguration(t)
	return t
end

local RunJobFlowInput_keys = { "AutoScalingRole" = true, "AdditionalInfo" = true, "SecurityConfiguration" = true, "Name" = true, "ServiceRole" = true, "Applications" = true, "ReleaseLabel" = true, "Tags" = true, "BootstrapActions" = true, "Instances" = true, "JobFlowRole" = true, "Steps" = true, "ScaleDownBehavior" = true, "Configurations" = true, "VisibleToAllUsers" = true, "LogUri" = true, "AmiVersion" = true, "NewSupportedProducts" = true, "SupportedProducts" = true, nil }

function M.AssertRunJobFlowInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RunJobFlowInput to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Instances"], "Expected key Instances to exist in table")
	if struct["AutoScalingRole"] then M.AssertXmlString(struct["AutoScalingRole"]) end
	if struct["AdditionalInfo"] then M.AssertXmlString(struct["AdditionalInfo"]) end
	if struct["SecurityConfiguration"] then M.AssertXmlString(struct["SecurityConfiguration"]) end
	if struct["Name"] then M.AssertXmlStringMaxLen256(struct["Name"]) end
	if struct["ServiceRole"] then M.AssertXmlString(struct["ServiceRole"]) end
	if struct["Applications"] then M.AssertApplicationList(struct["Applications"]) end
	if struct["ReleaseLabel"] then M.AssertXmlStringMaxLen256(struct["ReleaseLabel"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	if struct["BootstrapActions"] then M.AssertBootstrapActionConfigList(struct["BootstrapActions"]) end
	if struct["Instances"] then M.AssertJobFlowInstancesConfig(struct["Instances"]) end
	if struct["JobFlowRole"] then M.AssertXmlString(struct["JobFlowRole"]) end
	if struct["Steps"] then M.AssertStepConfigList(struct["Steps"]) end
	if struct["ScaleDownBehavior"] then M.AssertScaleDownBehavior(struct["ScaleDownBehavior"]) end
	if struct["Configurations"] then M.AssertConfigurationList(struct["Configurations"]) end
	if struct["VisibleToAllUsers"] then M.AssertBoolean(struct["VisibleToAllUsers"]) end
	if struct["LogUri"] then M.AssertXmlString(struct["LogUri"]) end
	if struct["AmiVersion"] then M.AssertXmlStringMaxLen256(struct["AmiVersion"]) end
	if struct["NewSupportedProducts"] then M.AssertNewSupportedProductsList(struct["NewSupportedProducts"]) end
	if struct["SupportedProducts"] then M.AssertSupportedProductsList(struct["SupportedProducts"]) end
	for k,_ in pairs(struct) do
		assert(RunJobFlowInput_keys[k], "RunJobFlowInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RunJobFlowInput
-- &lt;p&gt; Input to the &lt;a&gt;RunJobFlow&lt;/a&gt; operation. &lt;/p&gt;
-- @param AutoScalingRole [XmlString] &lt;p&gt;An IAM role for automatic scaling policies. The default role is &lt;code&gt;EMR_AutoScaling_DefaultRole&lt;/code&gt;. The IAM role provides permissions that the automatic scaling feature requires to launch and terminate EC2 instances in an instance group.&lt;/p&gt;
-- @param AdditionalInfo [XmlString] &lt;p&gt;A JSON string for selecting additional features.&lt;/p&gt;
-- @param SecurityConfiguration [XmlString] &lt;p&gt;The name of a security configuration to apply to the cluster.&lt;/p&gt;
-- @param Name [XmlStringMaxLen256] &lt;p&gt;The name of the job flow.&lt;/p&gt;
-- @param ServiceRole [XmlString] &lt;p&gt;The IAM role that will be assumed by the Amazon EMR service to access AWS resources on your behalf.&lt;/p&gt;
-- @param Applications [ApplicationList] &lt;note&gt; &lt;p&gt;Amazon EMR releases 4.x or later.&lt;/p&gt; &lt;/note&gt; &lt;p&gt;A list of applications for the cluster. Valid values are: &quot;Hadoop&quot;, &quot;Hive&quot;, &quot;Mahout&quot;, &quot;Pig&quot;, and &quot;Spark.&quot; They are case insensitive.&lt;/p&gt;
-- @param ReleaseLabel [XmlStringMaxLen256] &lt;note&gt; &lt;p&gt;Amazon EMR releases 4.x or later.&lt;/p&gt; &lt;/note&gt; &lt;p&gt;The release label for the Amazon EMR release. For Amazon EMR 3.x and 2.x AMIs, use amiVersion instead instead of ReleaseLabel.&lt;/p&gt;
-- @param Tags [TagList] &lt;p&gt;A list of tags to associate with a cluster and propagate to Amazon EC2 instances.&lt;/p&gt;
-- @param BootstrapActions [BootstrapActionConfigList] &lt;p&gt;A list of bootstrap actions to run before Hadoop starts on the cluster nodes.&lt;/p&gt;
-- @param Instances [JobFlowInstancesConfig] &lt;p&gt;A specification of the number and type of Amazon EC2 instances.&lt;/p&gt;
-- @param JobFlowRole [XmlString] &lt;p&gt;Also called instance profile and EC2 role. An IAM role for an EMR cluster. The EC2 instances of the cluster assume this role. The default role is &lt;code&gt;EMR_EC2_DefaultRole&lt;/code&gt;. In order to use the default role, you must have already created it using the CLI or console.&lt;/p&gt;
-- @param Steps [StepConfigList] &lt;p&gt;A list of steps to run.&lt;/p&gt;
-- @param ScaleDownBehavior [ScaleDownBehavior] &lt;p&gt;Specifies the way that individual Amazon EC2 instances terminate when an automatic scale-in activity occurs or an instance group is resized. &lt;code&gt;TERMINATE_AT_INSTANCE_HOUR&lt;/code&gt; indicates that Amazon EMR terminates nodes at the instance-hour boundary, regardless of when the request to terminate the instance was submitted. This option is only available with Amazon EMR 5.1.0 and later and is the default for clusters created using that version. &lt;code&gt;TERMINATE_AT_TASK_COMPLETION&lt;/code&gt; indicates that Amazon EMR blacklists and drains tasks from nodes before terminating the Amazon EC2 instances, regardless of the instance-hour boundary. With either behavior, Amazon EMR removes the least active nodes first and blocks instance termination if it could lead to HDFS corruption. &lt;code&gt;TERMINATE_AT_TASK_COMPLETION&lt;/code&gt; available only in Amazon EMR version 4.1.0 and later, and is the default for versions of Amazon EMR earlier than 5.1.0.&lt;/p&gt;
-- @param Configurations [ConfigurationList] &lt;note&gt; &lt;p&gt;Amazon EMR releases 4.x or later.&lt;/p&gt; &lt;/note&gt; &lt;p&gt;The list of configurations supplied for the EMR cluster you are creating.&lt;/p&gt;
-- @param VisibleToAllUsers [Boolean] &lt;p&gt;Whether the cluster is visible to all IAM users of the AWS account associated with the cluster. If this value is set to &lt;code&gt;true&lt;/code&gt;, all IAM users of that AWS account can view and (if they have the proper policy permissions set) manage the cluster. If it is set to &lt;code&gt;false&lt;/code&gt;, only the IAM user that created the cluster can view and manage it.&lt;/p&gt;
-- @param LogUri [XmlString] &lt;p&gt;The location in Amazon S3 to write the log files of the job flow. If a value is not provided, logs are not created.&lt;/p&gt;
-- @param AmiVersion [XmlStringMaxLen256] &lt;note&gt; &lt;p&gt;For Amazon EMR releases 3.x and 2.x. For Amazon EMR releases 4.x and greater, use ReleaseLabel.&lt;/p&gt; &lt;/note&gt; &lt;p&gt;The version of the Amazon Machine Image (AMI) to use when launching Amazon EC2 instances in the job flow. The following values are valid:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;The version number of the AMI to use, for example, &quot;2.0.&quot;&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;If the AMI supports multiple versions of Hadoop (for example, AMI 1.0 supports both Hadoop 0.18 and 0.20) you can use the &lt;a&gt;JobFlowInstancesConfig&lt;/a&gt; &lt;code&gt;HadoopVersion&lt;/code&gt; parameter to modify the version of Hadoop from the defaults shown above.&lt;/p&gt; &lt;p&gt;For details about the AMI versions currently supported by Amazon Elastic MapReduce, see &lt;a href=&quot;http://docs.aws.amazon.com/ElasticMapReduce/latest/DeveloperGuide/EnvironmentConfig_AMIVersion.html#ami-versions-supported&quot;&gt;AMI Versions Supported in Elastic MapReduce&lt;/a&gt; in the &lt;i&gt;Amazon Elastic MapReduce Developer Guide.&lt;/i&gt; &lt;/p&gt; &lt;note&gt; &lt;p&gt;Previously, the EMR AMI version API parameter options allowed you to use latest for the latest AMI version rather than specify a numerical value. Some regions no longer support this deprecated option as they only have a newer release label version of EMR, which requires you to specify an EMR release label release (EMR 4.x or later).&lt;/p&gt; &lt;/note&gt;
-- @param NewSupportedProducts [NewSupportedProductsList] &lt;note&gt; &lt;p&gt;For Amazon EMR releases 3.x and 2.x. For Amazon EMR releases 4.x and greater, use Applications.&lt;/p&gt; &lt;/note&gt; &lt;p&gt;A list of strings that indicates third-party software to use with the job flow that accepts a user argument list. EMR accepts and forwards the argument list to the corresponding installation script as bootstrap action arguments. For more information, see &quot;Launch a Job Flow on the MapR Distribution for Hadoop&quot; in the &lt;a href=&quot;http://docs.aws.amazon.com/http:/docs.aws.amazon.com/emr/latest/DeveloperGuide/emr-dg.pdf&quot;&gt;Amazon EMR Developer Guide&lt;/a&gt;. Supported values are:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;&quot;mapr-m3&quot; - launch the cluster using MapR M3 Edition.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;&quot;mapr-m5&quot; - launch the cluster using MapR M5 Edition.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;&quot;mapr&quot; with the user arguments specifying &quot;--edition,m3&quot; or &quot;--edition,m5&quot; - launch the job flow using MapR M3 or M5 Edition respectively.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;&quot;mapr-m7&quot; - launch the cluster using MapR M7 Edition.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;&quot;hunk&quot; - launch the cluster with the Hunk Big Data Analtics Platform.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;&quot;hue&quot;- launch the cluster with Hue installed.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;&quot;spark&quot; - launch the cluster with Apache Spark installed.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;&quot;ganglia&quot; - launch the cluster with the Ganglia Monitoring System installed.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param SupportedProducts [SupportedProductsList] &lt;note&gt; &lt;p&gt;For Amazon EMR releases 3.x and 2.x. For Amazon EMR releases 4.x and greater, use Applications.&lt;/p&gt; &lt;/note&gt; &lt;p&gt;A list of strings that indicates third-party software to use. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/ElasticMapReduce/latest/DeveloperGuide/emr-supported-products.html&quot;&gt;Use Third Party Applications with Amazon EMR&lt;/a&gt;. Currently supported values are:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;&quot;mapr-m3&quot; - launch the job flow using MapR M3 Edition.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;&quot;mapr-m5&quot; - launch the job flow using MapR M5 Edition.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- Required parameter: Name
-- Required parameter: Instances
function M.RunJobFlowInput(AutoScalingRole, AdditionalInfo, SecurityConfiguration, Name, ServiceRole, Applications, ReleaseLabel, Tags, BootstrapActions, Instances, JobFlowRole, Steps, ScaleDownBehavior, Configurations, VisibleToAllUsers, LogUri, AmiVersion, NewSupportedProducts, SupportedProducts, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RunJobFlowInput")
	local t = { 
		["AutoScalingRole"] = AutoScalingRole,
		["AdditionalInfo"] = AdditionalInfo,
		["SecurityConfiguration"] = SecurityConfiguration,
		["Name"] = Name,
		["ServiceRole"] = ServiceRole,
		["Applications"] = Applications,
		["ReleaseLabel"] = ReleaseLabel,
		["Tags"] = Tags,
		["BootstrapActions"] = BootstrapActions,
		["Instances"] = Instances,
		["JobFlowRole"] = JobFlowRole,
		["Steps"] = Steps,
		["ScaleDownBehavior"] = ScaleDownBehavior,
		["Configurations"] = Configurations,
		["VisibleToAllUsers"] = VisibleToAllUsers,
		["LogUri"] = LogUri,
		["AmiVersion"] = AmiVersion,
		["NewSupportedProducts"] = NewSupportedProducts,
		["SupportedProducts"] = SupportedProducts,
	}
	M.AssertRunJobFlowInput(t)
	return t
end

local SetVisibleToAllUsersInput_keys = { "JobFlowIds" = true, "VisibleToAllUsers" = true, nil }

function M.AssertSetVisibleToAllUsersInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetVisibleToAllUsersInput to be of type 'table'")
	assert(struct["JobFlowIds"], "Expected key JobFlowIds to exist in table")
	assert(struct["VisibleToAllUsers"], "Expected key VisibleToAllUsers to exist in table")
	if struct["JobFlowIds"] then M.AssertXmlStringList(struct["JobFlowIds"]) end
	if struct["VisibleToAllUsers"] then M.AssertBoolean(struct["VisibleToAllUsers"]) end
	for k,_ in pairs(struct) do
		assert(SetVisibleToAllUsersInput_keys[k], "SetVisibleToAllUsersInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetVisibleToAllUsersInput
-- &lt;p&gt;The input to the SetVisibleToAllUsers action.&lt;/p&gt;
-- @param JobFlowIds [XmlStringList] &lt;p&gt;Identifiers of the job flows to receive the new visibility setting.&lt;/p&gt;
-- @param VisibleToAllUsers [Boolean] &lt;p&gt;Whether the specified clusters are visible to all IAM users of the AWS account associated with the cluster. If this value is set to True, all IAM users of that AWS account can view and, if they have the proper IAM policy permissions set, manage the clusters. If it is set to False, only the IAM user that created a cluster can view and manage it.&lt;/p&gt;
-- Required parameter: JobFlowIds
-- Required parameter: VisibleToAllUsers
function M.SetVisibleToAllUsersInput(JobFlowIds, VisibleToAllUsers, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetVisibleToAllUsersInput")
	local t = { 
		["JobFlowIds"] = JobFlowIds,
		["VisibleToAllUsers"] = VisibleToAllUsers,
	}
	M.AssertSetVisibleToAllUsersInput(t)
	return t
end

local HadoopJarStepConfig_keys = { "MainClass" = true, "Args" = true, "Jar" = true, "Properties" = true, nil }

function M.AssertHadoopJarStepConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HadoopJarStepConfig to be of type 'table'")
	assert(struct["Jar"], "Expected key Jar to exist in table")
	if struct["MainClass"] then M.AssertXmlString(struct["MainClass"]) end
	if struct["Args"] then M.AssertXmlStringList(struct["Args"]) end
	if struct["Jar"] then M.AssertXmlString(struct["Jar"]) end
	if struct["Properties"] then M.AssertKeyValueList(struct["Properties"]) end
	for k,_ in pairs(struct) do
		assert(HadoopJarStepConfig_keys[k], "HadoopJarStepConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HadoopJarStepConfig
-- &lt;p&gt;A job flow step consisting of a JAR file whose main function will be executed. The main function submits a job for Hadoop to execute and waits for the job to finish or fail.&lt;/p&gt;
-- @param MainClass [XmlString] &lt;p&gt;The name of the main class in the specified Java file. If not specified, the JAR file should specify a Main-Class in its manifest file.&lt;/p&gt;
-- @param Args [XmlStringList] &lt;p&gt;A list of command line arguments passed to the JAR file's main function when executed.&lt;/p&gt;
-- @param Jar [XmlString] &lt;p&gt;A path to a JAR file run during the step.&lt;/p&gt;
-- @param Properties [KeyValueList] &lt;p&gt;A list of Java properties that are set when the step runs. You can use these properties to pass key value pairs to your main function.&lt;/p&gt;
-- Required parameter: Jar
function M.HadoopJarStepConfig(MainClass, Args, Jar, Properties, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HadoopJarStepConfig")
	local t = { 
		["MainClass"] = MainClass,
		["Args"] = Args,
		["Jar"] = Jar,
		["Properties"] = Properties,
	}
	M.AssertHadoopJarStepConfig(t)
	return t
end

local InstanceGroupTimeline_keys = { "ReadyDateTime" = true, "CreationDateTime" = true, "EndDateTime" = true, nil }

function M.AssertInstanceGroupTimeline(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceGroupTimeline to be of type 'table'")
	if struct["ReadyDateTime"] then M.AssertDate(struct["ReadyDateTime"]) end
	if struct["CreationDateTime"] then M.AssertDate(struct["CreationDateTime"]) end
	if struct["EndDateTime"] then M.AssertDate(struct["EndDateTime"]) end
	for k,_ in pairs(struct) do
		assert(InstanceGroupTimeline_keys[k], "InstanceGroupTimeline contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceGroupTimeline
-- &lt;p&gt;The timeline of the instance group lifecycle.&lt;/p&gt;
-- @param ReadyDateTime [Date] &lt;p&gt;The date and time when the instance group became ready to perform tasks.&lt;/p&gt;
-- @param CreationDateTime [Date] &lt;p&gt;The creation date and time of the instance group.&lt;/p&gt;
-- @param EndDateTime [Date] &lt;p&gt;The date and time when the instance group terminated.&lt;/p&gt;
function M.InstanceGroupTimeline(ReadyDateTime, CreationDateTime, EndDateTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceGroupTimeline")
	local t = { 
		["ReadyDateTime"] = ReadyDateTime,
		["CreationDateTime"] = CreationDateTime,
		["EndDateTime"] = EndDateTime,
	}
	M.AssertInstanceGroupTimeline(t)
	return t
end

local Cluster_keys = { "Status" = true, "Ec2InstanceAttributes" = true, "Name" = true, "ServiceRole" = true, "Tags" = true, "TerminationProtected" = true, "RunningAmiVersion" = true, "ReleaseLabel" = true, "NormalizedInstanceHours" = true, "InstanceCollectionType" = true, "Applications" = true, "MasterPublicDnsName" = true, "AutoScalingRole" = true, "SecurityConfiguration" = true, "VisibleToAllUsers" = true, "RequestedAmiVersion" = true, "LogUri" = true, "AutoTerminate" = true, "Id" = true, "ScaleDownBehavior" = true, "Configurations" = true, nil }

function M.AssertCluster(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Cluster to be of type 'table'")
	if struct["Status"] then M.AssertClusterStatus(struct["Status"]) end
	if struct["Ec2InstanceAttributes"] then M.AssertEc2InstanceAttributes(struct["Ec2InstanceAttributes"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	if struct["ServiceRole"] then M.AssertString(struct["ServiceRole"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	if struct["TerminationProtected"] then M.AssertBoolean(struct["TerminationProtected"]) end
	if struct["RunningAmiVersion"] then M.AssertString(struct["RunningAmiVersion"]) end
	if struct["ReleaseLabel"] then M.AssertString(struct["ReleaseLabel"]) end
	if struct["NormalizedInstanceHours"] then M.AssertInteger(struct["NormalizedInstanceHours"]) end
	if struct["InstanceCollectionType"] then M.AssertInstanceCollectionType(struct["InstanceCollectionType"]) end
	if struct["Applications"] then M.AssertApplicationList(struct["Applications"]) end
	if struct["MasterPublicDnsName"] then M.AssertString(struct["MasterPublicDnsName"]) end
	if struct["AutoScalingRole"] then M.AssertXmlString(struct["AutoScalingRole"]) end
	if struct["SecurityConfiguration"] then M.AssertXmlString(struct["SecurityConfiguration"]) end
	if struct["VisibleToAllUsers"] then M.AssertBoolean(struct["VisibleToAllUsers"]) end
	if struct["RequestedAmiVersion"] then M.AssertString(struct["RequestedAmiVersion"]) end
	if struct["LogUri"] then M.AssertString(struct["LogUri"]) end
	if struct["AutoTerminate"] then M.AssertBoolean(struct["AutoTerminate"]) end
	if struct["Id"] then M.AssertClusterId(struct["Id"]) end
	if struct["ScaleDownBehavior"] then M.AssertScaleDownBehavior(struct["ScaleDownBehavior"]) end
	if struct["Configurations"] then M.AssertConfigurationList(struct["Configurations"]) end
	for k,_ in pairs(struct) do
		assert(Cluster_keys[k], "Cluster contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Cluster
-- &lt;p&gt;The detailed description of the cluster.&lt;/p&gt;
-- @param Status [ClusterStatus] &lt;p&gt;The current status details about the cluster.&lt;/p&gt;
-- @param Ec2InstanceAttributes [Ec2InstanceAttributes] &lt;p&gt;Provides information about the EC2 instances in a cluster grouped by category. For example, key name, subnet ID, IAM instance profile, and so on.&lt;/p&gt;
-- @param Name [String] &lt;p&gt;The name of the cluster.&lt;/p&gt;
-- @param ServiceRole [String] &lt;p&gt;The IAM role that will be assumed by the Amazon EMR service to access AWS resources on your behalf.&lt;/p&gt;
-- @param Tags [TagList] &lt;p&gt;A list of tags associated with a cluster.&lt;/p&gt;
-- @param TerminationProtected [Boolean] &lt;p&gt;Indicates whether Amazon EMR will lock the cluster to prevent the EC2 instances from being terminated by an API call or user intervention, or in the event of a cluster error.&lt;/p&gt;
-- @param RunningAmiVersion [String] &lt;p&gt;The AMI version running on this cluster.&lt;/p&gt;
-- @param ReleaseLabel [String] &lt;p&gt;The release label for the Amazon EMR release. For Amazon EMR 3.x and 2.x AMIs, use amiVersion instead instead of ReleaseLabel.&lt;/p&gt;
-- @param NormalizedInstanceHours [Integer] &lt;p&gt;An approximation of the cost of the cluster, represented in m1.small/hours. This value is incremented one time for every hour an m1.small instance runs. Larger instances are weighted more, so an EC2 instance that is roughly four times more expensive would result in the normalized instance hours being incremented by four. This result is only an approximation and does not reflect the actual billing rate.&lt;/p&gt;
-- @param InstanceCollectionType [InstanceCollectionType] &lt;note&gt; &lt;p&gt;The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.&lt;/p&gt; &lt;/note&gt; &lt;p&gt;The instance group configuration of the cluster. A value of &lt;code&gt;INSTANCE_GROUP&lt;/code&gt; indicates a uniform instance group configuration. A value of &lt;code&gt;INSTANCE_FLEET&lt;/code&gt; indicates an instance fleets configuration.&lt;/p&gt;
-- @param Applications [ApplicationList] &lt;p&gt;The applications installed on this cluster.&lt;/p&gt;
-- @param MasterPublicDnsName [String] &lt;p&gt;The public DNS name of the master EC2 instance.&lt;/p&gt;
-- @param AutoScalingRole [XmlString] &lt;p&gt;An IAM role for automatic scaling policies. The default role is &lt;code&gt;EMR_AutoScaling_DefaultRole&lt;/code&gt;. The IAM role provides permissions that the automatic scaling feature requires to launch and terminate EC2 instances in an instance group.&lt;/p&gt;
-- @param SecurityConfiguration [XmlString] &lt;p&gt;The name of the security configuration applied to the cluster.&lt;/p&gt;
-- @param VisibleToAllUsers [Boolean] &lt;p&gt;Indicates whether the cluster is visible to all IAM users of the AWS account associated with the cluster. If this value is set to &lt;code&gt;true&lt;/code&gt;, all IAM users of that AWS account can view and manage the cluster if they have the proper policy permissions set. If this value is &lt;code&gt;false&lt;/code&gt;, only the IAM user that created the cluster can view and manage it. This value can be changed using the &lt;a&gt;SetVisibleToAllUsers&lt;/a&gt; action.&lt;/p&gt;
-- @param RequestedAmiVersion [String] &lt;p&gt;The AMI version requested for this cluster.&lt;/p&gt;
-- @param LogUri [String] &lt;p&gt;The path to the Amazon S3 location where logs for this cluster are stored.&lt;/p&gt;
-- @param AutoTerminate [Boolean] &lt;p&gt;Specifies whether the cluster should terminate after completing all steps.&lt;/p&gt;
-- @param Id [ClusterId] &lt;p&gt;The unique identifier for the cluster.&lt;/p&gt;
-- @param ScaleDownBehavior [ScaleDownBehavior] &lt;p&gt;The way that individual Amazon EC2 instances terminate when an automatic scale-in activity occurs or an instance group is resized. &lt;code&gt;TERMINATE_AT_INSTANCE_HOUR&lt;/code&gt; indicates that Amazon EMR terminates nodes at the instance-hour boundary, regardless of when the request to terminate the instance was submitted. This option is only available with Amazon EMR 5.1.0 and later and is the default for clusters created using that version. &lt;code&gt;TERMINATE_AT_TASK_COMPLETION&lt;/code&gt; indicates that Amazon EMR blacklists and drains tasks from nodes before terminating the Amazon EC2 instances, regardless of the instance-hour boundary. With either behavior, Amazon EMR removes the least active nodes first and blocks instance termination if it could lead to HDFS corruption. &lt;code&gt;TERMINATE_AT_TASK_COMPLETION&lt;/code&gt; is available only in Amazon EMR version 4.1.0 and later, and is the default for versions of Amazon EMR earlier than 5.1.0.&lt;/p&gt;
-- @param Configurations [ConfigurationList] &lt;note&gt; &lt;p&gt;Amazon EMR releases 4.x or later.&lt;/p&gt; &lt;/note&gt; &lt;p&gt;The list of Configurations supplied to the EMR cluster.&lt;/p&gt;
function M.Cluster(Status, Ec2InstanceAttributes, Name, ServiceRole, Tags, TerminationProtected, RunningAmiVersion, ReleaseLabel, NormalizedInstanceHours, InstanceCollectionType, Applications, MasterPublicDnsName, AutoScalingRole, SecurityConfiguration, VisibleToAllUsers, RequestedAmiVersion, LogUri, AutoTerminate, Id, ScaleDownBehavior, Configurations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Cluster")
	local t = { 
		["Status"] = Status,
		["Ec2InstanceAttributes"] = Ec2InstanceAttributes,
		["Name"] = Name,
		["ServiceRole"] = ServiceRole,
		["Tags"] = Tags,
		["TerminationProtected"] = TerminationProtected,
		["RunningAmiVersion"] = RunningAmiVersion,
		["ReleaseLabel"] = ReleaseLabel,
		["NormalizedInstanceHours"] = NormalizedInstanceHours,
		["InstanceCollectionType"] = InstanceCollectionType,
		["Applications"] = Applications,
		["MasterPublicDnsName"] = MasterPublicDnsName,
		["AutoScalingRole"] = AutoScalingRole,
		["SecurityConfiguration"] = SecurityConfiguration,
		["VisibleToAllUsers"] = VisibleToAllUsers,
		["RequestedAmiVersion"] = RequestedAmiVersion,
		["LogUri"] = LogUri,
		["AutoTerminate"] = AutoTerminate,
		["Id"] = Id,
		["ScaleDownBehavior"] = ScaleDownBehavior,
		["Configurations"] = Configurations,
	}
	M.AssertCluster(t)
	return t
end

local JobFlowDetail_keys = { "AutoScalingRole" = true, "Name" = true, "ServiceRole" = true, "JobFlowId" = true, "Instances" = true, "JobFlowRole" = true, "Steps" = true, "ScaleDownBehavior" = true, "ExecutionStatusDetail" = true, "VisibleToAllUsers" = true, "BootstrapActions" = true, "LogUri" = true, "AmiVersion" = true, "SupportedProducts" = true, nil }

function M.AssertJobFlowDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobFlowDetail to be of type 'table'")
	assert(struct["JobFlowId"], "Expected key JobFlowId to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["ExecutionStatusDetail"], "Expected key ExecutionStatusDetail to exist in table")
	assert(struct["Instances"], "Expected key Instances to exist in table")
	if struct["AutoScalingRole"] then M.AssertXmlString(struct["AutoScalingRole"]) end
	if struct["Name"] then M.AssertXmlStringMaxLen256(struct["Name"]) end
	if struct["ServiceRole"] then M.AssertXmlString(struct["ServiceRole"]) end
	if struct["JobFlowId"] then M.AssertXmlStringMaxLen256(struct["JobFlowId"]) end
	if struct["Instances"] then M.AssertJobFlowInstancesDetail(struct["Instances"]) end
	if struct["JobFlowRole"] then M.AssertXmlString(struct["JobFlowRole"]) end
	if struct["Steps"] then M.AssertStepDetailList(struct["Steps"]) end
	if struct["ScaleDownBehavior"] then M.AssertScaleDownBehavior(struct["ScaleDownBehavior"]) end
	if struct["ExecutionStatusDetail"] then M.AssertJobFlowExecutionStatusDetail(struct["ExecutionStatusDetail"]) end
	if struct["VisibleToAllUsers"] then M.AssertBoolean(struct["VisibleToAllUsers"]) end
	if struct["BootstrapActions"] then M.AssertBootstrapActionDetailList(struct["BootstrapActions"]) end
	if struct["LogUri"] then M.AssertXmlString(struct["LogUri"]) end
	if struct["AmiVersion"] then M.AssertXmlStringMaxLen256(struct["AmiVersion"]) end
	if struct["SupportedProducts"] then M.AssertSupportedProductsList(struct["SupportedProducts"]) end
	for k,_ in pairs(struct) do
		assert(JobFlowDetail_keys[k], "JobFlowDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobFlowDetail
-- &lt;p&gt;A description of a cluster (job flow).&lt;/p&gt;
-- @param AutoScalingRole [XmlString] &lt;p&gt;An IAM role for automatic scaling policies. The default role is &lt;code&gt;EMR_AutoScaling_DefaultRole&lt;/code&gt;. The IAM role provides a way for the automatic scaling feature to get the required permissions it needs to launch and terminate EC2 instances in an instance group.&lt;/p&gt;
-- @param Name [XmlStringMaxLen256] &lt;p&gt;The name of the job flow.&lt;/p&gt;
-- @param ServiceRole [XmlString] &lt;p&gt;The IAM role that will be assumed by the Amazon EMR service to access AWS resources on your behalf.&lt;/p&gt;
-- @param JobFlowId [XmlStringMaxLen256] &lt;p&gt;The job flow identifier.&lt;/p&gt;
-- @param Instances [JobFlowInstancesDetail] &lt;p&gt;Describes the Amazon EC2 instances of the job flow.&lt;/p&gt;
-- @param JobFlowRole [XmlString] &lt;p&gt;The IAM role that was specified when the job flow was launched. The EC2 instances of the job flow assume this role.&lt;/p&gt;
-- @param Steps [StepDetailList] &lt;p&gt;A list of steps run by the job flow.&lt;/p&gt;
-- @param ScaleDownBehavior [ScaleDownBehavior] &lt;p&gt;The way that individual Amazon EC2 instances terminate when an automatic scale-in activity occurs or an instance group is resized. &lt;code&gt;TERMINATE_AT_INSTANCE_HOUR&lt;/code&gt; indicates that Amazon EMR terminates nodes at the instance-hour boundary, regardless of when the request to terminate the instance was submitted. This option is only available with Amazon EMR 5.1.0 and later and is the default for clusters created using that version. &lt;code&gt;TERMINATE_AT_TASK_COMPLETION&lt;/code&gt; indicates that Amazon EMR blacklists and drains tasks from nodes before terminating the Amazon EC2 instances, regardless of the instance-hour boundary. With either behavior, Amazon EMR removes the least active nodes first and blocks instance termination if it could lead to HDFS corruption. &lt;code&gt;TERMINATE_AT_TASK_COMPLETION&lt;/code&gt; available only in Amazon EMR version 4.1.0 and later, and is the default for versions of Amazon EMR earlier than 5.1.0.&lt;/p&gt;
-- @param ExecutionStatusDetail [JobFlowExecutionStatusDetail] &lt;p&gt;Describes the execution status of the job flow.&lt;/p&gt;
-- @param VisibleToAllUsers [Boolean] &lt;p&gt;Specifies whether the cluster is visible to all IAM users of the AWS account associated with the cluster. If this value is set to &lt;code&gt;true&lt;/code&gt;, all IAM users of that AWS account can view and (if they have the proper policy permissions set) manage the cluster. If it is set to &lt;code&gt;false&lt;/code&gt;, only the IAM user that created the cluster can view and manage it. This value can be changed using the &lt;a&gt;SetVisibleToAllUsers&lt;/a&gt; action.&lt;/p&gt;
-- @param BootstrapActions [BootstrapActionDetailList] &lt;p&gt;A list of the bootstrap actions run by the job flow.&lt;/p&gt;
-- @param LogUri [XmlString] &lt;p&gt;The location in Amazon S3 where log files for the job are stored.&lt;/p&gt;
-- @param AmiVersion [XmlStringMaxLen256] &lt;p&gt;The version of the AMI used to initialize Amazon EC2 instances in the job flow. For a list of AMI versions currently supported by Amazon EMR, see &lt;a href=&quot;http://docs.aws.amazon.com/ElasticMapReduce/latest/DeveloperGuide/EnvironmentConfig_AMIVersion.html#ami-versions-supported&quot;&gt;AMI Versions Supported in EMR&lt;/a&gt; in the &lt;i&gt;Amazon EMR Developer Guide.&lt;/i&gt; &lt;/p&gt;
-- @param SupportedProducts [SupportedProductsList] &lt;p&gt;A list of strings set by third party software when the job flow is launched. If you are not using third party software to manage the job flow this value is empty.&lt;/p&gt;
-- Required parameter: JobFlowId
-- Required parameter: Name
-- Required parameter: ExecutionStatusDetail
-- Required parameter: Instances
function M.JobFlowDetail(AutoScalingRole, Name, ServiceRole, JobFlowId, Instances, JobFlowRole, Steps, ScaleDownBehavior, ExecutionStatusDetail, VisibleToAllUsers, BootstrapActions, LogUri, AmiVersion, SupportedProducts, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating JobFlowDetail")
	local t = { 
		["AutoScalingRole"] = AutoScalingRole,
		["Name"] = Name,
		["ServiceRole"] = ServiceRole,
		["JobFlowId"] = JobFlowId,
		["Instances"] = Instances,
		["JobFlowRole"] = JobFlowRole,
		["Steps"] = Steps,
		["ScaleDownBehavior"] = ScaleDownBehavior,
		["ExecutionStatusDetail"] = ExecutionStatusDetail,
		["VisibleToAllUsers"] = VisibleToAllUsers,
		["BootstrapActions"] = BootstrapActions,
		["LogUri"] = LogUri,
		["AmiVersion"] = AmiVersion,
		["SupportedProducts"] = SupportedProducts,
	}
	M.AssertJobFlowDetail(t)
	return t
end

local TerminateJobFlowsInput_keys = { "JobFlowIds" = true, nil }

function M.AssertTerminateJobFlowsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TerminateJobFlowsInput to be of type 'table'")
	assert(struct["JobFlowIds"], "Expected key JobFlowIds to exist in table")
	if struct["JobFlowIds"] then M.AssertXmlStringList(struct["JobFlowIds"]) end
	for k,_ in pairs(struct) do
		assert(TerminateJobFlowsInput_keys[k], "TerminateJobFlowsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TerminateJobFlowsInput
-- &lt;p&gt; Input to the &lt;a&gt;TerminateJobFlows&lt;/a&gt; operation. &lt;/p&gt;
-- @param JobFlowIds [XmlStringList] &lt;p&gt;A list of job flows to be shutdown.&lt;/p&gt;
-- Required parameter: JobFlowIds
function M.TerminateJobFlowsInput(JobFlowIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TerminateJobFlowsInput")
	local t = { 
		["JobFlowIds"] = JobFlowIds,
	}
	M.AssertTerminateJobFlowsInput(t)
	return t
end

local AddInstanceFleetOutput_keys = { "ClusterId" = true, "InstanceFleetId" = true, nil }

function M.AssertAddInstanceFleetOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddInstanceFleetOutput to be of type 'table'")
	if struct["ClusterId"] then M.AssertXmlStringMaxLen256(struct["ClusterId"]) end
	if struct["InstanceFleetId"] then M.AssertInstanceFleetId(struct["InstanceFleetId"]) end
	for k,_ in pairs(struct) do
		assert(AddInstanceFleetOutput_keys[k], "AddInstanceFleetOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddInstanceFleetOutput
--  
-- @param ClusterId [XmlStringMaxLen256] &lt;p&gt;The unique identifier of the cluster.&lt;/p&gt;
-- @param InstanceFleetId [InstanceFleetId] &lt;p&gt;The unique identifier of the instance fleet.&lt;/p&gt;
function M.AddInstanceFleetOutput(ClusterId, InstanceFleetId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddInstanceFleetOutput")
	local t = { 
		["ClusterId"] = ClusterId,
		["InstanceFleetId"] = InstanceFleetId,
	}
	M.AssertAddInstanceFleetOutput(t)
	return t
end

local ModifyInstanceFleetInput_keys = { "InstanceFleet" = true, "ClusterId" = true, nil }

function M.AssertModifyInstanceFleetInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyInstanceFleetInput to be of type 'table'")
	assert(struct["ClusterId"], "Expected key ClusterId to exist in table")
	assert(struct["InstanceFleet"], "Expected key InstanceFleet to exist in table")
	if struct["InstanceFleet"] then M.AssertInstanceFleetModifyConfig(struct["InstanceFleet"]) end
	if struct["ClusterId"] then M.AssertClusterId(struct["ClusterId"]) end
	for k,_ in pairs(struct) do
		assert(ModifyInstanceFleetInput_keys[k], "ModifyInstanceFleetInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyInstanceFleetInput
--  
-- @param InstanceFleet [InstanceFleetModifyConfig] &lt;p&gt;The unique identifier of the instance fleet.&lt;/p&gt;
-- @param ClusterId [ClusterId] &lt;p&gt;The unique identifier of the cluster.&lt;/p&gt;
-- Required parameter: ClusterId
-- Required parameter: InstanceFleet
function M.ModifyInstanceFleetInput(InstanceFleet, ClusterId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyInstanceFleetInput")
	local t = { 
		["InstanceFleet"] = InstanceFleet,
		["ClusterId"] = ClusterId,
	}
	M.AssertModifyInstanceFleetInput(t)
	return t
end

local AddInstanceGroupsOutput_keys = { "InstanceGroupIds" = true, "JobFlowId" = true, nil }

function M.AssertAddInstanceGroupsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddInstanceGroupsOutput to be of type 'table'")
	if struct["InstanceGroupIds"] then M.AssertInstanceGroupIdsList(struct["InstanceGroupIds"]) end
	if struct["JobFlowId"] then M.AssertXmlStringMaxLen256(struct["JobFlowId"]) end
	for k,_ in pairs(struct) do
		assert(AddInstanceGroupsOutput_keys[k], "AddInstanceGroupsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddInstanceGroupsOutput
-- &lt;p&gt;Output from an AddInstanceGroups call.&lt;/p&gt;
-- @param InstanceGroupIds [InstanceGroupIdsList] &lt;p&gt;Instance group IDs of the newly created instance groups.&lt;/p&gt;
-- @param JobFlowId [XmlStringMaxLen256] &lt;p&gt;The job flow ID in which the instance groups are added.&lt;/p&gt;
function M.AddInstanceGroupsOutput(InstanceGroupIds, JobFlowId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddInstanceGroupsOutput")
	local t = { 
		["InstanceGroupIds"] = InstanceGroupIds,
		["JobFlowId"] = JobFlowId,
	}
	M.AssertAddInstanceGroupsOutput(t)
	return t
end

local CancelStepsOutput_keys = { "CancelStepsInfoList" = true, nil }

function M.AssertCancelStepsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelStepsOutput to be of type 'table'")
	if struct["CancelStepsInfoList"] then M.AssertCancelStepsInfoList(struct["CancelStepsInfoList"]) end
	for k,_ in pairs(struct) do
		assert(CancelStepsOutput_keys[k], "CancelStepsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelStepsOutput
-- &lt;p&gt; The output for the &lt;a&gt;CancelSteps&lt;/a&gt; operation. &lt;/p&gt;
-- @param CancelStepsInfoList [CancelStepsInfoList] &lt;p&gt;A list of &lt;a&gt;CancelStepsInfo&lt;/a&gt;, which shows the status of specified cancel requests for each &lt;code&gt;StepID&lt;/code&gt; specified.&lt;/p&gt;
function M.CancelStepsOutput(CancelStepsInfoList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CancelStepsOutput")
	local t = { 
		["CancelStepsInfoList"] = CancelStepsInfoList,
	}
	M.AssertCancelStepsOutput(t)
	return t
end

local Configuration_keys = { "Properties" = true, "Classification" = true, "Configurations" = true, nil }

function M.AssertConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Configuration to be of type 'table'")
	if struct["Properties"] then M.AssertStringMap(struct["Properties"]) end
	if struct["Classification"] then M.AssertString(struct["Classification"]) end
	if struct["Configurations"] then M.AssertConfigurationList(struct["Configurations"]) end
	for k,_ in pairs(struct) do
		assert(Configuration_keys[k], "Configuration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Configuration
-- &lt;note&gt; &lt;p&gt;Amazon EMR releases 4.x or later.&lt;/p&gt; &lt;/note&gt; &lt;p&gt;An optional configuration specification to be used when provisioning cluster instances, which can include configurations for applications and software bundled with Amazon EMR. A configuration consists of a classification, properties, and optional nested configurations. A classification refers to an application-specific configuration file. Properties are the settings you want to change in that file. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/emr/latest/ReleaseGuide/emr-configure-apps.html&quot;&gt;Configuring Applications&lt;/a&gt;.&lt;/p&gt;
-- @param Properties [StringMap] &lt;p&gt;A set of properties specified within a configuration classification.&lt;/p&gt;
-- @param Classification [String] &lt;p&gt;The classification within a configuration.&lt;/p&gt;
-- @param Configurations [ConfigurationList] &lt;p&gt;A list of additional configurations to apply within a configuration object.&lt;/p&gt;
function M.Configuration(Properties, Classification, Configurations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Configuration")
	local t = { 
		["Properties"] = Properties,
		["Classification"] = Classification,
		["Configurations"] = Configurations,
	}
	M.AssertConfiguration(t)
	return t
end

local SecurityConfigurationSummary_keys = { "CreationDateTime" = true, "Name" = true, nil }

function M.AssertSecurityConfigurationSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SecurityConfigurationSummary to be of type 'table'")
	if struct["CreationDateTime"] then M.AssertDate(struct["CreationDateTime"]) end
	if struct["Name"] then M.AssertXmlString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(SecurityConfigurationSummary_keys[k], "SecurityConfigurationSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SecurityConfigurationSummary
-- &lt;p&gt;The creation date and time, and name, of a security configuration.&lt;/p&gt;
-- @param CreationDateTime [Date] &lt;p&gt;The date and time the security configuration was created.&lt;/p&gt;
-- @param Name [XmlString] &lt;p&gt;The name of the security configuration.&lt;/p&gt;
function M.SecurityConfigurationSummary(CreationDateTime, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SecurityConfigurationSummary")
	local t = { 
		["CreationDateTime"] = CreationDateTime,
		["Name"] = Name,
	}
	M.AssertSecurityConfigurationSummary(t)
	return t
end

local CloudWatchAlarmDefinition_keys = { "EvaluationPeriods" = true, "Dimensions" = true, "Namespace" = true, "Period" = true, "ComparisonOperator" = true, "Statistic" = true, "Threshold" = true, "Unit" = true, "MetricName" = true, nil }

function M.AssertCloudWatchAlarmDefinition(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloudWatchAlarmDefinition to be of type 'table'")
	assert(struct["ComparisonOperator"], "Expected key ComparisonOperator to exist in table")
	assert(struct["MetricName"], "Expected key MetricName to exist in table")
	assert(struct["Period"], "Expected key Period to exist in table")
	assert(struct["Threshold"], "Expected key Threshold to exist in table")
	if struct["EvaluationPeriods"] then M.AssertInteger(struct["EvaluationPeriods"]) end
	if struct["Dimensions"] then M.AssertMetricDimensionList(struct["Dimensions"]) end
	if struct["Namespace"] then M.AssertString(struct["Namespace"]) end
	if struct["Period"] then M.AssertInteger(struct["Period"]) end
	if struct["ComparisonOperator"] then M.AssertComparisonOperator(struct["ComparisonOperator"]) end
	if struct["Statistic"] then M.AssertStatistic(struct["Statistic"]) end
	if struct["Threshold"] then M.AssertNonNegativeDouble(struct["Threshold"]) end
	if struct["Unit"] then M.AssertUnit(struct["Unit"]) end
	if struct["MetricName"] then M.AssertString(struct["MetricName"]) end
	for k,_ in pairs(struct) do
		assert(CloudWatchAlarmDefinition_keys[k], "CloudWatchAlarmDefinition contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloudWatchAlarmDefinition
-- &lt;p&gt;The definition of a CloudWatch metric alarm, which determines when an automatic scaling activity is triggered. When the defined alarm conditions are satisfied, scaling activity begins.&lt;/p&gt;
-- @param EvaluationPeriods [Integer] &lt;p&gt;The number of periods, expressed in seconds using &lt;code&gt;Period&lt;/code&gt;, during which the alarm condition must exist before the alarm triggers automatic scaling activity. The default value is &lt;code&gt;1&lt;/code&gt;.&lt;/p&gt;
-- @param Dimensions [MetricDimensionList] &lt;p&gt;A CloudWatch metric dimension.&lt;/p&gt;
-- @param Namespace [String] &lt;p&gt;The namespace for the CloudWatch metric. The default is &lt;code&gt;AWS/ElasticMapReduce&lt;/code&gt;.&lt;/p&gt;
-- @param Period [Integer] &lt;p&gt;The period, in seconds, over which the statistic is applied. EMR CloudWatch metrics are emitted every five minutes (300 seconds), so if an EMR CloudWatch metric is specified, specify &lt;code&gt;300&lt;/code&gt;.&lt;/p&gt;
-- @param ComparisonOperator [ComparisonOperator] &lt;p&gt;Determines how the metric specified by &lt;code&gt;MetricName&lt;/code&gt; is compared to the value specified by &lt;code&gt;Threshold&lt;/code&gt;.&lt;/p&gt;
-- @param Statistic [Statistic] &lt;p&gt;The statistic to apply to the metric associated with the alarm. The default is &lt;code&gt;AVERAGE&lt;/code&gt;.&lt;/p&gt;
-- @param Threshold [NonNegativeDouble] &lt;p&gt;The value against which the specified statistic is compared.&lt;/p&gt;
-- @param Unit [Unit] &lt;p&gt;The unit of measure associated with the CloudWatch metric being watched. The value specified for &lt;code&gt;Unit&lt;/code&gt; must correspond to the units specified in the CloudWatch metric.&lt;/p&gt;
-- @param MetricName [String] &lt;p&gt;The name of the CloudWatch metric that is watched to determine an alarm condition.&lt;/p&gt;
-- Required parameter: ComparisonOperator
-- Required parameter: MetricName
-- Required parameter: Period
-- Required parameter: Threshold
function M.CloudWatchAlarmDefinition(EvaluationPeriods, Dimensions, Namespace, Period, ComparisonOperator, Statistic, Threshold, Unit, MetricName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CloudWatchAlarmDefinition")
	local t = { 
		["EvaluationPeriods"] = EvaluationPeriods,
		["Dimensions"] = Dimensions,
		["Namespace"] = Namespace,
		["Period"] = Period,
		["ComparisonOperator"] = ComparisonOperator,
		["Statistic"] = Statistic,
		["Threshold"] = Threshold,
		["Unit"] = Unit,
		["MetricName"] = MetricName,
	}
	M.AssertCloudWatchAlarmDefinition(t)
	return t
end

local FailureDetails_keys = { "Reason" = true, "LogFile" = true, "Message" = true, nil }

function M.AssertFailureDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FailureDetails to be of type 'table'")
	if struct["Reason"] then M.AssertString(struct["Reason"]) end
	if struct["LogFile"] then M.AssertString(struct["LogFile"]) end
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(FailureDetails_keys[k], "FailureDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FailureDetails
-- &lt;p&gt;The details of the step failure. The service attempts to detect the root cause for many common failures.&lt;/p&gt;
-- @param Reason [String] &lt;p&gt;The reason for the step failure. In the case where the service cannot successfully determine the root cause of the failure, it returns &quot;Unknown Error&quot; as a reason.&lt;/p&gt;
-- @param LogFile [String] &lt;p&gt;The path to the log file where the step failure root cause was originally recorded.&lt;/p&gt;
-- @param Message [String] &lt;p&gt;The descriptive message including the error the EMR service has identified as the cause of step failure. This is text from an error log that describes the root cause of the failure.&lt;/p&gt;
function M.FailureDetails(Reason, LogFile, Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FailureDetails")
	local t = { 
		["Reason"] = Reason,
		["LogFile"] = LogFile,
		["Message"] = Message,
	}
	M.AssertFailureDetails(t)
	return t
end

local ListClustersInput_keys = { "Marker" = true, "ClusterStates" = true, "CreatedAfter" = true, "CreatedBefore" = true, nil }

function M.AssertListClustersInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListClustersInput to be of type 'table'")
	if struct["Marker"] then M.AssertMarker(struct["Marker"]) end
	if struct["ClusterStates"] then M.AssertClusterStateList(struct["ClusterStates"]) end
	if struct["CreatedAfter"] then M.AssertDate(struct["CreatedAfter"]) end
	if struct["CreatedBefore"] then M.AssertDate(struct["CreatedBefore"]) end
	for k,_ in pairs(struct) do
		assert(ListClustersInput_keys[k], "ListClustersInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListClustersInput
-- &lt;p&gt;This input determines how the ListClusters action filters the list of clusters that it returns.&lt;/p&gt;
-- @param Marker [Marker] &lt;p&gt;The pagination token that indicates the next set of results to retrieve.&lt;/p&gt;
-- @param ClusterStates [ClusterStateList] &lt;p&gt;The cluster state filters to apply when listing clusters.&lt;/p&gt;
-- @param CreatedAfter [Date] &lt;p&gt;The creation date and time beginning value filter for listing clusters.&lt;/p&gt;
-- @param CreatedBefore [Date] &lt;p&gt;The creation date and time end value filter for listing clusters.&lt;/p&gt;
function M.ListClustersInput(Marker, ClusterStates, CreatedAfter, CreatedBefore, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListClustersInput")
	local t = { 
		["Marker"] = Marker,
		["ClusterStates"] = ClusterStates,
		["CreatedAfter"] = CreatedAfter,
		["CreatedBefore"] = CreatedBefore,
	}
	M.AssertListClustersInput(t)
	return t
end

local Command_keys = { "Args" = true, "Name" = true, "ScriptPath" = true, nil }

function M.AssertCommand(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Command to be of type 'table'")
	if struct["Args"] then M.AssertStringList(struct["Args"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	if struct["ScriptPath"] then M.AssertString(struct["ScriptPath"]) end
	for k,_ in pairs(struct) do
		assert(Command_keys[k], "Command contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Command
-- &lt;p&gt;An entity describing an executable that runs on a cluster.&lt;/p&gt;
-- @param Args [StringList] &lt;p&gt;Arguments for Amazon EMR to pass to the command for execution.&lt;/p&gt;
-- @param Name [String] &lt;p&gt;The name of the command.&lt;/p&gt;
-- @param ScriptPath [String] &lt;p&gt;The Amazon S3 location of the command script.&lt;/p&gt;
function M.Command(Args, Name, ScriptPath, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Command")
	local t = { 
		["Args"] = Args,
		["Name"] = Name,
		["ScriptPath"] = ScriptPath,
	}
	M.AssertCommand(t)
	return t
end

local DeleteSecurityConfigurationOutput_keys = { nil }

function M.AssertDeleteSecurityConfigurationOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSecurityConfigurationOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteSecurityConfigurationOutput_keys[k], "DeleteSecurityConfigurationOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSecurityConfigurationOutput
--  
function M.DeleteSecurityConfigurationOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteSecurityConfigurationOutput")
	local t = { 
	}
	M.AssertDeleteSecurityConfigurationOutput(t)
	return t
end

local StepDetail_keys = { "ExecutionStatusDetail" = true, "StepConfig" = true, nil }

function M.AssertStepDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StepDetail to be of type 'table'")
	assert(struct["StepConfig"], "Expected key StepConfig to exist in table")
	assert(struct["ExecutionStatusDetail"], "Expected key ExecutionStatusDetail to exist in table")
	if struct["ExecutionStatusDetail"] then M.AssertStepExecutionStatusDetail(struct["ExecutionStatusDetail"]) end
	if struct["StepConfig"] then M.AssertStepConfig(struct["StepConfig"]) end
	for k,_ in pairs(struct) do
		assert(StepDetail_keys[k], "StepDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StepDetail
-- &lt;p&gt;Combines the execution state and configuration of a step.&lt;/p&gt;
-- @param ExecutionStatusDetail [StepExecutionStatusDetail] &lt;p&gt;The description of the step status.&lt;/p&gt;
-- @param StepConfig [StepConfig] &lt;p&gt;The step configuration.&lt;/p&gt;
-- Required parameter: StepConfig
-- Required parameter: ExecutionStatusDetail
function M.StepDetail(ExecutionStatusDetail, StepConfig, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StepDetail")
	local t = { 
		["ExecutionStatusDetail"] = ExecutionStatusDetail,
		["StepConfig"] = StepConfig,
	}
	M.AssertStepDetail(t)
	return t
end

local HadoopStepConfig_keys = { "MainClass" = true, "Args" = true, "Jar" = true, "Properties" = true, nil }

function M.AssertHadoopStepConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HadoopStepConfig to be of type 'table'")
	if struct["MainClass"] then M.AssertString(struct["MainClass"]) end
	if struct["Args"] then M.AssertStringList(struct["Args"]) end
	if struct["Jar"] then M.AssertString(struct["Jar"]) end
	if struct["Properties"] then M.AssertStringMap(struct["Properties"]) end
	for k,_ in pairs(struct) do
		assert(HadoopStepConfig_keys[k], "HadoopStepConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HadoopStepConfig
-- &lt;p&gt;A cluster step consisting of a JAR file whose main function will be executed. The main function submits a job for Hadoop to execute and waits for the job to finish or fail.&lt;/p&gt;
-- @param MainClass [String] &lt;p&gt;The name of the main class in the specified Java file. If not specified, the JAR file should specify a main class in its manifest file.&lt;/p&gt;
-- @param Args [StringList] &lt;p&gt;The list of command line arguments to pass to the JAR file's main function for execution.&lt;/p&gt;
-- @param Jar [String] &lt;p&gt;The path to the JAR file that runs during the step.&lt;/p&gt;
-- @param Properties [StringMap] &lt;p&gt;The list of Java properties that are set when the step runs. You can use these properties to pass key value pairs to your main function.&lt;/p&gt;
function M.HadoopStepConfig(MainClass, Args, Jar, Properties, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HadoopStepConfig")
	local t = { 
		["MainClass"] = MainClass,
		["Args"] = Args,
		["Jar"] = Jar,
		["Properties"] = Properties,
	}
	M.AssertHadoopStepConfig(t)
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
-- &lt;p&gt;This output indicates the result of removing tags from a resource.&lt;/p&gt;
function M.RemoveTagsOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveTagsOutput")
	local t = { 
	}
	M.AssertRemoveTagsOutput(t)
	return t
end

local ScalingTrigger_keys = { "CloudWatchAlarmDefinition" = true, nil }

function M.AssertScalingTrigger(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScalingTrigger to be of type 'table'")
	assert(struct["CloudWatchAlarmDefinition"], "Expected key CloudWatchAlarmDefinition to exist in table")
	if struct["CloudWatchAlarmDefinition"] then M.AssertCloudWatchAlarmDefinition(struct["CloudWatchAlarmDefinition"]) end
	for k,_ in pairs(struct) do
		assert(ScalingTrigger_keys[k], "ScalingTrigger contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScalingTrigger
-- &lt;p&gt;The conditions that trigger an automatic scaling activity.&lt;/p&gt;
-- @param CloudWatchAlarmDefinition [CloudWatchAlarmDefinition] &lt;p&gt;The definition of a CloudWatch metric alarm. When the defined alarm conditions are met along with other trigger parameters, scaling activity begins.&lt;/p&gt;
-- Required parameter: CloudWatchAlarmDefinition
function M.ScalingTrigger(CloudWatchAlarmDefinition, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ScalingTrigger")
	local t = { 
		["CloudWatchAlarmDefinition"] = CloudWatchAlarmDefinition,
	}
	M.AssertScalingTrigger(t)
	return t
end

local InstanceTimeline_keys = { "ReadyDateTime" = true, "CreationDateTime" = true, "EndDateTime" = true, nil }

function M.AssertInstanceTimeline(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceTimeline to be of type 'table'")
	if struct["ReadyDateTime"] then M.AssertDate(struct["ReadyDateTime"]) end
	if struct["CreationDateTime"] then M.AssertDate(struct["CreationDateTime"]) end
	if struct["EndDateTime"] then M.AssertDate(struct["EndDateTime"]) end
	for k,_ in pairs(struct) do
		assert(InstanceTimeline_keys[k], "InstanceTimeline contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceTimeline
-- &lt;p&gt;The timeline of the instance lifecycle.&lt;/p&gt;
-- @param ReadyDateTime [Date] &lt;p&gt;The date and time when the instance was ready to perform tasks.&lt;/p&gt;
-- @param CreationDateTime [Date] &lt;p&gt;The creation date and time of the instance.&lt;/p&gt;
-- @param EndDateTime [Date] &lt;p&gt;The date and time when the instance was terminated.&lt;/p&gt;
function M.InstanceTimeline(ReadyDateTime, CreationDateTime, EndDateTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceTimeline")
	local t = { 
		["ReadyDateTime"] = ReadyDateTime,
		["CreationDateTime"] = CreationDateTime,
		["EndDateTime"] = EndDateTime,
	}
	M.AssertInstanceTimeline(t)
	return t
end

local InstanceFleetProvisioningSpecifications_keys = { "SpotSpecification" = true, nil }

function M.AssertInstanceFleetProvisioningSpecifications(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceFleetProvisioningSpecifications to be of type 'table'")
	assert(struct["SpotSpecification"], "Expected key SpotSpecification to exist in table")
	if struct["SpotSpecification"] then M.AssertSpotProvisioningSpecification(struct["SpotSpecification"]) end
	for k,_ in pairs(struct) do
		assert(InstanceFleetProvisioningSpecifications_keys[k], "InstanceFleetProvisioningSpecifications contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceFleetProvisioningSpecifications
-- &lt;p&gt;The launch specification for Spot instances in the fleet, which determines the defined duration and provisioning timeout behavior.&lt;/p&gt; &lt;note&gt; &lt;p&gt;The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.&lt;/p&gt; &lt;/note&gt;
-- @param SpotSpecification [SpotProvisioningSpecification] &lt;p&gt;The launch specification for Spot instances in the fleet, which determines the defined duration and provisioning timeout behavior.&lt;/p&gt;
-- Required parameter: SpotSpecification
function M.InstanceFleetProvisioningSpecifications(SpotSpecification, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceFleetProvisioningSpecifications")
	local t = { 
		["SpotSpecification"] = SpotSpecification,
	}
	M.AssertInstanceFleetProvisioningSpecifications(t)
	return t
end

local RemoveAutoScalingPolicyOutput_keys = { nil }

function M.AssertRemoveAutoScalingPolicyOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveAutoScalingPolicyOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(RemoveAutoScalingPolicyOutput_keys[k], "RemoveAutoScalingPolicyOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveAutoScalingPolicyOutput
--  
function M.RemoveAutoScalingPolicyOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveAutoScalingPolicyOutput")
	local t = { 
	}
	M.AssertRemoveAutoScalingPolicyOutput(t)
	return t
end

local ScalingConstraints_keys = { "MinCapacity" = true, "MaxCapacity" = true, nil }

function M.AssertScalingConstraints(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScalingConstraints to be of type 'table'")
	assert(struct["MinCapacity"], "Expected key MinCapacity to exist in table")
	assert(struct["MaxCapacity"], "Expected key MaxCapacity to exist in table")
	if struct["MinCapacity"] then M.AssertInteger(struct["MinCapacity"]) end
	if struct["MaxCapacity"] then M.AssertInteger(struct["MaxCapacity"]) end
	for k,_ in pairs(struct) do
		assert(ScalingConstraints_keys[k], "ScalingConstraints contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScalingConstraints
-- &lt;p&gt;The upper and lower EC2 instance limits for an automatic scaling policy. Automatic scaling activities triggered by automatic scaling rules will not cause an instance group to grow above or below these limits.&lt;/p&gt;
-- @param MinCapacity [Integer] &lt;p&gt;The lower boundary of EC2 instances in an instance group below which scaling activities are not allowed to shrink. Scale-in activities will not terminate instances below this boundary.&lt;/p&gt;
-- @param MaxCapacity [Integer] &lt;p&gt;The upper boundary of EC2 instances in an instance group beyond which scaling activities are not allowed to grow. Scale-out activities will not add instances beyond this boundary.&lt;/p&gt;
-- Required parameter: MinCapacity
-- Required parameter: MaxCapacity
function M.ScalingConstraints(MinCapacity, MaxCapacity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ScalingConstraints")
	local t = { 
		["MinCapacity"] = MinCapacity,
		["MaxCapacity"] = MaxCapacity,
	}
	M.AssertScalingConstraints(t)
	return t
end

local InstanceTypeSpecification_keys = { "EbsBlockDevices" = true, "EbsOptimized" = true, "BidPrice" = true, "BidPriceAsPercentageOfOnDemandPrice" = true, "WeightedCapacity" = true, "InstanceType" = true, "Configurations" = true, nil }

function M.AssertInstanceTypeSpecification(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceTypeSpecification to be of type 'table'")
	if struct["EbsBlockDevices"] then M.AssertEbsBlockDeviceList(struct["EbsBlockDevices"]) end
	if struct["EbsOptimized"] then M.AssertBooleanObject(struct["EbsOptimized"]) end
	if struct["BidPrice"] then M.AssertXmlStringMaxLen256(struct["BidPrice"]) end
	if struct["BidPriceAsPercentageOfOnDemandPrice"] then M.AssertNonNegativeDouble(struct["BidPriceAsPercentageOfOnDemandPrice"]) end
	if struct["WeightedCapacity"] then M.AssertWholeNumber(struct["WeightedCapacity"]) end
	if struct["InstanceType"] then M.AssertInstanceType(struct["InstanceType"]) end
	if struct["Configurations"] then M.AssertConfigurationList(struct["Configurations"]) end
	for k,_ in pairs(struct) do
		assert(InstanceTypeSpecification_keys[k], "InstanceTypeSpecification contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceTypeSpecification
-- &lt;p&gt;The configuration specification for each instance type in an instance fleet.&lt;/p&gt; &lt;note&gt; &lt;p&gt;The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.&lt;/p&gt; &lt;/note&gt;
-- @param EbsBlockDevices [EbsBlockDeviceList] &lt;p&gt;The configuration of Amazon Elastic Block Storage (EBS) attached to each instance as defined by &lt;code&gt;InstanceType&lt;/code&gt;.&lt;/p&gt;
-- @param EbsOptimized [BooleanObject] &lt;p&gt;Evaluates to &lt;code&gt;TRUE&lt;/code&gt; when the specified &lt;code&gt;InstanceType&lt;/code&gt; is EBS-optimized.&lt;/p&gt;
-- @param BidPrice [XmlStringMaxLen256] &lt;p&gt;The bid price for each EC2 Spot instance type as defined by &lt;code&gt;InstanceType&lt;/code&gt;. Expressed in USD.&lt;/p&gt;
-- @param BidPriceAsPercentageOfOnDemandPrice [NonNegativeDouble] &lt;p&gt;The bid price, as a percentage of On-Demand price, for each EC2 Spot instance as defined by &lt;code&gt;InstanceType&lt;/code&gt;. Expressed as a number (for example, 20 specifies 20%).&lt;/p&gt;
-- @param WeightedCapacity [WholeNumber] &lt;p&gt;The number of units that a provisioned instance of this type provides toward fulfilling the target capacities defined in &lt;a&gt;InstanceFleetConfig&lt;/a&gt;. Capacity values represent performance characteristics such as vCPUs, memory, or I/O. If not specified, the default value is 1.&lt;/p&gt;
-- @param InstanceType [InstanceType] &lt;p&gt;The EC2 instance type, for example &lt;code&gt;m3.xlarge&lt;/code&gt;.&lt;/p&gt;
-- @param Configurations [ConfigurationList] &lt;p&gt;A configuration classification that applies when provisioning cluster instances, which can include configurations for applications and software bundled with Amazon EMR.&lt;/p&gt;
function M.InstanceTypeSpecification(EbsBlockDevices, EbsOptimized, BidPrice, BidPriceAsPercentageOfOnDemandPrice, WeightedCapacity, InstanceType, Configurations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceTypeSpecification")
	local t = { 
		["EbsBlockDevices"] = EbsBlockDevices,
		["EbsOptimized"] = EbsOptimized,
		["BidPrice"] = BidPrice,
		["BidPriceAsPercentageOfOnDemandPrice"] = BidPriceAsPercentageOfOnDemandPrice,
		["WeightedCapacity"] = WeightedCapacity,
		["InstanceType"] = InstanceType,
		["Configurations"] = Configurations,
	}
	M.AssertInstanceTypeSpecification(t)
	return t
end

local RunJobFlowOutput_keys = { "JobFlowId" = true, nil }

function M.AssertRunJobFlowOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RunJobFlowOutput to be of type 'table'")
	if struct["JobFlowId"] then M.AssertXmlStringMaxLen256(struct["JobFlowId"]) end
	for k,_ in pairs(struct) do
		assert(RunJobFlowOutput_keys[k], "RunJobFlowOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RunJobFlowOutput
-- &lt;p&gt; The result of the &lt;a&gt;RunJobFlow&lt;/a&gt; operation. &lt;/p&gt;
-- @param JobFlowId [XmlStringMaxLen256] &lt;p&gt;An unique identifier for the job flow.&lt;/p&gt;
function M.RunJobFlowOutput(JobFlowId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RunJobFlowOutput")
	local t = { 
		["JobFlowId"] = JobFlowId,
	}
	M.AssertRunJobFlowOutput(t)
	return t
end

local Instance_keys = { "Status" = true, "Ec2InstanceId" = true, "InstanceFleetId" = true, "EbsVolumes" = true, "PublicDnsName" = true, "InstanceType" = true, "PrivateDnsName" = true, "Market" = true, "PublicIpAddress" = true, "InstanceGroupId" = true, "Id" = true, "PrivateIpAddress" = true, nil }

function M.AssertInstance(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Instance to be of type 'table'")
	if struct["Status"] then M.AssertInstanceStatus(struct["Status"]) end
	if struct["Ec2InstanceId"] then M.AssertInstanceId(struct["Ec2InstanceId"]) end
	if struct["InstanceFleetId"] then M.AssertInstanceFleetId(struct["InstanceFleetId"]) end
	if struct["EbsVolumes"] then M.AssertEbsVolumeList(struct["EbsVolumes"]) end
	if struct["PublicDnsName"] then M.AssertString(struct["PublicDnsName"]) end
	if struct["InstanceType"] then M.AssertInstanceType(struct["InstanceType"]) end
	if struct["PrivateDnsName"] then M.AssertString(struct["PrivateDnsName"]) end
	if struct["Market"] then M.AssertMarketType(struct["Market"]) end
	if struct["PublicIpAddress"] then M.AssertString(struct["PublicIpAddress"]) end
	if struct["InstanceGroupId"] then M.AssertString(struct["InstanceGroupId"]) end
	if struct["Id"] then M.AssertInstanceId(struct["Id"]) end
	if struct["PrivateIpAddress"] then M.AssertString(struct["PrivateIpAddress"]) end
	for k,_ in pairs(struct) do
		assert(Instance_keys[k], "Instance contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Instance
-- &lt;p&gt;Represents an EC2 instance provisioned as part of cluster.&lt;/p&gt;
-- @param Status [InstanceStatus] &lt;p&gt;The current status of the instance.&lt;/p&gt;
-- @param Ec2InstanceId [InstanceId] &lt;p&gt;The unique identifier of the instance in Amazon EC2.&lt;/p&gt;
-- @param InstanceFleetId [InstanceFleetId] &lt;p&gt;The unique identifier of the instance fleet to which an EC2 instance belongs.&lt;/p&gt;
-- @param EbsVolumes [EbsVolumeList] &lt;p&gt;The list of EBS volumes that are attached to this instance.&lt;/p&gt;
-- @param PublicDnsName [String] &lt;p&gt;The public DNS name of the instance.&lt;/p&gt;
-- @param InstanceType [InstanceType] &lt;p&gt;The EC2 instance type, for example &lt;code&gt;m3.xlarge&lt;/code&gt;.&lt;/p&gt;
-- @param PrivateDnsName [String] &lt;p&gt;The private DNS name of the instance.&lt;/p&gt;
-- @param Market [MarketType] &lt;p&gt;The instance purchasing option. Valid values are &lt;code&gt;ON_DEMAND&lt;/code&gt; or &lt;code&gt;SPOT&lt;/code&gt;. &lt;/p&gt;
-- @param PublicIpAddress [String] &lt;p&gt;The public IP address of the instance.&lt;/p&gt;
-- @param InstanceGroupId [String] &lt;p&gt;The identifier of the instance group to which this instance belongs.&lt;/p&gt;
-- @param Id [InstanceId] &lt;p&gt;The unique identifier for the instance in Amazon EMR.&lt;/p&gt;
-- @param PrivateIpAddress [String] &lt;p&gt;The private IP address of the instance.&lt;/p&gt;
function M.Instance(Status, Ec2InstanceId, InstanceFleetId, EbsVolumes, PublicDnsName, InstanceType, PrivateDnsName, Market, PublicIpAddress, InstanceGroupId, Id, PrivateIpAddress, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Instance")
	local t = { 
		["Status"] = Status,
		["Ec2InstanceId"] = Ec2InstanceId,
		["InstanceFleetId"] = InstanceFleetId,
		["EbsVolumes"] = EbsVolumes,
		["PublicDnsName"] = PublicDnsName,
		["InstanceType"] = InstanceType,
		["PrivateDnsName"] = PrivateDnsName,
		["Market"] = Market,
		["PublicIpAddress"] = PublicIpAddress,
		["InstanceGroupId"] = InstanceGroupId,
		["Id"] = Id,
		["PrivateIpAddress"] = PrivateIpAddress,
	}
	M.AssertInstance(t)
	return t
end

local SupportedProductConfig_keys = { "Args" = true, "Name" = true, nil }

function M.AssertSupportedProductConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SupportedProductConfig to be of type 'table'")
	if struct["Args"] then M.AssertXmlStringList(struct["Args"]) end
	if struct["Name"] then M.AssertXmlStringMaxLen256(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(SupportedProductConfig_keys[k], "SupportedProductConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SupportedProductConfig
-- &lt;p&gt;The list of supported product configurations which allow user-supplied arguments. EMR accepts these arguments and forwards them to the corresponding installation script as bootstrap action arguments.&lt;/p&gt;
-- @param Args [XmlStringList] &lt;p&gt;The list of user-supplied arguments.&lt;/p&gt;
-- @param Name [XmlStringMaxLen256] &lt;p&gt;The name of the product configuration.&lt;/p&gt;
function M.SupportedProductConfig(Args, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SupportedProductConfig")
	local t = { 
		["Args"] = Args,
		["Name"] = Name,
	}
	M.AssertSupportedProductConfig(t)
	return t
end

local ListInstanceFleetsInput_keys = { "Marker" = true, "ClusterId" = true, nil }

function M.AssertListInstanceFleetsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListInstanceFleetsInput to be of type 'table'")
	assert(struct["ClusterId"], "Expected key ClusterId to exist in table")
	if struct["Marker"] then M.AssertMarker(struct["Marker"]) end
	if struct["ClusterId"] then M.AssertClusterId(struct["ClusterId"]) end
	for k,_ in pairs(struct) do
		assert(ListInstanceFleetsInput_keys[k], "ListInstanceFleetsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListInstanceFleetsInput
--  
-- @param Marker [Marker] &lt;p&gt;The pagination token that indicates the next set of results to retrieve.&lt;/p&gt;
-- @param ClusterId [ClusterId] &lt;p&gt;The unique identifier of the cluster.&lt;/p&gt;
-- Required parameter: ClusterId
function M.ListInstanceFleetsInput(Marker, ClusterId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListInstanceFleetsInput")
	local t = { 
		["Marker"] = Marker,
		["ClusterId"] = ClusterId,
	}
	M.AssertListInstanceFleetsInput(t)
	return t
end

local PutAutoScalingPolicyInput_keys = { "InstanceGroupId" = true, "ClusterId" = true, "AutoScalingPolicy" = true, nil }

function M.AssertPutAutoScalingPolicyInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutAutoScalingPolicyInput to be of type 'table'")
	assert(struct["ClusterId"], "Expected key ClusterId to exist in table")
	assert(struct["InstanceGroupId"], "Expected key InstanceGroupId to exist in table")
	assert(struct["AutoScalingPolicy"], "Expected key AutoScalingPolicy to exist in table")
	if struct["InstanceGroupId"] then M.AssertInstanceGroupId(struct["InstanceGroupId"]) end
	if struct["ClusterId"] then M.AssertClusterId(struct["ClusterId"]) end
	if struct["AutoScalingPolicy"] then M.AssertAutoScalingPolicy(struct["AutoScalingPolicy"]) end
	for k,_ in pairs(struct) do
		assert(PutAutoScalingPolicyInput_keys[k], "PutAutoScalingPolicyInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutAutoScalingPolicyInput
--  
-- @param InstanceGroupId [InstanceGroupId] &lt;p&gt;Specifies the ID of the instance group to which the automatic scaling policy is applied.&lt;/p&gt;
-- @param ClusterId [ClusterId] &lt;p&gt;Specifies the ID of a cluster. The instance group to which the automatic scaling policy is applied is within this cluster.&lt;/p&gt;
-- @param AutoScalingPolicy [AutoScalingPolicy] &lt;p&gt;Specifies the definition of the automatic scaling policy.&lt;/p&gt;
-- Required parameter: ClusterId
-- Required parameter: InstanceGroupId
-- Required parameter: AutoScalingPolicy
function M.PutAutoScalingPolicyInput(InstanceGroupId, ClusterId, AutoScalingPolicy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutAutoScalingPolicyInput")
	local t = { 
		["InstanceGroupId"] = InstanceGroupId,
		["ClusterId"] = ClusterId,
		["AutoScalingPolicy"] = AutoScalingPolicy,
	}
	M.AssertPutAutoScalingPolicyInput(t)
	return t
end

local ListClustersOutput_keys = { "Marker" = true, "Clusters" = true, nil }

function M.AssertListClustersOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListClustersOutput to be of type 'table'")
	if struct["Marker"] then M.AssertMarker(struct["Marker"]) end
	if struct["Clusters"] then M.AssertClusterSummaryList(struct["Clusters"]) end
	for k,_ in pairs(struct) do
		assert(ListClustersOutput_keys[k], "ListClustersOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListClustersOutput
-- &lt;p&gt;This contains a ClusterSummaryList with the cluster details; for example, the cluster IDs, names, and status.&lt;/p&gt;
-- @param Marker [Marker] &lt;p&gt;The pagination token that indicates the next set of results to retrieve.&lt;/p&gt;
-- @param Clusters [ClusterSummaryList] &lt;p&gt;The list of clusters for the account based on the given filters.&lt;/p&gt;
function M.ListClustersOutput(Marker, Clusters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListClustersOutput")
	local t = { 
		["Marker"] = Marker,
		["Clusters"] = Clusters,
	}
	M.AssertListClustersOutput(t)
	return t
end

local ListInstancesOutput_keys = { "Marker" = true, "Instances" = true, nil }

function M.AssertListInstancesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListInstancesOutput to be of type 'table'")
	if struct["Marker"] then M.AssertMarker(struct["Marker"]) end
	if struct["Instances"] then M.AssertInstanceList(struct["Instances"]) end
	for k,_ in pairs(struct) do
		assert(ListInstancesOutput_keys[k], "ListInstancesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListInstancesOutput
-- &lt;p&gt;This output contains the list of instances.&lt;/p&gt;
-- @param Marker [Marker] &lt;p&gt;The pagination token that indicates the next set of results to retrieve.&lt;/p&gt;
-- @param Instances [InstanceList] &lt;p&gt;The list of instances for the cluster and given filters.&lt;/p&gt;
function M.ListInstancesOutput(Marker, Instances, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListInstancesOutput")
	local t = { 
		["Marker"] = Marker,
		["Instances"] = Instances,
	}
	M.AssertListInstancesOutput(t)
	return t
end

local InstanceResizePolicy_keys = { "InstanceTerminationTimeout" = true, "InstancesToProtect" = true, "InstancesToTerminate" = true, nil }

function M.AssertInstanceResizePolicy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceResizePolicy to be of type 'table'")
	if struct["InstanceTerminationTimeout"] then M.AssertInteger(struct["InstanceTerminationTimeout"]) end
	if struct["InstancesToProtect"] then M.AssertEC2InstanceIdsList(struct["InstancesToProtect"]) end
	if struct["InstancesToTerminate"] then M.AssertEC2InstanceIdsList(struct["InstancesToTerminate"]) end
	for k,_ in pairs(struct) do
		assert(InstanceResizePolicy_keys[k], "InstanceResizePolicy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceResizePolicy
-- &lt;p&gt;Custom policy for requesting termination protection or termination of specific instances when shrinking an instance group.&lt;/p&gt;
-- @param InstanceTerminationTimeout [Integer] &lt;p&gt;Decommissioning timeout override for the specific list of instances to be terminated.&lt;/p&gt;
-- @param InstancesToProtect [EC2InstanceIdsList] &lt;p&gt;Specific list of instances to be protected when shrinking an instance group.&lt;/p&gt;
-- @param InstancesToTerminate [EC2InstanceIdsList] &lt;p&gt;Specific list of instances to be terminated when shrinking an instance group.&lt;/p&gt;
function M.InstanceResizePolicy(InstanceTerminationTimeout, InstancesToProtect, InstancesToTerminate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceResizePolicy")
	local t = { 
		["InstanceTerminationTimeout"] = InstanceTerminationTimeout,
		["InstancesToProtect"] = InstancesToProtect,
		["InstancesToTerminate"] = InstancesToTerminate,
	}
	M.AssertInstanceResizePolicy(t)
	return t
end

local InstanceGroupDetail_keys = { "ReadyDateTime" = true, "Name" = true, "InstanceRole" = true, "EndDateTime" = true, "InstanceRequestCount" = true, "State" = true, "BidPrice" = true, "LastStateChangeReason" = true, "StartDateTime" = true, "InstanceGroupId" = true, "InstanceRunningCount" = true, "CreationDateTime" = true, "InstanceType" = true, "Market" = true, nil }

function M.AssertInstanceGroupDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceGroupDetail to be of type 'table'")
	assert(struct["Market"], "Expected key Market to exist in table")
	assert(struct["InstanceRole"], "Expected key InstanceRole to exist in table")
	assert(struct["InstanceType"], "Expected key InstanceType to exist in table")
	assert(struct["InstanceRequestCount"], "Expected key InstanceRequestCount to exist in table")
	assert(struct["InstanceRunningCount"], "Expected key InstanceRunningCount to exist in table")
	assert(struct["State"], "Expected key State to exist in table")
	assert(struct["CreationDateTime"], "Expected key CreationDateTime to exist in table")
	if struct["ReadyDateTime"] then M.AssertDate(struct["ReadyDateTime"]) end
	if struct["Name"] then M.AssertXmlStringMaxLen256(struct["Name"]) end
	if struct["InstanceRole"] then M.AssertInstanceRoleType(struct["InstanceRole"]) end
	if struct["EndDateTime"] then M.AssertDate(struct["EndDateTime"]) end
	if struct["InstanceRequestCount"] then M.AssertInteger(struct["InstanceRequestCount"]) end
	if struct["State"] then M.AssertInstanceGroupState(struct["State"]) end
	if struct["BidPrice"] then M.AssertXmlStringMaxLen256(struct["BidPrice"]) end
	if struct["LastStateChangeReason"] then M.AssertXmlString(struct["LastStateChangeReason"]) end
	if struct["StartDateTime"] then M.AssertDate(struct["StartDateTime"]) end
	if struct["InstanceGroupId"] then M.AssertXmlStringMaxLen256(struct["InstanceGroupId"]) end
	if struct["InstanceRunningCount"] then M.AssertInteger(struct["InstanceRunningCount"]) end
	if struct["CreationDateTime"] then M.AssertDate(struct["CreationDateTime"]) end
	if struct["InstanceType"] then M.AssertInstanceType(struct["InstanceType"]) end
	if struct["Market"] then M.AssertMarketType(struct["Market"]) end
	for k,_ in pairs(struct) do
		assert(InstanceGroupDetail_keys[k], "InstanceGroupDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceGroupDetail
-- &lt;p&gt;Detailed information about an instance group.&lt;/p&gt;
-- @param ReadyDateTime [Date] &lt;p&gt;The date/time the instance group was available to the cluster.&lt;/p&gt;
-- @param Name [XmlStringMaxLen256] &lt;p&gt;Friendly name for the instance group.&lt;/p&gt;
-- @param InstanceRole [InstanceRoleType] &lt;p&gt;Instance group role in the cluster&lt;/p&gt;
-- @param EndDateTime [Date] &lt;p&gt;The date/time the instance group was terminated.&lt;/p&gt;
-- @param InstanceRequestCount [Integer] &lt;p&gt;Target number of instances to run in the instance group.&lt;/p&gt;
-- @param State [InstanceGroupState] &lt;p&gt;State of instance group. The following values are deprecated: STARTING, TERMINATED, and FAILED.&lt;/p&gt;
-- @param BidPrice [XmlStringMaxLen256] &lt;p&gt;Bid price for EC2 Instances when launching nodes as Spot Instances, expressed in USD.&lt;/p&gt;
-- @param LastStateChangeReason [XmlString] &lt;p&gt;Details regarding the state of the instance group.&lt;/p&gt;
-- @param StartDateTime [Date] &lt;p&gt;The date/time the instance group was started.&lt;/p&gt;
-- @param InstanceGroupId [XmlStringMaxLen256] &lt;p&gt;Unique identifier for the instance group.&lt;/p&gt;
-- @param InstanceRunningCount [Integer] &lt;p&gt;Actual count of running instances.&lt;/p&gt;
-- @param CreationDateTime [Date] &lt;p&gt;The date/time the instance group was created.&lt;/p&gt;
-- @param InstanceType [InstanceType] &lt;p&gt;EC2 instance type.&lt;/p&gt;
-- @param Market [MarketType] &lt;p&gt;Market type of the EC2 instances used to create a cluster node.&lt;/p&gt;
-- Required parameter: Market
-- Required parameter: InstanceRole
-- Required parameter: InstanceType
-- Required parameter: InstanceRequestCount
-- Required parameter: InstanceRunningCount
-- Required parameter: State
-- Required parameter: CreationDateTime
function M.InstanceGroupDetail(ReadyDateTime, Name, InstanceRole, EndDateTime, InstanceRequestCount, State, BidPrice, LastStateChangeReason, StartDateTime, InstanceGroupId, InstanceRunningCount, CreationDateTime, InstanceType, Market, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceGroupDetail")
	local t = { 
		["ReadyDateTime"] = ReadyDateTime,
		["Name"] = Name,
		["InstanceRole"] = InstanceRole,
		["EndDateTime"] = EndDateTime,
		["InstanceRequestCount"] = InstanceRequestCount,
		["State"] = State,
		["BidPrice"] = BidPrice,
		["LastStateChangeReason"] = LastStateChangeReason,
		["StartDateTime"] = StartDateTime,
		["InstanceGroupId"] = InstanceGroupId,
		["InstanceRunningCount"] = InstanceRunningCount,
		["CreationDateTime"] = CreationDateTime,
		["InstanceType"] = InstanceType,
		["Market"] = Market,
	}
	M.AssertInstanceGroupDetail(t)
	return t
end

local EbsVolume_keys = { "Device" = true, "VolumeId" = true, nil }

function M.AssertEbsVolume(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EbsVolume to be of type 'table'")
	if struct["Device"] then M.AssertString(struct["Device"]) end
	if struct["VolumeId"] then M.AssertString(struct["VolumeId"]) end
	for k,_ in pairs(struct) do
		assert(EbsVolume_keys[k], "EbsVolume contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EbsVolume
-- &lt;p&gt;EBS block device that's attached to an EC2 instance.&lt;/p&gt;
-- @param Device [String] &lt;p&gt;The device name that is exposed to the instance, such as /dev/sdh.&lt;/p&gt;
-- @param VolumeId [String] &lt;p&gt;The volume identifier of the EBS volume.&lt;/p&gt;
function M.EbsVolume(Device, VolumeId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EbsVolume")
	local t = { 
		["Device"] = Device,
		["VolumeId"] = VolumeId,
	}
	M.AssertEbsVolume(t)
	return t
end

local DescribeSecurityConfigurationInput_keys = { "Name" = true, nil }

function M.AssertDescribeSecurityConfigurationInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSecurityConfigurationInput to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then M.AssertXmlString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(DescribeSecurityConfigurationInput_keys[k], "DescribeSecurityConfigurationInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSecurityConfigurationInput
--  
-- @param Name [XmlString] &lt;p&gt;The name of the security configuration.&lt;/p&gt;
-- Required parameter: Name
function M.DescribeSecurityConfigurationInput(Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeSecurityConfigurationInput")
	local t = { 
		["Name"] = Name,
	}
	M.AssertDescribeSecurityConfigurationInput(t)
	return t
end

local AddJobFlowStepsInput_keys = { "Steps" = true, "JobFlowId" = true, nil }

function M.AssertAddJobFlowStepsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddJobFlowStepsInput to be of type 'table'")
	assert(struct["JobFlowId"], "Expected key JobFlowId to exist in table")
	assert(struct["Steps"], "Expected key Steps to exist in table")
	if struct["Steps"] then M.AssertStepConfigList(struct["Steps"]) end
	if struct["JobFlowId"] then M.AssertXmlStringMaxLen256(struct["JobFlowId"]) end
	for k,_ in pairs(struct) do
		assert(AddJobFlowStepsInput_keys[k], "AddJobFlowStepsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddJobFlowStepsInput
-- &lt;p&gt; The input argument to the &lt;a&gt;AddJobFlowSteps&lt;/a&gt; operation. &lt;/p&gt;
-- @param Steps [StepConfigList] &lt;p&gt; A list of &lt;a&gt;StepConfig&lt;/a&gt; to be executed by the job flow. &lt;/p&gt;
-- @param JobFlowId [XmlStringMaxLen256] &lt;p&gt;A string that uniquely identifies the job flow. This identifier is returned by &lt;a&gt;RunJobFlow&lt;/a&gt; and can also be obtained from &lt;a&gt;ListClusters&lt;/a&gt;. &lt;/p&gt;
-- Required parameter: JobFlowId
-- Required parameter: Steps
function M.AddJobFlowStepsInput(Steps, JobFlowId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddJobFlowStepsInput")
	local t = { 
		["Steps"] = Steps,
		["JobFlowId"] = JobFlowId,
	}
	M.AssertAddJobFlowStepsInput(t)
	return t
end

local InstanceFleetStatus_keys = { "Timeline" = true, "State" = true, "StateChangeReason" = true, nil }

function M.AssertInstanceFleetStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceFleetStatus to be of type 'table'")
	if struct["Timeline"] then M.AssertInstanceFleetTimeline(struct["Timeline"]) end
	if struct["State"] then M.AssertInstanceFleetState(struct["State"]) end
	if struct["StateChangeReason"] then M.AssertInstanceFleetStateChangeReason(struct["StateChangeReason"]) end
	for k,_ in pairs(struct) do
		assert(InstanceFleetStatus_keys[k], "InstanceFleetStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceFleetStatus
-- &lt;p&gt;The status of the instance fleet.&lt;/p&gt; &lt;note&gt; &lt;p&gt;The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.&lt;/p&gt; &lt;/note&gt;
-- @param Timeline [InstanceFleetTimeline] &lt;p&gt;Provides historical timestamps for the instance fleet, including the time of creation, the time it became ready to run jobs, and the time of termination.&lt;/p&gt;
-- @param State [InstanceFleetState] &lt;p&gt;A code representing the instance fleet status.&lt;/p&gt;
-- @param StateChangeReason [InstanceFleetStateChangeReason] &lt;p&gt;Provides status change reason details for the instance fleet.&lt;/p&gt;
function M.InstanceFleetStatus(Timeline, State, StateChangeReason, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceFleetStatus")
	local t = { 
		["Timeline"] = Timeline,
		["State"] = State,
		["StateChangeReason"] = StateChangeReason,
	}
	M.AssertInstanceFleetStatus(t)
	return t
end

local DescribeClusterInput_keys = { "ClusterId" = true, nil }

function M.AssertDescribeClusterInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeClusterInput to be of type 'table'")
	assert(struct["ClusterId"], "Expected key ClusterId to exist in table")
	if struct["ClusterId"] then M.AssertClusterId(struct["ClusterId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeClusterInput_keys[k], "DescribeClusterInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeClusterInput
-- &lt;p&gt;This input determines which cluster to describe.&lt;/p&gt;
-- @param ClusterId [ClusterId] &lt;p&gt;The identifier of the cluster to describe.&lt;/p&gt;
-- Required parameter: ClusterId
function M.DescribeClusterInput(ClusterId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeClusterInput")
	local t = { 
		["ClusterId"] = ClusterId,
	}
	M.AssertDescribeClusterInput(t)
	return t
end

local ListStepsOutput_keys = { "Marker" = true, "Steps" = true, nil }

function M.AssertListStepsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListStepsOutput to be of type 'table'")
	if struct["Marker"] then M.AssertMarker(struct["Marker"]) end
	if struct["Steps"] then M.AssertStepSummaryList(struct["Steps"]) end
	for k,_ in pairs(struct) do
		assert(ListStepsOutput_keys[k], "ListStepsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListStepsOutput
-- &lt;p&gt;This output contains the list of steps returned in reverse order. This means that the last step is the first element in the list.&lt;/p&gt;
-- @param Marker [Marker] &lt;p&gt;The pagination token that indicates the next set of results to retrieve.&lt;/p&gt;
-- @param Steps [StepSummaryList] &lt;p&gt;The filtered list of steps for the cluster.&lt;/p&gt;
function M.ListStepsOutput(Marker, Steps, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListStepsOutput")
	local t = { 
		["Marker"] = Marker,
		["Steps"] = Steps,
	}
	M.AssertListStepsOutput(t)
	return t
end

local ScriptBootstrapActionConfig_keys = { "Path" = true, "Args" = true, nil }

function M.AssertScriptBootstrapActionConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScriptBootstrapActionConfig to be of type 'table'")
	assert(struct["Path"], "Expected key Path to exist in table")
	if struct["Path"] then M.AssertXmlString(struct["Path"]) end
	if struct["Args"] then M.AssertXmlStringList(struct["Args"]) end
	for k,_ in pairs(struct) do
		assert(ScriptBootstrapActionConfig_keys[k], "ScriptBootstrapActionConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScriptBootstrapActionConfig
-- &lt;p&gt;Configuration of the script to run during a bootstrap action.&lt;/p&gt;
-- @param Path [XmlString] &lt;p&gt;Location of the script to run during a bootstrap action. Can be either a location in Amazon S3 or on a local file system.&lt;/p&gt;
-- @param Args [XmlStringList] &lt;p&gt;A list of command line arguments to pass to the bootstrap action script.&lt;/p&gt;
-- Required parameter: Path
function M.ScriptBootstrapActionConfig(Path, Args, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ScriptBootstrapActionConfig")
	local t = { 
		["Path"] = Path,
		["Args"] = Args,
	}
	M.AssertScriptBootstrapActionConfig(t)
	return t
end

local AddInstanceFleetInput_keys = { "InstanceFleet" = true, "ClusterId" = true, nil }

function M.AssertAddInstanceFleetInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddInstanceFleetInput to be of type 'table'")
	assert(struct["ClusterId"], "Expected key ClusterId to exist in table")
	assert(struct["InstanceFleet"], "Expected key InstanceFleet to exist in table")
	if struct["InstanceFleet"] then M.AssertInstanceFleetConfig(struct["InstanceFleet"]) end
	if struct["ClusterId"] then M.AssertXmlStringMaxLen256(struct["ClusterId"]) end
	for k,_ in pairs(struct) do
		assert(AddInstanceFleetInput_keys[k], "AddInstanceFleetInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddInstanceFleetInput
--  
-- @param InstanceFleet [InstanceFleetConfig] &lt;p&gt;Specifies the configuration of the instance fleet.&lt;/p&gt;
-- @param ClusterId [XmlStringMaxLen256] &lt;p&gt;The unique identifier of the cluster.&lt;/p&gt;
-- Required parameter: ClusterId
-- Required parameter: InstanceFleet
function M.AddInstanceFleetInput(InstanceFleet, ClusterId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddInstanceFleetInput")
	local t = { 
		["InstanceFleet"] = InstanceFleet,
		["ClusterId"] = ClusterId,
	}
	M.AssertAddInstanceFleetInput(t)
	return t
end

local RemoveAutoScalingPolicyInput_keys = { "InstanceGroupId" = true, "ClusterId" = true, nil }

function M.AssertRemoveAutoScalingPolicyInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveAutoScalingPolicyInput to be of type 'table'")
	assert(struct["ClusterId"], "Expected key ClusterId to exist in table")
	assert(struct["InstanceGroupId"], "Expected key InstanceGroupId to exist in table")
	if struct["InstanceGroupId"] then M.AssertInstanceGroupId(struct["InstanceGroupId"]) end
	if struct["ClusterId"] then M.AssertClusterId(struct["ClusterId"]) end
	for k,_ in pairs(struct) do
		assert(RemoveAutoScalingPolicyInput_keys[k], "RemoveAutoScalingPolicyInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveAutoScalingPolicyInput
--  
-- @param InstanceGroupId [InstanceGroupId] &lt;p&gt;Specifies the ID of the instance group to which the scaling policy is applied.&lt;/p&gt;
-- @param ClusterId [ClusterId] &lt;p&gt;Specifies the ID of a cluster. The instance group to which the automatic scaling policy is applied is within this cluster.&lt;/p&gt;
-- Required parameter: ClusterId
-- Required parameter: InstanceGroupId
function M.RemoveAutoScalingPolicyInput(InstanceGroupId, ClusterId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveAutoScalingPolicyInput")
	local t = { 
		["InstanceGroupId"] = InstanceGroupId,
		["ClusterId"] = ClusterId,
	}
	M.AssertRemoveAutoScalingPolicyInput(t)
	return t
end

local InstanceGroupStatus_keys = { "Timeline" = true, "State" = true, "StateChangeReason" = true, nil }

function M.AssertInstanceGroupStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceGroupStatus to be of type 'table'")
	if struct["Timeline"] then M.AssertInstanceGroupTimeline(struct["Timeline"]) end
	if struct["State"] then M.AssertInstanceGroupState(struct["State"]) end
	if struct["StateChangeReason"] then M.AssertInstanceGroupStateChangeReason(struct["StateChangeReason"]) end
	for k,_ in pairs(struct) do
		assert(InstanceGroupStatus_keys[k], "InstanceGroupStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceGroupStatus
-- &lt;p&gt;The details of the instance group status.&lt;/p&gt;
-- @param Timeline [InstanceGroupTimeline] &lt;p&gt;The timeline of the instance group status over time.&lt;/p&gt;
-- @param State [InstanceGroupState] &lt;p&gt;The current state of the instance group.&lt;/p&gt;
-- @param StateChangeReason [InstanceGroupStateChangeReason] &lt;p&gt;The status change reason details for the instance group.&lt;/p&gt;
function M.InstanceGroupStatus(Timeline, State, StateChangeReason, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceGroupStatus")
	local t = { 
		["Timeline"] = Timeline,
		["State"] = State,
		["StateChangeReason"] = StateChangeReason,
	}
	M.AssertInstanceGroupStatus(t)
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
-- &lt;p&gt;This output indicates the result of adding tags to a resource.&lt;/p&gt;
function M.AddTagsOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddTagsOutput")
	local t = { 
	}
	M.AssertAddTagsOutput(t)
	return t
end

local EbsBlockDeviceConfig_keys = { "VolumeSpecification" = true, "VolumesPerInstance" = true, nil }

function M.AssertEbsBlockDeviceConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EbsBlockDeviceConfig to be of type 'table'")
	assert(struct["VolumeSpecification"], "Expected key VolumeSpecification to exist in table")
	if struct["VolumeSpecification"] then M.AssertVolumeSpecification(struct["VolumeSpecification"]) end
	if struct["VolumesPerInstance"] then M.AssertInteger(struct["VolumesPerInstance"]) end
	for k,_ in pairs(struct) do
		assert(EbsBlockDeviceConfig_keys[k], "EbsBlockDeviceConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EbsBlockDeviceConfig
-- &lt;p&gt;Configuration of requested EBS block device associated with the instance group with count of volumes that will be associated to every instance.&lt;/p&gt;
-- @param VolumeSpecification [VolumeSpecification] &lt;p&gt;EBS volume specifications such as volume type, IOPS, and size (GiB) that will be requested for the EBS volume attached to an EC2 instance in the cluster.&lt;/p&gt;
-- @param VolumesPerInstance [Integer] &lt;p&gt;Number of EBS volumes with a specific volume configuration that will be associated with every instance in the instance group&lt;/p&gt;
-- Required parameter: VolumeSpecification
function M.EbsBlockDeviceConfig(VolumeSpecification, VolumesPerInstance, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EbsBlockDeviceConfig")
	local t = { 
		["VolumeSpecification"] = VolumeSpecification,
		["VolumesPerInstance"] = VolumesPerInstance,
	}
	M.AssertEbsBlockDeviceConfig(t)
	return t
end

local SetTerminationProtectionInput_keys = { "TerminationProtected" = true, "JobFlowIds" = true, nil }

function M.AssertSetTerminationProtectionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetTerminationProtectionInput to be of type 'table'")
	assert(struct["JobFlowIds"], "Expected key JobFlowIds to exist in table")
	assert(struct["TerminationProtected"], "Expected key TerminationProtected to exist in table")
	if struct["TerminationProtected"] then M.AssertBoolean(struct["TerminationProtected"]) end
	if struct["JobFlowIds"] then M.AssertXmlStringList(struct["JobFlowIds"]) end
	for k,_ in pairs(struct) do
		assert(SetTerminationProtectionInput_keys[k], "SetTerminationProtectionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetTerminationProtectionInput
-- &lt;p&gt; The input argument to the &lt;a&gt;TerminationProtection&lt;/a&gt; operation. &lt;/p&gt;
-- @param TerminationProtected [Boolean] &lt;p&gt;A Boolean that indicates whether to protect the cluster and prevent the Amazon EC2 instances in the cluster from shutting down due to API calls, user intervention, or job-flow error.&lt;/p&gt;
-- @param JobFlowIds [XmlStringList] &lt;p&gt; A list of strings that uniquely identify the clusters to protect. This identifier is returned by &lt;a&gt;RunJobFlow&lt;/a&gt; and can also be obtained from &lt;a&gt;DescribeJobFlows&lt;/a&gt; . &lt;/p&gt;
-- Required parameter: JobFlowIds
-- Required parameter: TerminationProtected
function M.SetTerminationProtectionInput(TerminationProtected, JobFlowIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetTerminationProtectionInput")
	local t = { 
		["TerminationProtected"] = TerminationProtected,
		["JobFlowIds"] = JobFlowIds,
	}
	M.AssertSetTerminationProtectionInput(t)
	return t
end

local InstanceFleetConfig_keys = { "Name" = true, "InstanceFleetType" = true, "LaunchSpecifications" = true, "TargetSpotCapacity" = true, "InstanceTypeConfigs" = true, "TargetOnDemandCapacity" = true, nil }

function M.AssertInstanceFleetConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceFleetConfig to be of type 'table'")
	assert(struct["InstanceFleetType"], "Expected key InstanceFleetType to exist in table")
	if struct["Name"] then M.AssertXmlStringMaxLen256(struct["Name"]) end
	if struct["InstanceFleetType"] then M.AssertInstanceFleetType(struct["InstanceFleetType"]) end
	if struct["LaunchSpecifications"] then M.AssertInstanceFleetProvisioningSpecifications(struct["LaunchSpecifications"]) end
	if struct["TargetSpotCapacity"] then M.AssertWholeNumber(struct["TargetSpotCapacity"]) end
	if struct["InstanceTypeConfigs"] then M.AssertInstanceTypeConfigList(struct["InstanceTypeConfigs"]) end
	if struct["TargetOnDemandCapacity"] then M.AssertWholeNumber(struct["TargetOnDemandCapacity"]) end
	for k,_ in pairs(struct) do
		assert(InstanceFleetConfig_keys[k], "InstanceFleetConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceFleetConfig
-- &lt;p&gt;The configuration that defines an instance fleet.&lt;/p&gt; &lt;note&gt; &lt;p&gt;The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.&lt;/p&gt; &lt;/note&gt;
-- @param Name [XmlStringMaxLen256] &lt;p&gt;The friendly name of the instance fleet.&lt;/p&gt;
-- @param InstanceFleetType [InstanceFleetType] &lt;p&gt;The node type that the instance fleet hosts. Valid values are MASTER,CORE,and TASK.&lt;/p&gt;
-- @param LaunchSpecifications [InstanceFleetProvisioningSpecifications] &lt;p&gt;The launch specification for the instance fleet.&lt;/p&gt;
-- @param TargetSpotCapacity [WholeNumber] &lt;p&gt;The target capacity of Spot units for the instance fleet, which determines how many Spot instances to provision. When the instance fleet launches, Amazon EMR tries to provision Spot instances as specified by &lt;a&gt;InstanceTypeConfig&lt;/a&gt;. Each instance configuration has a specified &lt;code&gt;WeightedCapacity&lt;/code&gt;. When a Spot instance is provisioned, the &lt;code&gt;WeightedCapacity&lt;/code&gt; units count toward the target capacity. Amazon EMR provisions instances until the target capacity is totally fulfilled, even if this results in an overage. For example, if there are 2 units remaining to fulfill capacity, and Amazon EMR can only provision an instance with a &lt;code&gt;WeightedCapacity&lt;/code&gt; of 5 units, the instance is provisioned, and the target capacity is exceeded by 3 units.&lt;/p&gt; &lt;note&gt; &lt;p&gt;If not specified or set to 0, only On-Demand instances are provisioned for the instance fleet. At least one of &lt;code&gt;TargetSpotCapacity&lt;/code&gt; and &lt;code&gt;TargetOnDemandCapacity&lt;/code&gt; should be greater than 0. For a master instance fleet, only one of &lt;code&gt;TargetSpotCapacity&lt;/code&gt; and &lt;code&gt;TargetOnDemandCapacity&lt;/code&gt; can be specified, and its value must be 1.&lt;/p&gt; &lt;/note&gt;
-- @param InstanceTypeConfigs [InstanceTypeConfigList] &lt;p&gt;The instance type configurations that define the EC2 instances in the instance fleet.&lt;/p&gt;
-- @param TargetOnDemandCapacity [WholeNumber] &lt;p&gt;The target capacity of On-Demand units for the instance fleet, which determines how many On-Demand instances to provision. When the instance fleet launches, Amazon EMR tries to provision On-Demand instances as specified by &lt;a&gt;InstanceTypeConfig&lt;/a&gt;. Each instance configuration has a specified &lt;code&gt;WeightedCapacity&lt;/code&gt;. When an On-Demand instance is provisioned, the &lt;code&gt;WeightedCapacity&lt;/code&gt; units count toward the target capacity. Amazon EMR provisions instances until the target capacity is totally fulfilled, even if this results in an overage. For example, if there are 2 units remaining to fulfill capacity, and Amazon EMR can only provision an instance with a &lt;code&gt;WeightedCapacity&lt;/code&gt; of 5 units, the instance is provisioned, and the target capacity is exceeded by 3 units.&lt;/p&gt; &lt;note&gt; &lt;p&gt;If not specified or set to 0, only Spot instances are provisioned for the instance fleet using &lt;code&gt;TargetSpotCapacity&lt;/code&gt;. At least one of &lt;code&gt;TargetSpotCapacity&lt;/code&gt; and &lt;code&gt;TargetOnDemandCapacity&lt;/code&gt; should be greater than 0. For a master instance fleet, only one of &lt;code&gt;TargetSpotCapacity&lt;/code&gt; and &lt;code&gt;TargetOnDemandCapacity&lt;/code&gt; can be specified, and its value must be 1.&lt;/p&gt; &lt;/note&gt;
-- Required parameter: InstanceFleetType
function M.InstanceFleetConfig(Name, InstanceFleetType, LaunchSpecifications, TargetSpotCapacity, InstanceTypeConfigs, TargetOnDemandCapacity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceFleetConfig")
	local t = { 
		["Name"] = Name,
		["InstanceFleetType"] = InstanceFleetType,
		["LaunchSpecifications"] = LaunchSpecifications,
		["TargetSpotCapacity"] = TargetSpotCapacity,
		["InstanceTypeConfigs"] = InstanceTypeConfigs,
		["TargetOnDemandCapacity"] = TargetOnDemandCapacity,
	}
	M.AssertInstanceFleetConfig(t)
	return t
end

local MetricDimension_keys = { "Value" = true, "Key" = true, nil }

function M.AssertMetricDimension(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MetricDimension to be of type 'table'")
	if struct["Value"] then M.AssertString(struct["Value"]) end
	if struct["Key"] then M.AssertString(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(MetricDimension_keys[k], "MetricDimension contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MetricDimension
-- &lt;p&gt;A CloudWatch dimension, which is specified using a &lt;code&gt;Key&lt;/code&gt; (known as a &lt;code&gt;Name&lt;/code&gt; in CloudWatch), &lt;code&gt;Value&lt;/code&gt; pair. By default, Amazon EMR uses one dimension whose &lt;code&gt;Key&lt;/code&gt; is &lt;code&gt;JobFlowID&lt;/code&gt; and &lt;code&gt;Value&lt;/code&gt; is a variable representing the cluster ID, which is &lt;code&gt;${emr.clusterId}&lt;/code&gt;. This enables the rule to bootstrap when the cluster ID becomes available.&lt;/p&gt;
-- @param Value [String] &lt;p&gt;The dimension value.&lt;/p&gt;
-- @param Key [String] &lt;p&gt;The dimension name.&lt;/p&gt;
function M.MetricDimension(Value, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MetricDimension")
	local t = { 
		["Value"] = Value,
		["Key"] = Key,
	}
	M.AssertMetricDimension(t)
	return t
end

local AddJobFlowStepsOutput_keys = { "StepIds" = true, nil }

function M.AssertAddJobFlowStepsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddJobFlowStepsOutput to be of type 'table'")
	if struct["StepIds"] then M.AssertStepIdsList(struct["StepIds"]) end
	for k,_ in pairs(struct) do
		assert(AddJobFlowStepsOutput_keys[k], "AddJobFlowStepsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddJobFlowStepsOutput
-- &lt;p&gt; The output for the &lt;a&gt;AddJobFlowSteps&lt;/a&gt; operation. &lt;/p&gt;
-- @param StepIds [StepIdsList] &lt;p&gt;The identifiers of the list of steps added to the job flow.&lt;/p&gt;
function M.AddJobFlowStepsOutput(StepIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddJobFlowStepsOutput")
	local t = { 
		["StepIds"] = StepIds,
	}
	M.AssertAddJobFlowStepsOutput(t)
	return t
end

local InstanceGroup_keys = { "RequestedInstanceCount" = true, "Status" = true, "Name" = true, "InstanceGroupType" = true, "EbsBlockDevices" = true, "AutoScalingPolicy" = true, "ShrinkPolicy" = true, "Id" = true, "EbsOptimized" = true, "BidPrice" = true, "Configurations" = true, "InstanceType" = true, "Market" = true, "RunningInstanceCount" = true, nil }

function M.AssertInstanceGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceGroup to be of type 'table'")
	if struct["RequestedInstanceCount"] then M.AssertInteger(struct["RequestedInstanceCount"]) end
	if struct["Status"] then M.AssertInstanceGroupStatus(struct["Status"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	if struct["InstanceGroupType"] then M.AssertInstanceGroupType(struct["InstanceGroupType"]) end
	if struct["EbsBlockDevices"] then M.AssertEbsBlockDeviceList(struct["EbsBlockDevices"]) end
	if struct["AutoScalingPolicy"] then M.AssertAutoScalingPolicyDescription(struct["AutoScalingPolicy"]) end
	if struct["ShrinkPolicy"] then M.AssertShrinkPolicy(struct["ShrinkPolicy"]) end
	if struct["Id"] then M.AssertInstanceGroupId(struct["Id"]) end
	if struct["EbsOptimized"] then M.AssertBooleanObject(struct["EbsOptimized"]) end
	if struct["BidPrice"] then M.AssertString(struct["BidPrice"]) end
	if struct["Configurations"] then M.AssertConfigurationList(struct["Configurations"]) end
	if struct["InstanceType"] then M.AssertInstanceType(struct["InstanceType"]) end
	if struct["Market"] then M.AssertMarketType(struct["Market"]) end
	if struct["RunningInstanceCount"] then M.AssertInteger(struct["RunningInstanceCount"]) end
	for k,_ in pairs(struct) do
		assert(InstanceGroup_keys[k], "InstanceGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceGroup
-- &lt;p&gt;This entity represents an instance group, which is a group of instances that have common purpose. For example, CORE instance group is used for HDFS.&lt;/p&gt;
-- @param RequestedInstanceCount [Integer] &lt;p&gt;The target number of instances for the instance group.&lt;/p&gt;
-- @param Status [InstanceGroupStatus] &lt;p&gt;The current status of the instance group.&lt;/p&gt;
-- @param Name [String] &lt;p&gt;The name of the instance group.&lt;/p&gt;
-- @param InstanceGroupType [InstanceGroupType] &lt;p&gt;The type of the instance group. Valid values are MASTER, CORE or TASK.&lt;/p&gt;
-- @param EbsBlockDevices [EbsBlockDeviceList] &lt;p&gt;The EBS block devices that are mapped to this instance group.&lt;/p&gt;
-- @param AutoScalingPolicy [AutoScalingPolicyDescription] &lt;p&gt;An automatic scaling policy for a core instance group or task instance group in an Amazon EMR cluster. The automatic scaling policy defines how an instance group dynamically adds and terminates EC2 instances in response to the value of a CloudWatch metric. See PutAutoScalingPolicy.&lt;/p&gt;
-- @param ShrinkPolicy [ShrinkPolicy] &lt;p&gt;Policy for customizing shrink operations.&lt;/p&gt;
-- @param Id [InstanceGroupId] &lt;p&gt;The identifier of the instance group.&lt;/p&gt;
-- @param EbsOptimized [BooleanObject] &lt;p&gt;If the instance group is EBS-optimized. An Amazon EBS-optimized instance uses an optimized configuration stack and provides additional, dedicated capacity for Amazon EBS I/O.&lt;/p&gt;
-- @param BidPrice [String] &lt;p&gt;The bid price for each EC2 instance in the instance group when launching nodes as Spot Instances, expressed in USD.&lt;/p&gt;
-- @param Configurations [ConfigurationList] &lt;note&gt; &lt;p&gt;Amazon EMR releases 4.x or later.&lt;/p&gt; &lt;/note&gt; &lt;p&gt;The list of configurations supplied for an EMR cluster instance group. You can specify a separate configuration for each instance group (master, core, and task).&lt;/p&gt;
-- @param InstanceType [InstanceType] &lt;p&gt;The EC2 instance type for all instances in the instance group.&lt;/p&gt;
-- @param Market [MarketType] &lt;p&gt;The marketplace to provision instances for this group. Valid values are ON_DEMAND or SPOT.&lt;/p&gt;
-- @param RunningInstanceCount [Integer] &lt;p&gt;The number of instances currently running in this instance group.&lt;/p&gt;
function M.InstanceGroup(RequestedInstanceCount, Status, Name, InstanceGroupType, EbsBlockDevices, AutoScalingPolicy, ShrinkPolicy, Id, EbsOptimized, BidPrice, Configurations, InstanceType, Market, RunningInstanceCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceGroup")
	local t = { 
		["RequestedInstanceCount"] = RequestedInstanceCount,
		["Status"] = Status,
		["Name"] = Name,
		["InstanceGroupType"] = InstanceGroupType,
		["EbsBlockDevices"] = EbsBlockDevices,
		["AutoScalingPolicy"] = AutoScalingPolicy,
		["ShrinkPolicy"] = ShrinkPolicy,
		["Id"] = Id,
		["EbsOptimized"] = EbsOptimized,
		["BidPrice"] = BidPrice,
		["Configurations"] = Configurations,
		["InstanceType"] = InstanceType,
		["Market"] = Market,
		["RunningInstanceCount"] = RunningInstanceCount,
	}
	M.AssertInstanceGroup(t)
	return t
end

local CreateSecurityConfigurationInput_keys = { "SecurityConfiguration" = true, "Name" = true, nil }

function M.AssertCreateSecurityConfigurationInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSecurityConfigurationInput to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["SecurityConfiguration"], "Expected key SecurityConfiguration to exist in table")
	if struct["SecurityConfiguration"] then M.AssertString(struct["SecurityConfiguration"]) end
	if struct["Name"] then M.AssertXmlString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(CreateSecurityConfigurationInput_keys[k], "CreateSecurityConfigurationInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSecurityConfigurationInput
--  
-- @param SecurityConfiguration [String] &lt;p&gt;The security configuration details in JSON format.&lt;/p&gt;
-- @param Name [XmlString] &lt;p&gt;The name of the security configuration.&lt;/p&gt;
-- Required parameter: Name
-- Required parameter: SecurityConfiguration
function M.CreateSecurityConfigurationInput(SecurityConfiguration, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateSecurityConfigurationInput")
	local t = { 
		["SecurityConfiguration"] = SecurityConfiguration,
		["Name"] = Name,
	}
	M.AssertCreateSecurityConfigurationInput(t)
	return t
end

local ListInstancesInput_keys = { "InstanceGroupTypes" = true, "InstanceFleetType" = true, "InstanceFleetId" = true, "ClusterId" = true, "InstanceStates" = true, "Marker" = true, "InstanceGroupId" = true, nil }

function M.AssertListInstancesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListInstancesInput to be of type 'table'")
	assert(struct["ClusterId"], "Expected key ClusterId to exist in table")
	if struct["InstanceGroupTypes"] then M.AssertInstanceGroupTypeList(struct["InstanceGroupTypes"]) end
	if struct["InstanceFleetType"] then M.AssertInstanceFleetType(struct["InstanceFleetType"]) end
	if struct["InstanceFleetId"] then M.AssertInstanceFleetId(struct["InstanceFleetId"]) end
	if struct["ClusterId"] then M.AssertClusterId(struct["ClusterId"]) end
	if struct["InstanceStates"] then M.AssertInstanceStateList(struct["InstanceStates"]) end
	if struct["Marker"] then M.AssertMarker(struct["Marker"]) end
	if struct["InstanceGroupId"] then M.AssertInstanceGroupId(struct["InstanceGroupId"]) end
	for k,_ in pairs(struct) do
		assert(ListInstancesInput_keys[k], "ListInstancesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListInstancesInput
-- &lt;p&gt;This input determines which instances to list.&lt;/p&gt;
-- @param InstanceGroupTypes [InstanceGroupTypeList] &lt;p&gt;The type of instance group for which to list the instances.&lt;/p&gt;
-- @param InstanceFleetType [InstanceFleetType] &lt;p&gt;The node type of the instance fleet. For example MASTER, CORE, or TASK.&lt;/p&gt;
-- @param InstanceFleetId [InstanceFleetId] &lt;p&gt;The unique identifier of the instance fleet.&lt;/p&gt;
-- @param ClusterId [ClusterId] &lt;p&gt;The identifier of the cluster for which to list the instances.&lt;/p&gt;
-- @param InstanceStates [InstanceStateList] &lt;p&gt;A list of instance states that will filter the instances returned with this request.&lt;/p&gt;
-- @param Marker [Marker] &lt;p&gt;The pagination token that indicates the next set of results to retrieve.&lt;/p&gt;
-- @param InstanceGroupId [InstanceGroupId] &lt;p&gt;The identifier of the instance group for which to list the instances.&lt;/p&gt;
-- Required parameter: ClusterId
function M.ListInstancesInput(InstanceGroupTypes, InstanceFleetType, InstanceFleetId, ClusterId, InstanceStates, Marker, InstanceGroupId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListInstancesInput")
	local t = { 
		["InstanceGroupTypes"] = InstanceGroupTypes,
		["InstanceFleetType"] = InstanceFleetType,
		["InstanceFleetId"] = InstanceFleetId,
		["ClusterId"] = ClusterId,
		["InstanceStates"] = InstanceStates,
		["Marker"] = Marker,
		["InstanceGroupId"] = InstanceGroupId,
	}
	M.AssertListInstancesInput(t)
	return t
end

local StepStatus_keys = { "Timeline" = true, "State" = true, "StateChangeReason" = true, "FailureDetails" = true, nil }

function M.AssertStepStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StepStatus to be of type 'table'")
	if struct["Timeline"] then M.AssertStepTimeline(struct["Timeline"]) end
	if struct["State"] then M.AssertStepState(struct["State"]) end
	if struct["StateChangeReason"] then M.AssertStepStateChangeReason(struct["StateChangeReason"]) end
	if struct["FailureDetails"] then M.AssertFailureDetails(struct["FailureDetails"]) end
	for k,_ in pairs(struct) do
		assert(StepStatus_keys[k], "StepStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StepStatus
-- &lt;p&gt;The execution status details of the cluster step.&lt;/p&gt;
-- @param Timeline [StepTimeline] &lt;p&gt;The timeline of the cluster step status over time.&lt;/p&gt;
-- @param State [StepState] &lt;p&gt;The execution state of the cluster step.&lt;/p&gt;
-- @param StateChangeReason [StepStateChangeReason] &lt;p&gt;The reason for the step execution status change.&lt;/p&gt;
-- @param FailureDetails [FailureDetails] &lt;p&gt;The details for the step failure including reason, message, and log file path where the root cause was identified.&lt;/p&gt;
function M.StepStatus(Timeline, State, StateChangeReason, FailureDetails, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StepStatus")
	local t = { 
		["Timeline"] = Timeline,
		["State"] = State,
		["StateChangeReason"] = StateChangeReason,
		["FailureDetails"] = FailureDetails,
	}
	M.AssertStepStatus(t)
	return t
end

local SpotProvisioningSpecification_keys = { "TimeoutDurationMinutes" = true, "BlockDurationMinutes" = true, "TimeoutAction" = true, nil }

function M.AssertSpotProvisioningSpecification(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SpotProvisioningSpecification to be of type 'table'")
	assert(struct["TimeoutDurationMinutes"], "Expected key TimeoutDurationMinutes to exist in table")
	assert(struct["TimeoutAction"], "Expected key TimeoutAction to exist in table")
	if struct["TimeoutDurationMinutes"] then M.AssertWholeNumber(struct["TimeoutDurationMinutes"]) end
	if struct["BlockDurationMinutes"] then M.AssertWholeNumber(struct["BlockDurationMinutes"]) end
	if struct["TimeoutAction"] then M.AssertSpotProvisioningTimeoutAction(struct["TimeoutAction"]) end
	for k,_ in pairs(struct) do
		assert(SpotProvisioningSpecification_keys[k], "SpotProvisioningSpecification contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SpotProvisioningSpecification
-- &lt;p&gt;The launch specification for Spot instances in the instance fleet, which determines the defined duration and provisioning timeout behavior.&lt;/p&gt; &lt;note&gt; &lt;p&gt;The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.&lt;/p&gt; &lt;/note&gt;
-- @param TimeoutDurationMinutes [WholeNumber] &lt;p&gt;The spot provisioning timeout period in minutes. If Spot instances are not provisioned within this time period, the &lt;code&gt;TimeOutAction&lt;/code&gt; is taken. Minimum value is 5 and maximum value is 1440. The timeout applies only during initial provisioning, when the cluster is first created.&lt;/p&gt;
-- @param BlockDurationMinutes [WholeNumber] &lt;p&gt;The defined duration for Spot instances (also known as Spot blocks) in minutes. When specified, the Spot instance does not terminate before the defined duration expires, and defined duration pricing for Spot instances applies. Valid values are 60, 120, 180, 240, 300, or 360. The duration period starts as soon as a Spot instance receives its instance ID. At the end of the duration, Amazon EC2 marks the Spot instance for termination and provides a Spot instance termination notice, which gives the instance a two-minute warning before it terminates. &lt;/p&gt;
-- @param TimeoutAction [SpotProvisioningTimeoutAction] &lt;p&gt;The action to take when &lt;code&gt;TargetSpotCapacity&lt;/code&gt; has not been fulfilled when the &lt;code&gt;TimeoutDurationMinutes&lt;/code&gt; has expired. Spot instances are not uprovisioned within the Spot provisioining timeout. Valid values are &lt;code&gt;TERMINATE_CLUSTER&lt;/code&gt; and &lt;code&gt;SWITCH_TO_ON_DEMAND&lt;/code&gt; to fulfill the remaining capacity.&lt;/p&gt;
-- Required parameter: TimeoutDurationMinutes
-- Required parameter: TimeoutAction
function M.SpotProvisioningSpecification(TimeoutDurationMinutes, BlockDurationMinutes, TimeoutAction, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SpotProvisioningSpecification")
	local t = { 
		["TimeoutDurationMinutes"] = TimeoutDurationMinutes,
		["BlockDurationMinutes"] = BlockDurationMinutes,
		["TimeoutAction"] = TimeoutAction,
	}
	M.AssertSpotProvisioningSpecification(t)
	return t
end

local ClusterStatus_keys = { "Timeline" = true, "State" = true, "StateChangeReason" = true, nil }

function M.AssertClusterStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterStatus to be of type 'table'")
	if struct["Timeline"] then M.AssertClusterTimeline(struct["Timeline"]) end
	if struct["State"] then M.AssertClusterState(struct["State"]) end
	if struct["StateChangeReason"] then M.AssertClusterStateChangeReason(struct["StateChangeReason"]) end
	for k,_ in pairs(struct) do
		assert(ClusterStatus_keys[k], "ClusterStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterStatus
-- &lt;p&gt;The detailed status of the cluster.&lt;/p&gt;
-- @param Timeline [ClusterTimeline] &lt;p&gt;A timeline that represents the status of a cluster over the lifetime of the cluster.&lt;/p&gt;
-- @param State [ClusterState] &lt;p&gt;The current state of the cluster.&lt;/p&gt;
-- @param StateChangeReason [ClusterStateChangeReason] &lt;p&gt;The reason for the cluster status change.&lt;/p&gt;
function M.ClusterStatus(Timeline, State, StateChangeReason, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterStatus")
	local t = { 
		["Timeline"] = Timeline,
		["State"] = State,
		["StateChangeReason"] = StateChangeReason,
	}
	M.AssertClusterStatus(t)
	return t
end

local ScalingRule_keys = { "Action" = true, "Trigger" = true, "Name" = true, "Description" = true, nil }

function M.AssertScalingRule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScalingRule to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Action"], "Expected key Action to exist in table")
	assert(struct["Trigger"], "Expected key Trigger to exist in table")
	if struct["Action"] then M.AssertScalingAction(struct["Action"]) end
	if struct["Trigger"] then M.AssertScalingTrigger(struct["Trigger"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	if struct["Description"] then M.AssertString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(ScalingRule_keys[k], "ScalingRule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScalingRule
-- &lt;p&gt;A scale-in or scale-out rule that defines scaling activity, including the CloudWatch metric alarm that triggers activity, how EC2 instances are added or removed, and the periodicity of adjustments. The automatic scaling policy for an instance group can comprise one or more automatic scaling rules.&lt;/p&gt;
-- @param Action [ScalingAction] &lt;p&gt;The conditions that trigger an automatic scaling activity.&lt;/p&gt;
-- @param Trigger [ScalingTrigger] &lt;p&gt;The CloudWatch alarm definition that determines when automatic scaling activity is triggered.&lt;/p&gt;
-- @param Name [String] &lt;p&gt;The name used to identify an automatic scaling rule. Rule names must be unique within a scaling policy.&lt;/p&gt;
-- @param Description [String] &lt;p&gt;A friendly, more verbose description of the automatic scaling rule.&lt;/p&gt;
-- Required parameter: Name
-- Required parameter: Action
-- Required parameter: Trigger
function M.ScalingRule(Action, Trigger, Name, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ScalingRule")
	local t = { 
		["Action"] = Action,
		["Trigger"] = Trigger,
		["Name"] = Name,
		["Description"] = Description,
	}
	M.AssertScalingRule(t)
	return t
end

local StepExecutionStatusDetail_keys = { "State" = true, "EndDateTime" = true, "CreationDateTime" = true, "LastStateChangeReason" = true, "StartDateTime" = true, nil }

function M.AssertStepExecutionStatusDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StepExecutionStatusDetail to be of type 'table'")
	assert(struct["State"], "Expected key State to exist in table")
	assert(struct["CreationDateTime"], "Expected key CreationDateTime to exist in table")
	if struct["State"] then M.AssertStepExecutionState(struct["State"]) end
	if struct["EndDateTime"] then M.AssertDate(struct["EndDateTime"]) end
	if struct["CreationDateTime"] then M.AssertDate(struct["CreationDateTime"]) end
	if struct["LastStateChangeReason"] then M.AssertXmlString(struct["LastStateChangeReason"]) end
	if struct["StartDateTime"] then M.AssertDate(struct["StartDateTime"]) end
	for k,_ in pairs(struct) do
		assert(StepExecutionStatusDetail_keys[k], "StepExecutionStatusDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StepExecutionStatusDetail
-- &lt;p&gt;The execution state of a step.&lt;/p&gt;
-- @param State [StepExecutionState] &lt;p&gt;The state of the step.&lt;/p&gt;
-- @param EndDateTime [Date] &lt;p&gt;The completion date and time of the step.&lt;/p&gt;
-- @param CreationDateTime [Date] &lt;p&gt;The creation date and time of the step.&lt;/p&gt;
-- @param LastStateChangeReason [XmlString] &lt;p&gt;A description of the step's current state.&lt;/p&gt;
-- @param StartDateTime [Date] &lt;p&gt;The start date and time of the step.&lt;/p&gt;
-- Required parameter: State
-- Required parameter: CreationDateTime
function M.StepExecutionStatusDetail(State, EndDateTime, CreationDateTime, LastStateChangeReason, StartDateTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StepExecutionStatusDetail")
	local t = { 
		["State"] = State,
		["EndDateTime"] = EndDateTime,
		["CreationDateTime"] = CreationDateTime,
		["LastStateChangeReason"] = LastStateChangeReason,
		["StartDateTime"] = StartDateTime,
	}
	M.AssertStepExecutionStatusDetail(t)
	return t
end

local SimpleScalingPolicyConfiguration_keys = { "CoolDown" = true, "ScalingAdjustment" = true, "AdjustmentType" = true, nil }

function M.AssertSimpleScalingPolicyConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SimpleScalingPolicyConfiguration to be of type 'table'")
	assert(struct["ScalingAdjustment"], "Expected key ScalingAdjustment to exist in table")
	if struct["CoolDown"] then M.AssertInteger(struct["CoolDown"]) end
	if struct["ScalingAdjustment"] then M.AssertInteger(struct["ScalingAdjustment"]) end
	if struct["AdjustmentType"] then M.AssertAdjustmentType(struct["AdjustmentType"]) end
	for k,_ in pairs(struct) do
		assert(SimpleScalingPolicyConfiguration_keys[k], "SimpleScalingPolicyConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SimpleScalingPolicyConfiguration
-- &lt;p&gt;An automatic scaling configuration, which describes how the policy adds or removes instances, the cooldown period, and the number of EC2 instances that will be added each time the CloudWatch metric alarm condition is satisfied.&lt;/p&gt;
-- @param CoolDown [Integer] &lt;p&gt;The amount of time, in seconds, after a scaling activity completes before any further trigger-related scaling activities can start. The default value is 0.&lt;/p&gt;
-- @param ScalingAdjustment [Integer] &lt;p&gt;The amount by which to scale in or scale out, based on the specified &lt;code&gt;AdjustmentType&lt;/code&gt;. A positive value adds to the instance group's EC2 instance count while a negative number removes instances. If &lt;code&gt;AdjustmentType&lt;/code&gt; is set to &lt;code&gt;EXACT_CAPACITY&lt;/code&gt;, the number should only be a positive integer. If &lt;code&gt;AdjustmentType&lt;/code&gt; is set to &lt;code&gt;PERCENT_CHANGE_IN_CAPACITY&lt;/code&gt;, the value should express the percentage as a decimal. For example, -0.20 indicates a decrease in 20% increments of cluster capacity.&lt;/p&gt;
-- @param AdjustmentType [AdjustmentType] &lt;p&gt;The way in which EC2 instances are added (if &lt;code&gt;ScalingAdjustment&lt;/code&gt; is a positive number) or terminated (if &lt;code&gt;ScalingAdjustment&lt;/code&gt; is a negative number) each time the scaling activity is triggered. &lt;code&gt;CHANGE_IN_CAPACITY&lt;/code&gt; is the default. &lt;code&gt;CHANGE_IN_CAPACITY&lt;/code&gt; indicates that the EC2 instance count increments or decrements by &lt;code&gt;ScalingAdjustment&lt;/code&gt;, which should be expressed as an integer. &lt;code&gt;PERCENT_CHANGE_IN_CAPACITY&lt;/code&gt; indicates the instance count increments or decrements by the percentage specified by &lt;code&gt;ScalingAdjustment&lt;/code&gt;, which should be expressed as a decimal. For example, 0.20 indicates an increase in 20% increments of cluster capacity. &lt;code&gt;EXACT_CAPACITY&lt;/code&gt; indicates the scaling activity results in an instance group with the number of EC2 instances specified by &lt;code&gt;ScalingAdjustment&lt;/code&gt;, which should be expressed as a positive integer.&lt;/p&gt;
-- Required parameter: ScalingAdjustment
function M.SimpleScalingPolicyConfiguration(CoolDown, ScalingAdjustment, AdjustmentType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SimpleScalingPolicyConfiguration")
	local t = { 
		["CoolDown"] = CoolDown,
		["ScalingAdjustment"] = ScalingAdjustment,
		["AdjustmentType"] = AdjustmentType,
	}
	M.AssertSimpleScalingPolicyConfiguration(t)
	return t
end

local AddTagsInput_keys = { "ResourceId" = true, "Tags" = true, nil }

function M.AssertAddTagsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddTagsInput to be of type 'table'")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["ResourceId"] then M.AssertResourceId(struct["ResourceId"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(AddTagsInput_keys[k], "AddTagsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddTagsInput
-- &lt;p&gt;This input identifies a cluster and a list of tags to attach.&lt;/p&gt;
-- @param ResourceId [ResourceId] &lt;p&gt;The Amazon EMR resource identifier to which tags will be added. This value must be a cluster identifier.&lt;/p&gt;
-- @param Tags [TagList] &lt;p&gt;A list of tags to associate with a cluster and propagate to EC2 instances. Tags are user-defined key/value pairs that consist of a required key string with a maximum of 128 characters, and an optional value string with a maximum of 256 characters.&lt;/p&gt;
-- Required parameter: ResourceId
-- Required parameter: Tags
function M.AddTagsInput(ResourceId, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddTagsInput")
	local t = { 
		["ResourceId"] = ResourceId,
		["Tags"] = Tags,
	}
	M.AssertAddTagsInput(t)
	return t
end

local InstanceStatus_keys = { "Timeline" = true, "State" = true, "StateChangeReason" = true, nil }

function M.AssertInstanceStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceStatus to be of type 'table'")
	if struct["Timeline"] then M.AssertInstanceTimeline(struct["Timeline"]) end
	if struct["State"] then M.AssertInstanceState(struct["State"]) end
	if struct["StateChangeReason"] then M.AssertInstanceStateChangeReason(struct["StateChangeReason"]) end
	for k,_ in pairs(struct) do
		assert(InstanceStatus_keys[k], "InstanceStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceStatus
-- &lt;p&gt;The instance status details.&lt;/p&gt;
-- @param Timeline [InstanceTimeline] &lt;p&gt;The timeline of the instance status over time.&lt;/p&gt;
-- @param State [InstanceState] &lt;p&gt;The current state of the instance.&lt;/p&gt;
-- @param StateChangeReason [InstanceStateChangeReason] &lt;p&gt;The details of the status change reason for the instance.&lt;/p&gt;
function M.InstanceStatus(Timeline, State, StateChangeReason, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceStatus")
	local t = { 
		["Timeline"] = Timeline,
		["State"] = State,
		["StateChangeReason"] = StateChangeReason,
	}
	M.AssertInstanceStatus(t)
	return t
end

local StepSummary_keys = { "Status" = true, "Config" = true, "Id" = true, "ActionOnFailure" = true, "Name" = true, nil }

function M.AssertStepSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StepSummary to be of type 'table'")
	if struct["Status"] then M.AssertStepStatus(struct["Status"]) end
	if struct["Config"] then M.AssertHadoopStepConfig(struct["Config"]) end
	if struct["Id"] then M.AssertStepId(struct["Id"]) end
	if struct["ActionOnFailure"] then M.AssertActionOnFailure(struct["ActionOnFailure"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(StepSummary_keys[k], "StepSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StepSummary
-- &lt;p&gt;The summary of the cluster step.&lt;/p&gt;
-- @param Status [StepStatus] &lt;p&gt;The current execution status details of the cluster step.&lt;/p&gt;
-- @param Config [HadoopStepConfig] &lt;p&gt;The Hadoop job configuration of the cluster step.&lt;/p&gt;
-- @param Id [StepId] &lt;p&gt;The identifier of the cluster step.&lt;/p&gt;
-- @param ActionOnFailure [ActionOnFailure] &lt;p&gt;This specifies what action to take when the cluster step fails. Possible values are TERMINATE_CLUSTER, CANCEL_AND_WAIT, and CONTINUE.&lt;/p&gt;
-- @param Name [String] &lt;p&gt;The name of the cluster step.&lt;/p&gt;
function M.StepSummary(Status, Config, Id, ActionOnFailure, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StepSummary")
	local t = { 
		["Status"] = Status,
		["Config"] = Config,
		["Id"] = Id,
		["ActionOnFailure"] = ActionOnFailure,
		["Name"] = Name,
	}
	M.AssertStepSummary(t)
	return t
end

local VolumeSpecification_keys = { "Iops" = true, "VolumeType" = true, "SizeInGB" = true, nil }

function M.AssertVolumeSpecification(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VolumeSpecification to be of type 'table'")
	assert(struct["VolumeType"], "Expected key VolumeType to exist in table")
	assert(struct["SizeInGB"], "Expected key SizeInGB to exist in table")
	if struct["Iops"] then M.AssertInteger(struct["Iops"]) end
	if struct["VolumeType"] then M.AssertString(struct["VolumeType"]) end
	if struct["SizeInGB"] then M.AssertInteger(struct["SizeInGB"]) end
	for k,_ in pairs(struct) do
		assert(VolumeSpecification_keys[k], "VolumeSpecification contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VolumeSpecification
-- &lt;p&gt;EBS volume specifications such as volume type, IOPS, and size (GiB) that will be requested for the EBS volume attached to an EC2 instance in the cluster.&lt;/p&gt;
-- @param Iops [Integer] &lt;p&gt;The number of I/O operations per second (IOPS) that the volume supports.&lt;/p&gt;
-- @param VolumeType [String] &lt;p&gt;The volume type. Volume types supported are gp2, io1, standard.&lt;/p&gt;
-- @param SizeInGB [Integer] &lt;p&gt;The volume size, in gibibytes (GiB). This can be a number from 1 - 1024. If the volume type is EBS-optimized, the minimum value is 10.&lt;/p&gt;
-- Required parameter: VolumeType
-- Required parameter: SizeInGB
function M.VolumeSpecification(Iops, VolumeType, SizeInGB, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VolumeSpecification")
	local t = { 
		["Iops"] = Iops,
		["VolumeType"] = VolumeType,
		["SizeInGB"] = SizeInGB,
	}
	M.AssertVolumeSpecification(t)
	return t
end

local BootstrapActionConfig_keys = { "ScriptBootstrapAction" = true, "Name" = true, nil }

function M.AssertBootstrapActionConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BootstrapActionConfig to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["ScriptBootstrapAction"], "Expected key ScriptBootstrapAction to exist in table")
	if struct["ScriptBootstrapAction"] then M.AssertScriptBootstrapActionConfig(struct["ScriptBootstrapAction"]) end
	if struct["Name"] then M.AssertXmlStringMaxLen256(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(BootstrapActionConfig_keys[k], "BootstrapActionConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BootstrapActionConfig
-- &lt;p&gt;Configuration of a bootstrap action.&lt;/p&gt;
-- @param ScriptBootstrapAction [ScriptBootstrapActionConfig] &lt;p&gt;The script run by the bootstrap action.&lt;/p&gt;
-- @param Name [XmlStringMaxLen256] &lt;p&gt;The name of the bootstrap action.&lt;/p&gt;
-- Required parameter: Name
-- Required parameter: ScriptBootstrapAction
function M.BootstrapActionConfig(ScriptBootstrapAction, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BootstrapActionConfig")
	local t = { 
		["ScriptBootstrapAction"] = ScriptBootstrapAction,
		["Name"] = Name,
	}
	M.AssertBootstrapActionConfig(t)
	return t
end

local CancelStepsInput_keys = { "StepIds" = true, "ClusterId" = true, nil }

function M.AssertCancelStepsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelStepsInput to be of type 'table'")
	if struct["StepIds"] then M.AssertStepIdsList(struct["StepIds"]) end
	if struct["ClusterId"] then M.AssertXmlStringMaxLen256(struct["ClusterId"]) end
	for k,_ in pairs(struct) do
		assert(CancelStepsInput_keys[k], "CancelStepsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelStepsInput
-- &lt;p&gt;The input argument to the &lt;a&gt;CancelSteps&lt;/a&gt; operation.&lt;/p&gt;
-- @param StepIds [StepIdsList] &lt;p&gt;The list of &lt;code&gt;StepIDs&lt;/code&gt; to cancel. Use &lt;a&gt;ListSteps&lt;/a&gt; to get steps and their states for the specified cluster.&lt;/p&gt;
-- @param ClusterId [XmlStringMaxLen256] &lt;p&gt;The &lt;code&gt;ClusterID&lt;/code&gt; for which specified steps will be canceled. Use &lt;a&gt;RunJobFlow&lt;/a&gt; and &lt;a&gt;ListClusters&lt;/a&gt; to get ClusterIDs. &lt;/p&gt;
function M.CancelStepsInput(StepIds, ClusterId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CancelStepsInput")
	local t = { 
		["StepIds"] = StepIds,
		["ClusterId"] = ClusterId,
	}
	M.AssertCancelStepsInput(t)
	return t
end

local AutoScalingPolicy_keys = { "Rules" = true, "Constraints" = true, nil }

function M.AssertAutoScalingPolicy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AutoScalingPolicy to be of type 'table'")
	assert(struct["Constraints"], "Expected key Constraints to exist in table")
	assert(struct["Rules"], "Expected key Rules to exist in table")
	if struct["Rules"] then M.AssertScalingRuleList(struct["Rules"]) end
	if struct["Constraints"] then M.AssertScalingConstraints(struct["Constraints"]) end
	for k,_ in pairs(struct) do
		assert(AutoScalingPolicy_keys[k], "AutoScalingPolicy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AutoScalingPolicy
-- &lt;p&gt;An automatic scaling policy for a core instance group or task instance group in an Amazon EMR cluster. An automatic scaling policy defines how an instance group dynamically adds and terminates EC2 instances in response to the value of a CloudWatch metric. See &lt;a&gt;PutAutoScalingPolicy&lt;/a&gt;.&lt;/p&gt;
-- @param Rules [ScalingRuleList] &lt;p&gt;The scale-in and scale-out rules that comprise the automatic scaling policy.&lt;/p&gt;
-- @param Constraints [ScalingConstraints] &lt;p&gt;The upper and lower EC2 instance limits for an automatic scaling policy. Automatic scaling activity will not cause an instance group to grow above or below these limits.&lt;/p&gt;
-- Required parameter: Constraints
-- Required parameter: Rules
function M.AutoScalingPolicy(Rules, Constraints, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AutoScalingPolicy")
	local t = { 
		["Rules"] = Rules,
		["Constraints"] = Constraints,
	}
	M.AssertAutoScalingPolicy(t)
	return t
end

local AddInstanceGroupsInput_keys = { "JobFlowId" = true, "InstanceGroups" = true, nil }

function M.AssertAddInstanceGroupsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddInstanceGroupsInput to be of type 'table'")
	assert(struct["InstanceGroups"], "Expected key InstanceGroups to exist in table")
	assert(struct["JobFlowId"], "Expected key JobFlowId to exist in table")
	if struct["JobFlowId"] then M.AssertXmlStringMaxLen256(struct["JobFlowId"]) end
	if struct["InstanceGroups"] then M.AssertInstanceGroupConfigList(struct["InstanceGroups"]) end
	for k,_ in pairs(struct) do
		assert(AddInstanceGroupsInput_keys[k], "AddInstanceGroupsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddInstanceGroupsInput
-- &lt;p&gt;Input to an AddInstanceGroups call.&lt;/p&gt;
-- @param JobFlowId [XmlStringMaxLen256] &lt;p&gt;Job flow in which to add the instance groups.&lt;/p&gt;
-- @param InstanceGroups [InstanceGroupConfigList] &lt;p&gt;Instance groups to add.&lt;/p&gt;
-- Required parameter: InstanceGroups
-- Required parameter: JobFlowId
function M.AddInstanceGroupsInput(JobFlowId, InstanceGroups, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddInstanceGroupsInput")
	local t = { 
		["JobFlowId"] = JobFlowId,
		["InstanceGroups"] = InstanceGroups,
	}
	M.AssertAddInstanceGroupsInput(t)
	return t
end

local InvalidRequestException_keys = { "ErrorCode" = true, "Message" = true, nil }

function M.AssertInvalidRequestException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRequestException to be of type 'table'")
	if struct["ErrorCode"] then M.AssertErrorCode(struct["ErrorCode"]) end
	if struct["Message"] then M.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidRequestException_keys[k], "InvalidRequestException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRequestException
-- &lt;p&gt;This exception occurs when there is something wrong with user input.&lt;/p&gt;
-- @param ErrorCode [ErrorCode] &lt;p&gt;The error code associated with the exception.&lt;/p&gt;
-- @param Message [ErrorMessage] &lt;p&gt;The message associated with the exception.&lt;/p&gt;
function M.InvalidRequestException(ErrorCode, Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidRequestException")
	local t = { 
		["ErrorCode"] = ErrorCode,
		["Message"] = Message,
	}
	M.AssertInvalidRequestException(t)
	return t
end

local AutoScalingPolicyStateChangeReason_keys = { "Message" = true, "Code" = true, nil }

function M.AssertAutoScalingPolicyStateChangeReason(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AutoScalingPolicyStateChangeReason to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	if struct["Code"] then M.AssertAutoScalingPolicyStateChangeReasonCode(struct["Code"]) end
	for k,_ in pairs(struct) do
		assert(AutoScalingPolicyStateChangeReason_keys[k], "AutoScalingPolicyStateChangeReason contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AutoScalingPolicyStateChangeReason
-- &lt;p&gt;The reason for an &lt;a&gt;AutoScalingPolicyStatus&lt;/a&gt; change.&lt;/p&gt;
-- @param Message [String] &lt;p&gt;A friendly, more verbose message that accompanies an automatic scaling policy state change.&lt;/p&gt;
-- @param Code [AutoScalingPolicyStateChangeReasonCode] &lt;p&gt;The code indicating the reason for the change in status.&lt;code&gt;USER_REQUEST&lt;/code&gt; indicates that the scaling policy status was changed by a user. &lt;code&gt;PROVISION_FAILURE&lt;/code&gt; indicates that the status change was because the policy failed to provision. &lt;code&gt;CLEANUP_FAILURE&lt;/code&gt; indicates an error.&lt;/p&gt;
function M.AutoScalingPolicyStateChangeReason(Message, Code, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AutoScalingPolicyStateChangeReason")
	local t = { 
		["Message"] = Message,
		["Code"] = Code,
	}
	M.AssertAutoScalingPolicyStateChangeReason(t)
	return t
end

local DeleteSecurityConfigurationInput_keys = { "Name" = true, nil }

function M.AssertDeleteSecurityConfigurationInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSecurityConfigurationInput to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then M.AssertXmlString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(DeleteSecurityConfigurationInput_keys[k], "DeleteSecurityConfigurationInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSecurityConfigurationInput
--  
-- @param Name [XmlString] &lt;p&gt;The name of the security configuration.&lt;/p&gt;
-- Required parameter: Name
function M.DeleteSecurityConfigurationInput(Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteSecurityConfigurationInput")
	local t = { 
		["Name"] = Name,
	}
	M.AssertDeleteSecurityConfigurationInput(t)
	return t
end

local InstanceGroupModifyConfig_keys = { "InstanceGroupId" = true, "InstanceCount" = true, "EC2InstanceIdsToTerminate" = true, "ShrinkPolicy" = true, nil }

function M.AssertInstanceGroupModifyConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceGroupModifyConfig to be of type 'table'")
	assert(struct["InstanceGroupId"], "Expected key InstanceGroupId to exist in table")
	if struct["InstanceGroupId"] then M.AssertXmlStringMaxLen256(struct["InstanceGroupId"]) end
	if struct["InstanceCount"] then M.AssertInteger(struct["InstanceCount"]) end
	if struct["EC2InstanceIdsToTerminate"] then M.AssertEC2InstanceIdsToTerminateList(struct["EC2InstanceIdsToTerminate"]) end
	if struct["ShrinkPolicy"] then M.AssertShrinkPolicy(struct["ShrinkPolicy"]) end
	for k,_ in pairs(struct) do
		assert(InstanceGroupModifyConfig_keys[k], "InstanceGroupModifyConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceGroupModifyConfig
-- &lt;p&gt;Modify an instance group size.&lt;/p&gt;
-- @param InstanceGroupId [XmlStringMaxLen256] &lt;p&gt;Unique ID of the instance group to expand or shrink.&lt;/p&gt;
-- @param InstanceCount [Integer] &lt;p&gt;Target size for the instance group.&lt;/p&gt;
-- @param EC2InstanceIdsToTerminate [EC2InstanceIdsToTerminateList] &lt;p&gt;The EC2 InstanceIds to terminate. After you terminate the instances, the instance group will not return to its original requested size.&lt;/p&gt;
-- @param ShrinkPolicy [ShrinkPolicy] &lt;p&gt;Policy for customizing shrink operations.&lt;/p&gt;
-- Required parameter: InstanceGroupId
function M.InstanceGroupModifyConfig(InstanceGroupId, InstanceCount, EC2InstanceIdsToTerminate, ShrinkPolicy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceGroupModifyConfig")
	local t = { 
		["InstanceGroupId"] = InstanceGroupId,
		["InstanceCount"] = InstanceCount,
		["EC2InstanceIdsToTerminate"] = EC2InstanceIdsToTerminate,
		["ShrinkPolicy"] = ShrinkPolicy,
	}
	M.AssertInstanceGroupModifyConfig(t)
	return t
end

local ListSecurityConfigurationsOutput_keys = { "Marker" = true, "SecurityConfigurations" = true, nil }

function M.AssertListSecurityConfigurationsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSecurityConfigurationsOutput to be of type 'table'")
	if struct["Marker"] then M.AssertMarker(struct["Marker"]) end
	if struct["SecurityConfigurations"] then M.AssertSecurityConfigurationList(struct["SecurityConfigurations"]) end
	for k,_ in pairs(struct) do
		assert(ListSecurityConfigurationsOutput_keys[k], "ListSecurityConfigurationsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSecurityConfigurationsOutput
--  
-- @param Marker [Marker] &lt;p&gt;A pagination token that indicates the next set of results to retrieve. Include the marker in the next ListSecurityConfiguration call to retrieve the next page of results, if required.&lt;/p&gt;
-- @param SecurityConfigurations [SecurityConfigurationList] &lt;p&gt;The creation date and time, and name, of each security configuration.&lt;/p&gt;
function M.ListSecurityConfigurationsOutput(Marker, SecurityConfigurations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListSecurityConfigurationsOutput")
	local t = { 
		["Marker"] = Marker,
		["SecurityConfigurations"] = SecurityConfigurations,
	}
	M.AssertListSecurityConfigurationsOutput(t)
	return t
end

local ListInstanceGroupsOutput_keys = { "Marker" = true, "InstanceGroups" = true, nil }

function M.AssertListInstanceGroupsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListInstanceGroupsOutput to be of type 'table'")
	if struct["Marker"] then M.AssertMarker(struct["Marker"]) end
	if struct["InstanceGroups"] then M.AssertInstanceGroupList(struct["InstanceGroups"]) end
	for k,_ in pairs(struct) do
		assert(ListInstanceGroupsOutput_keys[k], "ListInstanceGroupsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListInstanceGroupsOutput
-- &lt;p&gt;This input determines which instance groups to retrieve.&lt;/p&gt;
-- @param Marker [Marker] &lt;p&gt;The pagination token that indicates the next set of results to retrieve.&lt;/p&gt;
-- @param InstanceGroups [InstanceGroupList] &lt;p&gt;The list of instance groups for the cluster and given filters.&lt;/p&gt;
function M.ListInstanceGroupsOutput(Marker, InstanceGroups, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListInstanceGroupsOutput")
	local t = { 
		["Marker"] = Marker,
		["InstanceGroups"] = InstanceGroups,
	}
	M.AssertListInstanceGroupsOutput(t)
	return t
end

local ScalingAction_keys = { "SimpleScalingPolicyConfiguration" = true, "Market" = true, nil }

function M.AssertScalingAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScalingAction to be of type 'table'")
	assert(struct["SimpleScalingPolicyConfiguration"], "Expected key SimpleScalingPolicyConfiguration to exist in table")
	if struct["SimpleScalingPolicyConfiguration"] then M.AssertSimpleScalingPolicyConfiguration(struct["SimpleScalingPolicyConfiguration"]) end
	if struct["Market"] then M.AssertMarketType(struct["Market"]) end
	for k,_ in pairs(struct) do
		assert(ScalingAction_keys[k], "ScalingAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScalingAction
-- &lt;p&gt;The type of adjustment the automatic scaling activity makes when triggered, and the periodicity of the adjustment.&lt;/p&gt;
-- @param SimpleScalingPolicyConfiguration [SimpleScalingPolicyConfiguration] &lt;p&gt;The type of adjustment the automatic scaling activity makes when triggered, and the periodicity of the adjustment.&lt;/p&gt;
-- @param Market [MarketType] &lt;p&gt;Not available for instance groups. Instance groups use the market type specified for the group.&lt;/p&gt;
-- Required parameter: SimpleScalingPolicyConfiguration
function M.ScalingAction(SimpleScalingPolicyConfiguration, Market, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ScalingAction")
	local t = { 
		["SimpleScalingPolicyConfiguration"] = SimpleScalingPolicyConfiguration,
		["Market"] = Market,
	}
	M.AssertScalingAction(t)
	return t
end

local RemoveTagsInput_keys = { "ResourceId" = true, "TagKeys" = true, nil }

function M.AssertRemoveTagsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveTagsInput to be of type 'table'")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	assert(struct["TagKeys"], "Expected key TagKeys to exist in table")
	if struct["ResourceId"] then M.AssertResourceId(struct["ResourceId"]) end
	if struct["TagKeys"] then M.AssertStringList(struct["TagKeys"]) end
	for k,_ in pairs(struct) do
		assert(RemoveTagsInput_keys[k], "RemoveTagsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveTagsInput
-- &lt;p&gt;This input identifies a cluster and a list of tags to remove.&lt;/p&gt;
-- @param ResourceId [ResourceId] &lt;p&gt;The Amazon EMR resource identifier from which tags will be removed. This value must be a cluster identifier.&lt;/p&gt;
-- @param TagKeys [StringList] &lt;p&gt;A list of tag keys to remove from a resource.&lt;/p&gt;
-- Required parameter: ResourceId
-- Required parameter: TagKeys
function M.RemoveTagsInput(ResourceId, TagKeys, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveTagsInput")
	local t = { 
		["ResourceId"] = ResourceId,
		["TagKeys"] = TagKeys,
	}
	M.AssertRemoveTagsInput(t)
	return t
end

local ClusterSummary_keys = { "Status" = true, "NormalizedInstanceHours" = true, "Id" = true, "Name" = true, nil }

function M.AssertClusterSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterSummary to be of type 'table'")
	if struct["Status"] then M.AssertClusterStatus(struct["Status"]) end
	if struct["NormalizedInstanceHours"] then M.AssertInteger(struct["NormalizedInstanceHours"]) end
	if struct["Id"] then M.AssertClusterId(struct["Id"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(ClusterSummary_keys[k], "ClusterSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterSummary
-- &lt;p&gt;The summary description of the cluster.&lt;/p&gt;
-- @param Status [ClusterStatus] &lt;p&gt;The details about the current status of the cluster.&lt;/p&gt;
-- @param NormalizedInstanceHours [Integer] &lt;p&gt;An approximation of the cost of the cluster, represented in m1.small/hours. This value is incremented one time for every hour an m1.small instance runs. Larger instances are weighted more, so an EC2 instance that is roughly four times more expensive would result in the normalized instance hours being incremented by four. This result is only an approximation and does not reflect the actual billing rate.&lt;/p&gt;
-- @param Id [ClusterId] &lt;p&gt;The unique identifier for the cluster.&lt;/p&gt;
-- @param Name [String] &lt;p&gt;The name of the cluster.&lt;/p&gt;
function M.ClusterSummary(Status, NormalizedInstanceHours, Id, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterSummary")
	local t = { 
		["Status"] = Status,
		["NormalizedInstanceHours"] = NormalizedInstanceHours,
		["Id"] = Id,
		["Name"] = Name,
	}
	M.AssertClusterSummary(t)
	return t
end

local PutAutoScalingPolicyOutput_keys = { "InstanceGroupId" = true, "ClusterId" = true, "AutoScalingPolicy" = true, nil }

function M.AssertPutAutoScalingPolicyOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutAutoScalingPolicyOutput to be of type 'table'")
	if struct["InstanceGroupId"] then M.AssertInstanceGroupId(struct["InstanceGroupId"]) end
	if struct["ClusterId"] then M.AssertClusterId(struct["ClusterId"]) end
	if struct["AutoScalingPolicy"] then M.AssertAutoScalingPolicyDescription(struct["AutoScalingPolicy"]) end
	for k,_ in pairs(struct) do
		assert(PutAutoScalingPolicyOutput_keys[k], "PutAutoScalingPolicyOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutAutoScalingPolicyOutput
--  
-- @param InstanceGroupId [InstanceGroupId] &lt;p&gt;Specifies the ID of the instance group to which the scaling policy is applied.&lt;/p&gt;
-- @param ClusterId [ClusterId] &lt;p&gt;Specifies the ID of a cluster. The instance group to which the automatic scaling policy is applied is within this cluster.&lt;/p&gt;
-- @param AutoScalingPolicy [AutoScalingPolicyDescription] &lt;p&gt;The automatic scaling policy definition.&lt;/p&gt;
function M.PutAutoScalingPolicyOutput(InstanceGroupId, ClusterId, AutoScalingPolicy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutAutoScalingPolicyOutput")
	local t = { 
		["InstanceGroupId"] = InstanceGroupId,
		["ClusterId"] = ClusterId,
		["AutoScalingPolicy"] = AutoScalingPolicy,
	}
	M.AssertPutAutoScalingPolicyOutput(t)
	return t
end

local DescribeJobFlowsInput_keys = { "CreatedAfter" = true, "JobFlowIds" = true, "CreatedBefore" = true, "JobFlowStates" = true, nil }

function M.AssertDescribeJobFlowsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeJobFlowsInput to be of type 'table'")
	if struct["CreatedAfter"] then M.AssertDate(struct["CreatedAfter"]) end
	if struct["JobFlowIds"] then M.AssertXmlStringList(struct["JobFlowIds"]) end
	if struct["CreatedBefore"] then M.AssertDate(struct["CreatedBefore"]) end
	if struct["JobFlowStates"] then M.AssertJobFlowExecutionStateList(struct["JobFlowStates"]) end
	for k,_ in pairs(struct) do
		assert(DescribeJobFlowsInput_keys[k], "DescribeJobFlowsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeJobFlowsInput
-- &lt;p&gt; The input for the &lt;a&gt;DescribeJobFlows&lt;/a&gt; operation. &lt;/p&gt;
-- @param CreatedAfter [Date] &lt;p&gt;Return only job flows created after this date and time.&lt;/p&gt;
-- @param JobFlowIds [XmlStringList] &lt;p&gt;Return only job flows whose job flow ID is contained in this list.&lt;/p&gt;
-- @param CreatedBefore [Date] &lt;p&gt;Return only job flows created before this date and time.&lt;/p&gt;
-- @param JobFlowStates [JobFlowExecutionStateList] &lt;p&gt;Return only job flows whose state is contained in this list.&lt;/p&gt;
function M.DescribeJobFlowsInput(CreatedAfter, JobFlowIds, CreatedBefore, JobFlowStates, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeJobFlowsInput")
	local t = { 
		["CreatedAfter"] = CreatedAfter,
		["JobFlowIds"] = JobFlowIds,
		["CreatedBefore"] = CreatedBefore,
		["JobFlowStates"] = JobFlowStates,
	}
	M.AssertDescribeJobFlowsInput(t)
	return t
end

local DescribeSecurityConfigurationOutput_keys = { "SecurityConfiguration" = true, "CreationDateTime" = true, "Name" = true, nil }

function M.AssertDescribeSecurityConfigurationOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSecurityConfigurationOutput to be of type 'table'")
	if struct["SecurityConfiguration"] then M.AssertString(struct["SecurityConfiguration"]) end
	if struct["CreationDateTime"] then M.AssertDate(struct["CreationDateTime"]) end
	if struct["Name"] then M.AssertXmlString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(DescribeSecurityConfigurationOutput_keys[k], "DescribeSecurityConfigurationOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSecurityConfigurationOutput
--  
-- @param SecurityConfiguration [String] &lt;p&gt;The security configuration details in JSON format.&lt;/p&gt;
-- @param CreationDateTime [Date] &lt;p&gt;The date and time the security configuration was created&lt;/p&gt;
-- @param Name [XmlString] &lt;p&gt;The name of the security configuration.&lt;/p&gt;
function M.DescribeSecurityConfigurationOutput(SecurityConfiguration, CreationDateTime, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeSecurityConfigurationOutput")
	local t = { 
		["SecurityConfiguration"] = SecurityConfiguration,
		["CreationDateTime"] = CreationDateTime,
		["Name"] = Name,
	}
	M.AssertDescribeSecurityConfigurationOutput(t)
	return t
end

local BootstrapActionDetail_keys = { "BootstrapActionConfig" = true, nil }

function M.AssertBootstrapActionDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BootstrapActionDetail to be of type 'table'")
	if struct["BootstrapActionConfig"] then M.AssertBootstrapActionConfig(struct["BootstrapActionConfig"]) end
	for k,_ in pairs(struct) do
		assert(BootstrapActionDetail_keys[k], "BootstrapActionDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BootstrapActionDetail
-- &lt;p&gt;Reports the configuration of a bootstrap action in a cluster (job flow).&lt;/p&gt;
-- @param BootstrapActionConfig [BootstrapActionConfig] &lt;p&gt;A description of the bootstrap action.&lt;/p&gt;
function M.BootstrapActionDetail(BootstrapActionConfig, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BootstrapActionDetail")
	local t = { 
		["BootstrapActionConfig"] = BootstrapActionConfig,
	}
	M.AssertBootstrapActionDetail(t)
	return t
end

local StepConfig_keys = { "HadoopJarStep" = true, "Name" = true, "ActionOnFailure" = true, nil }

function M.AssertStepConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StepConfig to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["HadoopJarStep"], "Expected key HadoopJarStep to exist in table")
	if struct["HadoopJarStep"] then M.AssertHadoopJarStepConfig(struct["HadoopJarStep"]) end
	if struct["Name"] then M.AssertXmlStringMaxLen256(struct["Name"]) end
	if struct["ActionOnFailure"] then M.AssertActionOnFailure(struct["ActionOnFailure"]) end
	for k,_ in pairs(struct) do
		assert(StepConfig_keys[k], "StepConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StepConfig
-- &lt;p&gt;Specification of a cluster (job flow) step.&lt;/p&gt;
-- @param HadoopJarStep [HadoopJarStepConfig] &lt;p&gt;The JAR file used for the step.&lt;/p&gt;
-- @param Name [XmlStringMaxLen256] &lt;p&gt;The name of the step.&lt;/p&gt;
-- @param ActionOnFailure [ActionOnFailure] &lt;p&gt;The action to take if the step fails.&lt;/p&gt;
-- Required parameter: Name
-- Required parameter: HadoopJarStep
function M.StepConfig(HadoopJarStep, Name, ActionOnFailure, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StepConfig")
	local t = { 
		["HadoopJarStep"] = HadoopJarStep,
		["Name"] = Name,
		["ActionOnFailure"] = ActionOnFailure,
	}
	M.AssertStepConfig(t)
	return t
end

local ListBootstrapActionsInput_keys = { "Marker" = true, "ClusterId" = true, nil }

function M.AssertListBootstrapActionsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListBootstrapActionsInput to be of type 'table'")
	assert(struct["ClusterId"], "Expected key ClusterId to exist in table")
	if struct["Marker"] then M.AssertMarker(struct["Marker"]) end
	if struct["ClusterId"] then M.AssertClusterId(struct["ClusterId"]) end
	for k,_ in pairs(struct) do
		assert(ListBootstrapActionsInput_keys[k], "ListBootstrapActionsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListBootstrapActionsInput
-- &lt;p&gt;This input determines which bootstrap actions to retrieve.&lt;/p&gt;
-- @param Marker [Marker] &lt;p&gt;The pagination token that indicates the next set of results to retrieve.&lt;/p&gt;
-- @param ClusterId [ClusterId] &lt;p&gt;The cluster identifier for the bootstrap actions to list.&lt;/p&gt;
-- Required parameter: ClusterId
function M.ListBootstrapActionsInput(Marker, ClusterId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListBootstrapActionsInput")
	local t = { 
		["Marker"] = Marker,
		["ClusterId"] = ClusterId,
	}
	M.AssertListBootstrapActionsInput(t)
	return t
end

local DescribeClusterOutput_keys = { "Cluster" = true, nil }

function M.AssertDescribeClusterOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeClusterOutput to be of type 'table'")
	if struct["Cluster"] then M.AssertCluster(struct["Cluster"]) end
	for k,_ in pairs(struct) do
		assert(DescribeClusterOutput_keys[k], "DescribeClusterOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeClusterOutput
-- &lt;p&gt;This output contains the description of the cluster.&lt;/p&gt;
-- @param Cluster [Cluster] &lt;p&gt;This output contains the details for the requested cluster.&lt;/p&gt;
function M.DescribeClusterOutput(Cluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeClusterOutput")
	local t = { 
		["Cluster"] = Cluster,
	}
	M.AssertDescribeClusterOutput(t)
	return t
end

function M.AssertInstanceGroupState(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceGroupState to be of type 'string'")
end

--  
function M.InstanceGroupState(str)
	M.AssertInstanceGroupState(str)
	return str
end

function M.AssertInstanceState(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceState to be of type 'string'")
end

--  
function M.InstanceState(str)
	M.AssertInstanceState(str)
	return str
end

function M.AssertInstanceFleetState(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceFleetState to be of type 'string'")
end

--  
function M.InstanceFleetState(str)
	M.AssertInstanceFleetState(str)
	return str
end

function M.AssertAutoScalingPolicyStateChangeReasonCode(str)
	assert(str)
	assert(type(str) == "string", "Expected AutoScalingPolicyStateChangeReasonCode to be of type 'string'")
end

--  
function M.AutoScalingPolicyStateChangeReasonCode(str)
	M.AssertAutoScalingPolicyStateChangeReasonCode(str)
	return str
end

function M.AssertStatistic(str)
	assert(str)
	assert(type(str) == "string", "Expected Statistic to be of type 'string'")
end

--  
function M.Statistic(str)
	M.AssertStatistic(str)
	return str
end

function M.AssertStepExecutionState(str)
	assert(str)
	assert(type(str) == "string", "Expected StepExecutionState to be of type 'string'")
end

--  
function M.StepExecutionState(str)
	M.AssertStepExecutionState(str)
	return str
end

function M.AssertInstanceFleetStateChangeReasonCode(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceFleetStateChangeReasonCode to be of type 'string'")
end

--  
function M.InstanceFleetStateChangeReasonCode(str)
	M.AssertInstanceFleetStateChangeReasonCode(str)
	return str
end

function M.AssertActionOnFailure(str)
	assert(str)
	assert(type(str) == "string", "Expected ActionOnFailure to be of type 'string'")
end

--  
function M.ActionOnFailure(str)
	M.AssertActionOnFailure(str)
	return str
end

function M.AssertStepState(str)
	assert(str)
	assert(type(str) == "string", "Expected StepState to be of type 'string'")
end

--  
function M.StepState(str)
	M.AssertStepState(str)
	return str
end

function M.AssertInstanceGroupType(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceGroupType to be of type 'string'")
end

--  
function M.InstanceGroupType(str)
	M.AssertInstanceGroupType(str)
	return str
end

function M.AssertInstanceRoleType(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceRoleType to be of type 'string'")
end

--  
function M.InstanceRoleType(str)
	M.AssertInstanceRoleType(str)
	return str
end

function M.AssertInstanceGroupId(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceGroupId to be of type 'string'")
end

--  
function M.InstanceGroupId(str)
	M.AssertInstanceGroupId(str)
	return str
end

function M.AssertXmlString(str)
	assert(str)
	assert(type(str) == "string", "Expected XmlString to be of type 'string'")
	assert(#str <= 10280, "Expected string to be max 10280 characters")
	assert(str:match("[%u0020-%uD7FF%uE000-%uFFFD%uD800%uDC00-%uDBFF%uDFFF%r%n%t]*"), "Expected string to match pattern '[%u0020-%uD7FF%uE000-%uFFFD%uD800%uDC00-%uDBFF%uDFFF%r%n%t]*'")
end

--  
function M.XmlString(str)
	M.AssertXmlString(str)
	return str
end

function M.AssertSpotProvisioningTimeoutAction(str)
	assert(str)
	assert(type(str) == "string", "Expected SpotProvisioningTimeoutAction to be of type 'string'")
end

--  
function M.SpotProvisioningTimeoutAction(str)
	M.AssertSpotProvisioningTimeoutAction(str)
	return str
end

function M.AssertAdjustmentType(str)
	assert(str)
	assert(type(str) == "string", "Expected AdjustmentType to be of type 'string'")
end

--  
function M.AdjustmentType(str)
	M.AssertAdjustmentType(str)
	return str
end

function M.AssertClusterStateChangeReasonCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ClusterStateChangeReasonCode to be of type 'string'")
end

--  
function M.ClusterStateChangeReasonCode(str)
	M.AssertClusterStateChangeReasonCode(str)
	return str
end

function M.AssertErrorCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorCode to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ErrorCode(str)
	M.AssertErrorCode(str)
	return str
end

function M.AssertScaleDownBehavior(str)
	assert(str)
	assert(type(str) == "string", "Expected ScaleDownBehavior to be of type 'string'")
end

--  
function M.ScaleDownBehavior(str)
	M.AssertScaleDownBehavior(str)
	return str
end

function M.AssertInstanceCollectionType(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceCollectionType to be of type 'string'")
end

--  
function M.InstanceCollectionType(str)
	M.AssertInstanceCollectionType(str)
	return str
end

function M.AssertMarketType(str)
	assert(str)
	assert(type(str) == "string", "Expected MarketType to be of type 'string'")
end

--  
function M.MarketType(str)
	M.AssertMarketType(str)
	return str
end

function M.AssertInstanceStateChangeReasonCode(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceStateChangeReasonCode to be of type 'string'")
end

--  
function M.InstanceStateChangeReasonCode(str)
	M.AssertInstanceStateChangeReasonCode(str)
	return str
end

function M.AssertStepId(str)
	assert(str)
	assert(type(str) == "string", "Expected StepId to be of type 'string'")
end

--  
function M.StepId(str)
	M.AssertStepId(str)
	return str
end

function M.AssertXmlStringMaxLen256(str)
	assert(str)
	assert(type(str) == "string", "Expected XmlStringMaxLen256 to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(str:match("[%u0020-%uD7FF%uE000-%uFFFD%uD800%uDC00-%uDBFF%uDFFF%r%n%t]*"), "Expected string to match pattern '[%u0020-%uD7FF%uE000-%uFFFD%uD800%uDC00-%uDBFF%uDFFF%r%n%t]*'")
end

--  
function M.XmlStringMaxLen256(str)
	M.AssertXmlStringMaxLen256(str)
	return str
end

function M.AssertInstanceType(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceType to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%u0020-%uD7FF%uE000-%uFFFD%uD800%uDC00-%uDBFF%uDFFF%r%n%t]*"), "Expected string to match pattern '[%u0020-%uD7FF%uE000-%uFFFD%uD800%uDC00-%uDBFF%uDFFF%r%n%t]*'")
end

--  
function M.InstanceType(str)
	M.AssertInstanceType(str)
	return str
end

function M.AssertComparisonOperator(str)
	assert(str)
	assert(type(str) == "string", "Expected ComparisonOperator to be of type 'string'")
end

--  
function M.ComparisonOperator(str)
	M.AssertComparisonOperator(str)
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

function M.AssertUnit(str)
	assert(str)
	assert(type(str) == "string", "Expected Unit to be of type 'string'")
end

--  
function M.Unit(str)
	M.AssertUnit(str)
	return str
end

function M.AssertErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorMessage to be of type 'string'")
end

--  
function M.ErrorMessage(str)
	M.AssertErrorMessage(str)
	return str
end

function M.AssertStepStateChangeReasonCode(str)
	assert(str)
	assert(type(str) == "string", "Expected StepStateChangeReasonCode to be of type 'string'")
end

--  
function M.StepStateChangeReasonCode(str)
	M.AssertStepStateChangeReasonCode(str)
	return str
end

function M.AssertInstanceGroupStateChangeReasonCode(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceGroupStateChangeReasonCode to be of type 'string'")
end

--  
function M.InstanceGroupStateChangeReasonCode(str)
	M.AssertInstanceGroupStateChangeReasonCode(str)
	return str
end

function M.AssertAutoScalingPolicyState(str)
	assert(str)
	assert(type(str) == "string", "Expected AutoScalingPolicyState to be of type 'string'")
end

--  
function M.AutoScalingPolicyState(str)
	M.AssertAutoScalingPolicyState(str)
	return str
end

function M.AssertInstanceId(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceId to be of type 'string'")
end

--  
function M.InstanceId(str)
	M.AssertInstanceId(str)
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

function M.AssertClusterId(str)
	assert(str)
	assert(type(str) == "string", "Expected ClusterId to be of type 'string'")
end

--  
function M.ClusterId(str)
	M.AssertClusterId(str)
	return str
end

function M.AssertInstanceFleetId(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceFleetId to be of type 'string'")
end

--  
function M.InstanceFleetId(str)
	M.AssertInstanceFleetId(str)
	return str
end

function M.AssertCancelStepsRequestStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected CancelStepsRequestStatus to be of type 'string'")
end

--  
function M.CancelStepsRequestStatus(str)
	M.AssertCancelStepsRequestStatus(str)
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

function M.AssertInstanceFleetType(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceFleetType to be of type 'string'")
end

--  
function M.InstanceFleetType(str)
	M.AssertInstanceFleetType(str)
	return str
end

function M.AssertJobFlowExecutionState(str)
	assert(str)
	assert(type(str) == "string", "Expected JobFlowExecutionState to be of type 'string'")
end

-- &lt;p&gt;The type of instance.&lt;/p&gt;
function M.JobFlowExecutionState(str)
	M.AssertJobFlowExecutionState(str)
	return str
end

function M.AssertClusterState(str)
	assert(str)
	assert(type(str) == "string", "Expected ClusterState to be of type 'string'")
end

--  
function M.ClusterState(str)
	M.AssertClusterState(str)
	return str
end

function M.AssertNonNegativeDouble(double)
	assert(double)
	assert(type(double) == "number", "Expected NonNegativeDouble to be of type 'number'")
end

function M.NonNegativeDouble(double)
	M.AssertNonNegativeDouble(double)
	return double
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

function M.AssertWholeNumber(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected WholeNumber to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.WholeNumber(integer)
	M.AssertWholeNumber(integer)
	return integer
end

function M.AssertBooleanObject(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected BooleanObject to be of type 'boolean'")
end

function M.BooleanObject(boolean)
	M.AssertBooleanObject(boolean)
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

function M.AssertStringMap(map)
	assert(map)
	assert(type(map) == "table", "Expected StringMap to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertString(k)
		M.AssertString(v)
	end
end

function M.StringMap(map)
	M.AssertStringMap(map)
	return map
end

function M.AssertDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Date to be of type 'string'")
end

function M.Date(timestamp)
	M.AssertDate(timestamp)
	return timestamp
end

function M.AssertApplicationList(list)
	assert(list)
	assert(type(list) == "table", "Expected ApplicationList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertApplication(v)
	end
end

--  
-- List of Application objects
function M.ApplicationList(list)
	M.AssertApplicationList(list)
	return list
end

function M.AssertInstanceGroupConfigList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceGroupConfigList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertInstanceGroupConfig(v)
	end
end

--  
-- List of InstanceGroupConfig objects
function M.InstanceGroupConfigList(list)
	M.AssertInstanceGroupConfigList(list)
	return list
end

function M.AssertXmlStringMaxLen256List(list)
	assert(list)
	assert(type(list) == "table", "Expected XmlStringMaxLen256List to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertXmlStringMaxLen256(v)
	end
end

--  
-- List of XmlStringMaxLen256 objects
function M.XmlStringMaxLen256List(list)
	M.AssertXmlStringMaxLen256List(list)
	return list
end

function M.AssertInstanceGroupDetailList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceGroupDetailList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertInstanceGroupDetail(v)
	end
end

--  
-- List of InstanceGroupDetail objects
function M.InstanceGroupDetailList(list)
	M.AssertInstanceGroupDetailList(list)
	return list
end

function M.AssertClusterStateList(list)
	assert(list)
	assert(type(list) == "table", "Expected ClusterStateList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertClusterState(v)
	end
end

--  
-- List of ClusterState objects
function M.ClusterStateList(list)
	M.AssertClusterStateList(list)
	return list
end

function M.AssertJobFlowExecutionStateList(list)
	assert(list)
	assert(type(list) == "table", "Expected JobFlowExecutionStateList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertJobFlowExecutionState(v)
	end
end

--  
-- List of JobFlowExecutionState objects
function M.JobFlowExecutionStateList(list)
	M.AssertJobFlowExecutionStateList(list)
	return list
end

function M.AssertInstanceGroupModifyConfigList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceGroupModifyConfigList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertInstanceGroupModifyConfig(v)
	end
end

--  
-- List of InstanceGroupModifyConfig objects
function M.InstanceGroupModifyConfigList(list)
	M.AssertInstanceGroupModifyConfigList(list)
	return list
end

function M.AssertInstanceGroupIdsList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceGroupIdsList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertXmlStringMaxLen256(v)
	end
end

--  
-- List of XmlStringMaxLen256 objects
function M.InstanceGroupIdsList(list)
	M.AssertInstanceGroupIdsList(list)
	return list
end

function M.AssertMetricDimensionList(list)
	assert(list)
	assert(type(list) == "table", "Expected MetricDimensionList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertMetricDimension(v)
	end
end

--  
-- List of MetricDimension objects
function M.MetricDimensionList(list)
	M.AssertMetricDimensionList(list)
	return list
end

function M.AssertKeyValueList(list)
	assert(list)
	assert(type(list) == "table", "Expected KeyValueList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertKeyValue(v)
	end
end

--  
-- List of KeyValue objects
function M.KeyValueList(list)
	M.AssertKeyValueList(list)
	return list
end

function M.AssertSecurityGroupsList(list)
	assert(list)
	assert(type(list) == "table", "Expected SecurityGroupsList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertXmlStringMaxLen256(v)
	end
end

--  
-- List of XmlStringMaxLen256 objects
function M.SecurityGroupsList(list)
	M.AssertSecurityGroupsList(list)
	return list
end

function M.AssertEC2InstanceIdsToTerminateList(list)
	assert(list)
	assert(type(list) == "table", "Expected EC2InstanceIdsToTerminateList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertInstanceId(v)
	end
end

--  
-- List of InstanceId objects
function M.EC2InstanceIdsToTerminateList(list)
	M.AssertEC2InstanceIdsToTerminateList(list)
	return list
end

function M.AssertInstanceTypeSpecificationList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceTypeSpecificationList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertInstanceTypeSpecification(v)
	end
end

--  
-- List of InstanceTypeSpecification objects
function M.InstanceTypeSpecificationList(list)
	M.AssertInstanceTypeSpecificationList(list)
	return list
end

function M.AssertInstanceList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertInstance(v)
	end
end

--  
-- List of Instance objects
function M.InstanceList(list)
	M.AssertInstanceList(list)
	return list
end

function M.AssertStepConfigList(list)
	assert(list)
	assert(type(list) == "table", "Expected StepConfigList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertStepConfig(v)
	end
end

--  
-- List of StepConfig objects
function M.StepConfigList(list)
	M.AssertStepConfigList(list)
	return list
end

function M.AssertInstanceGroupTypeList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceGroupTypeList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertInstanceGroupType(v)
	end
end

--  
-- List of InstanceGroupType objects
function M.InstanceGroupTypeList(list)
	M.AssertInstanceGroupTypeList(list)
	return list
end

function M.AssertBootstrapActionDetailList(list)
	assert(list)
	assert(type(list) == "table", "Expected BootstrapActionDetailList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertBootstrapActionDetail(v)
	end
end

--  
-- List of BootstrapActionDetail objects
function M.BootstrapActionDetailList(list)
	M.AssertBootstrapActionDetailList(list)
	return list
end

function M.AssertInstanceFleetList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceFleetList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertInstanceFleet(v)
	end
end

--  
-- List of InstanceFleet objects
function M.InstanceFleetList(list)
	M.AssertInstanceFleetList(list)
	return list
end

function M.AssertNewSupportedProductsList(list)
	assert(list)
	assert(type(list) == "table", "Expected NewSupportedProductsList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertSupportedProductConfig(v)
	end
end

--  
-- List of SupportedProductConfig objects
function M.NewSupportedProductsList(list)
	M.AssertNewSupportedProductsList(list)
	return list
end

function M.AssertEbsBlockDeviceList(list)
	assert(list)
	assert(type(list) == "table", "Expected EbsBlockDeviceList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertEbsBlockDevice(v)
	end
end

--  
-- List of EbsBlockDevice objects
function M.EbsBlockDeviceList(list)
	M.AssertEbsBlockDeviceList(list)
	return list
end

function M.AssertStepDetailList(list)
	assert(list)
	assert(type(list) == "table", "Expected StepDetailList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertStepDetail(v)
	end
end

--  
-- List of StepDetail objects
function M.StepDetailList(list)
	M.AssertStepDetailList(list)
	return list
end

function M.AssertInstanceFleetConfigList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceFleetConfigList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertInstanceFleetConfig(v)
	end
end

--  
-- List of InstanceFleetConfig objects
function M.InstanceFleetConfigList(list)
	M.AssertInstanceFleetConfigList(list)
	return list
end

function M.AssertStepStateList(list)
	assert(list)
	assert(type(list) == "table", "Expected StepStateList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertStepState(v)
	end
end

--  
-- List of StepState objects
function M.StepStateList(list)
	M.AssertStepStateList(list)
	return list
end

function M.AssertCommandList(list)
	assert(list)
	assert(type(list) == "table", "Expected CommandList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertCommand(v)
	end
end

--  
-- List of Command objects
function M.CommandList(list)
	M.AssertCommandList(list)
	return list
end

function M.AssertStepIdsList(list)
	assert(list)
	assert(type(list) == "table", "Expected StepIdsList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertXmlStringMaxLen256(v)
	end
end

--  
-- List of XmlStringMaxLen256 objects
function M.StepIdsList(list)
	M.AssertStepIdsList(list)
	return list
end

function M.AssertXmlStringList(list)
	assert(list)
	assert(type(list) == "table", "Expected XmlStringList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertXmlString(v)
	end
end

--  
-- List of XmlString objects
function M.XmlStringList(list)
	M.AssertXmlStringList(list)
	return list
end

function M.AssertStringList(list)
	assert(list)
	assert(type(list) == "table", "Expected StringList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.StringList(list)
	M.AssertStringList(list)
	return list
end

function M.AssertCancelStepsInfoList(list)
	assert(list)
	assert(type(list) == "table", "Expected CancelStepsInfoList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertCancelStepsInfo(v)
	end
end

--  
-- List of CancelStepsInfo objects
function M.CancelStepsInfoList(list)
	M.AssertCancelStepsInfoList(list)
	return list
end

function M.AssertTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagList to be of type ''table")
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

function M.AssertClusterSummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected ClusterSummaryList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertClusterSummary(v)
	end
end

--  
-- List of ClusterSummary objects
function M.ClusterSummaryList(list)
	M.AssertClusterSummaryList(list)
	return list
end

function M.AssertInstanceGroupList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceGroupList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertInstanceGroup(v)
	end
end

--  
-- List of InstanceGroup objects
function M.InstanceGroupList(list)
	M.AssertInstanceGroupList(list)
	return list
end

function M.AssertInstanceTypeConfigList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceTypeConfigList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertInstanceTypeConfig(v)
	end
end

--  
-- List of InstanceTypeConfig objects
function M.InstanceTypeConfigList(list)
	M.AssertInstanceTypeConfigList(list)
	return list
end

function M.AssertInstanceStateList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceStateList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertInstanceState(v)
	end
end

--  
-- List of InstanceState objects
function M.InstanceStateList(list)
	M.AssertInstanceStateList(list)
	return list
end

function M.AssertEC2InstanceIdsList(list)
	assert(list)
	assert(type(list) == "table", "Expected EC2InstanceIdsList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertInstanceId(v)
	end
end

--  
-- List of InstanceId objects
function M.EC2InstanceIdsList(list)
	M.AssertEC2InstanceIdsList(list)
	return list
end

function M.AssertEbsVolumeList(list)
	assert(list)
	assert(type(list) == "table", "Expected EbsVolumeList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertEbsVolume(v)
	end
end

--  
-- List of EbsVolume objects
function M.EbsVolumeList(list)
	M.AssertEbsVolumeList(list)
	return list
end

function M.AssertConfigurationList(list)
	assert(list)
	assert(type(list) == "table", "Expected ConfigurationList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertConfiguration(v)
	end
end

--  
-- List of Configuration objects
function M.ConfigurationList(list)
	M.AssertConfigurationList(list)
	return list
end

function M.AssertJobFlowDetailList(list)
	assert(list)
	assert(type(list) == "table", "Expected JobFlowDetailList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertJobFlowDetail(v)
	end
end

--  
-- List of JobFlowDetail objects
function M.JobFlowDetailList(list)
	M.AssertJobFlowDetailList(list)
	return list
end

function M.AssertStepSummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected StepSummaryList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertStepSummary(v)
	end
end

--  
-- List of StepSummary objects
function M.StepSummaryList(list)
	M.AssertStepSummaryList(list)
	return list
end

function M.AssertSecurityConfigurationList(list)
	assert(list)
	assert(type(list) == "table", "Expected SecurityConfigurationList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertSecurityConfigurationSummary(v)
	end
end

--  
-- List of SecurityConfigurationSummary objects
function M.SecurityConfigurationList(list)
	M.AssertSecurityConfigurationList(list)
	return list
end

function M.AssertScalingRuleList(list)
	assert(list)
	assert(type(list) == "table", "Expected ScalingRuleList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertScalingRule(v)
	end
end

--  
-- List of ScalingRule objects
function M.ScalingRuleList(list)
	M.AssertScalingRuleList(list)
	return list
end

function M.AssertEbsBlockDeviceConfigList(list)
	assert(list)
	assert(type(list) == "table", "Expected EbsBlockDeviceConfigList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertEbsBlockDeviceConfig(v)
	end
end

--  
-- List of EbsBlockDeviceConfig objects
function M.EbsBlockDeviceConfigList(list)
	M.AssertEbsBlockDeviceConfigList(list)
	return list
end

function M.AssertBootstrapActionConfigList(list)
	assert(list)
	assert(type(list) == "table", "Expected BootstrapActionConfigList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertBootstrapActionConfig(v)
	end
end

--  
-- List of BootstrapActionConfig objects
function M.BootstrapActionConfigList(list)
	M.AssertBootstrapActionConfigList(list)
	return list
end

function M.AssertSupportedProductsList(list)
	assert(list)
	assert(type(list) == "table", "Expected SupportedProductsList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertXmlStringMaxLen256(v)
	end
end

--  
-- List of XmlStringMaxLen256 objects
function M.SupportedProductsList(list)
	M.AssertSupportedProductsList(list)
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
			return "elasticmapreduce.amazonaws.com"
		end
	end
	local ss = { "elasticmapreduce" }
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
--- CancelSteps
-- @param CancelStepsInput
-- @param cb Callback function accepting two args: response, error_message
function M.CancelStepsAsync(CancelStepsInput, cb)
	assert(CancelStepsInput, "You must provide a CancelStepsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "ElasticMapReduce.CancelSteps",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CancelStepsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RemoveAutoScalingPolicy
-- @param RemoveAutoScalingPolicyInput
-- @param cb Callback function accepting two args: response, error_message
function M.RemoveAutoScalingPolicyAsync(RemoveAutoScalingPolicyInput, cb)
	assert(RemoveAutoScalingPolicyInput, "You must provide a RemoveAutoScalingPolicyInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "ElasticMapReduce.RemoveAutoScalingPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RemoveAutoScalingPolicyInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateSecurityConfiguration
-- @param CreateSecurityConfigurationInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateSecurityConfigurationAsync(CreateSecurityConfigurationInput, cb)
	assert(CreateSecurityConfigurationInput, "You must provide a CreateSecurityConfigurationInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "ElasticMapReduce.CreateSecurityConfiguration",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateSecurityConfigurationInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RunJobFlow
-- @param RunJobFlowInput
-- @param cb Callback function accepting two args: response, error_message
function M.RunJobFlowAsync(RunJobFlowInput, cb)
	assert(RunJobFlowInput, "You must provide a RunJobFlowInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "ElasticMapReduce.RunJobFlow",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RunJobFlowInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeSecurityConfiguration
-- @param DescribeSecurityConfigurationInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeSecurityConfigurationAsync(DescribeSecurityConfigurationInput, cb)
	assert(DescribeSecurityConfigurationInput, "You must provide a DescribeSecurityConfigurationInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "ElasticMapReduce.DescribeSecurityConfiguration",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeSecurityConfigurationInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListSecurityConfigurations
-- @param ListSecurityConfigurationsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListSecurityConfigurationsAsync(ListSecurityConfigurationsInput, cb)
	assert(ListSecurityConfigurationsInput, "You must provide a ListSecurityConfigurationsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "ElasticMapReduce.ListSecurityConfigurations",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListSecurityConfigurationsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SetTerminationProtection
-- @param SetTerminationProtectionInput
-- @param cb Callback function accepting two args: response, error_message
function M.SetTerminationProtectionAsync(SetTerminationProtectionInput, cb)
	assert(SetTerminationProtectionInput, "You must provide a SetTerminationProtectionInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "ElasticMapReduce.SetTerminationProtection",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SetTerminationProtectionInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteSecurityConfiguration
-- @param DeleteSecurityConfigurationInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteSecurityConfigurationAsync(DeleteSecurityConfigurationInput, cb)
	assert(DeleteSecurityConfigurationInput, "You must provide a DeleteSecurityConfigurationInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "ElasticMapReduce.DeleteSecurityConfiguration",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteSecurityConfigurationInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AddInstanceGroups
-- @param AddInstanceGroupsInput
-- @param cb Callback function accepting two args: response, error_message
function M.AddInstanceGroupsAsync(AddInstanceGroupsInput, cb)
	assert(AddInstanceGroupsInput, "You must provide a AddInstanceGroupsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "ElasticMapReduce.AddInstanceGroups",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AddInstanceGroupsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListBootstrapActions
-- @param ListBootstrapActionsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListBootstrapActionsAsync(ListBootstrapActionsInput, cb)
	assert(ListBootstrapActionsInput, "You must provide a ListBootstrapActionsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "ElasticMapReduce.ListBootstrapActions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListBootstrapActionsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListClusters
-- @param ListClustersInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListClustersAsync(ListClustersInput, cb)
	assert(ListClustersInput, "You must provide a ListClustersInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "ElasticMapReduce.ListClusters",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListClustersInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListInstances
-- @param ListInstancesInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListInstancesAsync(ListInstancesInput, cb)
	assert(ListInstancesInput, "You must provide a ListInstancesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "ElasticMapReduce.ListInstances",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListInstancesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeCluster
-- @param DescribeClusterInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeClusterAsync(DescribeClusterInput, cb)
	assert(DescribeClusterInput, "You must provide a DescribeClusterInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "ElasticMapReduce.DescribeCluster",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeClusterInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListSteps
-- @param ListStepsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListStepsAsync(ListStepsInput, cb)
	assert(ListStepsInput, "You must provide a ListStepsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "ElasticMapReduce.ListSteps",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListStepsInput, headers, M.metadata, cb)
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
		[headers.AMZ_TARGET_HEADER] = "ElasticMapReduce.RemoveTags",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RemoveTagsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ModifyInstanceGroups
-- @param ModifyInstanceGroupsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyInstanceGroupsAsync(ModifyInstanceGroupsInput, cb)
	assert(ModifyInstanceGroupsInput, "You must provide a ModifyInstanceGroupsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "ElasticMapReduce.ModifyInstanceGroups",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ModifyInstanceGroupsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutAutoScalingPolicy
-- @param PutAutoScalingPolicyInput
-- @param cb Callback function accepting two args: response, error_message
function M.PutAutoScalingPolicyAsync(PutAutoScalingPolicyInput, cb)
	assert(PutAutoScalingPolicyInput, "You must provide a PutAutoScalingPolicyInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "ElasticMapReduce.PutAutoScalingPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PutAutoScalingPolicyInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AddInstanceFleet
-- @param AddInstanceFleetInput
-- @param cb Callback function accepting two args: response, error_message
function M.AddInstanceFleetAsync(AddInstanceFleetInput, cb)
	assert(AddInstanceFleetInput, "You must provide a AddInstanceFleetInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "ElasticMapReduce.AddInstanceFleet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AddInstanceFleetInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SetVisibleToAllUsers
-- @param SetVisibleToAllUsersInput
-- @param cb Callback function accepting two args: response, error_message
function M.SetVisibleToAllUsersAsync(SetVisibleToAllUsersInput, cb)
	assert(SetVisibleToAllUsersInput, "You must provide a SetVisibleToAllUsersInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "ElasticMapReduce.SetVisibleToAllUsers",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SetVisibleToAllUsersInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListInstanceFleets
-- @param ListInstanceFleetsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListInstanceFleetsAsync(ListInstanceFleetsInput, cb)
	assert(ListInstanceFleetsInput, "You must provide a ListInstanceFleetsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "ElasticMapReduce.ListInstanceFleets",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListInstanceFleetsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- TerminateJobFlows
-- @param TerminateJobFlowsInput
-- @param cb Callback function accepting two args: response, error_message
function M.TerminateJobFlowsAsync(TerminateJobFlowsInput, cb)
	assert(TerminateJobFlowsInput, "You must provide a TerminateJobFlowsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "ElasticMapReduce.TerminateJobFlows",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", TerminateJobFlowsInput, headers, M.metadata, cb)
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
		[headers.AMZ_TARGET_HEADER] = "ElasticMapReduce.AddTags",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AddTagsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeJobFlows
-- @param DescribeJobFlowsInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeJobFlowsAsync(DescribeJobFlowsInput, cb)
	assert(DescribeJobFlowsInput, "You must provide a DescribeJobFlowsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "ElasticMapReduce.DescribeJobFlows",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeJobFlowsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ModifyInstanceFleet
-- @param ModifyInstanceFleetInput
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyInstanceFleetAsync(ModifyInstanceFleetInput, cb)
	assert(ModifyInstanceFleetInput, "You must provide a ModifyInstanceFleetInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "ElasticMapReduce.ModifyInstanceFleet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ModifyInstanceFleetInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AddJobFlowSteps
-- @param AddJobFlowStepsInput
-- @param cb Callback function accepting two args: response, error_message
function M.AddJobFlowStepsAsync(AddJobFlowStepsInput, cb)
	assert(AddJobFlowStepsInput, "You must provide a AddJobFlowStepsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "ElasticMapReduce.AddJobFlowSteps",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AddJobFlowStepsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListInstanceGroups
-- @param ListInstanceGroupsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListInstanceGroupsAsync(ListInstanceGroupsInput, cb)
	assert(ListInstanceGroupsInput, "You must provide a ListInstanceGroupsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "ElasticMapReduce.ListInstanceGroups",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListInstanceGroupsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeStep
-- @param DescribeStepInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeStepAsync(DescribeStepInput, cb)
	assert(DescribeStepInput, "You must provide a DescribeStepInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "ElasticMapReduce.DescribeStep",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeStepInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
