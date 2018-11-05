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

local keys = {}
local asserts = {}

keys.InternalServerException = { ["Message"] = true, nil }

function asserts.AssertInternalServerException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalServerException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InternalServerException[k], "InternalServerException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalServerException
-- <p>This exception occurs when there is an internal failure in the EMR service.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] <p>The message associated with the exception.</p>
-- @return InternalServerException structure as a key-value pair table
function M.InternalServerException(args)
	assert(args, "You must provide an argument table when creating InternalServerException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertInternalServerException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CancelStepsInfo = { ["Status"] = true, ["Reason"] = true, ["StepId"] = true, nil }

function asserts.AssertCancelStepsInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelStepsInfo to be of type 'table'")
	if struct["Status"] then asserts.AssertCancelStepsRequestStatus(struct["Status"]) end
	if struct["Reason"] then asserts.AssertString(struct["Reason"]) end
	if struct["StepId"] then asserts.AssertStepId(struct["StepId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CancelStepsInfo[k], "CancelStepsInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelStepsInfo
-- <p>Specification of the status of a CancelSteps request. Available only in Amazon EMR version 4.8.0 and later, excluding version 5.0.0.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [CancelStepsRequestStatus] <p>The status of a CancelSteps Request. The value may be SUBMITTED or FAILED.</p>
-- * Reason [String] <p>The reason for the failure if the CancelSteps request fails.</p>
-- * StepId [StepId] <p>The encrypted StepId of a step.</p>
-- @return CancelStepsInfo structure as a key-value pair table
function M.CancelStepsInfo(args)
	assert(args, "You must provide an argument table when creating CancelStepsInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["Reason"] = args["Reason"],
		["StepId"] = args["StepId"],
	}
	asserts.AssertCancelStepsInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InstanceFleetTimeline = { ["ReadyDateTime"] = true, ["CreationDateTime"] = true, ["EndDateTime"] = true, nil }

function asserts.AssertInstanceFleetTimeline(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceFleetTimeline to be of type 'table'")
	if struct["ReadyDateTime"] then asserts.AssertDate(struct["ReadyDateTime"]) end
	if struct["CreationDateTime"] then asserts.AssertDate(struct["CreationDateTime"]) end
	if struct["EndDateTime"] then asserts.AssertDate(struct["EndDateTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstanceFleetTimeline[k], "InstanceFleetTimeline contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceFleetTimeline
-- <p>Provides historical timestamps for the instance fleet, including the time of creation, the time it became ready to run jobs, and the time of termination.</p> <note> <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.</p> </note>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReadyDateTime [Date] <p>The time and date the instance fleet was ready to run jobs.</p>
-- * CreationDateTime [Date] <p>The time and date the instance fleet was created.</p>
-- * EndDateTime [Date] <p>The time and date the instance fleet terminated.</p>
-- @return InstanceFleetTimeline structure as a key-value pair table
function M.InstanceFleetTimeline(args)
	assert(args, "You must provide an argument table when creating InstanceFleetTimeline")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReadyDateTime"] = args["ReadyDateTime"],
		["CreationDateTime"] = args["CreationDateTime"],
		["EndDateTime"] = args["EndDateTime"],
	}
	asserts.AssertInstanceFleetTimeline(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListStepsInput = { ["Marker"] = true, ["StepIds"] = true, ["ClusterId"] = true, ["StepStates"] = true, nil }

function asserts.AssertListStepsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListStepsInput to be of type 'table'")
	assert(struct["ClusterId"], "Expected key ClusterId to exist in table")
	if struct["Marker"] then asserts.AssertMarker(struct["Marker"]) end
	if struct["StepIds"] then asserts.AssertXmlStringList(struct["StepIds"]) end
	if struct["ClusterId"] then asserts.AssertClusterId(struct["ClusterId"]) end
	if struct["StepStates"] then asserts.AssertStepStateList(struct["StepStates"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListStepsInput[k], "ListStepsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListStepsInput
-- <p>This input determines which steps to list.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [Marker] <p>The pagination token that indicates the next set of results to retrieve.</p>
-- * StepIds [XmlStringList] <p>The filter to limit the step list based on the identifier of the steps.</p>
-- * ClusterId [ClusterId] <p>The identifier of the cluster for which to list the steps.</p>
-- * StepStates [StepStateList] <p>The filter to limit the step list based on certain states.</p>
-- Required key: ClusterId
-- @return ListStepsInput structure as a key-value pair table
function M.ListStepsInput(args)
	assert(args, "You must provide an argument table when creating ListStepsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["StepIds"] = args["StepIds"],
		["ClusterId"] = args["ClusterId"],
		["StepStates"] = args["StepStates"],
	}
	asserts.AssertListStepsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.JobFlowInstancesDetail = { ["InstanceCount"] = true, ["Placement"] = true, ["MasterPublicDnsName"] = true, ["NormalizedInstanceHours"] = true, ["MasterInstanceId"] = true, ["InstanceGroups"] = true, ["MasterInstanceType"] = true, ["TerminationProtected"] = true, ["HadoopVersion"] = true, ["Ec2SubnetId"] = true, ["KeepJobFlowAliveWhenNoSteps"] = true, ["SlaveInstanceType"] = true, ["Ec2KeyName"] = true, nil }

function asserts.AssertJobFlowInstancesDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobFlowInstancesDetail to be of type 'table'")
	assert(struct["MasterInstanceType"], "Expected key MasterInstanceType to exist in table")
	assert(struct["SlaveInstanceType"], "Expected key SlaveInstanceType to exist in table")
	assert(struct["InstanceCount"], "Expected key InstanceCount to exist in table")
	if struct["InstanceCount"] then asserts.AssertInteger(struct["InstanceCount"]) end
	if struct["Placement"] then asserts.AssertPlacementType(struct["Placement"]) end
	if struct["MasterPublicDnsName"] then asserts.AssertXmlString(struct["MasterPublicDnsName"]) end
	if struct["NormalizedInstanceHours"] then asserts.AssertInteger(struct["NormalizedInstanceHours"]) end
	if struct["MasterInstanceId"] then asserts.AssertXmlString(struct["MasterInstanceId"]) end
	if struct["InstanceGroups"] then asserts.AssertInstanceGroupDetailList(struct["InstanceGroups"]) end
	if struct["MasterInstanceType"] then asserts.AssertInstanceType(struct["MasterInstanceType"]) end
	if struct["TerminationProtected"] then asserts.AssertBoolean(struct["TerminationProtected"]) end
	if struct["HadoopVersion"] then asserts.AssertXmlStringMaxLen256(struct["HadoopVersion"]) end
	if struct["Ec2SubnetId"] then asserts.AssertXmlStringMaxLen256(struct["Ec2SubnetId"]) end
	if struct["KeepJobFlowAliveWhenNoSteps"] then asserts.AssertBoolean(struct["KeepJobFlowAliveWhenNoSteps"]) end
	if struct["SlaveInstanceType"] then asserts.AssertInstanceType(struct["SlaveInstanceType"]) end
	if struct["Ec2KeyName"] then asserts.AssertXmlStringMaxLen256(struct["Ec2KeyName"]) end
	for k,_ in pairs(struct) do
		assert(keys.JobFlowInstancesDetail[k], "JobFlowInstancesDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobFlowInstancesDetail
-- <p>Specify the type of Amazon EC2 instances that the cluster (job flow) runs on.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceCount [Integer] <p>The number of Amazon EC2 instances in the cluster. If the value is 1, the same instance serves as both the master and slave node. If the value is greater than 1, one instance is the master node and all others are slave nodes.</p>
-- * Placement [PlacementType] <p>The Amazon EC2 Availability Zone for the cluster.</p>
-- * MasterPublicDnsName [XmlString] <p>The DNS name of the master node. If the cluster is on a private subnet, this is the private DNS name. On a public subnet, this is the public DNS name.</p>
-- * NormalizedInstanceHours [Integer] <p>An approximation of the cost of the cluster, represented in m1.small/hours. This value is incremented one time for every hour that an m1.small runs. Larger instances are weighted more, so an Amazon EC2 instance that is roughly four times more expensive would result in the normalized instance hours being incremented by four. This result is only an approximation and does not reflect the actual billing rate.</p>
-- * MasterInstanceId [XmlString] <p>The Amazon EC2 instance identifier of the master node.</p>
-- * InstanceGroups [InstanceGroupDetailList] <p>Details about the instance groups in a cluster.</p>
-- * MasterInstanceType [InstanceType] <p>The Amazon EC2 master node instance type.</p>
-- * TerminationProtected [Boolean] <p>Specifies whether the Amazon EC2 instances in the cluster are protected from termination by API calls, user intervention, or in the event of a job-flow error.</p>
-- * HadoopVersion [XmlStringMaxLen256] <p>The Hadoop version for the cluster.</p>
-- * Ec2SubnetId [XmlStringMaxLen256] <p>For clusters launched within Amazon Virtual Private Cloud, this is the identifier of the subnet where the cluster was launched.</p>
-- * KeepJobFlowAliveWhenNoSteps [Boolean] <p>Specifies whether the cluster should remain available after completing all steps.</p>
-- * SlaveInstanceType [InstanceType] <p>The Amazon EC2 slave node instance type.</p>
-- * Ec2KeyName [XmlStringMaxLen256] <p>The name of an Amazon EC2 key pair that can be used to ssh to the master node.</p>
-- Required key: MasterInstanceType
-- Required key: SlaveInstanceType
-- Required key: InstanceCount
-- @return JobFlowInstancesDetail structure as a key-value pair table
function M.JobFlowInstancesDetail(args)
	assert(args, "You must provide an argument table when creating JobFlowInstancesDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceCount"] = args["InstanceCount"],
		["Placement"] = args["Placement"],
		["MasterPublicDnsName"] = args["MasterPublicDnsName"],
		["NormalizedInstanceHours"] = args["NormalizedInstanceHours"],
		["MasterInstanceId"] = args["MasterInstanceId"],
		["InstanceGroups"] = args["InstanceGroups"],
		["MasterInstanceType"] = args["MasterInstanceType"],
		["TerminationProtected"] = args["TerminationProtected"],
		["HadoopVersion"] = args["HadoopVersion"],
		["Ec2SubnetId"] = args["Ec2SubnetId"],
		["KeepJobFlowAliveWhenNoSteps"] = args["KeepJobFlowAliveWhenNoSteps"],
		["SlaveInstanceType"] = args["SlaveInstanceType"],
		["Ec2KeyName"] = args["Ec2KeyName"],
	}
	asserts.AssertJobFlowInstancesDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.JobFlowInstancesConfig = { ["ServiceAccessSecurityGroup"] = true, ["InstanceCount"] = true, ["Placement"] = true, ["TerminationProtected"] = true, ["Ec2SubnetIds"] = true, ["InstanceGroups"] = true, ["InstanceFleets"] = true, ["MasterInstanceType"] = true, ["AdditionalSlaveSecurityGroups"] = true, ["HadoopVersion"] = true, ["AdditionalMasterSecurityGroups"] = true, ["Ec2SubnetId"] = true, ["KeepJobFlowAliveWhenNoSteps"] = true, ["SlaveInstanceType"] = true, ["EmrManagedMasterSecurityGroup"] = true, ["Ec2KeyName"] = true, ["EmrManagedSlaveSecurityGroup"] = true, nil }

function asserts.AssertJobFlowInstancesConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobFlowInstancesConfig to be of type 'table'")
	if struct["ServiceAccessSecurityGroup"] then asserts.AssertXmlStringMaxLen256(struct["ServiceAccessSecurityGroup"]) end
	if struct["InstanceCount"] then asserts.AssertInteger(struct["InstanceCount"]) end
	if struct["Placement"] then asserts.AssertPlacementType(struct["Placement"]) end
	if struct["TerminationProtected"] then asserts.AssertBoolean(struct["TerminationProtected"]) end
	if struct["Ec2SubnetIds"] then asserts.AssertXmlStringMaxLen256List(struct["Ec2SubnetIds"]) end
	if struct["InstanceGroups"] then asserts.AssertInstanceGroupConfigList(struct["InstanceGroups"]) end
	if struct["InstanceFleets"] then asserts.AssertInstanceFleetConfigList(struct["InstanceFleets"]) end
	if struct["MasterInstanceType"] then asserts.AssertInstanceType(struct["MasterInstanceType"]) end
	if struct["AdditionalSlaveSecurityGroups"] then asserts.AssertSecurityGroupsList(struct["AdditionalSlaveSecurityGroups"]) end
	if struct["HadoopVersion"] then asserts.AssertXmlStringMaxLen256(struct["HadoopVersion"]) end
	if struct["AdditionalMasterSecurityGroups"] then asserts.AssertSecurityGroupsList(struct["AdditionalMasterSecurityGroups"]) end
	if struct["Ec2SubnetId"] then asserts.AssertXmlStringMaxLen256(struct["Ec2SubnetId"]) end
	if struct["KeepJobFlowAliveWhenNoSteps"] then asserts.AssertBoolean(struct["KeepJobFlowAliveWhenNoSteps"]) end
	if struct["SlaveInstanceType"] then asserts.AssertInstanceType(struct["SlaveInstanceType"]) end
	if struct["EmrManagedMasterSecurityGroup"] then asserts.AssertXmlStringMaxLen256(struct["EmrManagedMasterSecurityGroup"]) end
	if struct["Ec2KeyName"] then asserts.AssertXmlStringMaxLen256(struct["Ec2KeyName"]) end
	if struct["EmrManagedSlaveSecurityGroup"] then asserts.AssertXmlStringMaxLen256(struct["EmrManagedSlaveSecurityGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.JobFlowInstancesConfig[k], "JobFlowInstancesConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobFlowInstancesConfig
-- <p>A description of the Amazon EC2 instance on which the cluster (job flow) runs. A valid JobFlowInstancesConfig must contain either InstanceGroups or InstanceFleets, which is the recommended configuration. They cannot be used together. You may also have MasterInstanceType, SlaveInstanceType, and InstanceCount (all three must be present), but we don't recommend this configuration.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ServiceAccessSecurityGroup [XmlStringMaxLen256] <p>The identifier of the Amazon EC2 security group for the Amazon EMR service to access clusters in VPC private subnets.</p>
-- * InstanceCount [Integer] <p>The number of EC2 instances in the cluster.</p>
-- * Placement [PlacementType] <p>The Availability Zone in which the cluster runs.</p>
-- * TerminationProtected [Boolean] <p>Specifies whether to lock the cluster to prevent the Amazon EC2 instances from being terminated by API call, user intervention, or in the event of a job-flow error.</p>
-- * Ec2SubnetIds [XmlStringMaxLen256List] <p>Applies to clusters that use the instance fleet configuration. When multiple EC2 subnet IDs are specified, Amazon EMR evaluates them and launches instances in the optimal subnet.</p> <note> <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.</p> </note>
-- * InstanceGroups [InstanceGroupConfigList] <p>Configuration for the instance groups in a cluster.</p>
-- * InstanceFleets [InstanceFleetConfigList] <note> <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.</p> </note> <p>Describes the EC2 instances and instance configurations for clusters that use the instance fleet configuration.</p>
-- * MasterInstanceType [InstanceType] <p>The EC2 instance type of the master node.</p>
-- * AdditionalSlaveSecurityGroups [SecurityGroupsList] <p>A list of additional Amazon EC2 security group IDs for the slave nodes.</p>
-- * HadoopVersion [XmlStringMaxLen256] <p>Applies only to Amazon EMR release versions earlier than 4.0. The Hadoop version for the cluster. Valid inputs are "0.18" (deprecated), "0.20" (deprecated), "0.20.205" (deprecated), "1.0.3", "2.2.0", or "2.4.0". If you do not set this value, the default of 0.18 is used, unless the <code>AmiVersion</code> parameter is set in the RunJobFlow call, in which case the default version of Hadoop for that AMI version is used.</p>
-- * AdditionalMasterSecurityGroups [SecurityGroupsList] <p>A list of additional Amazon EC2 security group IDs for the master node.</p>
-- * Ec2SubnetId [XmlStringMaxLen256] <p>Applies to clusters that use the uniform instance group configuration. To launch the cluster in Amazon Virtual Private Cloud (Amazon VPC), set this parameter to the identifier of the Amazon VPC subnet where you want the cluster to launch. If you do not specify this value, the cluster launches in the normal Amazon Web Services cloud, outside of an Amazon VPC, if the account launching the cluster supports EC2 Classic networks in the region where the cluster launches.</p> <p>Amazon VPC currently does not support cluster compute quadruple extra large (cc1.4xlarge) instances. Thus you cannot specify the cc1.4xlarge instance type for clusters launched in an Amazon VPC.</p>
-- * KeepJobFlowAliveWhenNoSteps [Boolean] <p>Specifies whether the cluster should remain available after completing all steps.</p>
-- * SlaveInstanceType [InstanceType] <p>The EC2 instance type of the slave nodes.</p>
-- * EmrManagedMasterSecurityGroup [XmlStringMaxLen256] <p>The identifier of the Amazon EC2 security group for the master node.</p>
-- * Ec2KeyName [XmlStringMaxLen256] <p>The name of the EC2 key pair that can be used to ssh to the master node as the user called "hadoop."</p>
-- * EmrManagedSlaveSecurityGroup [XmlStringMaxLen256] <p>The identifier of the Amazon EC2 security group for the slave nodes.</p>
-- @return JobFlowInstancesConfig structure as a key-value pair table
function M.JobFlowInstancesConfig(args)
	assert(args, "You must provide an argument table when creating JobFlowInstancesConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ServiceAccessSecurityGroup"] = args["ServiceAccessSecurityGroup"],
		["InstanceCount"] = args["InstanceCount"],
		["Placement"] = args["Placement"],
		["TerminationProtected"] = args["TerminationProtected"],
		["Ec2SubnetIds"] = args["Ec2SubnetIds"],
		["InstanceGroups"] = args["InstanceGroups"],
		["InstanceFleets"] = args["InstanceFleets"],
		["MasterInstanceType"] = args["MasterInstanceType"],
		["AdditionalSlaveSecurityGroups"] = args["AdditionalSlaveSecurityGroups"],
		["HadoopVersion"] = args["HadoopVersion"],
		["AdditionalMasterSecurityGroups"] = args["AdditionalMasterSecurityGroups"],
		["Ec2SubnetId"] = args["Ec2SubnetId"],
		["KeepJobFlowAliveWhenNoSteps"] = args["KeepJobFlowAliveWhenNoSteps"],
		["SlaveInstanceType"] = args["SlaveInstanceType"],
		["EmrManagedMasterSecurityGroup"] = args["EmrManagedMasterSecurityGroup"],
		["Ec2KeyName"] = args["Ec2KeyName"],
		["EmrManagedSlaveSecurityGroup"] = args["EmrManagedSlaveSecurityGroup"],
	}
	asserts.AssertJobFlowInstancesConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InstanceFleetStateChangeReason = { ["Message"] = true, ["Code"] = true, nil }

function asserts.AssertInstanceFleetStateChangeReason(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceFleetStateChangeReason to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	if struct["Code"] then asserts.AssertInstanceFleetStateChangeReasonCode(struct["Code"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstanceFleetStateChangeReason[k], "InstanceFleetStateChangeReason contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceFleetStateChangeReason
-- <p>Provides status change reason details for the instance fleet.</p> <note> <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.</p> </note>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] <p>An explanatory message.</p>
-- * Code [InstanceFleetStateChangeReasonCode] <p>A code corresponding to the reason the state change occurred.</p>
-- @return InstanceFleetStateChangeReason structure as a key-value pair table
function M.InstanceFleetStateChangeReason(args)
	assert(args, "You must provide an argument table when creating InstanceFleetStateChangeReason")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
		["Code"] = args["Code"],
	}
	asserts.AssertInstanceFleetStateChangeReason(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StepStateChangeReason = { ["Message"] = true, ["Code"] = true, nil }

function asserts.AssertStepStateChangeReason(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StepStateChangeReason to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	if struct["Code"] then asserts.AssertStepStateChangeReasonCode(struct["Code"]) end
	for k,_ in pairs(struct) do
		assert(keys.StepStateChangeReason[k], "StepStateChangeReason contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StepStateChangeReason
-- <p>The details of the step state change reason.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] <p>The descriptive message for the state change reason.</p>
-- * Code [StepStateChangeReasonCode] <p>The programmable code for the state change reason. Note: Currently, the service provides no code for the state change.</p>
-- @return StepStateChangeReason structure as a key-value pair table
function M.StepStateChangeReason(args)
	assert(args, "You must provide an argument table when creating StepStateChangeReason")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
		["Code"] = args["Code"],
	}
	asserts.AssertStepStateChangeReason(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PlacementType = { ["AvailabilityZone"] = true, ["AvailabilityZones"] = true, nil }

function asserts.AssertPlacementType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PlacementType to be of type 'table'")
	if struct["AvailabilityZone"] then asserts.AssertXmlString(struct["AvailabilityZone"]) end
	if struct["AvailabilityZones"] then asserts.AssertXmlStringMaxLen256List(struct["AvailabilityZones"]) end
	for k,_ in pairs(struct) do
		assert(keys.PlacementType[k], "PlacementType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PlacementType
-- <p>The Amazon EC2 Availability Zone configuration of the cluster (job flow).</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AvailabilityZone [XmlString] <p>The Amazon EC2 Availability Zone for the cluster. <code>AvailabilityZone</code> is used for uniform instance groups, while <code>AvailabilityZones</code> (plural) is used for instance fleets.</p>
-- * AvailabilityZones [XmlStringMaxLen256List] <p>When multiple Availability Zones are specified, Amazon EMR evaluates them and launches instances in the optimal Availability Zone. <code>AvailabilityZones</code> is used for instance fleets, while <code>AvailabilityZone</code> (singular) is used for uniform instance groups.</p> <note> <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.</p> </note>
-- @return PlacementType structure as a key-value pair table
function M.PlacementType(args)
	assert(args, "You must provide an argument table when creating PlacementType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AvailabilityZone"] = args["AvailabilityZone"],
		["AvailabilityZones"] = args["AvailabilityZones"],
	}
	asserts.AssertPlacementType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListInstanceFleetsOutput = { ["InstanceFleets"] = true, ["Marker"] = true, nil }

function asserts.AssertListInstanceFleetsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListInstanceFleetsOutput to be of type 'table'")
	if struct["InstanceFleets"] then asserts.AssertInstanceFleetList(struct["InstanceFleets"]) end
	if struct["Marker"] then asserts.AssertMarker(struct["Marker"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListInstanceFleetsOutput[k], "ListInstanceFleetsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListInstanceFleetsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceFleets [InstanceFleetList] <p>The list of instance fleets for the cluster and given filters.</p>
-- * Marker [Marker] <p>The pagination token that indicates the next set of results to retrieve.</p>
-- @return ListInstanceFleetsOutput structure as a key-value pair table
function M.ListInstanceFleetsOutput(args)
	assert(args, "You must provide an argument table when creating ListInstanceFleetsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceFleets"] = args["InstanceFleets"],
		["Marker"] = args["Marker"],
	}
	asserts.AssertListInstanceFleetsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListBootstrapActionsOutput = { ["Marker"] = true, ["BootstrapActions"] = true, nil }

function asserts.AssertListBootstrapActionsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListBootstrapActionsOutput to be of type 'table'")
	if struct["Marker"] then asserts.AssertMarker(struct["Marker"]) end
	if struct["BootstrapActions"] then asserts.AssertCommandList(struct["BootstrapActions"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListBootstrapActionsOutput[k], "ListBootstrapActionsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListBootstrapActionsOutput
-- <p>This output contains the bootstrap actions detail.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [Marker] <p>The pagination token that indicates the next set of results to retrieve.</p>
-- * BootstrapActions [CommandList] <p>The bootstrap actions associated with the cluster.</p>
-- @return ListBootstrapActionsOutput structure as a key-value pair table
function M.ListBootstrapActionsOutput(args)
	assert(args, "You must provide an argument table when creating ListBootstrapActionsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["BootstrapActions"] = args["BootstrapActions"],
	}
	asserts.AssertListBootstrapActionsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeStepInput = { ["StepId"] = true, ["ClusterId"] = true, nil }

function asserts.AssertDescribeStepInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStepInput to be of type 'table'")
	assert(struct["ClusterId"], "Expected key ClusterId to exist in table")
	assert(struct["StepId"], "Expected key StepId to exist in table")
	if struct["StepId"] then asserts.AssertStepId(struct["StepId"]) end
	if struct["ClusterId"] then asserts.AssertClusterId(struct["ClusterId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeStepInput[k], "DescribeStepInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStepInput
-- <p>This input determines which step to describe.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StepId [StepId] <p>The identifier of the step to describe.</p>
-- * ClusterId [ClusterId] <p>The identifier of the cluster with steps to describe.</p>
-- Required key: ClusterId
-- Required key: StepId
-- @return DescribeStepInput structure as a key-value pair table
function M.DescribeStepInput(args)
	assert(args, "You must provide an argument table when creating DescribeStepInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StepId"] = args["StepId"],
		["ClusterId"] = args["ClusterId"],
	}
	asserts.AssertDescribeStepInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyInstanceGroupsInput = { ["ClusterId"] = true, ["InstanceGroups"] = true, nil }

function asserts.AssertModifyInstanceGroupsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyInstanceGroupsInput to be of type 'table'")
	if struct["ClusterId"] then asserts.AssertClusterId(struct["ClusterId"]) end
	if struct["InstanceGroups"] then asserts.AssertInstanceGroupModifyConfigList(struct["InstanceGroups"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyInstanceGroupsInput[k], "ModifyInstanceGroupsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyInstanceGroupsInput
-- <p>Change the size of some instance groups.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClusterId [ClusterId] <p>The ID of the cluster to which the instance group belongs.</p>
-- * InstanceGroups [InstanceGroupModifyConfigList] <p>Instance groups to change.</p>
-- @return ModifyInstanceGroupsInput structure as a key-value pair table
function M.ModifyInstanceGroupsInput(args)
	assert(args, "You must provide an argument table when creating ModifyInstanceGroupsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ClusterId"] = args["ClusterId"],
		["InstanceGroups"] = args["InstanceGroups"],
	}
	asserts.AssertModifyInstanceGroupsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeJobFlowsOutput = { ["JobFlows"] = true, nil }

function asserts.AssertDescribeJobFlowsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeJobFlowsOutput to be of type 'table'")
	if struct["JobFlows"] then asserts.AssertJobFlowDetailList(struct["JobFlows"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeJobFlowsOutput[k], "DescribeJobFlowsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeJobFlowsOutput
-- <p> The output for the <a>DescribeJobFlows</a> operation. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JobFlows [JobFlowDetailList] <p>A list of job flows matching the parameters supplied.</p>
-- @return DescribeJobFlowsOutput structure as a key-value pair table
function M.DescribeJobFlowsOutput(args)
	assert(args, "You must provide an argument table when creating DescribeJobFlowsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JobFlows"] = args["JobFlows"],
	}
	asserts.AssertDescribeJobFlowsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StepTimeline = { ["EndDateTime"] = true, ["CreationDateTime"] = true, ["StartDateTime"] = true, nil }

function asserts.AssertStepTimeline(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StepTimeline to be of type 'table'")
	if struct["EndDateTime"] then asserts.AssertDate(struct["EndDateTime"]) end
	if struct["CreationDateTime"] then asserts.AssertDate(struct["CreationDateTime"]) end
	if struct["StartDateTime"] then asserts.AssertDate(struct["StartDateTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.StepTimeline[k], "StepTimeline contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StepTimeline
-- <p>The timeline of the cluster step lifecycle.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EndDateTime [Date] <p>The date and time when the cluster step execution completed or failed.</p>
-- * CreationDateTime [Date] <p>The date and time when the cluster step was created.</p>
-- * StartDateTime [Date] <p>The date and time when the cluster step execution started.</p>
-- @return StepTimeline structure as a key-value pair table
function M.StepTimeline(args)
	assert(args, "You must provide an argument table when creating StepTimeline")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EndDateTime"] = args["EndDateTime"],
		["CreationDateTime"] = args["CreationDateTime"],
		["StartDateTime"] = args["StartDateTime"],
	}
	asserts.AssertStepTimeline(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Step = { ["Status"] = true, ["Config"] = true, ["Id"] = true, ["ActionOnFailure"] = true, ["Name"] = true, nil }

function asserts.AssertStep(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Step to be of type 'table'")
	if struct["Status"] then asserts.AssertStepStatus(struct["Status"]) end
	if struct["Config"] then asserts.AssertHadoopStepConfig(struct["Config"]) end
	if struct["Id"] then asserts.AssertStepId(struct["Id"]) end
	if struct["ActionOnFailure"] then asserts.AssertActionOnFailure(struct["ActionOnFailure"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.Step[k], "Step contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Step
-- <p>This represents a step in a cluster.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [StepStatus] <p>The current execution status details of the cluster step.</p>
-- * Config [HadoopStepConfig] <p>The Hadoop job configuration of the cluster step.</p>
-- * Id [StepId] <p>The identifier of the cluster step.</p>
-- * ActionOnFailure [ActionOnFailure] <p>This specifies what action to take when the cluster step fails. Possible values are TERMINATE_CLUSTER, CANCEL_AND_WAIT, and CONTINUE.</p>
-- * Name [String] <p>The name of the cluster step.</p>
-- @return Step structure as a key-value pair table
function M.Step(args)
	assert(args, "You must provide an argument table when creating Step")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["Config"] = args["Config"],
		["Id"] = args["Id"],
		["ActionOnFailure"] = args["ActionOnFailure"],
		["Name"] = args["Name"],
	}
	asserts.AssertStep(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.KeyValue = { ["Value"] = true, ["Key"] = true, nil }

function asserts.AssertKeyValue(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KeyValue to be of type 'table'")
	if struct["Value"] then asserts.AssertXmlString(struct["Value"]) end
	if struct["Key"] then asserts.AssertXmlString(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.KeyValue[k], "KeyValue contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KeyValue
-- <p>A key value pair.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [XmlString] <p>The value part of the identified key.</p>
-- * Key [XmlString] <p>The unique identifier of a key value pair.</p>
-- @return KeyValue structure as a key-value pair table
function M.KeyValue(args)
	assert(args, "You must provide an argument table when creating KeyValue")
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
	asserts.AssertKeyValue(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ClusterStateChangeReason = { ["Message"] = true, ["Code"] = true, nil }

function asserts.AssertClusterStateChangeReason(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterStateChangeReason to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	if struct["Code"] then asserts.AssertClusterStateChangeReasonCode(struct["Code"]) end
	for k,_ in pairs(struct) do
		assert(keys.ClusterStateChangeReason[k], "ClusterStateChangeReason contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterStateChangeReason
-- <p>The reason that the cluster changed to its current state.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] <p>The descriptive message for the state change reason.</p>
-- * Code [ClusterStateChangeReasonCode] <p>The programmatic code for the state change reason.</p>
-- @return ClusterStateChangeReason structure as a key-value pair table
function M.ClusterStateChangeReason(args)
	assert(args, "You must provide an argument table when creating ClusterStateChangeReason")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
		["Code"] = args["Code"],
	}
	asserts.AssertClusterStateChangeReason(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InstanceStateChangeReason = { ["Message"] = true, ["Code"] = true, nil }

function asserts.AssertInstanceStateChangeReason(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceStateChangeReason to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	if struct["Code"] then asserts.AssertInstanceStateChangeReasonCode(struct["Code"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstanceStateChangeReason[k], "InstanceStateChangeReason contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceStateChangeReason
-- <p>The details of the status change reason for the instance.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] <p>The status change reason description.</p>
-- * Code [InstanceStateChangeReasonCode] <p>The programmable code for the state change reason.</p>
-- @return InstanceStateChangeReason structure as a key-value pair table
function M.InstanceStateChangeReason(args)
	assert(args, "You must provide an argument table when creating InstanceStateChangeReason")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
		["Code"] = args["Code"],
	}
	asserts.AssertInstanceStateChangeReason(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Ec2InstanceAttributes = { ["ServiceAccessSecurityGroup"] = true, ["EmrManagedMasterSecurityGroup"] = true, ["RequestedEc2AvailabilityZones"] = true, ["AdditionalSlaveSecurityGroups"] = true, ["AdditionalMasterSecurityGroups"] = true, ["RequestedEc2SubnetIds"] = true, ["Ec2SubnetId"] = true, ["IamInstanceProfile"] = true, ["Ec2KeyName"] = true, ["Ec2AvailabilityZone"] = true, ["EmrManagedSlaveSecurityGroup"] = true, nil }

function asserts.AssertEc2InstanceAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Ec2InstanceAttributes to be of type 'table'")
	if struct["ServiceAccessSecurityGroup"] then asserts.AssertString(struct["ServiceAccessSecurityGroup"]) end
	if struct["EmrManagedMasterSecurityGroup"] then asserts.AssertString(struct["EmrManagedMasterSecurityGroup"]) end
	if struct["RequestedEc2AvailabilityZones"] then asserts.AssertXmlStringMaxLen256List(struct["RequestedEc2AvailabilityZones"]) end
	if struct["AdditionalSlaveSecurityGroups"] then asserts.AssertStringList(struct["AdditionalSlaveSecurityGroups"]) end
	if struct["AdditionalMasterSecurityGroups"] then asserts.AssertStringList(struct["AdditionalMasterSecurityGroups"]) end
	if struct["RequestedEc2SubnetIds"] then asserts.AssertXmlStringMaxLen256List(struct["RequestedEc2SubnetIds"]) end
	if struct["Ec2SubnetId"] then asserts.AssertString(struct["Ec2SubnetId"]) end
	if struct["IamInstanceProfile"] then asserts.AssertString(struct["IamInstanceProfile"]) end
	if struct["Ec2KeyName"] then asserts.AssertString(struct["Ec2KeyName"]) end
	if struct["Ec2AvailabilityZone"] then asserts.AssertString(struct["Ec2AvailabilityZone"]) end
	if struct["EmrManagedSlaveSecurityGroup"] then asserts.AssertString(struct["EmrManagedSlaveSecurityGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.Ec2InstanceAttributes[k], "Ec2InstanceAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Ec2InstanceAttributes
-- <p>Provides information about the EC2 instances in a cluster grouped by category. For example, key name, subnet ID, IAM instance profile, and so on.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ServiceAccessSecurityGroup [String] <p>The identifier of the Amazon EC2 security group for the Amazon EMR service to access clusters in VPC private subnets.</p>
-- * EmrManagedMasterSecurityGroup [String] <p>The identifier of the Amazon EC2 security group for the master node.</p>
-- * RequestedEc2AvailabilityZones [XmlStringMaxLen256List] <p>Applies to clusters configured with the instance fleets option. Specifies one or more Availability Zones in which to launch EC2 cluster instances when the EC2-Classic network configuration is supported. Amazon EMR chooses the Availability Zone with the best fit from among the list of <code>RequestedEc2AvailabilityZones</code>, and then launches all cluster instances within that Availability Zone. If you do not specify this value, Amazon EMR chooses the Availability Zone for you. <code>RequestedEc2SubnetIDs</code> and <code>RequestedEc2AvailabilityZones</code> cannot be specified together.</p>
-- * AdditionalSlaveSecurityGroups [StringList] <p>A list of additional Amazon EC2 security group IDs for the slave nodes.</p>
-- * AdditionalMasterSecurityGroups [StringList] <p>A list of additional Amazon EC2 security group IDs for the master node.</p>
-- * RequestedEc2SubnetIds [XmlStringMaxLen256List] <p>Applies to clusters configured with the instance fleets option. Specifies the unique identifier of one or more Amazon EC2 subnets in which to launch EC2 cluster instances. Subnets must exist within the same VPC. Amazon EMR chooses the EC2 subnet with the best fit from among the list of <code>RequestedEc2SubnetIds</code>, and then launches all cluster instances within that Subnet. If this value is not specified, and the account and region support EC2-Classic networks, the cluster launches instances in the EC2-Classic network and uses <code>RequestedEc2AvailabilityZones</code> instead of this setting. If EC2-Classic is not supported, and no Subnet is specified, Amazon EMR chooses the subnet for you. <code>RequestedEc2SubnetIDs</code> and <code>RequestedEc2AvailabilityZones</code> cannot be specified together.</p>
-- * Ec2SubnetId [String] <p>To launch the cluster in Amazon VPC, set this parameter to the identifier of the Amazon VPC subnet where you want the cluster to launch. If you do not specify this value, the cluster is launched in the normal AWS cloud, outside of a VPC.</p> <p>Amazon VPC currently does not support cluster compute quadruple extra large (cc1.4xlarge) instances. Thus, you cannot specify the cc1.4xlarge instance type for nodes of a cluster launched in a VPC.</p>
-- * IamInstanceProfile [String] <p>The IAM role that was specified when the cluster was launched. The EC2 instances of the cluster assume this role.</p>
-- * Ec2KeyName [String] <p>The name of the Amazon EC2 key pair to use when connecting with SSH into the master node as a user named "hadoop".</p>
-- * Ec2AvailabilityZone [String] <p>The Availability Zone in which the cluster will run. </p>
-- * EmrManagedSlaveSecurityGroup [String] <p>The identifier of the Amazon EC2 security group for the slave nodes.</p>
-- @return Ec2InstanceAttributes structure as a key-value pair table
function M.Ec2InstanceAttributes(args)
	assert(args, "You must provide an argument table when creating Ec2InstanceAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ServiceAccessSecurityGroup"] = args["ServiceAccessSecurityGroup"],
		["EmrManagedMasterSecurityGroup"] = args["EmrManagedMasterSecurityGroup"],
		["RequestedEc2AvailabilityZones"] = args["RequestedEc2AvailabilityZones"],
		["AdditionalSlaveSecurityGroups"] = args["AdditionalSlaveSecurityGroups"],
		["AdditionalMasterSecurityGroups"] = args["AdditionalMasterSecurityGroups"],
		["RequestedEc2SubnetIds"] = args["RequestedEc2SubnetIds"],
		["Ec2SubnetId"] = args["Ec2SubnetId"],
		["IamInstanceProfile"] = args["IamInstanceProfile"],
		["Ec2KeyName"] = args["Ec2KeyName"],
		["Ec2AvailabilityZone"] = args["Ec2AvailabilityZone"],
		["EmrManagedSlaveSecurityGroup"] = args["EmrManagedSlaveSecurityGroup"],
	}
	asserts.AssertEc2InstanceAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InstanceFleet = { ["Status"] = true, ["ProvisionedSpotCapacity"] = true, ["Name"] = true, ["InstanceFleetType"] = true, ["LaunchSpecifications"] = true, ["TargetSpotCapacity"] = true, ["ProvisionedOnDemandCapacity"] = true, ["InstanceTypeSpecifications"] = true, ["Id"] = true, ["TargetOnDemandCapacity"] = true, nil }

function asserts.AssertInstanceFleet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceFleet to be of type 'table'")
	if struct["Status"] then asserts.AssertInstanceFleetStatus(struct["Status"]) end
	if struct["ProvisionedSpotCapacity"] then asserts.AssertWholeNumber(struct["ProvisionedSpotCapacity"]) end
	if struct["Name"] then asserts.AssertXmlStringMaxLen256(struct["Name"]) end
	if struct["InstanceFleetType"] then asserts.AssertInstanceFleetType(struct["InstanceFleetType"]) end
	if struct["LaunchSpecifications"] then asserts.AssertInstanceFleetProvisioningSpecifications(struct["LaunchSpecifications"]) end
	if struct["TargetSpotCapacity"] then asserts.AssertWholeNumber(struct["TargetSpotCapacity"]) end
	if struct["ProvisionedOnDemandCapacity"] then asserts.AssertWholeNumber(struct["ProvisionedOnDemandCapacity"]) end
	if struct["InstanceTypeSpecifications"] then asserts.AssertInstanceTypeSpecificationList(struct["InstanceTypeSpecifications"]) end
	if struct["Id"] then asserts.AssertInstanceFleetId(struct["Id"]) end
	if struct["TargetOnDemandCapacity"] then asserts.AssertWholeNumber(struct["TargetOnDemandCapacity"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstanceFleet[k], "InstanceFleet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceFleet
-- <p>Describes an instance fleet, which is a group of EC2 instances that host a particular node type (master, core, or task) in an Amazon EMR cluster. Instance fleets can consist of a mix of instance types and On-Demand and Spot instances, which are provisioned to meet a defined target capacity. </p> <note> <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.</p> </note>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [InstanceFleetStatus] <p>The current status of the instance fleet. </p>
-- * ProvisionedSpotCapacity [WholeNumber] <p>The number of Spot units that have been provisioned for this instance fleet to fulfill <code>TargetSpotCapacity</code>. This provisioned capacity might be less than or greater than <code>TargetSpotCapacity</code>.</p>
-- * Name [XmlStringMaxLen256] <p>A friendly name for the instance fleet.</p>
-- * InstanceFleetType [InstanceFleetType] <p>The node type that the instance fleet hosts. Valid values are MASTER, CORE, or TASK. </p>
-- * LaunchSpecifications [InstanceFleetProvisioningSpecifications] <p>Describes the launch specification for an instance fleet. </p>
-- * TargetSpotCapacity [WholeNumber] <p>The target capacity of Spot units for the instance fleet, which determines how many Spot instances to provision. When the instance fleet launches, Amazon EMR tries to provision Spot instances as specified by <a>InstanceTypeConfig</a>. Each instance configuration has a specified <code>WeightedCapacity</code>. When a Spot instance is provisioned, the <code>WeightedCapacity</code> units count toward the target capacity. Amazon EMR provisions instances until the target capacity is totally fulfilled, even if this results in an overage. For example, if there are 2 units remaining to fulfill capacity, and Amazon EMR can only provision an instance with a <code>WeightedCapacity</code> of 5 units, the instance is provisioned, and the target capacity is exceeded by 3 units. You can use <a>InstanceFleet$ProvisionedSpotCapacity</a> to determine the Spot capacity units that have been provisioned for the instance fleet.</p> <note> <p>If not specified or set to 0, only On-Demand instances are provisioned for the instance fleet. At least one of <code>TargetSpotCapacity</code> and <code>TargetOnDemandCapacity</code> should be greater than 0. For a master instance fleet, only one of <code>TargetSpotCapacity</code> and <code>TargetOnDemandCapacity</code> can be specified, and its value must be 1.</p> </note>
-- * ProvisionedOnDemandCapacity [WholeNumber] <p>The number of On-Demand units that have been provisioned for the instance fleet to fulfill <code>TargetOnDemandCapacity</code>. This provisioned capacity might be less than or greater than <code>TargetOnDemandCapacity</code>.</p>
-- * InstanceTypeSpecifications [InstanceTypeSpecificationList] <p>The specification for the instance types that comprise an instance fleet. Up to five unique instance specifications may be defined for each instance fleet. </p>
-- * Id [InstanceFleetId] <p>The unique identifier of the instance fleet.</p>
-- * TargetOnDemandCapacity [WholeNumber] <p>The target capacity of On-Demand units for the instance fleet, which determines how many On-Demand instances to provision. When the instance fleet launches, Amazon EMR tries to provision On-Demand instances as specified by <a>InstanceTypeConfig</a>. Each instance configuration has a specified <code>WeightedCapacity</code>. When an On-Demand instance is provisioned, the <code>WeightedCapacity</code> units count toward the target capacity. Amazon EMR provisions instances until the target capacity is totally fulfilled, even if this results in an overage. For example, if there are 2 units remaining to fulfill capacity, and Amazon EMR can only provision an instance with a <code>WeightedCapacity</code> of 5 units, the instance is provisioned, and the target capacity is exceeded by 3 units. You can use <a>InstanceFleet$ProvisionedOnDemandCapacity</a> to determine the Spot capacity units that have been provisioned for the instance fleet.</p> <note> <p>If not specified or set to 0, only Spot instances are provisioned for the instance fleet using <code>TargetSpotCapacity</code>. At least one of <code>TargetSpotCapacity</code> and <code>TargetOnDemandCapacity</code> should be greater than 0. For a master instance fleet, only one of <code>TargetSpotCapacity</code> and <code>TargetOnDemandCapacity</code> can be specified, and its value must be 1.</p> </note>
-- @return InstanceFleet structure as a key-value pair table
function M.InstanceFleet(args)
	assert(args, "You must provide an argument table when creating InstanceFleet")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["ProvisionedSpotCapacity"] = args["ProvisionedSpotCapacity"],
		["Name"] = args["Name"],
		["InstanceFleetType"] = args["InstanceFleetType"],
		["LaunchSpecifications"] = args["LaunchSpecifications"],
		["TargetSpotCapacity"] = args["TargetSpotCapacity"],
		["ProvisionedOnDemandCapacity"] = args["ProvisionedOnDemandCapacity"],
		["InstanceTypeSpecifications"] = args["InstanceTypeSpecifications"],
		["Id"] = args["Id"],
		["TargetOnDemandCapacity"] = args["TargetOnDemandCapacity"],
	}
	asserts.AssertInstanceFleet(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InstanceGroupStateChangeReason = { ["Message"] = true, ["Code"] = true, nil }

function asserts.AssertInstanceGroupStateChangeReason(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceGroupStateChangeReason to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	if struct["Code"] then asserts.AssertInstanceGroupStateChangeReasonCode(struct["Code"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstanceGroupStateChangeReason[k], "InstanceGroupStateChangeReason contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceGroupStateChangeReason
-- <p>The status change reason details for the instance group.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] <p>The status change reason description.</p>
-- * Code [InstanceGroupStateChangeReasonCode] <p>The programmable code for the state change reason.</p>
-- @return InstanceGroupStateChangeReason structure as a key-value pair table
function M.InstanceGroupStateChangeReason(args)
	assert(args, "You must provide an argument table when creating InstanceGroupStateChangeReason")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
		["Code"] = args["Code"],
	}
	asserts.AssertInstanceGroupStateChangeReason(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ShrinkPolicy = { ["DecommissionTimeout"] = true, ["InstanceResizePolicy"] = true, nil }

function asserts.AssertShrinkPolicy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ShrinkPolicy to be of type 'table'")
	if struct["DecommissionTimeout"] then asserts.AssertInteger(struct["DecommissionTimeout"]) end
	if struct["InstanceResizePolicy"] then asserts.AssertInstanceResizePolicy(struct["InstanceResizePolicy"]) end
	for k,_ in pairs(struct) do
		assert(keys.ShrinkPolicy[k], "ShrinkPolicy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ShrinkPolicy
-- <p>Policy for customizing shrink operations. Allows configuration of decommissioning timeout and targeted instance shrinking.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DecommissionTimeout [Integer] <p>The desired timeout for decommissioning an instance. Overrides the default YARN decommissioning timeout.</p>
-- * InstanceResizePolicy [InstanceResizePolicy] <p>Custom policy for requesting termination protection or termination of specific instances when shrinking an instance group.</p>
-- @return ShrinkPolicy structure as a key-value pair table
function M.ShrinkPolicy(args)
	assert(args, "You must provide an argument table when creating ShrinkPolicy")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DecommissionTimeout"] = args["DecommissionTimeout"],
		["InstanceResizePolicy"] = args["InstanceResizePolicy"],
	}
	asserts.AssertShrinkPolicy(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InstanceTypeConfig = { ["WeightedCapacity"] = true, ["EbsConfiguration"] = true, ["BidPrice"] = true, ["BidPriceAsPercentageOfOnDemandPrice"] = true, ["InstanceType"] = true, ["Configurations"] = true, nil }

function asserts.AssertInstanceTypeConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceTypeConfig to be of type 'table'")
	assert(struct["InstanceType"], "Expected key InstanceType to exist in table")
	if struct["WeightedCapacity"] then asserts.AssertWholeNumber(struct["WeightedCapacity"]) end
	if struct["EbsConfiguration"] then asserts.AssertEbsConfiguration(struct["EbsConfiguration"]) end
	if struct["BidPrice"] then asserts.AssertXmlStringMaxLen256(struct["BidPrice"]) end
	if struct["BidPriceAsPercentageOfOnDemandPrice"] then asserts.AssertNonNegativeDouble(struct["BidPriceAsPercentageOfOnDemandPrice"]) end
	if struct["InstanceType"] then asserts.AssertInstanceType(struct["InstanceType"]) end
	if struct["Configurations"] then asserts.AssertConfigurationList(struct["Configurations"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstanceTypeConfig[k], "InstanceTypeConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceTypeConfig
-- <p>An instance type configuration for each instance type in an instance fleet, which determines the EC2 instances Amazon EMR attempts to provision to fulfill On-Demand and Spot target capacities. There can be a maximum of 5 instance type configurations in a fleet.</p> <note> <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.</p> </note>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * WeightedCapacity [WholeNumber] <p>The number of units that a provisioned instance of this type provides toward fulfilling the target capacities defined in <a>InstanceFleetConfig</a>. This value is 1 for a master instance fleet, and must be 1 or greater for core and task instance fleets. Defaults to 1 if not specified. </p>
-- * EbsConfiguration [EbsConfiguration] <p>The configuration of Amazon Elastic Block Storage (EBS) attached to each instance as defined by <code>InstanceType</code>. </p>
-- * BidPrice [XmlStringMaxLen256] <p>The bid price for each EC2 Spot instance type as defined by <code>InstanceType</code>. Expressed in USD. If neither <code>BidPrice</code> nor <code>BidPriceAsPercentageOfOnDemandPrice</code> is provided, <code>BidPriceAsPercentageOfOnDemandPrice</code> defaults to 100%. </p>
-- * BidPriceAsPercentageOfOnDemandPrice [NonNegativeDouble] <p>The bid price, as a percentage of On-Demand price, for each EC2 Spot instance as defined by <code>InstanceType</code>. Expressed as a number (for example, 20 specifies 20%). If neither <code>BidPrice</code> nor <code>BidPriceAsPercentageOfOnDemandPrice</code> is provided, <code>BidPriceAsPercentageOfOnDemandPrice</code> defaults to 100%.</p>
-- * InstanceType [InstanceType] <p>An EC2 instance type, such as <code>m3.xlarge</code>. </p>
-- * Configurations [ConfigurationList] <p>A configuration classification that applies when provisioning cluster instances, which can include configurations for applications and software that run on the cluster.</p>
-- Required key: InstanceType
-- @return InstanceTypeConfig structure as a key-value pair table
function M.InstanceTypeConfig(args)
	assert(args, "You must provide an argument table when creating InstanceTypeConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["WeightedCapacity"] = args["WeightedCapacity"],
		["EbsConfiguration"] = args["EbsConfiguration"],
		["BidPrice"] = args["BidPrice"],
		["BidPriceAsPercentageOfOnDemandPrice"] = args["BidPriceAsPercentageOfOnDemandPrice"],
		["InstanceType"] = args["InstanceType"],
		["Configurations"] = args["Configurations"],
	}
	asserts.AssertInstanceTypeConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AutoScalingPolicyStatus = { ["State"] = true, ["StateChangeReason"] = true, nil }

function asserts.AssertAutoScalingPolicyStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AutoScalingPolicyStatus to be of type 'table'")
	if struct["State"] then asserts.AssertAutoScalingPolicyState(struct["State"]) end
	if struct["StateChangeReason"] then asserts.AssertAutoScalingPolicyStateChangeReason(struct["StateChangeReason"]) end
	for k,_ in pairs(struct) do
		assert(keys.AutoScalingPolicyStatus[k], "AutoScalingPolicyStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AutoScalingPolicyStatus
-- <p>The status of an automatic scaling policy. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * State [AutoScalingPolicyState] <p>Indicates the status of the automatic scaling policy.</p>
-- * StateChangeReason [AutoScalingPolicyStateChangeReason] <p>The reason for a change in status.</p>
-- @return AutoScalingPolicyStatus structure as a key-value pair table
function M.AutoScalingPolicyStatus(args)
	assert(args, "You must provide an argument table when creating AutoScalingPolicyStatus")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["State"] = args["State"],
		["StateChangeReason"] = args["StateChangeReason"],
	}
	asserts.AssertAutoScalingPolicyStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateSecurityConfigurationOutput = { ["CreationDateTime"] = true, ["Name"] = true, nil }

function asserts.AssertCreateSecurityConfigurationOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSecurityConfigurationOutput to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["CreationDateTime"], "Expected key CreationDateTime to exist in table")
	if struct["CreationDateTime"] then asserts.AssertDate(struct["CreationDateTime"]) end
	if struct["Name"] then asserts.AssertXmlString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateSecurityConfigurationOutput[k], "CreateSecurityConfigurationOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSecurityConfigurationOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CreationDateTime [Date] <p>The date and time the security configuration was created.</p>
-- * Name [XmlString] <p>The name of the security configuration.</p>
-- Required key: Name
-- Required key: CreationDateTime
-- @return CreateSecurityConfigurationOutput structure as a key-value pair table
function M.CreateSecurityConfigurationOutput(args)
	assert(args, "You must provide an argument table when creating CreateSecurityConfigurationOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CreationDateTime"] = args["CreationDateTime"],
		["Name"] = args["Name"],
	}
	asserts.AssertCreateSecurityConfigurationOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InternalServerError = { nil }

function asserts.AssertInternalServerError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalServerError to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InternalServerError[k], "InternalServerError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalServerError
-- <p>Indicates that an error occurred while processing the request and that the request was not completed.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InternalServerError structure as a key-value pair table
function M.InternalServerError(args)
	assert(args, "You must provide an argument table when creating InternalServerError")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInternalServerError(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeStepOutput = { ["Step"] = true, nil }

function asserts.AssertDescribeStepOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStepOutput to be of type 'table'")
	if struct["Step"] then asserts.AssertStep(struct["Step"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeStepOutput[k], "DescribeStepOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStepOutput
-- <p>This output contains the description of the cluster step.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Step [Step] <p>The step details for the requested step identifier.</p>
-- @return DescribeStepOutput structure as a key-value pair table
function M.DescribeStepOutput(args)
	assert(args, "You must provide an argument table when creating DescribeStepOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Step"] = args["Step"],
	}
	asserts.AssertDescribeStepOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListSecurityConfigurationsInput = { ["Marker"] = true, nil }

function asserts.AssertListSecurityConfigurationsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSecurityConfigurationsInput to be of type 'table'")
	if struct["Marker"] then asserts.AssertMarker(struct["Marker"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListSecurityConfigurationsInput[k], "ListSecurityConfigurationsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSecurityConfigurationsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [Marker] <p>The pagination token that indicates the set of results to retrieve.</p>
-- @return ListSecurityConfigurationsInput structure as a key-value pair table
function M.ListSecurityConfigurationsInput(args)
	assert(args, "You must provide an argument table when creating ListSecurityConfigurationsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
	}
	asserts.AssertListSecurityConfigurationsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ClusterTimeline = { ["ReadyDateTime"] = true, ["CreationDateTime"] = true, ["EndDateTime"] = true, nil }

function asserts.AssertClusterTimeline(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterTimeline to be of type 'table'")
	if struct["ReadyDateTime"] then asserts.AssertDate(struct["ReadyDateTime"]) end
	if struct["CreationDateTime"] then asserts.AssertDate(struct["CreationDateTime"]) end
	if struct["EndDateTime"] then asserts.AssertDate(struct["EndDateTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.ClusterTimeline[k], "ClusterTimeline contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterTimeline
-- <p>Represents the timeline of the cluster's lifecycle.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReadyDateTime [Date] <p>The date and time when the cluster was ready to execute steps.</p>
-- * CreationDateTime [Date] <p>The creation date and time of the cluster.</p>
-- * EndDateTime [Date] <p>The date and time when the cluster was terminated.</p>
-- @return ClusterTimeline structure as a key-value pair table
function M.ClusterTimeline(args)
	assert(args, "You must provide an argument table when creating ClusterTimeline")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReadyDateTime"] = args["ReadyDateTime"],
		["CreationDateTime"] = args["CreationDateTime"],
		["EndDateTime"] = args["EndDateTime"],
	}
	asserts.AssertClusterTimeline(all_args)
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
	if struct["Value"] then asserts.AssertString(struct["Value"]) end
	if struct["Key"] then asserts.AssertString(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.Tag[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- <p>A key/value pair containing user-defined metadata that you can associate with an Amazon EMR resource. Tags make it easier to associate clusters in various ways, such as grouping clusters to track your Amazon EMR resource allocation costs. For more information, see <a href="http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-tags.html">Tag Clusters</a>. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [String] <p>A user-defined value, which is optional in a tag. For more information, see <a href="http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-tags.html">Tag Clusters</a>. </p>
-- * Key [String] <p>A user-defined key, which is the minimum required information for a valid tag. For more information, see <a href="http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-tags.html">Tag </a>. </p>
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

keys.ListInstanceGroupsInput = { ["Marker"] = true, ["ClusterId"] = true, nil }

function asserts.AssertListInstanceGroupsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListInstanceGroupsInput to be of type 'table'")
	assert(struct["ClusterId"], "Expected key ClusterId to exist in table")
	if struct["Marker"] then asserts.AssertMarker(struct["Marker"]) end
	if struct["ClusterId"] then asserts.AssertClusterId(struct["ClusterId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListInstanceGroupsInput[k], "ListInstanceGroupsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListInstanceGroupsInput
-- <p>This input determines which instance groups to retrieve.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [Marker] <p>The pagination token that indicates the next set of results to retrieve.</p>
-- * ClusterId [ClusterId] <p>The identifier of the cluster for which to list the instance groups.</p>
-- Required key: ClusterId
-- @return ListInstanceGroupsInput structure as a key-value pair table
function M.ListInstanceGroupsInput(args)
	assert(args, "You must provide an argument table when creating ListInstanceGroupsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["ClusterId"] = args["ClusterId"],
	}
	asserts.AssertListInstanceGroupsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InstanceFleetModifyConfig = { ["TargetOnDemandCapacity"] = true, ["TargetSpotCapacity"] = true, ["InstanceFleetId"] = true, nil }

function asserts.AssertInstanceFleetModifyConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceFleetModifyConfig to be of type 'table'")
	assert(struct["InstanceFleetId"], "Expected key InstanceFleetId to exist in table")
	if struct["TargetOnDemandCapacity"] then asserts.AssertWholeNumber(struct["TargetOnDemandCapacity"]) end
	if struct["TargetSpotCapacity"] then asserts.AssertWholeNumber(struct["TargetSpotCapacity"]) end
	if struct["InstanceFleetId"] then asserts.AssertInstanceFleetId(struct["InstanceFleetId"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstanceFleetModifyConfig[k], "InstanceFleetModifyConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceFleetModifyConfig
-- <p>Configuration parameters for an instance fleet modification request.</p> <note> <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.</p> </note>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TargetOnDemandCapacity [WholeNumber] <p>The target capacity of On-Demand units for the instance fleet. For more information see <a>InstanceFleetConfig$TargetOnDemandCapacity</a>.</p>
-- * TargetSpotCapacity [WholeNumber] <p>The target capacity of Spot units for the instance fleet. For more information, see <a>InstanceFleetConfig$TargetSpotCapacity</a>.</p>
-- * InstanceFleetId [InstanceFleetId] <p>A unique identifier for the instance fleet.</p>
-- Required key: InstanceFleetId
-- @return InstanceFleetModifyConfig structure as a key-value pair table
function M.InstanceFleetModifyConfig(args)
	assert(args, "You must provide an argument table when creating InstanceFleetModifyConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TargetOnDemandCapacity"] = args["TargetOnDemandCapacity"],
		["TargetSpotCapacity"] = args["TargetSpotCapacity"],
		["InstanceFleetId"] = args["InstanceFleetId"],
	}
	asserts.AssertInstanceFleetModifyConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EbsBlockDevice = { ["Device"] = true, ["VolumeSpecification"] = true, nil }

function asserts.AssertEbsBlockDevice(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EbsBlockDevice to be of type 'table'")
	if struct["Device"] then asserts.AssertString(struct["Device"]) end
	if struct["VolumeSpecification"] then asserts.AssertVolumeSpecification(struct["VolumeSpecification"]) end
	for k,_ in pairs(struct) do
		assert(keys.EbsBlockDevice[k], "EbsBlockDevice contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EbsBlockDevice
-- <p>Configuration of requested EBS block device associated with the instance group.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Device [String] <p>The device name that is exposed to the instance, such as /dev/sdh.</p>
-- * VolumeSpecification [VolumeSpecification] <p>EBS volume specifications such as volume type, IOPS, and size (GiB) that will be requested for the EBS volume attached to an EC2 instance in the cluster.</p>
-- @return EbsBlockDevice structure as a key-value pair table
function M.EbsBlockDevice(args)
	assert(args, "You must provide an argument table when creating EbsBlockDevice")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Device"] = args["Device"],
		["VolumeSpecification"] = args["VolumeSpecification"],
	}
	asserts.AssertEbsBlockDevice(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InstanceGroupConfig = { ["InstanceCount"] = true, ["Name"] = true, ["InstanceRole"] = true, ["AutoScalingPolicy"] = true, ["EbsConfiguration"] = true, ["BidPrice"] = true, ["InstanceType"] = true, ["Market"] = true, ["Configurations"] = true, nil }

function asserts.AssertInstanceGroupConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceGroupConfig to be of type 'table'")
	assert(struct["InstanceRole"], "Expected key InstanceRole to exist in table")
	assert(struct["InstanceType"], "Expected key InstanceType to exist in table")
	assert(struct["InstanceCount"], "Expected key InstanceCount to exist in table")
	if struct["InstanceCount"] then asserts.AssertInteger(struct["InstanceCount"]) end
	if struct["Name"] then asserts.AssertXmlStringMaxLen256(struct["Name"]) end
	if struct["InstanceRole"] then asserts.AssertInstanceRoleType(struct["InstanceRole"]) end
	if struct["AutoScalingPolicy"] then asserts.AssertAutoScalingPolicy(struct["AutoScalingPolicy"]) end
	if struct["EbsConfiguration"] then asserts.AssertEbsConfiguration(struct["EbsConfiguration"]) end
	if struct["BidPrice"] then asserts.AssertXmlStringMaxLen256(struct["BidPrice"]) end
	if struct["InstanceType"] then asserts.AssertInstanceType(struct["InstanceType"]) end
	if struct["Market"] then asserts.AssertMarketType(struct["Market"]) end
	if struct["Configurations"] then asserts.AssertConfigurationList(struct["Configurations"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstanceGroupConfig[k], "InstanceGroupConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceGroupConfig
-- <p>Configuration defining a new instance group.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceCount [Integer] <p>Target number of instances for the instance group.</p>
-- * Name [XmlStringMaxLen256] <p>Friendly name given to the instance group.</p>
-- * InstanceRole [InstanceRoleType] <p>The role of the instance group in the cluster.</p>
-- * AutoScalingPolicy [AutoScalingPolicy] <p>An automatic scaling policy for a core instance group or task instance group in an Amazon EMR cluster. The automatic scaling policy defines how an instance group dynamically adds and terminates EC2 instances in response to the value of a CloudWatch metric. See <a>PutAutoScalingPolicy</a>.</p>
-- * EbsConfiguration [EbsConfiguration] <p>EBS configurations that will be attached to each EC2 instance in the instance group.</p>
-- * BidPrice [XmlStringMaxLen256] <p>The maximum Spot price your are willing to pay for EC2 instances.</p> <p>An optional, nullable field that applies if the <code>MarketType</code> for the instance group is specified as <code>SPOT</code>. Specify the maximum spot price in USD. If the value is NULL and <code>SPOT</code> is specified, the maximum Spot price is set equal to the On-Demand price.</p>
-- * InstanceType [InstanceType] <p>The EC2 instance type for all instances in the instance group.</p>
-- * Market [MarketType] <p>Market type of the EC2 instances used to create a cluster node.</p>
-- * Configurations [ConfigurationList] <note> <p>Amazon EMR releases 4.x or later.</p> </note> <p>The list of configurations supplied for an EMR cluster instance group. You can specify a separate configuration for each instance group (master, core, and task).</p>
-- Required key: InstanceRole
-- Required key: InstanceType
-- Required key: InstanceCount
-- @return InstanceGroupConfig structure as a key-value pair table
function M.InstanceGroupConfig(args)
	assert(args, "You must provide an argument table when creating InstanceGroupConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceCount"] = args["InstanceCount"],
		["Name"] = args["Name"],
		["InstanceRole"] = args["InstanceRole"],
		["AutoScalingPolicy"] = args["AutoScalingPolicy"],
		["EbsConfiguration"] = args["EbsConfiguration"],
		["BidPrice"] = args["BidPrice"],
		["InstanceType"] = args["InstanceType"],
		["Market"] = args["Market"],
		["Configurations"] = args["Configurations"],
	}
	asserts.AssertInstanceGroupConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AutoScalingPolicyDescription = { ["Status"] = true, ["Rules"] = true, ["Constraints"] = true, nil }

function asserts.AssertAutoScalingPolicyDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AutoScalingPolicyDescription to be of type 'table'")
	if struct["Status"] then asserts.AssertAutoScalingPolicyStatus(struct["Status"]) end
	if struct["Rules"] then asserts.AssertScalingRuleList(struct["Rules"]) end
	if struct["Constraints"] then asserts.AssertScalingConstraints(struct["Constraints"]) end
	for k,_ in pairs(struct) do
		assert(keys.AutoScalingPolicyDescription[k], "AutoScalingPolicyDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AutoScalingPolicyDescription
-- <p>An automatic scaling policy for a core instance group or task instance group in an Amazon EMR cluster. The automatic scaling policy defines how an instance group dynamically adds and terminates EC2 instances in response to the value of a CloudWatch metric. See <a>PutAutoScalingPolicy</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [AutoScalingPolicyStatus] <p>The status of an automatic scaling policy. </p>
-- * Rules [ScalingRuleList] <p>The scale-in and scale-out rules that comprise the automatic scaling policy.</p>
-- * Constraints [ScalingConstraints] <p>The upper and lower EC2 instance limits for an automatic scaling policy. Automatic scaling activity will not cause an instance group to grow above or below these limits.</p>
-- @return AutoScalingPolicyDescription structure as a key-value pair table
function M.AutoScalingPolicyDescription(args)
	assert(args, "You must provide an argument table when creating AutoScalingPolicyDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["Rules"] = args["Rules"],
		["Constraints"] = args["Constraints"],
	}
	asserts.AssertAutoScalingPolicyDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.JobFlowExecutionStatusDetail = { ["ReadyDateTime"] = true, ["EndDateTime"] = true, ["State"] = true, ["StartDateTime"] = true, ["CreationDateTime"] = true, ["LastStateChangeReason"] = true, nil }

function asserts.AssertJobFlowExecutionStatusDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobFlowExecutionStatusDetail to be of type 'table'")
	assert(struct["State"], "Expected key State to exist in table")
	assert(struct["CreationDateTime"], "Expected key CreationDateTime to exist in table")
	if struct["ReadyDateTime"] then asserts.AssertDate(struct["ReadyDateTime"]) end
	if struct["EndDateTime"] then asserts.AssertDate(struct["EndDateTime"]) end
	if struct["State"] then asserts.AssertJobFlowExecutionState(struct["State"]) end
	if struct["StartDateTime"] then asserts.AssertDate(struct["StartDateTime"]) end
	if struct["CreationDateTime"] then asserts.AssertDate(struct["CreationDateTime"]) end
	if struct["LastStateChangeReason"] then asserts.AssertXmlString(struct["LastStateChangeReason"]) end
	for k,_ in pairs(struct) do
		assert(keys.JobFlowExecutionStatusDetail[k], "JobFlowExecutionStatusDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobFlowExecutionStatusDetail
-- <p>Describes the status of the cluster (job flow).</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReadyDateTime [Date] <p>The date and time when the job flow was ready to start running bootstrap actions.</p>
-- * EndDateTime [Date] <p>The completion date and time of the job flow.</p>
-- * State [JobFlowExecutionState] <p>The state of the job flow.</p>
-- * StartDateTime [Date] <p>The start date and time of the job flow.</p>
-- * CreationDateTime [Date] <p>The creation date and time of the job flow.</p>
-- * LastStateChangeReason [XmlString] <p>Description of the job flow last changed state.</p>
-- Required key: State
-- Required key: CreationDateTime
-- @return JobFlowExecutionStatusDetail structure as a key-value pair table
function M.JobFlowExecutionStatusDetail(args)
	assert(args, "You must provide an argument table when creating JobFlowExecutionStatusDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReadyDateTime"] = args["ReadyDateTime"],
		["EndDateTime"] = args["EndDateTime"],
		["State"] = args["State"],
		["StartDateTime"] = args["StartDateTime"],
		["CreationDateTime"] = args["CreationDateTime"],
		["LastStateChangeReason"] = args["LastStateChangeReason"],
	}
	asserts.AssertJobFlowExecutionStatusDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Application = { ["Args"] = true, ["Version"] = true, ["Name"] = true, ["AdditionalInfo"] = true, nil }

function asserts.AssertApplication(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Application to be of type 'table'")
	if struct["Args"] then asserts.AssertStringList(struct["Args"]) end
	if struct["Version"] then asserts.AssertString(struct["Version"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["AdditionalInfo"] then asserts.AssertStringMap(struct["AdditionalInfo"]) end
	for k,_ in pairs(struct) do
		assert(keys.Application[k], "Application contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Application
-- <p>An application is any Amazon or third-party software that you can add to the cluster. This structure contains a list of strings that indicates the software to use with the cluster and accepts a user argument list. Amazon EMR accepts and forwards the argument list to the corresponding installation script as bootstrap action argument. For more information, see <a href="http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-mapr.html">Using the MapR Distribution for Hadoop</a>. Currently supported values are:</p> <ul> <li> <p>"mapr-m3" - launch the cluster using MapR M3 Edition.</p> </li> <li> <p>"mapr-m5" - launch the cluster using MapR M5 Edition.</p> </li> <li> <p>"mapr" with the user arguments specifying "--edition,m3" or "--edition,m5" - launch the cluster using MapR M3 or M5 Edition, respectively.</p> </li> </ul> <note> <p>In Amazon EMR releases 4.x and later, the only accepted parameter is the application name. To pass arguments to applications, you supply a configuration for each application.</p> </note>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Args [StringList] <p>Arguments for Amazon EMR to pass to the application.</p>
-- * Version [String] <p>The version of the application.</p>
-- * Name [String] <p>The name of the application.</p>
-- * AdditionalInfo [StringMap] <p>This option is for advanced users only. This is meta information about third-party applications that third-party vendors use for testing purposes.</p>
-- @return Application structure as a key-value pair table
function M.Application(args)
	assert(args, "You must provide an argument table when creating Application")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Args"] = args["Args"],
		["Version"] = args["Version"],
		["Name"] = args["Name"],
		["AdditionalInfo"] = args["AdditionalInfo"],
	}
	asserts.AssertApplication(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EbsConfiguration = { ["EbsOptimized"] = true, ["EbsBlockDeviceConfigs"] = true, nil }

function asserts.AssertEbsConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EbsConfiguration to be of type 'table'")
	if struct["EbsOptimized"] then asserts.AssertBooleanObject(struct["EbsOptimized"]) end
	if struct["EbsBlockDeviceConfigs"] then asserts.AssertEbsBlockDeviceConfigList(struct["EbsBlockDeviceConfigs"]) end
	for k,_ in pairs(struct) do
		assert(keys.EbsConfiguration[k], "EbsConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EbsConfiguration
-- <p>The Amazon EBS configuration of a cluster instance.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EbsOptimized [BooleanObject] <p>Indicates whether an Amazon EBS volume is EBS-optimized.</p>
-- * EbsBlockDeviceConfigs [EbsBlockDeviceConfigList] <p>An array of Amazon EBS volume specifications attached to a cluster instance.</p>
-- @return EbsConfiguration structure as a key-value pair table
function M.EbsConfiguration(args)
	assert(args, "You must provide an argument table when creating EbsConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EbsOptimized"] = args["EbsOptimized"],
		["EbsBlockDeviceConfigs"] = args["EbsBlockDeviceConfigs"],
	}
	asserts.AssertEbsConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RunJobFlowInput = { ["BootstrapActions"] = true, ["LogUri"] = true, ["AmiVersion"] = true, ["AutoScalingRole"] = true, ["Tags"] = true, ["Applications"] = true, ["JobFlowRole"] = true, ["EbsRootVolumeSize"] = true, ["ScaleDownBehavior"] = true, ["CustomAmiId"] = true, ["AdditionalInfo"] = true, ["Name"] = true, ["ServiceRole"] = true, ["SecurityConfiguration"] = true, ["Steps"] = true, ["RepoUpgradeOnBoot"] = true, ["Configurations"] = true, ["ReleaseLabel"] = true, ["Instances"] = true, ["KerberosAttributes"] = true, ["VisibleToAllUsers"] = true, ["NewSupportedProducts"] = true, ["SupportedProducts"] = true, nil }

function asserts.AssertRunJobFlowInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RunJobFlowInput to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Instances"], "Expected key Instances to exist in table")
	if struct["BootstrapActions"] then asserts.AssertBootstrapActionConfigList(struct["BootstrapActions"]) end
	if struct["LogUri"] then asserts.AssertXmlString(struct["LogUri"]) end
	if struct["AmiVersion"] then asserts.AssertXmlStringMaxLen256(struct["AmiVersion"]) end
	if struct["AutoScalingRole"] then asserts.AssertXmlString(struct["AutoScalingRole"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["Applications"] then asserts.AssertApplicationList(struct["Applications"]) end
	if struct["JobFlowRole"] then asserts.AssertXmlString(struct["JobFlowRole"]) end
	if struct["EbsRootVolumeSize"] then asserts.AssertInteger(struct["EbsRootVolumeSize"]) end
	if struct["ScaleDownBehavior"] then asserts.AssertScaleDownBehavior(struct["ScaleDownBehavior"]) end
	if struct["CustomAmiId"] then asserts.AssertXmlStringMaxLen256(struct["CustomAmiId"]) end
	if struct["AdditionalInfo"] then asserts.AssertXmlString(struct["AdditionalInfo"]) end
	if struct["Name"] then asserts.AssertXmlStringMaxLen256(struct["Name"]) end
	if struct["ServiceRole"] then asserts.AssertXmlString(struct["ServiceRole"]) end
	if struct["SecurityConfiguration"] then asserts.AssertXmlString(struct["SecurityConfiguration"]) end
	if struct["Steps"] then asserts.AssertStepConfigList(struct["Steps"]) end
	if struct["RepoUpgradeOnBoot"] then asserts.AssertRepoUpgradeOnBoot(struct["RepoUpgradeOnBoot"]) end
	if struct["Configurations"] then asserts.AssertConfigurationList(struct["Configurations"]) end
	if struct["ReleaseLabel"] then asserts.AssertXmlStringMaxLen256(struct["ReleaseLabel"]) end
	if struct["Instances"] then asserts.AssertJobFlowInstancesConfig(struct["Instances"]) end
	if struct["KerberosAttributes"] then asserts.AssertKerberosAttributes(struct["KerberosAttributes"]) end
	if struct["VisibleToAllUsers"] then asserts.AssertBoolean(struct["VisibleToAllUsers"]) end
	if struct["NewSupportedProducts"] then asserts.AssertNewSupportedProductsList(struct["NewSupportedProducts"]) end
	if struct["SupportedProducts"] then asserts.AssertSupportedProductsList(struct["SupportedProducts"]) end
	for k,_ in pairs(struct) do
		assert(keys.RunJobFlowInput[k], "RunJobFlowInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RunJobFlowInput
-- <p> Input to the <a>RunJobFlow</a> operation. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BootstrapActions [BootstrapActionConfigList] <p>A list of bootstrap actions to run before Hadoop starts on the cluster nodes.</p>
-- * LogUri [XmlString] <p>The location in Amazon S3 to write the log files of the job flow. If a value is not provided, logs are not created.</p>
-- * AmiVersion [XmlStringMaxLen256] <p>Applies only to Amazon EMR AMI versions 3.x and 2.x. For Amazon EMR releases 4.0 and later, <code>ReleaseLabel</code> is used. To specify a custom AMI, use <code>CustomAmiID</code>.</p>
-- * AutoScalingRole [XmlString] <p>An IAM role for automatic scaling policies. The default role is <code>EMR_AutoScaling_DefaultRole</code>. The IAM role provides permissions that the automatic scaling feature requires to launch and terminate EC2 instances in an instance group.</p>
-- * Tags [TagList] <p>A list of tags to associate with a cluster and propagate to Amazon EC2 instances.</p>
-- * Applications [ApplicationList] <p>For Amazon EMR releases 4.0 and later. A list of applications for the cluster. Valid values are: "Hadoop", "Hive", "Mahout", "Pig", and "Spark." They are case insensitive.</p>
-- * JobFlowRole [XmlString] <p>Also called instance profile and EC2 role. An IAM role for an EMR cluster. The EC2 instances of the cluster assume this role. The default role is <code>EMR_EC2_DefaultRole</code>. In order to use the default role, you must have already created it using the CLI or console.</p>
-- * EbsRootVolumeSize [Integer] <p>The size, in GiB, of the EBS root device volume of the Linux AMI that is used for each EC2 instance. Available in Amazon EMR version 4.x and later.</p>
-- * ScaleDownBehavior [ScaleDownBehavior] <p>Specifies the way that individual Amazon EC2 instances terminate when an automatic scale-in activity occurs or an instance group is resized. <code>TERMINATE_AT_INSTANCE_HOUR</code> indicates that Amazon EMR terminates nodes at the instance-hour boundary, regardless of when the request to terminate the instance was submitted. This option is only available with Amazon EMR 5.1.0 and later and is the default for clusters created using that version. <code>TERMINATE_AT_TASK_COMPLETION</code> indicates that Amazon EMR blacklists and drains tasks from nodes before terminating the Amazon EC2 instances, regardless of the instance-hour boundary. With either behavior, Amazon EMR removes the least active nodes first and blocks instance termination if it could lead to HDFS corruption. <code>TERMINATE_AT_TASK_COMPLETION</code> available only in Amazon EMR version 4.1.0 and later, and is the default for versions of Amazon EMR earlier than 5.1.0.</p>
-- * CustomAmiId [XmlStringMaxLen256] <p>Available only in Amazon EMR version 5.7.0 and later. The ID of a custom Amazon EBS-backed Linux AMI. If specified, Amazon EMR uses this AMI when it launches cluster EC2 instances. For more information about custom AMIs in Amazon EMR, see <a href="http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-custom-ami.html">Using a Custom AMI</a> in the <i>Amazon EMR Management Guide</i>. If omitted, the cluster uses the base Linux AMI for the <code>ReleaseLabel</code> specified. For Amazon EMR versions 2.x and 3.x, use <code>AmiVersion</code> instead.</p> <p>For information about creating a custom AMI, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/creating-an-ami-ebs.html">Creating an Amazon EBS-Backed Linux AMI</a> in the <i>Amazon Elastic Compute Cloud User Guide for Linux Instances</i>. For information about finding an AMI ID, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/finding-an-ami.html">Finding a Linux AMI</a>. </p>
-- * AdditionalInfo [XmlString] <p>A JSON string for selecting additional features.</p>
-- * Name [XmlStringMaxLen256] <p>The name of the job flow.</p>
-- * ServiceRole [XmlString] <p>The IAM role that will be assumed by the Amazon EMR service to access AWS resources on your behalf.</p>
-- * SecurityConfiguration [XmlString] <p>The name of a security configuration to apply to the cluster.</p>
-- * Steps [StepConfigList] <p>A list of steps to run.</p>
-- * RepoUpgradeOnBoot [RepoUpgradeOnBoot] <p>Applies only when <code>CustomAmiID</code> is used. Specifies which updates from the Amazon Linux AMI package repositories to apply automatically when the instance boots using the AMI. If omitted, the default is <code>SECURITY</code>, which indicates that only security updates are applied. If <code>NONE</code> is specified, no updates are applied, and all updates must be applied manually.</p>
-- * Configurations [ConfigurationList] <p>For Amazon EMR releases 4.0 and later. The list of configurations supplied for the EMR cluster you are creating.</p>
-- * ReleaseLabel [XmlStringMaxLen256] <p>The Amazon EMR release label, which determines the version of open-source application packages installed on the cluster. Release labels are in the form <code>emr-x.x.x</code>, where x.x.x is an Amazon EMR release version, for example, <code>emr-5.14.0</code>. For more information about Amazon EMR release versions and included application versions and features, see <a href="http://docs.aws.amazon.com/emr/latest/ReleaseGuide/">http://docs.aws.amazon.com/emr/latest/ReleaseGuide/</a>. The release label applies only to Amazon EMR releases versions 4.x and later. Earlier versions use <code>AmiVersion</code>.</p>
-- * Instances [JobFlowInstancesConfig] <p>A specification of the number and type of Amazon EC2 instances.</p>
-- * KerberosAttributes [KerberosAttributes] <p>Attributes for Kerberos configuration when Kerberos authentication is enabled using a security configuration. For more information see <a href="http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-kerberos.html">Use Kerberos Authentication</a> in the <i>EMR Management Guide</i>.</p>
-- * VisibleToAllUsers [Boolean] <p>Whether the cluster is visible to all IAM users of the AWS account associated with the cluster. If this value is set to <code>true</code>, all IAM users of that AWS account can view and (if they have the proper policy permissions set) manage the cluster. If it is set to <code>false</code>, only the IAM user that created the cluster can view and manage it.</p>
-- * NewSupportedProducts [NewSupportedProductsList] <note> <p>For Amazon EMR releases 3.x and 2.x. For Amazon EMR releases 4.x and later, use Applications.</p> </note> <p>A list of strings that indicates third-party software to use with the job flow that accepts a user argument list. EMR accepts and forwards the argument list to the corresponding installation script as bootstrap action arguments. For more information, see "Launch a Job Flow on the MapR Distribution for Hadoop" in the <a href="http://docs.aws.amazon.com/emr/latest/DeveloperGuide/emr-dg.pdf">Amazon EMR Developer Guide</a>. Supported values are:</p> <ul> <li> <p>"mapr-m3" - launch the cluster using MapR M3 Edition.</p> </li> <li> <p>"mapr-m5" - launch the cluster using MapR M5 Edition.</p> </li> <li> <p>"mapr" with the user arguments specifying "--edition,m3" or "--edition,m5" - launch the job flow using MapR M3 or M5 Edition respectively.</p> </li> <li> <p>"mapr-m7" - launch the cluster using MapR M7 Edition.</p> </li> <li> <p>"hunk" - launch the cluster with the Hunk Big Data Analtics Platform.</p> </li> <li> <p>"hue"- launch the cluster with Hue installed.</p> </li> <li> <p>"spark" - launch the cluster with Apache Spark installed.</p> </li> <li> <p>"ganglia" - launch the cluster with the Ganglia Monitoring System installed.</p> </li> </ul>
-- * SupportedProducts [SupportedProductsList] <note> <p>For Amazon EMR releases 3.x and 2.x. For Amazon EMR releases 4.x and later, use Applications.</p> </note> <p>A list of strings that indicates third-party software to use. For more information, see the <a href="http://docs.aws.amazon.com/emr/latest/DeveloperGuide/emr-dg.pdf">Amazon EMR Developer Guide</a>. Currently supported values are:</p> <ul> <li> <p>"mapr-m3" - launch the job flow using MapR M3 Edition.</p> </li> <li> <p>"mapr-m5" - launch the job flow using MapR M5 Edition.</p> </li> </ul>
-- Required key: Name
-- Required key: Instances
-- @return RunJobFlowInput structure as a key-value pair table
function M.RunJobFlowInput(args)
	assert(args, "You must provide an argument table when creating RunJobFlowInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BootstrapActions"] = args["BootstrapActions"],
		["LogUri"] = args["LogUri"],
		["AmiVersion"] = args["AmiVersion"],
		["AutoScalingRole"] = args["AutoScalingRole"],
		["Tags"] = args["Tags"],
		["Applications"] = args["Applications"],
		["JobFlowRole"] = args["JobFlowRole"],
		["EbsRootVolumeSize"] = args["EbsRootVolumeSize"],
		["ScaleDownBehavior"] = args["ScaleDownBehavior"],
		["CustomAmiId"] = args["CustomAmiId"],
		["AdditionalInfo"] = args["AdditionalInfo"],
		["Name"] = args["Name"],
		["ServiceRole"] = args["ServiceRole"],
		["SecurityConfiguration"] = args["SecurityConfiguration"],
		["Steps"] = args["Steps"],
		["RepoUpgradeOnBoot"] = args["RepoUpgradeOnBoot"],
		["Configurations"] = args["Configurations"],
		["ReleaseLabel"] = args["ReleaseLabel"],
		["Instances"] = args["Instances"],
		["KerberosAttributes"] = args["KerberosAttributes"],
		["VisibleToAllUsers"] = args["VisibleToAllUsers"],
		["NewSupportedProducts"] = args["NewSupportedProducts"],
		["SupportedProducts"] = args["SupportedProducts"],
	}
	asserts.AssertRunJobFlowInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SetVisibleToAllUsersInput = { ["JobFlowIds"] = true, ["VisibleToAllUsers"] = true, nil }

function asserts.AssertSetVisibleToAllUsersInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetVisibleToAllUsersInput to be of type 'table'")
	assert(struct["JobFlowIds"], "Expected key JobFlowIds to exist in table")
	assert(struct["VisibleToAllUsers"], "Expected key VisibleToAllUsers to exist in table")
	if struct["JobFlowIds"] then asserts.AssertXmlStringList(struct["JobFlowIds"]) end
	if struct["VisibleToAllUsers"] then asserts.AssertBoolean(struct["VisibleToAllUsers"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetVisibleToAllUsersInput[k], "SetVisibleToAllUsersInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetVisibleToAllUsersInput
-- <p>The input to the SetVisibleToAllUsers action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JobFlowIds [XmlStringList] <p>Identifiers of the job flows to receive the new visibility setting.</p>
-- * VisibleToAllUsers [Boolean] <p>Whether the specified clusters are visible to all IAM users of the AWS account associated with the cluster. If this value is set to True, all IAM users of that AWS account can view and, if they have the proper IAM policy permissions set, manage the clusters. If it is set to False, only the IAM user that created a cluster can view and manage it.</p>
-- Required key: JobFlowIds
-- Required key: VisibleToAllUsers
-- @return SetVisibleToAllUsersInput structure as a key-value pair table
function M.SetVisibleToAllUsersInput(args)
	assert(args, "You must provide an argument table when creating SetVisibleToAllUsersInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JobFlowIds"] = args["JobFlowIds"],
		["VisibleToAllUsers"] = args["VisibleToAllUsers"],
	}
	asserts.AssertSetVisibleToAllUsersInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.HadoopJarStepConfig = { ["MainClass"] = true, ["Args"] = true, ["Jar"] = true, ["Properties"] = true, nil }

function asserts.AssertHadoopJarStepConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HadoopJarStepConfig to be of type 'table'")
	assert(struct["Jar"], "Expected key Jar to exist in table")
	if struct["MainClass"] then asserts.AssertXmlString(struct["MainClass"]) end
	if struct["Args"] then asserts.AssertXmlStringList(struct["Args"]) end
	if struct["Jar"] then asserts.AssertXmlString(struct["Jar"]) end
	if struct["Properties"] then asserts.AssertKeyValueList(struct["Properties"]) end
	for k,_ in pairs(struct) do
		assert(keys.HadoopJarStepConfig[k], "HadoopJarStepConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HadoopJarStepConfig
-- <p>A job flow step consisting of a JAR file whose main function will be executed. The main function submits a job for Hadoop to execute and waits for the job to finish or fail.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MainClass [XmlString] <p>The name of the main class in the specified Java file. If not specified, the JAR file should specify a Main-Class in its manifest file.</p>
-- * Args [XmlStringList] <p>A list of command line arguments passed to the JAR file's main function when executed.</p>
-- * Jar [XmlString] <p>A path to a JAR file run during the step.</p>
-- * Properties [KeyValueList] <p>A list of Java properties that are set when the step runs. You can use these properties to pass key value pairs to your main function.</p>
-- Required key: Jar
-- @return HadoopJarStepConfig structure as a key-value pair table
function M.HadoopJarStepConfig(args)
	assert(args, "You must provide an argument table when creating HadoopJarStepConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MainClass"] = args["MainClass"],
		["Args"] = args["Args"],
		["Jar"] = args["Jar"],
		["Properties"] = args["Properties"],
	}
	asserts.AssertHadoopJarStepConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InstanceGroupTimeline = { ["ReadyDateTime"] = true, ["CreationDateTime"] = true, ["EndDateTime"] = true, nil }

function asserts.AssertInstanceGroupTimeline(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceGroupTimeline to be of type 'table'")
	if struct["ReadyDateTime"] then asserts.AssertDate(struct["ReadyDateTime"]) end
	if struct["CreationDateTime"] then asserts.AssertDate(struct["CreationDateTime"]) end
	if struct["EndDateTime"] then asserts.AssertDate(struct["EndDateTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstanceGroupTimeline[k], "InstanceGroupTimeline contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceGroupTimeline
-- <p>The timeline of the instance group lifecycle.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReadyDateTime [Date] <p>The date and time when the instance group became ready to perform tasks.</p>
-- * CreationDateTime [Date] <p>The creation date and time of the instance group.</p>
-- * EndDateTime [Date] <p>The date and time when the instance group terminated.</p>
-- @return InstanceGroupTimeline structure as a key-value pair table
function M.InstanceGroupTimeline(args)
	assert(args, "You must provide an argument table when creating InstanceGroupTimeline")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReadyDateTime"] = args["ReadyDateTime"],
		["CreationDateTime"] = args["CreationDateTime"],
		["EndDateTime"] = args["EndDateTime"],
	}
	asserts.AssertInstanceGroupTimeline(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Cluster = { ["TerminationProtected"] = true, ["RunningAmiVersion"] = true, ["LogUri"] = true, ["RepoUpgradeOnBoot"] = true, ["AutoScalingRole"] = true, ["Status"] = true, ["Tags"] = true, ["Applications"] = true, ["CustomAmiId"] = true, ["ScaleDownBehavior"] = true, ["EbsRootVolumeSize"] = true, ["Ec2InstanceAttributes"] = true, ["Name"] = true, ["ServiceRole"] = true, ["InstanceCollectionType"] = true, ["SecurityConfiguration"] = true, ["RequestedAmiVersion"] = true, ["AutoTerminate"] = true, ["Configurations"] = true, ["MasterPublicDnsName"] = true, ["ReleaseLabel"] = true, ["NormalizedInstanceHours"] = true, ["KerberosAttributes"] = true, ["VisibleToAllUsers"] = true, ["Id"] = true, nil }

function asserts.AssertCluster(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Cluster to be of type 'table'")
	if struct["TerminationProtected"] then asserts.AssertBoolean(struct["TerminationProtected"]) end
	if struct["RunningAmiVersion"] then asserts.AssertString(struct["RunningAmiVersion"]) end
	if struct["LogUri"] then asserts.AssertString(struct["LogUri"]) end
	if struct["RepoUpgradeOnBoot"] then asserts.AssertRepoUpgradeOnBoot(struct["RepoUpgradeOnBoot"]) end
	if struct["AutoScalingRole"] then asserts.AssertXmlString(struct["AutoScalingRole"]) end
	if struct["Status"] then asserts.AssertClusterStatus(struct["Status"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["Applications"] then asserts.AssertApplicationList(struct["Applications"]) end
	if struct["CustomAmiId"] then asserts.AssertXmlStringMaxLen256(struct["CustomAmiId"]) end
	if struct["ScaleDownBehavior"] then asserts.AssertScaleDownBehavior(struct["ScaleDownBehavior"]) end
	if struct["EbsRootVolumeSize"] then asserts.AssertInteger(struct["EbsRootVolumeSize"]) end
	if struct["Ec2InstanceAttributes"] then asserts.AssertEc2InstanceAttributes(struct["Ec2InstanceAttributes"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["ServiceRole"] then asserts.AssertString(struct["ServiceRole"]) end
	if struct["InstanceCollectionType"] then asserts.AssertInstanceCollectionType(struct["InstanceCollectionType"]) end
	if struct["SecurityConfiguration"] then asserts.AssertXmlString(struct["SecurityConfiguration"]) end
	if struct["RequestedAmiVersion"] then asserts.AssertString(struct["RequestedAmiVersion"]) end
	if struct["AutoTerminate"] then asserts.AssertBoolean(struct["AutoTerminate"]) end
	if struct["Configurations"] then asserts.AssertConfigurationList(struct["Configurations"]) end
	if struct["MasterPublicDnsName"] then asserts.AssertString(struct["MasterPublicDnsName"]) end
	if struct["ReleaseLabel"] then asserts.AssertString(struct["ReleaseLabel"]) end
	if struct["NormalizedInstanceHours"] then asserts.AssertInteger(struct["NormalizedInstanceHours"]) end
	if struct["KerberosAttributes"] then asserts.AssertKerberosAttributes(struct["KerberosAttributes"]) end
	if struct["VisibleToAllUsers"] then asserts.AssertBoolean(struct["VisibleToAllUsers"]) end
	if struct["Id"] then asserts.AssertClusterId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.Cluster[k], "Cluster contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Cluster
-- <p>The detailed description of the cluster.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TerminationProtected [Boolean] <p>Indicates whether Amazon EMR will lock the cluster to prevent the EC2 instances from being terminated by an API call or user intervention, or in the event of a cluster error.</p>
-- * RunningAmiVersion [String] <p>The AMI version running on this cluster.</p>
-- * LogUri [String] <p>The path to the Amazon S3 location where logs for this cluster are stored.</p>
-- * RepoUpgradeOnBoot [RepoUpgradeOnBoot] <p>Applies only when <code>CustomAmiID</code> is used. Specifies the type of updates that are applied from the Amazon Linux AMI package repositories when an instance boots using the AMI.</p>
-- * AutoScalingRole [XmlString] <p>An IAM role for automatic scaling policies. The default role is <code>EMR_AutoScaling_DefaultRole</code>. The IAM role provides permissions that the automatic scaling feature requires to launch and terminate EC2 instances in an instance group.</p>
-- * Status [ClusterStatus] <p>The current status details about the cluster.</p>
-- * Tags [TagList] <p>A list of tags associated with a cluster.</p>
-- * Applications [ApplicationList] <p>The applications installed on this cluster.</p>
-- * CustomAmiId [XmlStringMaxLen256] <p>Available only in Amazon EMR version 5.7.0 and later. The ID of a custom Amazon EBS-backed Linux AMI if the cluster uses a custom AMI.</p>
-- * ScaleDownBehavior [ScaleDownBehavior] <p>The way that individual Amazon EC2 instances terminate when an automatic scale-in activity occurs or an instance group is resized. <code>TERMINATE_AT_INSTANCE_HOUR</code> indicates that Amazon EMR terminates nodes at the instance-hour boundary, regardless of when the request to terminate the instance was submitted. This option is only available with Amazon EMR 5.1.0 and later and is the default for clusters created using that version. <code>TERMINATE_AT_TASK_COMPLETION</code> indicates that Amazon EMR blacklists and drains tasks from nodes before terminating the Amazon EC2 instances, regardless of the instance-hour boundary. With either behavior, Amazon EMR removes the least active nodes first and blocks instance termination if it could lead to HDFS corruption. <code>TERMINATE_AT_TASK_COMPLETION</code> is available only in Amazon EMR version 4.1.0 and later, and is the default for versions of Amazon EMR earlier than 5.1.0.</p>
-- * EbsRootVolumeSize [Integer] <p>The size, in GiB, of the EBS root device volume of the Linux AMI that is used for each EC2 instance. Available in Amazon EMR version 4.x and later.</p>
-- * Ec2InstanceAttributes [Ec2InstanceAttributes] <p>Provides information about the EC2 instances in a cluster grouped by category. For example, key name, subnet ID, IAM instance profile, and so on.</p>
-- * Name [String] <p>The name of the cluster.</p>
-- * ServiceRole [String] <p>The IAM role that will be assumed by the Amazon EMR service to access AWS resources on your behalf.</p>
-- * InstanceCollectionType [InstanceCollectionType] <note> <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.</p> </note> <p>The instance group configuration of the cluster. A value of <code>INSTANCE_GROUP</code> indicates a uniform instance group configuration. A value of <code>INSTANCE_FLEET</code> indicates an instance fleets configuration.</p>
-- * SecurityConfiguration [XmlString] <p>The name of the security configuration applied to the cluster.</p>
-- * RequestedAmiVersion [String] <p>The AMI version requested for this cluster.</p>
-- * AutoTerminate [Boolean] <p>Specifies whether the cluster should terminate after completing all steps.</p>
-- * Configurations [ConfigurationList] <p>Applies only to Amazon EMR releases 4.x and later. The list of Configurations supplied to the EMR cluster.</p>
-- * MasterPublicDnsName [String] <p>The DNS name of the master node. If the cluster is on a private subnet, this is the private DNS name. On a public subnet, this is the public DNS name.</p>
-- * ReleaseLabel [String] <p>The Amazon EMR release label, which determines the version of open-source application packages installed on the cluster. Release labels are in the form <code>emr-x.x.x</code>, where x.x.x is an Amazon EMR release version, for example, <code>emr-5.14.0</code>. For more information about Amazon EMR release versions and included application versions and features, see <a href="http://docs.aws.amazon.com/emr/latest/ReleaseGuide/">http://docs.aws.amazon.com/emr/latest/ReleaseGuide/</a>. The release label applies only to Amazon EMR releases versions 4.x and later. Earlier versions use <code>AmiVersion</code>.</p>
-- * NormalizedInstanceHours [Integer] <p>An approximation of the cost of the cluster, represented in m1.small/hours. This value is incremented one time for every hour an m1.small instance runs. Larger instances are weighted more, so an EC2 instance that is roughly four times more expensive would result in the normalized instance hours being incremented by four. This result is only an approximation and does not reflect the actual billing rate.</p>
-- * KerberosAttributes [KerberosAttributes] <p>Attributes for Kerberos configuration when Kerberos authentication is enabled using a security configuration. For more information see <a href="http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-kerberos.html">Use Kerberos Authentication</a> in the <i>EMR Management Guide</i>.</p>
-- * VisibleToAllUsers [Boolean] <p>Indicates whether the cluster is visible to all IAM users of the AWS account associated with the cluster. If this value is set to <code>true</code>, all IAM users of that AWS account can view and manage the cluster if they have the proper policy permissions set. If this value is <code>false</code>, only the IAM user that created the cluster can view and manage it. This value can be changed using the <a>SetVisibleToAllUsers</a> action.</p>
-- * Id [ClusterId] <p>The unique identifier for the cluster.</p>
-- @return Cluster structure as a key-value pair table
function M.Cluster(args)
	assert(args, "You must provide an argument table when creating Cluster")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TerminationProtected"] = args["TerminationProtected"],
		["RunningAmiVersion"] = args["RunningAmiVersion"],
		["LogUri"] = args["LogUri"],
		["RepoUpgradeOnBoot"] = args["RepoUpgradeOnBoot"],
		["AutoScalingRole"] = args["AutoScalingRole"],
		["Status"] = args["Status"],
		["Tags"] = args["Tags"],
		["Applications"] = args["Applications"],
		["CustomAmiId"] = args["CustomAmiId"],
		["ScaleDownBehavior"] = args["ScaleDownBehavior"],
		["EbsRootVolumeSize"] = args["EbsRootVolumeSize"],
		["Ec2InstanceAttributes"] = args["Ec2InstanceAttributes"],
		["Name"] = args["Name"],
		["ServiceRole"] = args["ServiceRole"],
		["InstanceCollectionType"] = args["InstanceCollectionType"],
		["SecurityConfiguration"] = args["SecurityConfiguration"],
		["RequestedAmiVersion"] = args["RequestedAmiVersion"],
		["AutoTerminate"] = args["AutoTerminate"],
		["Configurations"] = args["Configurations"],
		["MasterPublicDnsName"] = args["MasterPublicDnsName"],
		["ReleaseLabel"] = args["ReleaseLabel"],
		["NormalizedInstanceHours"] = args["NormalizedInstanceHours"],
		["KerberosAttributes"] = args["KerberosAttributes"],
		["VisibleToAllUsers"] = args["VisibleToAllUsers"],
		["Id"] = args["Id"],
	}
	asserts.AssertCluster(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.JobFlowDetail = { ["AutoScalingRole"] = true, ["Name"] = true, ["ServiceRole"] = true, ["JobFlowId"] = true, ["Instances"] = true, ["JobFlowRole"] = true, ["Steps"] = true, ["ScaleDownBehavior"] = true, ["ExecutionStatusDetail"] = true, ["VisibleToAllUsers"] = true, ["BootstrapActions"] = true, ["LogUri"] = true, ["AmiVersion"] = true, ["SupportedProducts"] = true, nil }

function asserts.AssertJobFlowDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobFlowDetail to be of type 'table'")
	assert(struct["JobFlowId"], "Expected key JobFlowId to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["ExecutionStatusDetail"], "Expected key ExecutionStatusDetail to exist in table")
	assert(struct["Instances"], "Expected key Instances to exist in table")
	if struct["AutoScalingRole"] then asserts.AssertXmlString(struct["AutoScalingRole"]) end
	if struct["Name"] then asserts.AssertXmlStringMaxLen256(struct["Name"]) end
	if struct["ServiceRole"] then asserts.AssertXmlString(struct["ServiceRole"]) end
	if struct["JobFlowId"] then asserts.AssertXmlStringMaxLen256(struct["JobFlowId"]) end
	if struct["Instances"] then asserts.AssertJobFlowInstancesDetail(struct["Instances"]) end
	if struct["JobFlowRole"] then asserts.AssertXmlString(struct["JobFlowRole"]) end
	if struct["Steps"] then asserts.AssertStepDetailList(struct["Steps"]) end
	if struct["ScaleDownBehavior"] then asserts.AssertScaleDownBehavior(struct["ScaleDownBehavior"]) end
	if struct["ExecutionStatusDetail"] then asserts.AssertJobFlowExecutionStatusDetail(struct["ExecutionStatusDetail"]) end
	if struct["VisibleToAllUsers"] then asserts.AssertBoolean(struct["VisibleToAllUsers"]) end
	if struct["BootstrapActions"] then asserts.AssertBootstrapActionDetailList(struct["BootstrapActions"]) end
	if struct["LogUri"] then asserts.AssertXmlString(struct["LogUri"]) end
	if struct["AmiVersion"] then asserts.AssertXmlStringMaxLen256(struct["AmiVersion"]) end
	if struct["SupportedProducts"] then asserts.AssertSupportedProductsList(struct["SupportedProducts"]) end
	for k,_ in pairs(struct) do
		assert(keys.JobFlowDetail[k], "JobFlowDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobFlowDetail
-- <p>A description of a cluster (job flow).</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AutoScalingRole [XmlString] <p>An IAM role for automatic scaling policies. The default role is <code>EMR_AutoScaling_DefaultRole</code>. The IAM role provides a way for the automatic scaling feature to get the required permissions it needs to launch and terminate EC2 instances in an instance group.</p>
-- * Name [XmlStringMaxLen256] <p>The name of the job flow.</p>
-- * ServiceRole [XmlString] <p>The IAM role that will be assumed by the Amazon EMR service to access AWS resources on your behalf.</p>
-- * JobFlowId [XmlStringMaxLen256] <p>The job flow identifier.</p>
-- * Instances [JobFlowInstancesDetail] <p>Describes the Amazon EC2 instances of the job flow.</p>
-- * JobFlowRole [XmlString] <p>The IAM role that was specified when the job flow was launched. The EC2 instances of the job flow assume this role.</p>
-- * Steps [StepDetailList] <p>A list of steps run by the job flow.</p>
-- * ScaleDownBehavior [ScaleDownBehavior] <p>The way that individual Amazon EC2 instances terminate when an automatic scale-in activity occurs or an instance group is resized. <code>TERMINATE_AT_INSTANCE_HOUR</code> indicates that Amazon EMR terminates nodes at the instance-hour boundary, regardless of when the request to terminate the instance was submitted. This option is only available with Amazon EMR 5.1.0 and later and is the default for clusters created using that version. <code>TERMINATE_AT_TASK_COMPLETION</code> indicates that Amazon EMR blacklists and drains tasks from nodes before terminating the Amazon EC2 instances, regardless of the instance-hour boundary. With either behavior, Amazon EMR removes the least active nodes first and blocks instance termination if it could lead to HDFS corruption. <code>TERMINATE_AT_TASK_COMPLETION</code> available only in Amazon EMR version 4.1.0 and later, and is the default for versions of Amazon EMR earlier than 5.1.0.</p>
-- * ExecutionStatusDetail [JobFlowExecutionStatusDetail] <p>Describes the execution status of the job flow.</p>
-- * VisibleToAllUsers [Boolean] <p>Specifies whether the cluster is visible to all IAM users of the AWS account associated with the cluster. If this value is set to <code>true</code>, all IAM users of that AWS account can view and (if they have the proper policy permissions set) manage the cluster. If it is set to <code>false</code>, only the IAM user that created the cluster can view and manage it. This value can be changed using the <a>SetVisibleToAllUsers</a> action.</p>
-- * BootstrapActions [BootstrapActionDetailList] <p>A list of the bootstrap actions run by the job flow.</p>
-- * LogUri [XmlString] <p>The location in Amazon S3 where log files for the job are stored.</p>
-- * AmiVersion [XmlStringMaxLen256] <p>Applies only to Amazon EMR AMI versions 3.x and 2.x. For Amazon EMR releases 4.0 and later, <code>ReleaseLabel</code> is used. To specify a custom AMI, use <code>CustomAmiID</code>.</p>
-- * SupportedProducts [SupportedProductsList] <p>A list of strings set by third party software when the job flow is launched. If you are not using third party software to manage the job flow this value is empty.</p>
-- Required key: JobFlowId
-- Required key: Name
-- Required key: ExecutionStatusDetail
-- Required key: Instances
-- @return JobFlowDetail structure as a key-value pair table
function M.JobFlowDetail(args)
	assert(args, "You must provide an argument table when creating JobFlowDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AutoScalingRole"] = args["AutoScalingRole"],
		["Name"] = args["Name"],
		["ServiceRole"] = args["ServiceRole"],
		["JobFlowId"] = args["JobFlowId"],
		["Instances"] = args["Instances"],
		["JobFlowRole"] = args["JobFlowRole"],
		["Steps"] = args["Steps"],
		["ScaleDownBehavior"] = args["ScaleDownBehavior"],
		["ExecutionStatusDetail"] = args["ExecutionStatusDetail"],
		["VisibleToAllUsers"] = args["VisibleToAllUsers"],
		["BootstrapActions"] = args["BootstrapActions"],
		["LogUri"] = args["LogUri"],
		["AmiVersion"] = args["AmiVersion"],
		["SupportedProducts"] = args["SupportedProducts"],
	}
	asserts.AssertJobFlowDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TerminateJobFlowsInput = { ["JobFlowIds"] = true, nil }

function asserts.AssertTerminateJobFlowsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TerminateJobFlowsInput to be of type 'table'")
	assert(struct["JobFlowIds"], "Expected key JobFlowIds to exist in table")
	if struct["JobFlowIds"] then asserts.AssertXmlStringList(struct["JobFlowIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.TerminateJobFlowsInput[k], "TerminateJobFlowsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TerminateJobFlowsInput
-- <p> Input to the <a>TerminateJobFlows</a> operation. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JobFlowIds [XmlStringList] <p>A list of job flows to be shutdown.</p>
-- Required key: JobFlowIds
-- @return TerminateJobFlowsInput structure as a key-value pair table
function M.TerminateJobFlowsInput(args)
	assert(args, "You must provide an argument table when creating TerminateJobFlowsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JobFlowIds"] = args["JobFlowIds"],
	}
	asserts.AssertTerminateJobFlowsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AddInstanceFleetOutput = { ["ClusterId"] = true, ["InstanceFleetId"] = true, nil }

function asserts.AssertAddInstanceFleetOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddInstanceFleetOutput to be of type 'table'")
	if struct["ClusterId"] then asserts.AssertXmlStringMaxLen256(struct["ClusterId"]) end
	if struct["InstanceFleetId"] then asserts.AssertInstanceFleetId(struct["InstanceFleetId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddInstanceFleetOutput[k], "AddInstanceFleetOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddInstanceFleetOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClusterId [XmlStringMaxLen256] <p>The unique identifier of the cluster.</p>
-- * InstanceFleetId [InstanceFleetId] <p>The unique identifier of the instance fleet.</p>
-- @return AddInstanceFleetOutput structure as a key-value pair table
function M.AddInstanceFleetOutput(args)
	assert(args, "You must provide an argument table when creating AddInstanceFleetOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ClusterId"] = args["ClusterId"],
		["InstanceFleetId"] = args["InstanceFleetId"],
	}
	asserts.AssertAddInstanceFleetOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyInstanceFleetInput = { ["InstanceFleet"] = true, ["ClusterId"] = true, nil }

function asserts.AssertModifyInstanceFleetInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyInstanceFleetInput to be of type 'table'")
	assert(struct["ClusterId"], "Expected key ClusterId to exist in table")
	assert(struct["InstanceFleet"], "Expected key InstanceFleet to exist in table")
	if struct["InstanceFleet"] then asserts.AssertInstanceFleetModifyConfig(struct["InstanceFleet"]) end
	if struct["ClusterId"] then asserts.AssertClusterId(struct["ClusterId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyInstanceFleetInput[k], "ModifyInstanceFleetInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyInstanceFleetInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceFleet [InstanceFleetModifyConfig] <p>The unique identifier of the instance fleet.</p>
-- * ClusterId [ClusterId] <p>The unique identifier of the cluster.</p>
-- Required key: ClusterId
-- Required key: InstanceFleet
-- @return ModifyInstanceFleetInput structure as a key-value pair table
function M.ModifyInstanceFleetInput(args)
	assert(args, "You must provide an argument table when creating ModifyInstanceFleetInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceFleet"] = args["InstanceFleet"],
		["ClusterId"] = args["ClusterId"],
	}
	asserts.AssertModifyInstanceFleetInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AddInstanceGroupsOutput = { ["InstanceGroupIds"] = true, ["JobFlowId"] = true, nil }

function asserts.AssertAddInstanceGroupsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddInstanceGroupsOutput to be of type 'table'")
	if struct["InstanceGroupIds"] then asserts.AssertInstanceGroupIdsList(struct["InstanceGroupIds"]) end
	if struct["JobFlowId"] then asserts.AssertXmlStringMaxLen256(struct["JobFlowId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddInstanceGroupsOutput[k], "AddInstanceGroupsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddInstanceGroupsOutput
-- <p>Output from an AddInstanceGroups call.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceGroupIds [InstanceGroupIdsList] <p>Instance group IDs of the newly created instance groups.</p>
-- * JobFlowId [XmlStringMaxLen256] <p>The job flow ID in which the instance groups are added.</p>
-- @return AddInstanceGroupsOutput structure as a key-value pair table
function M.AddInstanceGroupsOutput(args)
	assert(args, "You must provide an argument table when creating AddInstanceGroupsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceGroupIds"] = args["InstanceGroupIds"],
		["JobFlowId"] = args["JobFlowId"],
	}
	asserts.AssertAddInstanceGroupsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CancelStepsOutput = { ["CancelStepsInfoList"] = true, nil }

function asserts.AssertCancelStepsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelStepsOutput to be of type 'table'")
	if struct["CancelStepsInfoList"] then asserts.AssertCancelStepsInfoList(struct["CancelStepsInfoList"]) end
	for k,_ in pairs(struct) do
		assert(keys.CancelStepsOutput[k], "CancelStepsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelStepsOutput
-- <p> The output for the <a>CancelSteps</a> operation. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CancelStepsInfoList [CancelStepsInfoList] <p>A list of <a>CancelStepsInfo</a>, which shows the status of specified cancel requests for each <code>StepID</code> specified.</p>
-- @return CancelStepsOutput structure as a key-value pair table
function M.CancelStepsOutput(args)
	assert(args, "You must provide an argument table when creating CancelStepsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CancelStepsInfoList"] = args["CancelStepsInfoList"],
	}
	asserts.AssertCancelStepsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Configuration = { ["Properties"] = true, ["Classification"] = true, ["Configurations"] = true, nil }

function asserts.AssertConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Configuration to be of type 'table'")
	if struct["Properties"] then asserts.AssertStringMap(struct["Properties"]) end
	if struct["Classification"] then asserts.AssertString(struct["Classification"]) end
	if struct["Configurations"] then asserts.AssertConfigurationList(struct["Configurations"]) end
	for k,_ in pairs(struct) do
		assert(keys.Configuration[k], "Configuration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Configuration
-- <note> <p>Amazon EMR releases 4.x or later.</p> </note> <p>An optional configuration specification to be used when provisioning cluster instances, which can include configurations for applications and software bundled with Amazon EMR. A configuration consists of a classification, properties, and optional nested configurations. A classification refers to an application-specific configuration file. Properties are the settings you want to change in that file. For more information, see <a href="http://docs.aws.amazon.com/emr/latest/ReleaseGuide/emr-configure-apps.html">Configuring Applications</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Properties [StringMap] <p>A set of properties specified within a configuration classification.</p>
-- * Classification [String] <p>The classification within a configuration.</p>
-- * Configurations [ConfigurationList] <p>A list of additional configurations to apply within a configuration object.</p>
-- @return Configuration structure as a key-value pair table
function M.Configuration(args)
	assert(args, "You must provide an argument table when creating Configuration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Properties"] = args["Properties"],
		["Classification"] = args["Classification"],
		["Configurations"] = args["Configurations"],
	}
	asserts.AssertConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SecurityConfigurationSummary = { ["CreationDateTime"] = true, ["Name"] = true, nil }

function asserts.AssertSecurityConfigurationSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SecurityConfigurationSummary to be of type 'table'")
	if struct["CreationDateTime"] then asserts.AssertDate(struct["CreationDateTime"]) end
	if struct["Name"] then asserts.AssertXmlString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.SecurityConfigurationSummary[k], "SecurityConfigurationSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SecurityConfigurationSummary
-- <p>The creation date and time, and name, of a security configuration.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CreationDateTime [Date] <p>The date and time the security configuration was created.</p>
-- * Name [XmlString] <p>The name of the security configuration.</p>
-- @return SecurityConfigurationSummary structure as a key-value pair table
function M.SecurityConfigurationSummary(args)
	assert(args, "You must provide an argument table when creating SecurityConfigurationSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CreationDateTime"] = args["CreationDateTime"],
		["Name"] = args["Name"],
	}
	asserts.AssertSecurityConfigurationSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CloudWatchAlarmDefinition = { ["EvaluationPeriods"] = true, ["Dimensions"] = true, ["Namespace"] = true, ["Period"] = true, ["ComparisonOperator"] = true, ["Statistic"] = true, ["Threshold"] = true, ["Unit"] = true, ["MetricName"] = true, nil }

function asserts.AssertCloudWatchAlarmDefinition(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloudWatchAlarmDefinition to be of type 'table'")
	assert(struct["ComparisonOperator"], "Expected key ComparisonOperator to exist in table")
	assert(struct["MetricName"], "Expected key MetricName to exist in table")
	assert(struct["Period"], "Expected key Period to exist in table")
	assert(struct["Threshold"], "Expected key Threshold to exist in table")
	if struct["EvaluationPeriods"] then asserts.AssertInteger(struct["EvaluationPeriods"]) end
	if struct["Dimensions"] then asserts.AssertMetricDimensionList(struct["Dimensions"]) end
	if struct["Namespace"] then asserts.AssertString(struct["Namespace"]) end
	if struct["Period"] then asserts.AssertInteger(struct["Period"]) end
	if struct["ComparisonOperator"] then asserts.AssertComparisonOperator(struct["ComparisonOperator"]) end
	if struct["Statistic"] then asserts.AssertStatistic(struct["Statistic"]) end
	if struct["Threshold"] then asserts.AssertNonNegativeDouble(struct["Threshold"]) end
	if struct["Unit"] then asserts.AssertUnit(struct["Unit"]) end
	if struct["MetricName"] then asserts.AssertString(struct["MetricName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CloudWatchAlarmDefinition[k], "CloudWatchAlarmDefinition contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloudWatchAlarmDefinition
-- <p>The definition of a CloudWatch metric alarm, which determines when an automatic scaling activity is triggered. When the defined alarm conditions are satisfied, scaling activity begins.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EvaluationPeriods [Integer] <p>The number of periods, expressed in seconds using <code>Period</code>, during which the alarm condition must exist before the alarm triggers automatic scaling activity. The default value is <code>1</code>.</p>
-- * Dimensions [MetricDimensionList] <p>A CloudWatch metric dimension.</p>
-- * Namespace [String] <p>The namespace for the CloudWatch metric. The default is <code>AWS/ElasticMapReduce</code>.</p>
-- * Period [Integer] <p>The period, in seconds, over which the statistic is applied. EMR CloudWatch metrics are emitted every five minutes (300 seconds), so if an EMR CloudWatch metric is specified, specify <code>300</code>.</p>
-- * ComparisonOperator [ComparisonOperator] <p>Determines how the metric specified by <code>MetricName</code> is compared to the value specified by <code>Threshold</code>.</p>
-- * Statistic [Statistic] <p>The statistic to apply to the metric associated with the alarm. The default is <code>AVERAGE</code>.</p>
-- * Threshold [NonNegativeDouble] <p>The value against which the specified statistic is compared.</p>
-- * Unit [Unit] <p>The unit of measure associated with the CloudWatch metric being watched. The value specified for <code>Unit</code> must correspond to the units specified in the CloudWatch metric.</p>
-- * MetricName [String] <p>The name of the CloudWatch metric that is watched to determine an alarm condition.</p>
-- Required key: ComparisonOperator
-- Required key: MetricName
-- Required key: Period
-- Required key: Threshold
-- @return CloudWatchAlarmDefinition structure as a key-value pair table
function M.CloudWatchAlarmDefinition(args)
	assert(args, "You must provide an argument table when creating CloudWatchAlarmDefinition")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EvaluationPeriods"] = args["EvaluationPeriods"],
		["Dimensions"] = args["Dimensions"],
		["Namespace"] = args["Namespace"],
		["Period"] = args["Period"],
		["ComparisonOperator"] = args["ComparisonOperator"],
		["Statistic"] = args["Statistic"],
		["Threshold"] = args["Threshold"],
		["Unit"] = args["Unit"],
		["MetricName"] = args["MetricName"],
	}
	asserts.AssertCloudWatchAlarmDefinition(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FailureDetails = { ["Reason"] = true, ["LogFile"] = true, ["Message"] = true, nil }

function asserts.AssertFailureDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FailureDetails to be of type 'table'")
	if struct["Reason"] then asserts.AssertString(struct["Reason"]) end
	if struct["LogFile"] then asserts.AssertString(struct["LogFile"]) end
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.FailureDetails[k], "FailureDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FailureDetails
-- <p>The details of the step failure. The service attempts to detect the root cause for many common failures.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Reason [String] <p>The reason for the step failure. In the case where the service cannot successfully determine the root cause of the failure, it returns "Unknown Error" as a reason.</p>
-- * LogFile [String] <p>The path to the log file where the step failure root cause was originally recorded.</p>
-- * Message [String] <p>The descriptive message including the error the EMR service has identified as the cause of step failure. This is text from an error log that describes the root cause of the failure.</p>
-- @return FailureDetails structure as a key-value pair table
function M.FailureDetails(args)
	assert(args, "You must provide an argument table when creating FailureDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Reason"] = args["Reason"],
		["LogFile"] = args["LogFile"],
		["Message"] = args["Message"],
	}
	asserts.AssertFailureDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListClustersInput = { ["Marker"] = true, ["ClusterStates"] = true, ["CreatedAfter"] = true, ["CreatedBefore"] = true, nil }

function asserts.AssertListClustersInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListClustersInput to be of type 'table'")
	if struct["Marker"] then asserts.AssertMarker(struct["Marker"]) end
	if struct["ClusterStates"] then asserts.AssertClusterStateList(struct["ClusterStates"]) end
	if struct["CreatedAfter"] then asserts.AssertDate(struct["CreatedAfter"]) end
	if struct["CreatedBefore"] then asserts.AssertDate(struct["CreatedBefore"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListClustersInput[k], "ListClustersInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListClustersInput
-- <p>This input determines how the ListClusters action filters the list of clusters that it returns.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [Marker] <p>The pagination token that indicates the next set of results to retrieve.</p>
-- * ClusterStates [ClusterStateList] <p>The cluster state filters to apply when listing clusters.</p>
-- * CreatedAfter [Date] <p>The creation date and time beginning value filter for listing clusters.</p>
-- * CreatedBefore [Date] <p>The creation date and time end value filter for listing clusters.</p>
-- @return ListClustersInput structure as a key-value pair table
function M.ListClustersInput(args)
	assert(args, "You must provide an argument table when creating ListClustersInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["ClusterStates"] = args["ClusterStates"],
		["CreatedAfter"] = args["CreatedAfter"],
		["CreatedBefore"] = args["CreatedBefore"],
	}
	asserts.AssertListClustersInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Command = { ["Args"] = true, ["Name"] = true, ["ScriptPath"] = true, nil }

function asserts.AssertCommand(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Command to be of type 'table'")
	if struct["Args"] then asserts.AssertStringList(struct["Args"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["ScriptPath"] then asserts.AssertString(struct["ScriptPath"]) end
	for k,_ in pairs(struct) do
		assert(keys.Command[k], "Command contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Command
-- <p>An entity describing an executable that runs on a cluster.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Args [StringList] <p>Arguments for Amazon EMR to pass to the command for execution.</p>
-- * Name [String] <p>The name of the command.</p>
-- * ScriptPath [String] <p>The Amazon S3 location of the command script.</p>
-- @return Command structure as a key-value pair table
function M.Command(args)
	assert(args, "You must provide an argument table when creating Command")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Args"] = args["Args"],
		["Name"] = args["Name"],
		["ScriptPath"] = args["ScriptPath"],
	}
	asserts.AssertCommand(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteSecurityConfigurationOutput = { nil }

function asserts.AssertDeleteSecurityConfigurationOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSecurityConfigurationOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteSecurityConfigurationOutput[k], "DeleteSecurityConfigurationOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSecurityConfigurationOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteSecurityConfigurationOutput structure as a key-value pair table
function M.DeleteSecurityConfigurationOutput(args)
	assert(args, "You must provide an argument table when creating DeleteSecurityConfigurationOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteSecurityConfigurationOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StepDetail = { ["ExecutionStatusDetail"] = true, ["StepConfig"] = true, nil }

function asserts.AssertStepDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StepDetail to be of type 'table'")
	assert(struct["StepConfig"], "Expected key StepConfig to exist in table")
	assert(struct["ExecutionStatusDetail"], "Expected key ExecutionStatusDetail to exist in table")
	if struct["ExecutionStatusDetail"] then asserts.AssertStepExecutionStatusDetail(struct["ExecutionStatusDetail"]) end
	if struct["StepConfig"] then asserts.AssertStepConfig(struct["StepConfig"]) end
	for k,_ in pairs(struct) do
		assert(keys.StepDetail[k], "StepDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StepDetail
-- <p>Combines the execution state and configuration of a step.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ExecutionStatusDetail [StepExecutionStatusDetail] <p>The description of the step status.</p>
-- * StepConfig [StepConfig] <p>The step configuration.</p>
-- Required key: StepConfig
-- Required key: ExecutionStatusDetail
-- @return StepDetail structure as a key-value pair table
function M.StepDetail(args)
	assert(args, "You must provide an argument table when creating StepDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ExecutionStatusDetail"] = args["ExecutionStatusDetail"],
		["StepConfig"] = args["StepConfig"],
	}
	asserts.AssertStepDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.HadoopStepConfig = { ["MainClass"] = true, ["Args"] = true, ["Jar"] = true, ["Properties"] = true, nil }

function asserts.AssertHadoopStepConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HadoopStepConfig to be of type 'table'")
	if struct["MainClass"] then asserts.AssertString(struct["MainClass"]) end
	if struct["Args"] then asserts.AssertStringList(struct["Args"]) end
	if struct["Jar"] then asserts.AssertString(struct["Jar"]) end
	if struct["Properties"] then asserts.AssertStringMap(struct["Properties"]) end
	for k,_ in pairs(struct) do
		assert(keys.HadoopStepConfig[k], "HadoopStepConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HadoopStepConfig
-- <p>A cluster step consisting of a JAR file whose main function will be executed. The main function submits a job for Hadoop to execute and waits for the job to finish or fail.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MainClass [String] <p>The name of the main class in the specified Java file. If not specified, the JAR file should specify a main class in its manifest file.</p>
-- * Args [StringList] <p>The list of command line arguments to pass to the JAR file's main function for execution.</p>
-- * Jar [String] <p>The path to the JAR file that runs during the step.</p>
-- * Properties [StringMap] <p>The list of Java properties that are set when the step runs. You can use these properties to pass key value pairs to your main function.</p>
-- @return HadoopStepConfig structure as a key-value pair table
function M.HadoopStepConfig(args)
	assert(args, "You must provide an argument table when creating HadoopStepConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MainClass"] = args["MainClass"],
		["Args"] = args["Args"],
		["Jar"] = args["Jar"],
		["Properties"] = args["Properties"],
	}
	asserts.AssertHadoopStepConfig(all_args)
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
-- <p>This output indicates the result of removing tags from a resource.</p>
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

keys.ScalingTrigger = { ["CloudWatchAlarmDefinition"] = true, nil }

function asserts.AssertScalingTrigger(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScalingTrigger to be of type 'table'")
	assert(struct["CloudWatchAlarmDefinition"], "Expected key CloudWatchAlarmDefinition to exist in table")
	if struct["CloudWatchAlarmDefinition"] then asserts.AssertCloudWatchAlarmDefinition(struct["CloudWatchAlarmDefinition"]) end
	for k,_ in pairs(struct) do
		assert(keys.ScalingTrigger[k], "ScalingTrigger contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScalingTrigger
-- <p>The conditions that trigger an automatic scaling activity.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CloudWatchAlarmDefinition [CloudWatchAlarmDefinition] <p>The definition of a CloudWatch metric alarm. When the defined alarm conditions are met along with other trigger parameters, scaling activity begins.</p>
-- Required key: CloudWatchAlarmDefinition
-- @return ScalingTrigger structure as a key-value pair table
function M.ScalingTrigger(args)
	assert(args, "You must provide an argument table when creating ScalingTrigger")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CloudWatchAlarmDefinition"] = args["CloudWatchAlarmDefinition"],
	}
	asserts.AssertScalingTrigger(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InstanceTimeline = { ["ReadyDateTime"] = true, ["CreationDateTime"] = true, ["EndDateTime"] = true, nil }

function asserts.AssertInstanceTimeline(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceTimeline to be of type 'table'")
	if struct["ReadyDateTime"] then asserts.AssertDate(struct["ReadyDateTime"]) end
	if struct["CreationDateTime"] then asserts.AssertDate(struct["CreationDateTime"]) end
	if struct["EndDateTime"] then asserts.AssertDate(struct["EndDateTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstanceTimeline[k], "InstanceTimeline contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceTimeline
-- <p>The timeline of the instance lifecycle.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReadyDateTime [Date] <p>The date and time when the instance was ready to perform tasks.</p>
-- * CreationDateTime [Date] <p>The creation date and time of the instance.</p>
-- * EndDateTime [Date] <p>The date and time when the instance was terminated.</p>
-- @return InstanceTimeline structure as a key-value pair table
function M.InstanceTimeline(args)
	assert(args, "You must provide an argument table when creating InstanceTimeline")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReadyDateTime"] = args["ReadyDateTime"],
		["CreationDateTime"] = args["CreationDateTime"],
		["EndDateTime"] = args["EndDateTime"],
	}
	asserts.AssertInstanceTimeline(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InstanceFleetProvisioningSpecifications = { ["SpotSpecification"] = true, nil }

function asserts.AssertInstanceFleetProvisioningSpecifications(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceFleetProvisioningSpecifications to be of type 'table'")
	assert(struct["SpotSpecification"], "Expected key SpotSpecification to exist in table")
	if struct["SpotSpecification"] then asserts.AssertSpotProvisioningSpecification(struct["SpotSpecification"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstanceFleetProvisioningSpecifications[k], "InstanceFleetProvisioningSpecifications contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceFleetProvisioningSpecifications
-- <p>The launch specification for Spot instances in the fleet, which determines the defined duration and provisioning timeout behavior.</p> <note> <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.</p> </note>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SpotSpecification [SpotProvisioningSpecification] <p>The launch specification for Spot instances in the fleet, which determines the defined duration and provisioning timeout behavior.</p>
-- Required key: SpotSpecification
-- @return InstanceFleetProvisioningSpecifications structure as a key-value pair table
function M.InstanceFleetProvisioningSpecifications(args)
	assert(args, "You must provide an argument table when creating InstanceFleetProvisioningSpecifications")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SpotSpecification"] = args["SpotSpecification"],
	}
	asserts.AssertInstanceFleetProvisioningSpecifications(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RemoveAutoScalingPolicyOutput = { nil }

function asserts.AssertRemoveAutoScalingPolicyOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveAutoScalingPolicyOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.RemoveAutoScalingPolicyOutput[k], "RemoveAutoScalingPolicyOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveAutoScalingPolicyOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return RemoveAutoScalingPolicyOutput structure as a key-value pair table
function M.RemoveAutoScalingPolicyOutput(args)
	assert(args, "You must provide an argument table when creating RemoveAutoScalingPolicyOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertRemoveAutoScalingPolicyOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ScalingConstraints = { ["MinCapacity"] = true, ["MaxCapacity"] = true, nil }

function asserts.AssertScalingConstraints(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScalingConstraints to be of type 'table'")
	assert(struct["MinCapacity"], "Expected key MinCapacity to exist in table")
	assert(struct["MaxCapacity"], "Expected key MaxCapacity to exist in table")
	if struct["MinCapacity"] then asserts.AssertInteger(struct["MinCapacity"]) end
	if struct["MaxCapacity"] then asserts.AssertInteger(struct["MaxCapacity"]) end
	for k,_ in pairs(struct) do
		assert(keys.ScalingConstraints[k], "ScalingConstraints contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScalingConstraints
-- <p>The upper and lower EC2 instance limits for an automatic scaling policy. Automatic scaling activities triggered by automatic scaling rules will not cause an instance group to grow above or below these limits.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MinCapacity [Integer] <p>The lower boundary of EC2 instances in an instance group below which scaling activities are not allowed to shrink. Scale-in activities will not terminate instances below this boundary.</p>
-- * MaxCapacity [Integer] <p>The upper boundary of EC2 instances in an instance group beyond which scaling activities are not allowed to grow. Scale-out activities will not add instances beyond this boundary.</p>
-- Required key: MinCapacity
-- Required key: MaxCapacity
-- @return ScalingConstraints structure as a key-value pair table
function M.ScalingConstraints(args)
	assert(args, "You must provide an argument table when creating ScalingConstraints")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MinCapacity"] = args["MinCapacity"],
		["MaxCapacity"] = args["MaxCapacity"],
	}
	asserts.AssertScalingConstraints(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InstanceTypeSpecification = { ["EbsBlockDevices"] = true, ["EbsOptimized"] = true, ["BidPrice"] = true, ["BidPriceAsPercentageOfOnDemandPrice"] = true, ["WeightedCapacity"] = true, ["InstanceType"] = true, ["Configurations"] = true, nil }

function asserts.AssertInstanceTypeSpecification(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceTypeSpecification to be of type 'table'")
	if struct["EbsBlockDevices"] then asserts.AssertEbsBlockDeviceList(struct["EbsBlockDevices"]) end
	if struct["EbsOptimized"] then asserts.AssertBooleanObject(struct["EbsOptimized"]) end
	if struct["BidPrice"] then asserts.AssertXmlStringMaxLen256(struct["BidPrice"]) end
	if struct["BidPriceAsPercentageOfOnDemandPrice"] then asserts.AssertNonNegativeDouble(struct["BidPriceAsPercentageOfOnDemandPrice"]) end
	if struct["WeightedCapacity"] then asserts.AssertWholeNumber(struct["WeightedCapacity"]) end
	if struct["InstanceType"] then asserts.AssertInstanceType(struct["InstanceType"]) end
	if struct["Configurations"] then asserts.AssertConfigurationList(struct["Configurations"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstanceTypeSpecification[k], "InstanceTypeSpecification contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceTypeSpecification
-- <p>The configuration specification for each instance type in an instance fleet.</p> <note> <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.</p> </note>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EbsBlockDevices [EbsBlockDeviceList] <p>The configuration of Amazon Elastic Block Storage (EBS) attached to each instance as defined by <code>InstanceType</code>.</p>
-- * EbsOptimized [BooleanObject] <p>Evaluates to <code>TRUE</code> when the specified <code>InstanceType</code> is EBS-optimized.</p>
-- * BidPrice [XmlStringMaxLen256] <p>The bid price for each EC2 Spot instance type as defined by <code>InstanceType</code>. Expressed in USD.</p>
-- * BidPriceAsPercentageOfOnDemandPrice [NonNegativeDouble] <p>The bid price, as a percentage of On-Demand price, for each EC2 Spot instance as defined by <code>InstanceType</code>. Expressed as a number (for example, 20 specifies 20%).</p>
-- * WeightedCapacity [WholeNumber] <p>The number of units that a provisioned instance of this type provides toward fulfilling the target capacities defined in <a>InstanceFleetConfig</a>. Capacity values represent performance characteristics such as vCPUs, memory, or I/O. If not specified, the default value is 1.</p>
-- * InstanceType [InstanceType] <p>The EC2 instance type, for example <code>m3.xlarge</code>.</p>
-- * Configurations [ConfigurationList] <p>A configuration classification that applies when provisioning cluster instances, which can include configurations for applications and software bundled with Amazon EMR.</p>
-- @return InstanceTypeSpecification structure as a key-value pair table
function M.InstanceTypeSpecification(args)
	assert(args, "You must provide an argument table when creating InstanceTypeSpecification")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EbsBlockDevices"] = args["EbsBlockDevices"],
		["EbsOptimized"] = args["EbsOptimized"],
		["BidPrice"] = args["BidPrice"],
		["BidPriceAsPercentageOfOnDemandPrice"] = args["BidPriceAsPercentageOfOnDemandPrice"],
		["WeightedCapacity"] = args["WeightedCapacity"],
		["InstanceType"] = args["InstanceType"],
		["Configurations"] = args["Configurations"],
	}
	asserts.AssertInstanceTypeSpecification(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RunJobFlowOutput = { ["JobFlowId"] = true, nil }

function asserts.AssertRunJobFlowOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RunJobFlowOutput to be of type 'table'")
	if struct["JobFlowId"] then asserts.AssertXmlStringMaxLen256(struct["JobFlowId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RunJobFlowOutput[k], "RunJobFlowOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RunJobFlowOutput
-- <p> The result of the <a>RunJobFlow</a> operation. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JobFlowId [XmlStringMaxLen256] <p>An unique identifier for the job flow.</p>
-- @return RunJobFlowOutput structure as a key-value pair table
function M.RunJobFlowOutput(args)
	assert(args, "You must provide an argument table when creating RunJobFlowOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JobFlowId"] = args["JobFlowId"],
	}
	asserts.AssertRunJobFlowOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Instance = { ["Status"] = true, ["Ec2InstanceId"] = true, ["InstanceFleetId"] = true, ["EbsVolumes"] = true, ["PublicDnsName"] = true, ["InstanceType"] = true, ["PrivateDnsName"] = true, ["Market"] = true, ["PublicIpAddress"] = true, ["InstanceGroupId"] = true, ["Id"] = true, ["PrivateIpAddress"] = true, nil }

function asserts.AssertInstance(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Instance to be of type 'table'")
	if struct["Status"] then asserts.AssertInstanceStatus(struct["Status"]) end
	if struct["Ec2InstanceId"] then asserts.AssertInstanceId(struct["Ec2InstanceId"]) end
	if struct["InstanceFleetId"] then asserts.AssertInstanceFleetId(struct["InstanceFleetId"]) end
	if struct["EbsVolumes"] then asserts.AssertEbsVolumeList(struct["EbsVolumes"]) end
	if struct["PublicDnsName"] then asserts.AssertString(struct["PublicDnsName"]) end
	if struct["InstanceType"] then asserts.AssertInstanceType(struct["InstanceType"]) end
	if struct["PrivateDnsName"] then asserts.AssertString(struct["PrivateDnsName"]) end
	if struct["Market"] then asserts.AssertMarketType(struct["Market"]) end
	if struct["PublicIpAddress"] then asserts.AssertString(struct["PublicIpAddress"]) end
	if struct["InstanceGroupId"] then asserts.AssertString(struct["InstanceGroupId"]) end
	if struct["Id"] then asserts.AssertInstanceId(struct["Id"]) end
	if struct["PrivateIpAddress"] then asserts.AssertString(struct["PrivateIpAddress"]) end
	for k,_ in pairs(struct) do
		assert(keys.Instance[k], "Instance contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Instance
-- <p>Represents an EC2 instance provisioned as part of cluster.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [InstanceStatus] <p>The current status of the instance.</p>
-- * Ec2InstanceId [InstanceId] <p>The unique identifier of the instance in Amazon EC2.</p>
-- * InstanceFleetId [InstanceFleetId] <p>The unique identifier of the instance fleet to which an EC2 instance belongs.</p>
-- * EbsVolumes [EbsVolumeList] <p>The list of EBS volumes that are attached to this instance.</p>
-- * PublicDnsName [String] <p>The public DNS name of the instance.</p>
-- * InstanceType [InstanceType] <p>The EC2 instance type, for example <code>m3.xlarge</code>.</p>
-- * PrivateDnsName [String] <p>The private DNS name of the instance.</p>
-- * Market [MarketType] <p>The instance purchasing option. Valid values are <code>ON_DEMAND</code> or <code>SPOT</code>. </p>
-- * PublicIpAddress [String] <p>The public IP address of the instance.</p>
-- * InstanceGroupId [String] <p>The identifier of the instance group to which this instance belongs.</p>
-- * Id [InstanceId] <p>The unique identifier for the instance in Amazon EMR.</p>
-- * PrivateIpAddress [String] <p>The private IP address of the instance.</p>
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
		["Status"] = args["Status"],
		["Ec2InstanceId"] = args["Ec2InstanceId"],
		["InstanceFleetId"] = args["InstanceFleetId"],
		["EbsVolumes"] = args["EbsVolumes"],
		["PublicDnsName"] = args["PublicDnsName"],
		["InstanceType"] = args["InstanceType"],
		["PrivateDnsName"] = args["PrivateDnsName"],
		["Market"] = args["Market"],
		["PublicIpAddress"] = args["PublicIpAddress"],
		["InstanceGroupId"] = args["InstanceGroupId"],
		["Id"] = args["Id"],
		["PrivateIpAddress"] = args["PrivateIpAddress"],
	}
	asserts.AssertInstance(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SupportedProductConfig = { ["Args"] = true, ["Name"] = true, nil }

function asserts.AssertSupportedProductConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SupportedProductConfig to be of type 'table'")
	if struct["Args"] then asserts.AssertXmlStringList(struct["Args"]) end
	if struct["Name"] then asserts.AssertXmlStringMaxLen256(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.SupportedProductConfig[k], "SupportedProductConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SupportedProductConfig
-- <p>The list of supported product configurations which allow user-supplied arguments. EMR accepts these arguments and forwards them to the corresponding installation script as bootstrap action arguments.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Args [XmlStringList] <p>The list of user-supplied arguments.</p>
-- * Name [XmlStringMaxLen256] <p>The name of the product configuration.</p>
-- @return SupportedProductConfig structure as a key-value pair table
function M.SupportedProductConfig(args)
	assert(args, "You must provide an argument table when creating SupportedProductConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Args"] = args["Args"],
		["Name"] = args["Name"],
	}
	asserts.AssertSupportedProductConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListInstanceFleetsInput = { ["Marker"] = true, ["ClusterId"] = true, nil }

function asserts.AssertListInstanceFleetsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListInstanceFleetsInput to be of type 'table'")
	assert(struct["ClusterId"], "Expected key ClusterId to exist in table")
	if struct["Marker"] then asserts.AssertMarker(struct["Marker"]) end
	if struct["ClusterId"] then asserts.AssertClusterId(struct["ClusterId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListInstanceFleetsInput[k], "ListInstanceFleetsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListInstanceFleetsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [Marker] <p>The pagination token that indicates the next set of results to retrieve.</p>
-- * ClusterId [ClusterId] <p>The unique identifier of the cluster.</p>
-- Required key: ClusterId
-- @return ListInstanceFleetsInput structure as a key-value pair table
function M.ListInstanceFleetsInput(args)
	assert(args, "You must provide an argument table when creating ListInstanceFleetsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["ClusterId"] = args["ClusterId"],
	}
	asserts.AssertListInstanceFleetsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutAutoScalingPolicyInput = { ["InstanceGroupId"] = true, ["ClusterId"] = true, ["AutoScalingPolicy"] = true, nil }

function asserts.AssertPutAutoScalingPolicyInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutAutoScalingPolicyInput to be of type 'table'")
	assert(struct["ClusterId"], "Expected key ClusterId to exist in table")
	assert(struct["InstanceGroupId"], "Expected key InstanceGroupId to exist in table")
	assert(struct["AutoScalingPolicy"], "Expected key AutoScalingPolicy to exist in table")
	if struct["InstanceGroupId"] then asserts.AssertInstanceGroupId(struct["InstanceGroupId"]) end
	if struct["ClusterId"] then asserts.AssertClusterId(struct["ClusterId"]) end
	if struct["AutoScalingPolicy"] then asserts.AssertAutoScalingPolicy(struct["AutoScalingPolicy"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutAutoScalingPolicyInput[k], "PutAutoScalingPolicyInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutAutoScalingPolicyInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceGroupId [InstanceGroupId] <p>Specifies the ID of the instance group to which the automatic scaling policy is applied.</p>
-- * ClusterId [ClusterId] <p>Specifies the ID of a cluster. The instance group to which the automatic scaling policy is applied is within this cluster.</p>
-- * AutoScalingPolicy [AutoScalingPolicy] <p>Specifies the definition of the automatic scaling policy.</p>
-- Required key: ClusterId
-- Required key: InstanceGroupId
-- Required key: AutoScalingPolicy
-- @return PutAutoScalingPolicyInput structure as a key-value pair table
function M.PutAutoScalingPolicyInput(args)
	assert(args, "You must provide an argument table when creating PutAutoScalingPolicyInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceGroupId"] = args["InstanceGroupId"],
		["ClusterId"] = args["ClusterId"],
		["AutoScalingPolicy"] = args["AutoScalingPolicy"],
	}
	asserts.AssertPutAutoScalingPolicyInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListClustersOutput = { ["Marker"] = true, ["Clusters"] = true, nil }

function asserts.AssertListClustersOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListClustersOutput to be of type 'table'")
	if struct["Marker"] then asserts.AssertMarker(struct["Marker"]) end
	if struct["Clusters"] then asserts.AssertClusterSummaryList(struct["Clusters"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListClustersOutput[k], "ListClustersOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListClustersOutput
-- <p>This contains a ClusterSummaryList with the cluster details; for example, the cluster IDs, names, and status.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [Marker] <p>The pagination token that indicates the next set of results to retrieve.</p>
-- * Clusters [ClusterSummaryList] <p>The list of clusters for the account based on the given filters.</p>
-- @return ListClustersOutput structure as a key-value pair table
function M.ListClustersOutput(args)
	assert(args, "You must provide an argument table when creating ListClustersOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["Clusters"] = args["Clusters"],
	}
	asserts.AssertListClustersOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListInstancesOutput = { ["Marker"] = true, ["Instances"] = true, nil }

function asserts.AssertListInstancesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListInstancesOutput to be of type 'table'")
	if struct["Marker"] then asserts.AssertMarker(struct["Marker"]) end
	if struct["Instances"] then asserts.AssertInstanceList(struct["Instances"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListInstancesOutput[k], "ListInstancesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListInstancesOutput
-- <p>This output contains the list of instances.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [Marker] <p>The pagination token that indicates the next set of results to retrieve.</p>
-- * Instances [InstanceList] <p>The list of instances for the cluster and given filters.</p>
-- @return ListInstancesOutput structure as a key-value pair table
function M.ListInstancesOutput(args)
	assert(args, "You must provide an argument table when creating ListInstancesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["Instances"] = args["Instances"],
	}
	asserts.AssertListInstancesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InstanceResizePolicy = { ["InstanceTerminationTimeout"] = true, ["InstancesToProtect"] = true, ["InstancesToTerminate"] = true, nil }

function asserts.AssertInstanceResizePolicy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceResizePolicy to be of type 'table'")
	if struct["InstanceTerminationTimeout"] then asserts.AssertInteger(struct["InstanceTerminationTimeout"]) end
	if struct["InstancesToProtect"] then asserts.AssertEC2InstanceIdsList(struct["InstancesToProtect"]) end
	if struct["InstancesToTerminate"] then asserts.AssertEC2InstanceIdsList(struct["InstancesToTerminate"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstanceResizePolicy[k], "InstanceResizePolicy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceResizePolicy
-- <p>Custom policy for requesting termination protection or termination of specific instances when shrinking an instance group.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceTerminationTimeout [Integer] <p>Decommissioning timeout override for the specific list of instances to be terminated.</p>
-- * InstancesToProtect [EC2InstanceIdsList] <p>Specific list of instances to be protected when shrinking an instance group.</p>
-- * InstancesToTerminate [EC2InstanceIdsList] <p>Specific list of instances to be terminated when shrinking an instance group.</p>
-- @return InstanceResizePolicy structure as a key-value pair table
function M.InstanceResizePolicy(args)
	assert(args, "You must provide an argument table when creating InstanceResizePolicy")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceTerminationTimeout"] = args["InstanceTerminationTimeout"],
		["InstancesToProtect"] = args["InstancesToProtect"],
		["InstancesToTerminate"] = args["InstancesToTerminate"],
	}
	asserts.AssertInstanceResizePolicy(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InstanceGroupDetail = { ["ReadyDateTime"] = true, ["Name"] = true, ["InstanceRole"] = true, ["EndDateTime"] = true, ["InstanceRequestCount"] = true, ["State"] = true, ["BidPrice"] = true, ["LastStateChangeReason"] = true, ["StartDateTime"] = true, ["InstanceGroupId"] = true, ["InstanceRunningCount"] = true, ["CreationDateTime"] = true, ["InstanceType"] = true, ["Market"] = true, nil }

function asserts.AssertInstanceGroupDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceGroupDetail to be of type 'table'")
	assert(struct["Market"], "Expected key Market to exist in table")
	assert(struct["InstanceRole"], "Expected key InstanceRole to exist in table")
	assert(struct["InstanceType"], "Expected key InstanceType to exist in table")
	assert(struct["InstanceRequestCount"], "Expected key InstanceRequestCount to exist in table")
	assert(struct["InstanceRunningCount"], "Expected key InstanceRunningCount to exist in table")
	assert(struct["State"], "Expected key State to exist in table")
	assert(struct["CreationDateTime"], "Expected key CreationDateTime to exist in table")
	if struct["ReadyDateTime"] then asserts.AssertDate(struct["ReadyDateTime"]) end
	if struct["Name"] then asserts.AssertXmlStringMaxLen256(struct["Name"]) end
	if struct["InstanceRole"] then asserts.AssertInstanceRoleType(struct["InstanceRole"]) end
	if struct["EndDateTime"] then asserts.AssertDate(struct["EndDateTime"]) end
	if struct["InstanceRequestCount"] then asserts.AssertInteger(struct["InstanceRequestCount"]) end
	if struct["State"] then asserts.AssertInstanceGroupState(struct["State"]) end
	if struct["BidPrice"] then asserts.AssertXmlStringMaxLen256(struct["BidPrice"]) end
	if struct["LastStateChangeReason"] then asserts.AssertXmlString(struct["LastStateChangeReason"]) end
	if struct["StartDateTime"] then asserts.AssertDate(struct["StartDateTime"]) end
	if struct["InstanceGroupId"] then asserts.AssertXmlStringMaxLen256(struct["InstanceGroupId"]) end
	if struct["InstanceRunningCount"] then asserts.AssertInteger(struct["InstanceRunningCount"]) end
	if struct["CreationDateTime"] then asserts.AssertDate(struct["CreationDateTime"]) end
	if struct["InstanceType"] then asserts.AssertInstanceType(struct["InstanceType"]) end
	if struct["Market"] then asserts.AssertMarketType(struct["Market"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstanceGroupDetail[k], "InstanceGroupDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceGroupDetail
-- <p>Detailed information about an instance group.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReadyDateTime [Date] <p>The date/time the instance group was available to the cluster.</p>
-- * Name [XmlStringMaxLen256] <p>Friendly name for the instance group.</p>
-- * InstanceRole [InstanceRoleType] <p>Instance group role in the cluster</p>
-- * EndDateTime [Date] <p>The date/time the instance group was terminated.</p>
-- * InstanceRequestCount [Integer] <p>Target number of instances to run in the instance group.</p>
-- * State [InstanceGroupState] <p>State of instance group. The following values are deprecated: STARTING, TERMINATED, and FAILED.</p>
-- * BidPrice [XmlStringMaxLen256] <p>The maximum Spot price your are willing to pay for EC2 instances.</p> <p>An optional, nullable field that applies if the <code>MarketType</code> for the instance group is specified as <code>SPOT</code>. Specified in USD. If the value is NULL and <code>SPOT</code> is specified, the maximum Spot price is set equal to the On-Demand price.</p>
-- * LastStateChangeReason [XmlString] <p>Details regarding the state of the instance group.</p>
-- * StartDateTime [Date] <p>The date/time the instance group was started.</p>
-- * InstanceGroupId [XmlStringMaxLen256] <p>Unique identifier for the instance group.</p>
-- * InstanceRunningCount [Integer] <p>Actual count of running instances.</p>
-- * CreationDateTime [Date] <p>The date/time the instance group was created.</p>
-- * InstanceType [InstanceType] <p>EC2 instance type.</p>
-- * Market [MarketType] <p>Market type of the EC2 instances used to create a cluster node.</p>
-- Required key: Market
-- Required key: InstanceRole
-- Required key: InstanceType
-- Required key: InstanceRequestCount
-- Required key: InstanceRunningCount
-- Required key: State
-- Required key: CreationDateTime
-- @return InstanceGroupDetail structure as a key-value pair table
function M.InstanceGroupDetail(args)
	assert(args, "You must provide an argument table when creating InstanceGroupDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReadyDateTime"] = args["ReadyDateTime"],
		["Name"] = args["Name"],
		["InstanceRole"] = args["InstanceRole"],
		["EndDateTime"] = args["EndDateTime"],
		["InstanceRequestCount"] = args["InstanceRequestCount"],
		["State"] = args["State"],
		["BidPrice"] = args["BidPrice"],
		["LastStateChangeReason"] = args["LastStateChangeReason"],
		["StartDateTime"] = args["StartDateTime"],
		["InstanceGroupId"] = args["InstanceGroupId"],
		["InstanceRunningCount"] = args["InstanceRunningCount"],
		["CreationDateTime"] = args["CreationDateTime"],
		["InstanceType"] = args["InstanceType"],
		["Market"] = args["Market"],
	}
	asserts.AssertInstanceGroupDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EbsVolume = { ["Device"] = true, ["VolumeId"] = true, nil }

function asserts.AssertEbsVolume(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EbsVolume to be of type 'table'")
	if struct["Device"] then asserts.AssertString(struct["Device"]) end
	if struct["VolumeId"] then asserts.AssertString(struct["VolumeId"]) end
	for k,_ in pairs(struct) do
		assert(keys.EbsVolume[k], "EbsVolume contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EbsVolume
-- <p>EBS block device that's attached to an EC2 instance.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Device [String] <p>The device name that is exposed to the instance, such as /dev/sdh.</p>
-- * VolumeId [String] <p>The volume identifier of the EBS volume.</p>
-- @return EbsVolume structure as a key-value pair table
function M.EbsVolume(args)
	assert(args, "You must provide an argument table when creating EbsVolume")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Device"] = args["Device"],
		["VolumeId"] = args["VolumeId"],
	}
	asserts.AssertEbsVolume(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeSecurityConfigurationInput = { ["Name"] = true, nil }

function asserts.AssertDescribeSecurityConfigurationInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSecurityConfigurationInput to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertXmlString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeSecurityConfigurationInput[k], "DescribeSecurityConfigurationInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSecurityConfigurationInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [XmlString] <p>The name of the security configuration.</p>
-- Required key: Name
-- @return DescribeSecurityConfigurationInput structure as a key-value pair table
function M.DescribeSecurityConfigurationInput(args)
	assert(args, "You must provide an argument table when creating DescribeSecurityConfigurationInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertDescribeSecurityConfigurationInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AddJobFlowStepsInput = { ["Steps"] = true, ["JobFlowId"] = true, nil }

function asserts.AssertAddJobFlowStepsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddJobFlowStepsInput to be of type 'table'")
	assert(struct["JobFlowId"], "Expected key JobFlowId to exist in table")
	assert(struct["Steps"], "Expected key Steps to exist in table")
	if struct["Steps"] then asserts.AssertStepConfigList(struct["Steps"]) end
	if struct["JobFlowId"] then asserts.AssertXmlStringMaxLen256(struct["JobFlowId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddJobFlowStepsInput[k], "AddJobFlowStepsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddJobFlowStepsInput
-- <p> The input argument to the <a>AddJobFlowSteps</a> operation. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Steps [StepConfigList] <p> A list of <a>StepConfig</a> to be executed by the job flow. </p>
-- * JobFlowId [XmlStringMaxLen256] <p>A string that uniquely identifies the job flow. This identifier is returned by <a>RunJobFlow</a> and can also be obtained from <a>ListClusters</a>. </p>
-- Required key: JobFlowId
-- Required key: Steps
-- @return AddJobFlowStepsInput structure as a key-value pair table
function M.AddJobFlowStepsInput(args)
	assert(args, "You must provide an argument table when creating AddJobFlowStepsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Steps"] = args["Steps"],
		["JobFlowId"] = args["JobFlowId"],
	}
	asserts.AssertAddJobFlowStepsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InstanceFleetStatus = { ["Timeline"] = true, ["State"] = true, ["StateChangeReason"] = true, nil }

function asserts.AssertInstanceFleetStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceFleetStatus to be of type 'table'")
	if struct["Timeline"] then asserts.AssertInstanceFleetTimeline(struct["Timeline"]) end
	if struct["State"] then asserts.AssertInstanceFleetState(struct["State"]) end
	if struct["StateChangeReason"] then asserts.AssertInstanceFleetStateChangeReason(struct["StateChangeReason"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstanceFleetStatus[k], "InstanceFleetStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceFleetStatus
-- <p>The status of the instance fleet.</p> <note> <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.</p> </note>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Timeline [InstanceFleetTimeline] <p>Provides historical timestamps for the instance fleet, including the time of creation, the time it became ready to run jobs, and the time of termination.</p>
-- * State [InstanceFleetState] <p>A code representing the instance fleet status.</p> <ul> <li> <p> <code>PROVISIONING</code>—The instance fleet is provisioning EC2 resources and is not yet ready to run jobs.</p> </li> <li> <p> <code>BOOTSTRAPPING</code>—EC2 instances and other resources have been provisioned and the bootstrap actions specified for the instances are underway.</p> </li> <li> <p> <code>RUNNING</code>—EC2 instances and other resources are running. They are either executing jobs or waiting to execute jobs.</p> </li> <li> <p> <code>RESIZING</code>—A resize operation is underway. EC2 instances are either being added or removed.</p> </li> <li> <p> <code>SUSPENDED</code>—A resize operation could not complete. Existing EC2 instances are running, but instances can't be added or removed.</p> </li> <li> <p> <code>TERMINATING</code>—The instance fleet is terminating EC2 instances.</p> </li> <li> <p> <code>TERMINATED</code>—The instance fleet is no longer active, and all EC2 instances have been terminated.</p> </li> </ul>
-- * StateChangeReason [InstanceFleetStateChangeReason] <p>Provides status change reason details for the instance fleet.</p>
-- @return InstanceFleetStatus structure as a key-value pair table
function M.InstanceFleetStatus(args)
	assert(args, "You must provide an argument table when creating InstanceFleetStatus")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Timeline"] = args["Timeline"],
		["State"] = args["State"],
		["StateChangeReason"] = args["StateChangeReason"],
	}
	asserts.AssertInstanceFleetStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeClusterInput = { ["ClusterId"] = true, nil }

function asserts.AssertDescribeClusterInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeClusterInput to be of type 'table'")
	assert(struct["ClusterId"], "Expected key ClusterId to exist in table")
	if struct["ClusterId"] then asserts.AssertClusterId(struct["ClusterId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeClusterInput[k], "DescribeClusterInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeClusterInput
-- <p>This input determines which cluster to describe.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClusterId [ClusterId] <p>The identifier of the cluster to describe.</p>
-- Required key: ClusterId
-- @return DescribeClusterInput structure as a key-value pair table
function M.DescribeClusterInput(args)
	assert(args, "You must provide an argument table when creating DescribeClusterInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ClusterId"] = args["ClusterId"],
	}
	asserts.AssertDescribeClusterInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListStepsOutput = { ["Marker"] = true, ["Steps"] = true, nil }

function asserts.AssertListStepsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListStepsOutput to be of type 'table'")
	if struct["Marker"] then asserts.AssertMarker(struct["Marker"]) end
	if struct["Steps"] then asserts.AssertStepSummaryList(struct["Steps"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListStepsOutput[k], "ListStepsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListStepsOutput
-- <p>This output contains the list of steps returned in reverse order. This means that the last step is the first element in the list.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [Marker] <p>The pagination token that indicates the next set of results to retrieve.</p>
-- * Steps [StepSummaryList] <p>The filtered list of steps for the cluster.</p>
-- @return ListStepsOutput structure as a key-value pair table
function M.ListStepsOutput(args)
	assert(args, "You must provide an argument table when creating ListStepsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["Steps"] = args["Steps"],
	}
	asserts.AssertListStepsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ScriptBootstrapActionConfig = { ["Path"] = true, ["Args"] = true, nil }

function asserts.AssertScriptBootstrapActionConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScriptBootstrapActionConfig to be of type 'table'")
	assert(struct["Path"], "Expected key Path to exist in table")
	if struct["Path"] then asserts.AssertXmlString(struct["Path"]) end
	if struct["Args"] then asserts.AssertXmlStringList(struct["Args"]) end
	for k,_ in pairs(struct) do
		assert(keys.ScriptBootstrapActionConfig[k], "ScriptBootstrapActionConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScriptBootstrapActionConfig
-- <p>Configuration of the script to run during a bootstrap action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Path [XmlString] <p>Location of the script to run during a bootstrap action. Can be either a location in Amazon S3 or on a local file system.</p>
-- * Args [XmlStringList] <p>A list of command line arguments to pass to the bootstrap action script.</p>
-- Required key: Path
-- @return ScriptBootstrapActionConfig structure as a key-value pair table
function M.ScriptBootstrapActionConfig(args)
	assert(args, "You must provide an argument table when creating ScriptBootstrapActionConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Path"] = args["Path"],
		["Args"] = args["Args"],
	}
	asserts.AssertScriptBootstrapActionConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AddInstanceFleetInput = { ["InstanceFleet"] = true, ["ClusterId"] = true, nil }

function asserts.AssertAddInstanceFleetInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddInstanceFleetInput to be of type 'table'")
	assert(struct["ClusterId"], "Expected key ClusterId to exist in table")
	assert(struct["InstanceFleet"], "Expected key InstanceFleet to exist in table")
	if struct["InstanceFleet"] then asserts.AssertInstanceFleetConfig(struct["InstanceFleet"]) end
	if struct["ClusterId"] then asserts.AssertXmlStringMaxLen256(struct["ClusterId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddInstanceFleetInput[k], "AddInstanceFleetInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddInstanceFleetInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceFleet [InstanceFleetConfig] <p>Specifies the configuration of the instance fleet.</p>
-- * ClusterId [XmlStringMaxLen256] <p>The unique identifier of the cluster.</p>
-- Required key: ClusterId
-- Required key: InstanceFleet
-- @return AddInstanceFleetInput structure as a key-value pair table
function M.AddInstanceFleetInput(args)
	assert(args, "You must provide an argument table when creating AddInstanceFleetInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceFleet"] = args["InstanceFleet"],
		["ClusterId"] = args["ClusterId"],
	}
	asserts.AssertAddInstanceFleetInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RemoveAutoScalingPolicyInput = { ["InstanceGroupId"] = true, ["ClusterId"] = true, nil }

function asserts.AssertRemoveAutoScalingPolicyInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveAutoScalingPolicyInput to be of type 'table'")
	assert(struct["ClusterId"], "Expected key ClusterId to exist in table")
	assert(struct["InstanceGroupId"], "Expected key InstanceGroupId to exist in table")
	if struct["InstanceGroupId"] then asserts.AssertInstanceGroupId(struct["InstanceGroupId"]) end
	if struct["ClusterId"] then asserts.AssertClusterId(struct["ClusterId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RemoveAutoScalingPolicyInput[k], "RemoveAutoScalingPolicyInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveAutoScalingPolicyInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceGroupId [InstanceGroupId] <p>Specifies the ID of the instance group to which the scaling policy is applied.</p>
-- * ClusterId [ClusterId] <p>Specifies the ID of a cluster. The instance group to which the automatic scaling policy is applied is within this cluster.</p>
-- Required key: ClusterId
-- Required key: InstanceGroupId
-- @return RemoveAutoScalingPolicyInput structure as a key-value pair table
function M.RemoveAutoScalingPolicyInput(args)
	assert(args, "You must provide an argument table when creating RemoveAutoScalingPolicyInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceGroupId"] = args["InstanceGroupId"],
		["ClusterId"] = args["ClusterId"],
	}
	asserts.AssertRemoveAutoScalingPolicyInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InstanceGroupStatus = { ["Timeline"] = true, ["State"] = true, ["StateChangeReason"] = true, nil }

function asserts.AssertInstanceGroupStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceGroupStatus to be of type 'table'")
	if struct["Timeline"] then asserts.AssertInstanceGroupTimeline(struct["Timeline"]) end
	if struct["State"] then asserts.AssertInstanceGroupState(struct["State"]) end
	if struct["StateChangeReason"] then asserts.AssertInstanceGroupStateChangeReason(struct["StateChangeReason"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstanceGroupStatus[k], "InstanceGroupStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceGroupStatus
-- <p>The details of the instance group status.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Timeline [InstanceGroupTimeline] <p>The timeline of the instance group status over time.</p>
-- * State [InstanceGroupState] <p>The current state of the instance group.</p>
-- * StateChangeReason [InstanceGroupStateChangeReason] <p>The status change reason details for the instance group.</p>
-- @return InstanceGroupStatus structure as a key-value pair table
function M.InstanceGroupStatus(args)
	assert(args, "You must provide an argument table when creating InstanceGroupStatus")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Timeline"] = args["Timeline"],
		["State"] = args["State"],
		["StateChangeReason"] = args["StateChangeReason"],
	}
	asserts.AssertInstanceGroupStatus(all_args)
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
-- <p>This output indicates the result of adding tags to a resource.</p>
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

keys.EbsBlockDeviceConfig = { ["VolumeSpecification"] = true, ["VolumesPerInstance"] = true, nil }

function asserts.AssertEbsBlockDeviceConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EbsBlockDeviceConfig to be of type 'table'")
	assert(struct["VolumeSpecification"], "Expected key VolumeSpecification to exist in table")
	if struct["VolumeSpecification"] then asserts.AssertVolumeSpecification(struct["VolumeSpecification"]) end
	if struct["VolumesPerInstance"] then asserts.AssertInteger(struct["VolumesPerInstance"]) end
	for k,_ in pairs(struct) do
		assert(keys.EbsBlockDeviceConfig[k], "EbsBlockDeviceConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EbsBlockDeviceConfig
-- <p>Configuration of requested EBS block device associated with the instance group with count of volumes that will be associated to every instance.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VolumeSpecification [VolumeSpecification] <p>EBS volume specifications such as volume type, IOPS, and size (GiB) that will be requested for the EBS volume attached to an EC2 instance in the cluster.</p>
-- * VolumesPerInstance [Integer] <p>Number of EBS volumes with a specific volume configuration that will be associated with every instance in the instance group</p>
-- Required key: VolumeSpecification
-- @return EbsBlockDeviceConfig structure as a key-value pair table
function M.EbsBlockDeviceConfig(args)
	assert(args, "You must provide an argument table when creating EbsBlockDeviceConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VolumeSpecification"] = args["VolumeSpecification"],
		["VolumesPerInstance"] = args["VolumesPerInstance"],
	}
	asserts.AssertEbsBlockDeviceConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SetTerminationProtectionInput = { ["TerminationProtected"] = true, ["JobFlowIds"] = true, nil }

function asserts.AssertSetTerminationProtectionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetTerminationProtectionInput to be of type 'table'")
	assert(struct["JobFlowIds"], "Expected key JobFlowIds to exist in table")
	assert(struct["TerminationProtected"], "Expected key TerminationProtected to exist in table")
	if struct["TerminationProtected"] then asserts.AssertBoolean(struct["TerminationProtected"]) end
	if struct["JobFlowIds"] then asserts.AssertXmlStringList(struct["JobFlowIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetTerminationProtectionInput[k], "SetTerminationProtectionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetTerminationProtectionInput
-- <p> The input argument to the <a>TerminationProtection</a> operation. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TerminationProtected [Boolean] <p>A Boolean that indicates whether to protect the cluster and prevent the Amazon EC2 instances in the cluster from shutting down due to API calls, user intervention, or job-flow error.</p>
-- * JobFlowIds [XmlStringList] <p> A list of strings that uniquely identify the clusters to protect. This identifier is returned by <a>RunJobFlow</a> and can also be obtained from <a>DescribeJobFlows</a> . </p>
-- Required key: JobFlowIds
-- Required key: TerminationProtected
-- @return SetTerminationProtectionInput structure as a key-value pair table
function M.SetTerminationProtectionInput(args)
	assert(args, "You must provide an argument table when creating SetTerminationProtectionInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TerminationProtected"] = args["TerminationProtected"],
		["JobFlowIds"] = args["JobFlowIds"],
	}
	asserts.AssertSetTerminationProtectionInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InstanceFleetConfig = { ["Name"] = true, ["InstanceFleetType"] = true, ["LaunchSpecifications"] = true, ["TargetSpotCapacity"] = true, ["InstanceTypeConfigs"] = true, ["TargetOnDemandCapacity"] = true, nil }

function asserts.AssertInstanceFleetConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceFleetConfig to be of type 'table'")
	assert(struct["InstanceFleetType"], "Expected key InstanceFleetType to exist in table")
	if struct["Name"] then asserts.AssertXmlStringMaxLen256(struct["Name"]) end
	if struct["InstanceFleetType"] then asserts.AssertInstanceFleetType(struct["InstanceFleetType"]) end
	if struct["LaunchSpecifications"] then asserts.AssertInstanceFleetProvisioningSpecifications(struct["LaunchSpecifications"]) end
	if struct["TargetSpotCapacity"] then asserts.AssertWholeNumber(struct["TargetSpotCapacity"]) end
	if struct["InstanceTypeConfigs"] then asserts.AssertInstanceTypeConfigList(struct["InstanceTypeConfigs"]) end
	if struct["TargetOnDemandCapacity"] then asserts.AssertWholeNumber(struct["TargetOnDemandCapacity"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstanceFleetConfig[k], "InstanceFleetConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceFleetConfig
-- <p>The configuration that defines an instance fleet.</p> <note> <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.</p> </note>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [XmlStringMaxLen256] <p>The friendly name of the instance fleet.</p>
-- * InstanceFleetType [InstanceFleetType] <p>The node type that the instance fleet hosts. Valid values are MASTER,CORE,and TASK.</p>
-- * LaunchSpecifications [InstanceFleetProvisioningSpecifications] <p>The launch specification for the instance fleet.</p>
-- * TargetSpotCapacity [WholeNumber] <p>The target capacity of Spot units for the instance fleet, which determines how many Spot instances to provision. When the instance fleet launches, Amazon EMR tries to provision Spot instances as specified by <a>InstanceTypeConfig</a>. Each instance configuration has a specified <code>WeightedCapacity</code>. When a Spot instance is provisioned, the <code>WeightedCapacity</code> units count toward the target capacity. Amazon EMR provisions instances until the target capacity is totally fulfilled, even if this results in an overage. For example, if there are 2 units remaining to fulfill capacity, and Amazon EMR can only provision an instance with a <code>WeightedCapacity</code> of 5 units, the instance is provisioned, and the target capacity is exceeded by 3 units.</p> <note> <p>If not specified or set to 0, only On-Demand instances are provisioned for the instance fleet. At least one of <code>TargetSpotCapacity</code> and <code>TargetOnDemandCapacity</code> should be greater than 0. For a master instance fleet, only one of <code>TargetSpotCapacity</code> and <code>TargetOnDemandCapacity</code> can be specified, and its value must be 1.</p> </note>
-- * InstanceTypeConfigs [InstanceTypeConfigList] <p>The instance type configurations that define the EC2 instances in the instance fleet.</p>
-- * TargetOnDemandCapacity [WholeNumber] <p>The target capacity of On-Demand units for the instance fleet, which determines how many On-Demand instances to provision. When the instance fleet launches, Amazon EMR tries to provision On-Demand instances as specified by <a>InstanceTypeConfig</a>. Each instance configuration has a specified <code>WeightedCapacity</code>. When an On-Demand instance is provisioned, the <code>WeightedCapacity</code> units count toward the target capacity. Amazon EMR provisions instances until the target capacity is totally fulfilled, even if this results in an overage. For example, if there are 2 units remaining to fulfill capacity, and Amazon EMR can only provision an instance with a <code>WeightedCapacity</code> of 5 units, the instance is provisioned, and the target capacity is exceeded by 3 units.</p> <note> <p>If not specified or set to 0, only Spot instances are provisioned for the instance fleet using <code>TargetSpotCapacity</code>. At least one of <code>TargetSpotCapacity</code> and <code>TargetOnDemandCapacity</code> should be greater than 0. For a master instance fleet, only one of <code>TargetSpotCapacity</code> and <code>TargetOnDemandCapacity</code> can be specified, and its value must be 1.</p> </note>
-- Required key: InstanceFleetType
-- @return InstanceFleetConfig structure as a key-value pair table
function M.InstanceFleetConfig(args)
	assert(args, "You must provide an argument table when creating InstanceFleetConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["InstanceFleetType"] = args["InstanceFleetType"],
		["LaunchSpecifications"] = args["LaunchSpecifications"],
		["TargetSpotCapacity"] = args["TargetSpotCapacity"],
		["InstanceTypeConfigs"] = args["InstanceTypeConfigs"],
		["TargetOnDemandCapacity"] = args["TargetOnDemandCapacity"],
	}
	asserts.AssertInstanceFleetConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MetricDimension = { ["Value"] = true, ["Key"] = true, nil }

function asserts.AssertMetricDimension(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MetricDimension to be of type 'table'")
	if struct["Value"] then asserts.AssertString(struct["Value"]) end
	if struct["Key"] then asserts.AssertString(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.MetricDimension[k], "MetricDimension contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MetricDimension
-- <p>A CloudWatch dimension, which is specified using a <code>Key</code> (known as a <code>Name</code> in CloudWatch), <code>Value</code> pair. By default, Amazon EMR uses one dimension whose <code>Key</code> is <code>JobFlowID</code> and <code>Value</code> is a variable representing the cluster ID, which is <code>${emr.clusterId}</code>. This enables the rule to bootstrap when the cluster ID becomes available.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [String] <p>The dimension value.</p>
-- * Key [String] <p>The dimension name.</p>
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
		["Value"] = args["Value"],
		["Key"] = args["Key"],
	}
	asserts.AssertMetricDimension(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AddJobFlowStepsOutput = { ["StepIds"] = true, nil }

function asserts.AssertAddJobFlowStepsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddJobFlowStepsOutput to be of type 'table'")
	if struct["StepIds"] then asserts.AssertStepIdsList(struct["StepIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddJobFlowStepsOutput[k], "AddJobFlowStepsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddJobFlowStepsOutput
-- <p> The output for the <a>AddJobFlowSteps</a> operation. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StepIds [StepIdsList] <p>The identifiers of the list of steps added to the job flow.</p>
-- @return AddJobFlowStepsOutput structure as a key-value pair table
function M.AddJobFlowStepsOutput(args)
	assert(args, "You must provide an argument table when creating AddJobFlowStepsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StepIds"] = args["StepIds"],
	}
	asserts.AssertAddJobFlowStepsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InstanceGroup = { ["RequestedInstanceCount"] = true, ["Status"] = true, ["Name"] = true, ["InstanceGroupType"] = true, ["EbsBlockDevices"] = true, ["AutoScalingPolicy"] = true, ["ShrinkPolicy"] = true, ["Id"] = true, ["EbsOptimized"] = true, ["BidPrice"] = true, ["Configurations"] = true, ["InstanceType"] = true, ["Market"] = true, ["RunningInstanceCount"] = true, nil }

function asserts.AssertInstanceGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceGroup to be of type 'table'")
	if struct["RequestedInstanceCount"] then asserts.AssertInteger(struct["RequestedInstanceCount"]) end
	if struct["Status"] then asserts.AssertInstanceGroupStatus(struct["Status"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["InstanceGroupType"] then asserts.AssertInstanceGroupType(struct["InstanceGroupType"]) end
	if struct["EbsBlockDevices"] then asserts.AssertEbsBlockDeviceList(struct["EbsBlockDevices"]) end
	if struct["AutoScalingPolicy"] then asserts.AssertAutoScalingPolicyDescription(struct["AutoScalingPolicy"]) end
	if struct["ShrinkPolicy"] then asserts.AssertShrinkPolicy(struct["ShrinkPolicy"]) end
	if struct["Id"] then asserts.AssertInstanceGroupId(struct["Id"]) end
	if struct["EbsOptimized"] then asserts.AssertBooleanObject(struct["EbsOptimized"]) end
	if struct["BidPrice"] then asserts.AssertString(struct["BidPrice"]) end
	if struct["Configurations"] then asserts.AssertConfigurationList(struct["Configurations"]) end
	if struct["InstanceType"] then asserts.AssertInstanceType(struct["InstanceType"]) end
	if struct["Market"] then asserts.AssertMarketType(struct["Market"]) end
	if struct["RunningInstanceCount"] then asserts.AssertInteger(struct["RunningInstanceCount"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstanceGroup[k], "InstanceGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceGroup
-- <p>This entity represents an instance group, which is a group of instances that have common purpose. For example, CORE instance group is used for HDFS.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RequestedInstanceCount [Integer] <p>The target number of instances for the instance group.</p>
-- * Status [InstanceGroupStatus] <p>The current status of the instance group.</p>
-- * Name [String] <p>The name of the instance group.</p>
-- * InstanceGroupType [InstanceGroupType] <p>The type of the instance group. Valid values are MASTER, CORE or TASK.</p>
-- * EbsBlockDevices [EbsBlockDeviceList] <p>The EBS block devices that are mapped to this instance group.</p>
-- * AutoScalingPolicy [AutoScalingPolicyDescription] <p>An automatic scaling policy for a core instance group or task instance group in an Amazon EMR cluster. The automatic scaling policy defines how an instance group dynamically adds and terminates EC2 instances in response to the value of a CloudWatch metric. See PutAutoScalingPolicy.</p>
-- * ShrinkPolicy [ShrinkPolicy] <p>Policy for customizing shrink operations.</p>
-- * Id [InstanceGroupId] <p>The identifier of the instance group.</p>
-- * EbsOptimized [BooleanObject] <p>If the instance group is EBS-optimized. An Amazon EBS-optimized instance uses an optimized configuration stack and provides additional, dedicated capacity for Amazon EBS I/O.</p>
-- * BidPrice [String] <p>The maximum Spot price your are willing to pay for EC2 instances.</p> <p>An optional, nullable field that applies if the <code>MarketType</code> for the instance group is specified as <code>SPOT</code>. Specify the maximum spot price in USD. If the value is NULL and <code>SPOT</code> is specified, the maximum Spot price is set equal to the On-Demand price.</p>
-- * Configurations [ConfigurationList] <note> <p>Amazon EMR releases 4.x or later.</p> </note> <p>The list of configurations supplied for an EMR cluster instance group. You can specify a separate configuration for each instance group (master, core, and task).</p>
-- * InstanceType [InstanceType] <p>The EC2 instance type for all instances in the instance group.</p>
-- * Market [MarketType] <p>The marketplace to provision instances for this group. Valid values are ON_DEMAND or SPOT.</p>
-- * RunningInstanceCount [Integer] <p>The number of instances currently running in this instance group.</p>
-- @return InstanceGroup structure as a key-value pair table
function M.InstanceGroup(args)
	assert(args, "You must provide an argument table when creating InstanceGroup")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RequestedInstanceCount"] = args["RequestedInstanceCount"],
		["Status"] = args["Status"],
		["Name"] = args["Name"],
		["InstanceGroupType"] = args["InstanceGroupType"],
		["EbsBlockDevices"] = args["EbsBlockDevices"],
		["AutoScalingPolicy"] = args["AutoScalingPolicy"],
		["ShrinkPolicy"] = args["ShrinkPolicy"],
		["Id"] = args["Id"],
		["EbsOptimized"] = args["EbsOptimized"],
		["BidPrice"] = args["BidPrice"],
		["Configurations"] = args["Configurations"],
		["InstanceType"] = args["InstanceType"],
		["Market"] = args["Market"],
		["RunningInstanceCount"] = args["RunningInstanceCount"],
	}
	asserts.AssertInstanceGroup(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateSecurityConfigurationInput = { ["SecurityConfiguration"] = true, ["Name"] = true, nil }

function asserts.AssertCreateSecurityConfigurationInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSecurityConfigurationInput to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["SecurityConfiguration"], "Expected key SecurityConfiguration to exist in table")
	if struct["SecurityConfiguration"] then asserts.AssertString(struct["SecurityConfiguration"]) end
	if struct["Name"] then asserts.AssertXmlString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateSecurityConfigurationInput[k], "CreateSecurityConfigurationInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSecurityConfigurationInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SecurityConfiguration [String] <p>The security configuration details in JSON format. For JSON parameters and examples, see <a href="http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-security-configurations.html">Use Security Configurations to Set Up Cluster Security</a> in the <i>Amazon EMR Management Guide</i>.</p>
-- * Name [XmlString] <p>The name of the security configuration.</p>
-- Required key: Name
-- Required key: SecurityConfiguration
-- @return CreateSecurityConfigurationInput structure as a key-value pair table
function M.CreateSecurityConfigurationInput(args)
	assert(args, "You must provide an argument table when creating CreateSecurityConfigurationInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SecurityConfiguration"] = args["SecurityConfiguration"],
		["Name"] = args["Name"],
	}
	asserts.AssertCreateSecurityConfigurationInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListInstancesInput = { ["InstanceGroupTypes"] = true, ["InstanceFleetType"] = true, ["InstanceFleetId"] = true, ["ClusterId"] = true, ["InstanceStates"] = true, ["Marker"] = true, ["InstanceGroupId"] = true, nil }

function asserts.AssertListInstancesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListInstancesInput to be of type 'table'")
	assert(struct["ClusterId"], "Expected key ClusterId to exist in table")
	if struct["InstanceGroupTypes"] then asserts.AssertInstanceGroupTypeList(struct["InstanceGroupTypes"]) end
	if struct["InstanceFleetType"] then asserts.AssertInstanceFleetType(struct["InstanceFleetType"]) end
	if struct["InstanceFleetId"] then asserts.AssertInstanceFleetId(struct["InstanceFleetId"]) end
	if struct["ClusterId"] then asserts.AssertClusterId(struct["ClusterId"]) end
	if struct["InstanceStates"] then asserts.AssertInstanceStateList(struct["InstanceStates"]) end
	if struct["Marker"] then asserts.AssertMarker(struct["Marker"]) end
	if struct["InstanceGroupId"] then asserts.AssertInstanceGroupId(struct["InstanceGroupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListInstancesInput[k], "ListInstancesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListInstancesInput
-- <p>This input determines which instances to list.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceGroupTypes [InstanceGroupTypeList] <p>The type of instance group for which to list the instances.</p>
-- * InstanceFleetType [InstanceFleetType] <p>The node type of the instance fleet. For example MASTER, CORE, or TASK.</p>
-- * InstanceFleetId [InstanceFleetId] <p>The unique identifier of the instance fleet.</p>
-- * ClusterId [ClusterId] <p>The identifier of the cluster for which to list the instances.</p>
-- * InstanceStates [InstanceStateList] <p>A list of instance states that will filter the instances returned with this request.</p>
-- * Marker [Marker] <p>The pagination token that indicates the next set of results to retrieve.</p>
-- * InstanceGroupId [InstanceGroupId] <p>The identifier of the instance group for which to list the instances.</p>
-- Required key: ClusterId
-- @return ListInstancesInput structure as a key-value pair table
function M.ListInstancesInput(args)
	assert(args, "You must provide an argument table when creating ListInstancesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceGroupTypes"] = args["InstanceGroupTypes"],
		["InstanceFleetType"] = args["InstanceFleetType"],
		["InstanceFleetId"] = args["InstanceFleetId"],
		["ClusterId"] = args["ClusterId"],
		["InstanceStates"] = args["InstanceStates"],
		["Marker"] = args["Marker"],
		["InstanceGroupId"] = args["InstanceGroupId"],
	}
	asserts.AssertListInstancesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.KerberosAttributes = { ["ADDomainJoinPassword"] = true, ["ADDomainJoinUser"] = true, ["Realm"] = true, ["CrossRealmTrustPrincipalPassword"] = true, ["KdcAdminPassword"] = true, nil }

function asserts.AssertKerberosAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KerberosAttributes to be of type 'table'")
	assert(struct["Realm"], "Expected key Realm to exist in table")
	assert(struct["KdcAdminPassword"], "Expected key KdcAdminPassword to exist in table")
	if struct["ADDomainJoinPassword"] then asserts.AssertXmlStringMaxLen256(struct["ADDomainJoinPassword"]) end
	if struct["ADDomainJoinUser"] then asserts.AssertXmlStringMaxLen256(struct["ADDomainJoinUser"]) end
	if struct["Realm"] then asserts.AssertXmlStringMaxLen256(struct["Realm"]) end
	if struct["CrossRealmTrustPrincipalPassword"] then asserts.AssertXmlStringMaxLen256(struct["CrossRealmTrustPrincipalPassword"]) end
	if struct["KdcAdminPassword"] then asserts.AssertXmlStringMaxLen256(struct["KdcAdminPassword"]) end
	for k,_ in pairs(struct) do
		assert(keys.KerberosAttributes[k], "KerberosAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KerberosAttributes
-- <p>Attributes for Kerberos configuration when Kerberos authentication is enabled using a security configuration. For more information see <a href="http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-kerberos.html">Use Kerberos Authentication</a> in the <i>EMR Management Guide</i>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ADDomainJoinPassword [XmlStringMaxLen256] <p>The Active Directory password for <code>ADDomainJoinUser</code>.</p>
-- * ADDomainJoinUser [XmlStringMaxLen256] <p>Required only when establishing a cross-realm trust with an Active Directory domain. A user with sufficient privileges to join resources to the domain.</p>
-- * Realm [XmlStringMaxLen256] <p>The name of the Kerberos realm to which all nodes in a cluster belong. For example, <code>EC2.INTERNAL</code>. </p>
-- * CrossRealmTrustPrincipalPassword [XmlStringMaxLen256] <p>Required only when establishing a cross-realm trust with a KDC in a different realm. The cross-realm principal password, which must be identical across realms.</p>
-- * KdcAdminPassword [XmlStringMaxLen256] <p>The password used within the cluster for the kadmin service on the cluster-dedicated KDC, which maintains Kerberos principals, password policies, and keytabs for the cluster.</p>
-- Required key: Realm
-- Required key: KdcAdminPassword
-- @return KerberosAttributes structure as a key-value pair table
function M.KerberosAttributes(args)
	assert(args, "You must provide an argument table when creating KerberosAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ADDomainJoinPassword"] = args["ADDomainJoinPassword"],
		["ADDomainJoinUser"] = args["ADDomainJoinUser"],
		["Realm"] = args["Realm"],
		["CrossRealmTrustPrincipalPassword"] = args["CrossRealmTrustPrincipalPassword"],
		["KdcAdminPassword"] = args["KdcAdminPassword"],
	}
	asserts.AssertKerberosAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StepStatus = { ["Timeline"] = true, ["State"] = true, ["StateChangeReason"] = true, ["FailureDetails"] = true, nil }

function asserts.AssertStepStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StepStatus to be of type 'table'")
	if struct["Timeline"] then asserts.AssertStepTimeline(struct["Timeline"]) end
	if struct["State"] then asserts.AssertStepState(struct["State"]) end
	if struct["StateChangeReason"] then asserts.AssertStepStateChangeReason(struct["StateChangeReason"]) end
	if struct["FailureDetails"] then asserts.AssertFailureDetails(struct["FailureDetails"]) end
	for k,_ in pairs(struct) do
		assert(keys.StepStatus[k], "StepStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StepStatus
-- <p>The execution status details of the cluster step.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Timeline [StepTimeline] <p>The timeline of the cluster step status over time.</p>
-- * State [StepState] <p>The execution state of the cluster step.</p>
-- * StateChangeReason [StepStateChangeReason] <p>The reason for the step execution status change.</p>
-- * FailureDetails [FailureDetails] <p>The details for the step failure including reason, message, and log file path where the root cause was identified.</p>
-- @return StepStatus structure as a key-value pair table
function M.StepStatus(args)
	assert(args, "You must provide an argument table when creating StepStatus")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Timeline"] = args["Timeline"],
		["State"] = args["State"],
		["StateChangeReason"] = args["StateChangeReason"],
		["FailureDetails"] = args["FailureDetails"],
	}
	asserts.AssertStepStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SpotProvisioningSpecification = { ["TimeoutDurationMinutes"] = true, ["BlockDurationMinutes"] = true, ["TimeoutAction"] = true, nil }

function asserts.AssertSpotProvisioningSpecification(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SpotProvisioningSpecification to be of type 'table'")
	assert(struct["TimeoutDurationMinutes"], "Expected key TimeoutDurationMinutes to exist in table")
	assert(struct["TimeoutAction"], "Expected key TimeoutAction to exist in table")
	if struct["TimeoutDurationMinutes"] then asserts.AssertWholeNumber(struct["TimeoutDurationMinutes"]) end
	if struct["BlockDurationMinutes"] then asserts.AssertWholeNumber(struct["BlockDurationMinutes"]) end
	if struct["TimeoutAction"] then asserts.AssertSpotProvisioningTimeoutAction(struct["TimeoutAction"]) end
	for k,_ in pairs(struct) do
		assert(keys.SpotProvisioningSpecification[k], "SpotProvisioningSpecification contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SpotProvisioningSpecification
-- <p>The launch specification for Spot instances in the instance fleet, which determines the defined duration and provisioning timeout behavior.</p> <note> <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.</p> </note>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TimeoutDurationMinutes [WholeNumber] <p>The spot provisioning timeout period in minutes. If Spot instances are not provisioned within this time period, the <code>TimeOutAction</code> is taken. Minimum value is 5 and maximum value is 1440. The timeout applies only during initial provisioning, when the cluster is first created.</p>
-- * BlockDurationMinutes [WholeNumber] <p>The defined duration for Spot instances (also known as Spot blocks) in minutes. When specified, the Spot instance does not terminate before the defined duration expires, and defined duration pricing for Spot instances applies. Valid values are 60, 120, 180, 240, 300, or 360. The duration period starts as soon as a Spot instance receives its instance ID. At the end of the duration, Amazon EC2 marks the Spot instance for termination and provides a Spot instance termination notice, which gives the instance a two-minute warning before it terminates. </p>
-- * TimeoutAction [SpotProvisioningTimeoutAction] <p>The action to take when <code>TargetSpotCapacity</code> has not been fulfilled when the <code>TimeoutDurationMinutes</code> has expired. Spot instances are not uprovisioned within the Spot provisioining timeout. Valid values are <code>TERMINATE_CLUSTER</code> and <code>SWITCH_TO_ON_DEMAND</code>. SWITCH_TO_ON_DEMAND specifies that if no Spot instances are available, On-Demand Instances should be provisioned to fulfill any remaining Spot capacity.</p>
-- Required key: TimeoutDurationMinutes
-- Required key: TimeoutAction
-- @return SpotProvisioningSpecification structure as a key-value pair table
function M.SpotProvisioningSpecification(args)
	assert(args, "You must provide an argument table when creating SpotProvisioningSpecification")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TimeoutDurationMinutes"] = args["TimeoutDurationMinutes"],
		["BlockDurationMinutes"] = args["BlockDurationMinutes"],
		["TimeoutAction"] = args["TimeoutAction"],
	}
	asserts.AssertSpotProvisioningSpecification(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ClusterStatus = { ["Timeline"] = true, ["State"] = true, ["StateChangeReason"] = true, nil }

function asserts.AssertClusterStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterStatus to be of type 'table'")
	if struct["Timeline"] then asserts.AssertClusterTimeline(struct["Timeline"]) end
	if struct["State"] then asserts.AssertClusterState(struct["State"]) end
	if struct["StateChangeReason"] then asserts.AssertClusterStateChangeReason(struct["StateChangeReason"]) end
	for k,_ in pairs(struct) do
		assert(keys.ClusterStatus[k], "ClusterStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterStatus
-- <p>The detailed status of the cluster.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Timeline [ClusterTimeline] <p>A timeline that represents the status of a cluster over the lifetime of the cluster.</p>
-- * State [ClusterState] <p>The current state of the cluster.</p>
-- * StateChangeReason [ClusterStateChangeReason] <p>The reason for the cluster status change.</p>
-- @return ClusterStatus structure as a key-value pair table
function M.ClusterStatus(args)
	assert(args, "You must provide an argument table when creating ClusterStatus")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Timeline"] = args["Timeline"],
		["State"] = args["State"],
		["StateChangeReason"] = args["StateChangeReason"],
	}
	asserts.AssertClusterStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ScalingRule = { ["Action"] = true, ["Trigger"] = true, ["Name"] = true, ["Description"] = true, nil }

function asserts.AssertScalingRule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScalingRule to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Action"], "Expected key Action to exist in table")
	assert(struct["Trigger"], "Expected key Trigger to exist in table")
	if struct["Action"] then asserts.AssertScalingAction(struct["Action"]) end
	if struct["Trigger"] then asserts.AssertScalingTrigger(struct["Trigger"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.ScalingRule[k], "ScalingRule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScalingRule
-- <p>A scale-in or scale-out rule that defines scaling activity, including the CloudWatch metric alarm that triggers activity, how EC2 instances are added or removed, and the periodicity of adjustments. The automatic scaling policy for an instance group can comprise one or more automatic scaling rules.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Action [ScalingAction] <p>The conditions that trigger an automatic scaling activity.</p>
-- * Trigger [ScalingTrigger] <p>The CloudWatch alarm definition that determines when automatic scaling activity is triggered.</p>
-- * Name [String] <p>The name used to identify an automatic scaling rule. Rule names must be unique within a scaling policy.</p>
-- * Description [String] <p>A friendly, more verbose description of the automatic scaling rule.</p>
-- Required key: Name
-- Required key: Action
-- Required key: Trigger
-- @return ScalingRule structure as a key-value pair table
function M.ScalingRule(args)
	assert(args, "You must provide an argument table when creating ScalingRule")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Action"] = args["Action"],
		["Trigger"] = args["Trigger"],
		["Name"] = args["Name"],
		["Description"] = args["Description"],
	}
	asserts.AssertScalingRule(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StepExecutionStatusDetail = { ["State"] = true, ["EndDateTime"] = true, ["CreationDateTime"] = true, ["LastStateChangeReason"] = true, ["StartDateTime"] = true, nil }

function asserts.AssertStepExecutionStatusDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StepExecutionStatusDetail to be of type 'table'")
	assert(struct["State"], "Expected key State to exist in table")
	assert(struct["CreationDateTime"], "Expected key CreationDateTime to exist in table")
	if struct["State"] then asserts.AssertStepExecutionState(struct["State"]) end
	if struct["EndDateTime"] then asserts.AssertDate(struct["EndDateTime"]) end
	if struct["CreationDateTime"] then asserts.AssertDate(struct["CreationDateTime"]) end
	if struct["LastStateChangeReason"] then asserts.AssertXmlString(struct["LastStateChangeReason"]) end
	if struct["StartDateTime"] then asserts.AssertDate(struct["StartDateTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.StepExecutionStatusDetail[k], "StepExecutionStatusDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StepExecutionStatusDetail
-- <p>The execution state of a step.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * State [StepExecutionState] <p>The state of the step.</p>
-- * EndDateTime [Date] <p>The completion date and time of the step.</p>
-- * CreationDateTime [Date] <p>The creation date and time of the step.</p>
-- * LastStateChangeReason [XmlString] <p>A description of the step's current state.</p>
-- * StartDateTime [Date] <p>The start date and time of the step.</p>
-- Required key: State
-- Required key: CreationDateTime
-- @return StepExecutionStatusDetail structure as a key-value pair table
function M.StepExecutionStatusDetail(args)
	assert(args, "You must provide an argument table when creating StepExecutionStatusDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["State"] = args["State"],
		["EndDateTime"] = args["EndDateTime"],
		["CreationDateTime"] = args["CreationDateTime"],
		["LastStateChangeReason"] = args["LastStateChangeReason"],
		["StartDateTime"] = args["StartDateTime"],
	}
	asserts.AssertStepExecutionStatusDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SimpleScalingPolicyConfiguration = { ["CoolDown"] = true, ["ScalingAdjustment"] = true, ["AdjustmentType"] = true, nil }

function asserts.AssertSimpleScalingPolicyConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SimpleScalingPolicyConfiguration to be of type 'table'")
	assert(struct["ScalingAdjustment"], "Expected key ScalingAdjustment to exist in table")
	if struct["CoolDown"] then asserts.AssertInteger(struct["CoolDown"]) end
	if struct["ScalingAdjustment"] then asserts.AssertInteger(struct["ScalingAdjustment"]) end
	if struct["AdjustmentType"] then asserts.AssertAdjustmentType(struct["AdjustmentType"]) end
	for k,_ in pairs(struct) do
		assert(keys.SimpleScalingPolicyConfiguration[k], "SimpleScalingPolicyConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SimpleScalingPolicyConfiguration
-- <p>An automatic scaling configuration, which describes how the policy adds or removes instances, the cooldown period, and the number of EC2 instances that will be added each time the CloudWatch metric alarm condition is satisfied.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CoolDown [Integer] <p>The amount of time, in seconds, after a scaling activity completes before any further trigger-related scaling activities can start. The default value is 0.</p>
-- * ScalingAdjustment [Integer] <p>The amount by which to scale in or scale out, based on the specified <code>AdjustmentType</code>. A positive value adds to the instance group's EC2 instance count while a negative number removes instances. If <code>AdjustmentType</code> is set to <code>EXACT_CAPACITY</code>, the number should only be a positive integer. If <code>AdjustmentType</code> is set to <code>PERCENT_CHANGE_IN_CAPACITY</code>, the value should express the percentage as an integer. For example, -20 indicates a decrease in 20% increments of cluster capacity.</p>
-- * AdjustmentType [AdjustmentType] <p>The way in which EC2 instances are added (if <code>ScalingAdjustment</code> is a positive number) or terminated (if <code>ScalingAdjustment</code> is a negative number) each time the scaling activity is triggered. <code>CHANGE_IN_CAPACITY</code> is the default. <code>CHANGE_IN_CAPACITY</code> indicates that the EC2 instance count increments or decrements by <code>ScalingAdjustment</code>, which should be expressed as an integer. <code>PERCENT_CHANGE_IN_CAPACITY</code> indicates the instance count increments or decrements by the percentage specified by <code>ScalingAdjustment</code>, which should be expressed as an integer. For example, 20 indicates an increase in 20% increments of cluster capacity. <code>EXACT_CAPACITY</code> indicates the scaling activity results in an instance group with the number of EC2 instances specified by <code>ScalingAdjustment</code>, which should be expressed as a positive integer.</p>
-- Required key: ScalingAdjustment
-- @return SimpleScalingPolicyConfiguration structure as a key-value pair table
function M.SimpleScalingPolicyConfiguration(args)
	assert(args, "You must provide an argument table when creating SimpleScalingPolicyConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CoolDown"] = args["CoolDown"],
		["ScalingAdjustment"] = args["ScalingAdjustment"],
		["AdjustmentType"] = args["AdjustmentType"],
	}
	asserts.AssertSimpleScalingPolicyConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AddTagsInput = { ["ResourceId"] = true, ["Tags"] = true, nil }

function asserts.AssertAddTagsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddTagsInput to be of type 'table'")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["ResourceId"] then asserts.AssertResourceId(struct["ResourceId"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddTagsInput[k], "AddTagsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddTagsInput
-- <p>This input identifies a cluster and a list of tags to attach.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceId [ResourceId] <p>The Amazon EMR resource identifier to which tags will be added. This value must be a cluster identifier.</p>
-- * Tags [TagList] <p>A list of tags to associate with a cluster and propagate to EC2 instances. Tags are user-defined key/value pairs that consist of a required key string with a maximum of 128 characters, and an optional value string with a maximum of 256 characters.</p>
-- Required key: ResourceId
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
		["ResourceId"] = args["ResourceId"],
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

keys.InstanceStatus = { ["Timeline"] = true, ["State"] = true, ["StateChangeReason"] = true, nil }

function asserts.AssertInstanceStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceStatus to be of type 'table'")
	if struct["Timeline"] then asserts.AssertInstanceTimeline(struct["Timeline"]) end
	if struct["State"] then asserts.AssertInstanceState(struct["State"]) end
	if struct["StateChangeReason"] then asserts.AssertInstanceStateChangeReason(struct["StateChangeReason"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstanceStatus[k], "InstanceStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceStatus
-- <p>The instance status details.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Timeline [InstanceTimeline] <p>The timeline of the instance status over time.</p>
-- * State [InstanceState] <p>The current state of the instance.</p>
-- * StateChangeReason [InstanceStateChangeReason] <p>The details of the status change reason for the instance.</p>
-- @return InstanceStatus structure as a key-value pair table
function M.InstanceStatus(args)
	assert(args, "You must provide an argument table when creating InstanceStatus")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Timeline"] = args["Timeline"],
		["State"] = args["State"],
		["StateChangeReason"] = args["StateChangeReason"],
	}
	asserts.AssertInstanceStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StepSummary = { ["Status"] = true, ["Config"] = true, ["Id"] = true, ["ActionOnFailure"] = true, ["Name"] = true, nil }

function asserts.AssertStepSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StepSummary to be of type 'table'")
	if struct["Status"] then asserts.AssertStepStatus(struct["Status"]) end
	if struct["Config"] then asserts.AssertHadoopStepConfig(struct["Config"]) end
	if struct["Id"] then asserts.AssertStepId(struct["Id"]) end
	if struct["ActionOnFailure"] then asserts.AssertActionOnFailure(struct["ActionOnFailure"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.StepSummary[k], "StepSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StepSummary
-- <p>The summary of the cluster step.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [StepStatus] <p>The current execution status details of the cluster step.</p>
-- * Config [HadoopStepConfig] <p>The Hadoop job configuration of the cluster step.</p>
-- * Id [StepId] <p>The identifier of the cluster step.</p>
-- * ActionOnFailure [ActionOnFailure] <p>This specifies what action to take when the cluster step fails. Possible values are TERMINATE_CLUSTER, CANCEL_AND_WAIT, and CONTINUE.</p>
-- * Name [String] <p>The name of the cluster step.</p>
-- @return StepSummary structure as a key-value pair table
function M.StepSummary(args)
	assert(args, "You must provide an argument table when creating StepSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["Config"] = args["Config"],
		["Id"] = args["Id"],
		["ActionOnFailure"] = args["ActionOnFailure"],
		["Name"] = args["Name"],
	}
	asserts.AssertStepSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.VolumeSpecification = { ["Iops"] = true, ["VolumeType"] = true, ["SizeInGB"] = true, nil }

function asserts.AssertVolumeSpecification(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VolumeSpecification to be of type 'table'")
	assert(struct["VolumeType"], "Expected key VolumeType to exist in table")
	assert(struct["SizeInGB"], "Expected key SizeInGB to exist in table")
	if struct["Iops"] then asserts.AssertInteger(struct["Iops"]) end
	if struct["VolumeType"] then asserts.AssertString(struct["VolumeType"]) end
	if struct["SizeInGB"] then asserts.AssertInteger(struct["SizeInGB"]) end
	for k,_ in pairs(struct) do
		assert(keys.VolumeSpecification[k], "VolumeSpecification contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VolumeSpecification
-- <p>EBS volume specifications such as volume type, IOPS, and size (GiB) that will be requested for the EBS volume attached to an EC2 instance in the cluster.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Iops [Integer] <p>The number of I/O operations per second (IOPS) that the volume supports.</p>
-- * VolumeType [String] <p>The volume type. Volume types supported are gp2, io1, standard.</p>
-- * SizeInGB [Integer] <p>The volume size, in gibibytes (GiB). This can be a number from 1 - 1024. If the volume type is EBS-optimized, the minimum value is 10.</p>
-- Required key: VolumeType
-- Required key: SizeInGB
-- @return VolumeSpecification structure as a key-value pair table
function M.VolumeSpecification(args)
	assert(args, "You must provide an argument table when creating VolumeSpecification")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Iops"] = args["Iops"],
		["VolumeType"] = args["VolumeType"],
		["SizeInGB"] = args["SizeInGB"],
	}
	asserts.AssertVolumeSpecification(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BootstrapActionConfig = { ["ScriptBootstrapAction"] = true, ["Name"] = true, nil }

function asserts.AssertBootstrapActionConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BootstrapActionConfig to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["ScriptBootstrapAction"], "Expected key ScriptBootstrapAction to exist in table")
	if struct["ScriptBootstrapAction"] then asserts.AssertScriptBootstrapActionConfig(struct["ScriptBootstrapAction"]) end
	if struct["Name"] then asserts.AssertXmlStringMaxLen256(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.BootstrapActionConfig[k], "BootstrapActionConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BootstrapActionConfig
-- <p>Configuration of a bootstrap action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ScriptBootstrapAction [ScriptBootstrapActionConfig] <p>The script run by the bootstrap action.</p>
-- * Name [XmlStringMaxLen256] <p>The name of the bootstrap action.</p>
-- Required key: Name
-- Required key: ScriptBootstrapAction
-- @return BootstrapActionConfig structure as a key-value pair table
function M.BootstrapActionConfig(args)
	assert(args, "You must provide an argument table when creating BootstrapActionConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ScriptBootstrapAction"] = args["ScriptBootstrapAction"],
		["Name"] = args["Name"],
	}
	asserts.AssertBootstrapActionConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CancelStepsInput = { ["StepIds"] = true, ["ClusterId"] = true, nil }

function asserts.AssertCancelStepsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelStepsInput to be of type 'table'")
	if struct["StepIds"] then asserts.AssertStepIdsList(struct["StepIds"]) end
	if struct["ClusterId"] then asserts.AssertXmlStringMaxLen256(struct["ClusterId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CancelStepsInput[k], "CancelStepsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelStepsInput
-- <p>The input argument to the <a>CancelSteps</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StepIds [StepIdsList] <p>The list of <code>StepIDs</code> to cancel. Use <a>ListSteps</a> to get steps and their states for the specified cluster.</p>
-- * ClusterId [XmlStringMaxLen256] <p>The <code>ClusterID</code> for which specified steps will be canceled. Use <a>RunJobFlow</a> and <a>ListClusters</a> to get ClusterIDs. </p>
-- @return CancelStepsInput structure as a key-value pair table
function M.CancelStepsInput(args)
	assert(args, "You must provide an argument table when creating CancelStepsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StepIds"] = args["StepIds"],
		["ClusterId"] = args["ClusterId"],
	}
	asserts.AssertCancelStepsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AutoScalingPolicy = { ["Rules"] = true, ["Constraints"] = true, nil }

function asserts.AssertAutoScalingPolicy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AutoScalingPolicy to be of type 'table'")
	assert(struct["Constraints"], "Expected key Constraints to exist in table")
	assert(struct["Rules"], "Expected key Rules to exist in table")
	if struct["Rules"] then asserts.AssertScalingRuleList(struct["Rules"]) end
	if struct["Constraints"] then asserts.AssertScalingConstraints(struct["Constraints"]) end
	for k,_ in pairs(struct) do
		assert(keys.AutoScalingPolicy[k], "AutoScalingPolicy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AutoScalingPolicy
-- <p>An automatic scaling policy for a core instance group or task instance group in an Amazon EMR cluster. An automatic scaling policy defines how an instance group dynamically adds and terminates EC2 instances in response to the value of a CloudWatch metric. See <a>PutAutoScalingPolicy</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Rules [ScalingRuleList] <p>The scale-in and scale-out rules that comprise the automatic scaling policy.</p>
-- * Constraints [ScalingConstraints] <p>The upper and lower EC2 instance limits for an automatic scaling policy. Automatic scaling activity will not cause an instance group to grow above or below these limits.</p>
-- Required key: Constraints
-- Required key: Rules
-- @return AutoScalingPolicy structure as a key-value pair table
function M.AutoScalingPolicy(args)
	assert(args, "You must provide an argument table when creating AutoScalingPolicy")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Rules"] = args["Rules"],
		["Constraints"] = args["Constraints"],
	}
	asserts.AssertAutoScalingPolicy(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AddInstanceGroupsInput = { ["JobFlowId"] = true, ["InstanceGroups"] = true, nil }

function asserts.AssertAddInstanceGroupsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddInstanceGroupsInput to be of type 'table'")
	assert(struct["InstanceGroups"], "Expected key InstanceGroups to exist in table")
	assert(struct["JobFlowId"], "Expected key JobFlowId to exist in table")
	if struct["JobFlowId"] then asserts.AssertXmlStringMaxLen256(struct["JobFlowId"]) end
	if struct["InstanceGroups"] then asserts.AssertInstanceGroupConfigList(struct["InstanceGroups"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddInstanceGroupsInput[k], "AddInstanceGroupsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddInstanceGroupsInput
-- <p>Input to an AddInstanceGroups call.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JobFlowId [XmlStringMaxLen256] <p>Job flow in which to add the instance groups.</p>
-- * InstanceGroups [InstanceGroupConfigList] <p>Instance groups to add.</p>
-- Required key: InstanceGroups
-- Required key: JobFlowId
-- @return AddInstanceGroupsInput structure as a key-value pair table
function M.AddInstanceGroupsInput(args)
	assert(args, "You must provide an argument table when creating AddInstanceGroupsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JobFlowId"] = args["JobFlowId"],
		["InstanceGroups"] = args["InstanceGroups"],
	}
	asserts.AssertAddInstanceGroupsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidRequestException = { ["ErrorCode"] = true, ["Message"] = true, nil }

function asserts.AssertInvalidRequestException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRequestException to be of type 'table'")
	if struct["ErrorCode"] then asserts.AssertErrorCode(struct["ErrorCode"]) end
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidRequestException[k], "InvalidRequestException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRequestException
-- <p>This exception occurs when there is something wrong with user input.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ErrorCode [ErrorCode] <p>The error code associated with the exception.</p>
-- * Message [ErrorMessage] <p>The message associated with the exception.</p>
-- @return InvalidRequestException structure as a key-value pair table
function M.InvalidRequestException(args)
	assert(args, "You must provide an argument table when creating InvalidRequestException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ErrorCode"] = args["ErrorCode"],
		["Message"] = args["Message"],
	}
	asserts.AssertInvalidRequestException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AutoScalingPolicyStateChangeReason = { ["Message"] = true, ["Code"] = true, nil }

function asserts.AssertAutoScalingPolicyStateChangeReason(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AutoScalingPolicyStateChangeReason to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	if struct["Code"] then asserts.AssertAutoScalingPolicyStateChangeReasonCode(struct["Code"]) end
	for k,_ in pairs(struct) do
		assert(keys.AutoScalingPolicyStateChangeReason[k], "AutoScalingPolicyStateChangeReason contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AutoScalingPolicyStateChangeReason
-- <p>The reason for an <a>AutoScalingPolicyStatus</a> change.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] <p>A friendly, more verbose message that accompanies an automatic scaling policy state change.</p>
-- * Code [AutoScalingPolicyStateChangeReasonCode] <p>The code indicating the reason for the change in status.<code>USER_REQUEST</code> indicates that the scaling policy status was changed by a user. <code>PROVISION_FAILURE</code> indicates that the status change was because the policy failed to provision. <code>CLEANUP_FAILURE</code> indicates an error.</p>
-- @return AutoScalingPolicyStateChangeReason structure as a key-value pair table
function M.AutoScalingPolicyStateChangeReason(args)
	assert(args, "You must provide an argument table when creating AutoScalingPolicyStateChangeReason")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
		["Code"] = args["Code"],
	}
	asserts.AssertAutoScalingPolicyStateChangeReason(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteSecurityConfigurationInput = { ["Name"] = true, nil }

function asserts.AssertDeleteSecurityConfigurationInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSecurityConfigurationInput to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertXmlString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteSecurityConfigurationInput[k], "DeleteSecurityConfigurationInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSecurityConfigurationInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [XmlString] <p>The name of the security configuration.</p>
-- Required key: Name
-- @return DeleteSecurityConfigurationInput structure as a key-value pair table
function M.DeleteSecurityConfigurationInput(args)
	assert(args, "You must provide an argument table when creating DeleteSecurityConfigurationInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertDeleteSecurityConfigurationInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InstanceGroupModifyConfig = { ["InstanceGroupId"] = true, ["InstanceCount"] = true, ["EC2InstanceIdsToTerminate"] = true, ["ShrinkPolicy"] = true, nil }

function asserts.AssertInstanceGroupModifyConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceGroupModifyConfig to be of type 'table'")
	assert(struct["InstanceGroupId"], "Expected key InstanceGroupId to exist in table")
	if struct["InstanceGroupId"] then asserts.AssertXmlStringMaxLen256(struct["InstanceGroupId"]) end
	if struct["InstanceCount"] then asserts.AssertInteger(struct["InstanceCount"]) end
	if struct["EC2InstanceIdsToTerminate"] then asserts.AssertEC2InstanceIdsToTerminateList(struct["EC2InstanceIdsToTerminate"]) end
	if struct["ShrinkPolicy"] then asserts.AssertShrinkPolicy(struct["ShrinkPolicy"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstanceGroupModifyConfig[k], "InstanceGroupModifyConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceGroupModifyConfig
-- <p>Modify an instance group size.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceGroupId [XmlStringMaxLen256] <p>Unique ID of the instance group to expand or shrink.</p>
-- * InstanceCount [Integer] <p>Target size for the instance group.</p>
-- * EC2InstanceIdsToTerminate [EC2InstanceIdsToTerminateList] <p>The EC2 InstanceIds to terminate. After you terminate the instances, the instance group will not return to its original requested size.</p>
-- * ShrinkPolicy [ShrinkPolicy] <p>Policy for customizing shrink operations.</p>
-- Required key: InstanceGroupId
-- @return InstanceGroupModifyConfig structure as a key-value pair table
function M.InstanceGroupModifyConfig(args)
	assert(args, "You must provide an argument table when creating InstanceGroupModifyConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceGroupId"] = args["InstanceGroupId"],
		["InstanceCount"] = args["InstanceCount"],
		["EC2InstanceIdsToTerminate"] = args["EC2InstanceIdsToTerminate"],
		["ShrinkPolicy"] = args["ShrinkPolicy"],
	}
	asserts.AssertInstanceGroupModifyConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListSecurityConfigurationsOutput = { ["Marker"] = true, ["SecurityConfigurations"] = true, nil }

function asserts.AssertListSecurityConfigurationsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSecurityConfigurationsOutput to be of type 'table'")
	if struct["Marker"] then asserts.AssertMarker(struct["Marker"]) end
	if struct["SecurityConfigurations"] then asserts.AssertSecurityConfigurationList(struct["SecurityConfigurations"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListSecurityConfigurationsOutput[k], "ListSecurityConfigurationsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSecurityConfigurationsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [Marker] <p>A pagination token that indicates the next set of results to retrieve. Include the marker in the next ListSecurityConfiguration call to retrieve the next page of results, if required.</p>
-- * SecurityConfigurations [SecurityConfigurationList] <p>The creation date and time, and name, of each security configuration.</p>
-- @return ListSecurityConfigurationsOutput structure as a key-value pair table
function M.ListSecurityConfigurationsOutput(args)
	assert(args, "You must provide an argument table when creating ListSecurityConfigurationsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["SecurityConfigurations"] = args["SecurityConfigurations"],
	}
	asserts.AssertListSecurityConfigurationsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListInstanceGroupsOutput = { ["Marker"] = true, ["InstanceGroups"] = true, nil }

function asserts.AssertListInstanceGroupsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListInstanceGroupsOutput to be of type 'table'")
	if struct["Marker"] then asserts.AssertMarker(struct["Marker"]) end
	if struct["InstanceGroups"] then asserts.AssertInstanceGroupList(struct["InstanceGroups"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListInstanceGroupsOutput[k], "ListInstanceGroupsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListInstanceGroupsOutput
-- <p>This input determines which instance groups to retrieve.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [Marker] <p>The pagination token that indicates the next set of results to retrieve.</p>
-- * InstanceGroups [InstanceGroupList] <p>The list of instance groups for the cluster and given filters.</p>
-- @return ListInstanceGroupsOutput structure as a key-value pair table
function M.ListInstanceGroupsOutput(args)
	assert(args, "You must provide an argument table when creating ListInstanceGroupsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["InstanceGroups"] = args["InstanceGroups"],
	}
	asserts.AssertListInstanceGroupsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ScalingAction = { ["SimpleScalingPolicyConfiguration"] = true, ["Market"] = true, nil }

function asserts.AssertScalingAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScalingAction to be of type 'table'")
	assert(struct["SimpleScalingPolicyConfiguration"], "Expected key SimpleScalingPolicyConfiguration to exist in table")
	if struct["SimpleScalingPolicyConfiguration"] then asserts.AssertSimpleScalingPolicyConfiguration(struct["SimpleScalingPolicyConfiguration"]) end
	if struct["Market"] then asserts.AssertMarketType(struct["Market"]) end
	for k,_ in pairs(struct) do
		assert(keys.ScalingAction[k], "ScalingAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScalingAction
-- <p>The type of adjustment the automatic scaling activity makes when triggered, and the periodicity of the adjustment.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SimpleScalingPolicyConfiguration [SimpleScalingPolicyConfiguration] <p>The type of adjustment the automatic scaling activity makes when triggered, and the periodicity of the adjustment.</p>
-- * Market [MarketType] <p>Not available for instance groups. Instance groups use the market type specified for the group.</p>
-- Required key: SimpleScalingPolicyConfiguration
-- @return ScalingAction structure as a key-value pair table
function M.ScalingAction(args)
	assert(args, "You must provide an argument table when creating ScalingAction")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SimpleScalingPolicyConfiguration"] = args["SimpleScalingPolicyConfiguration"],
		["Market"] = args["Market"],
	}
	asserts.AssertScalingAction(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RemoveTagsInput = { ["ResourceId"] = true, ["TagKeys"] = true, nil }

function asserts.AssertRemoveTagsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveTagsInput to be of type 'table'")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	assert(struct["TagKeys"], "Expected key TagKeys to exist in table")
	if struct["ResourceId"] then asserts.AssertResourceId(struct["ResourceId"]) end
	if struct["TagKeys"] then asserts.AssertStringList(struct["TagKeys"]) end
	for k,_ in pairs(struct) do
		assert(keys.RemoveTagsInput[k], "RemoveTagsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveTagsInput
-- <p>This input identifies a cluster and a list of tags to remove.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceId [ResourceId] <p>The Amazon EMR resource identifier from which tags will be removed. This value must be a cluster identifier.</p>
-- * TagKeys [StringList] <p>A list of tag keys to remove from a resource.</p>
-- Required key: ResourceId
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
		["ResourceId"] = args["ResourceId"],
		["TagKeys"] = args["TagKeys"],
	}
	asserts.AssertRemoveTagsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ClusterSummary = { ["Status"] = true, ["NormalizedInstanceHours"] = true, ["Id"] = true, ["Name"] = true, nil }

function asserts.AssertClusterSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterSummary to be of type 'table'")
	if struct["Status"] then asserts.AssertClusterStatus(struct["Status"]) end
	if struct["NormalizedInstanceHours"] then asserts.AssertInteger(struct["NormalizedInstanceHours"]) end
	if struct["Id"] then asserts.AssertClusterId(struct["Id"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.ClusterSummary[k], "ClusterSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterSummary
-- <p>The summary description of the cluster.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [ClusterStatus] <p>The details about the current status of the cluster.</p>
-- * NormalizedInstanceHours [Integer] <p>An approximation of the cost of the cluster, represented in m1.small/hours. This value is incremented one time for every hour an m1.small instance runs. Larger instances are weighted more, so an EC2 instance that is roughly four times more expensive would result in the normalized instance hours being incremented by four. This result is only an approximation and does not reflect the actual billing rate.</p>
-- * Id [ClusterId] <p>The unique identifier for the cluster.</p>
-- * Name [String] <p>The name of the cluster.</p>
-- @return ClusterSummary structure as a key-value pair table
function M.ClusterSummary(args)
	assert(args, "You must provide an argument table when creating ClusterSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["NormalizedInstanceHours"] = args["NormalizedInstanceHours"],
		["Id"] = args["Id"],
		["Name"] = args["Name"],
	}
	asserts.AssertClusterSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutAutoScalingPolicyOutput = { ["InstanceGroupId"] = true, ["ClusterId"] = true, ["AutoScalingPolicy"] = true, nil }

function asserts.AssertPutAutoScalingPolicyOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutAutoScalingPolicyOutput to be of type 'table'")
	if struct["InstanceGroupId"] then asserts.AssertInstanceGroupId(struct["InstanceGroupId"]) end
	if struct["ClusterId"] then asserts.AssertClusterId(struct["ClusterId"]) end
	if struct["AutoScalingPolicy"] then asserts.AssertAutoScalingPolicyDescription(struct["AutoScalingPolicy"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutAutoScalingPolicyOutput[k], "PutAutoScalingPolicyOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutAutoScalingPolicyOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceGroupId [InstanceGroupId] <p>Specifies the ID of the instance group to which the scaling policy is applied.</p>
-- * ClusterId [ClusterId] <p>Specifies the ID of a cluster. The instance group to which the automatic scaling policy is applied is within this cluster.</p>
-- * AutoScalingPolicy [AutoScalingPolicyDescription] <p>The automatic scaling policy definition.</p>
-- @return PutAutoScalingPolicyOutput structure as a key-value pair table
function M.PutAutoScalingPolicyOutput(args)
	assert(args, "You must provide an argument table when creating PutAutoScalingPolicyOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceGroupId"] = args["InstanceGroupId"],
		["ClusterId"] = args["ClusterId"],
		["AutoScalingPolicy"] = args["AutoScalingPolicy"],
	}
	asserts.AssertPutAutoScalingPolicyOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeJobFlowsInput = { ["CreatedAfter"] = true, ["JobFlowIds"] = true, ["CreatedBefore"] = true, ["JobFlowStates"] = true, nil }

function asserts.AssertDescribeJobFlowsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeJobFlowsInput to be of type 'table'")
	if struct["CreatedAfter"] then asserts.AssertDate(struct["CreatedAfter"]) end
	if struct["JobFlowIds"] then asserts.AssertXmlStringList(struct["JobFlowIds"]) end
	if struct["CreatedBefore"] then asserts.AssertDate(struct["CreatedBefore"]) end
	if struct["JobFlowStates"] then asserts.AssertJobFlowExecutionStateList(struct["JobFlowStates"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeJobFlowsInput[k], "DescribeJobFlowsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeJobFlowsInput
-- <p> The input for the <a>DescribeJobFlows</a> operation. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CreatedAfter [Date] <p>Return only job flows created after this date and time.</p>
-- * JobFlowIds [XmlStringList] <p>Return only job flows whose job flow ID is contained in this list.</p>
-- * CreatedBefore [Date] <p>Return only job flows created before this date and time.</p>
-- * JobFlowStates [JobFlowExecutionStateList] <p>Return only job flows whose state is contained in this list.</p>
-- @return DescribeJobFlowsInput structure as a key-value pair table
function M.DescribeJobFlowsInput(args)
	assert(args, "You must provide an argument table when creating DescribeJobFlowsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CreatedAfter"] = args["CreatedAfter"],
		["JobFlowIds"] = args["JobFlowIds"],
		["CreatedBefore"] = args["CreatedBefore"],
		["JobFlowStates"] = args["JobFlowStates"],
	}
	asserts.AssertDescribeJobFlowsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeSecurityConfigurationOutput = { ["SecurityConfiguration"] = true, ["CreationDateTime"] = true, ["Name"] = true, nil }

function asserts.AssertDescribeSecurityConfigurationOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSecurityConfigurationOutput to be of type 'table'")
	if struct["SecurityConfiguration"] then asserts.AssertString(struct["SecurityConfiguration"]) end
	if struct["CreationDateTime"] then asserts.AssertDate(struct["CreationDateTime"]) end
	if struct["Name"] then asserts.AssertXmlString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeSecurityConfigurationOutput[k], "DescribeSecurityConfigurationOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSecurityConfigurationOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SecurityConfiguration [String] <p>The security configuration details in JSON format.</p>
-- * CreationDateTime [Date] <p>The date and time the security configuration was created</p>
-- * Name [XmlString] <p>The name of the security configuration.</p>
-- @return DescribeSecurityConfigurationOutput structure as a key-value pair table
function M.DescribeSecurityConfigurationOutput(args)
	assert(args, "You must provide an argument table when creating DescribeSecurityConfigurationOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SecurityConfiguration"] = args["SecurityConfiguration"],
		["CreationDateTime"] = args["CreationDateTime"],
		["Name"] = args["Name"],
	}
	asserts.AssertDescribeSecurityConfigurationOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BootstrapActionDetail = { ["BootstrapActionConfig"] = true, nil }

function asserts.AssertBootstrapActionDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BootstrapActionDetail to be of type 'table'")
	if struct["BootstrapActionConfig"] then asserts.AssertBootstrapActionConfig(struct["BootstrapActionConfig"]) end
	for k,_ in pairs(struct) do
		assert(keys.BootstrapActionDetail[k], "BootstrapActionDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BootstrapActionDetail
-- <p>Reports the configuration of a bootstrap action in a cluster (job flow).</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BootstrapActionConfig [BootstrapActionConfig] <p>A description of the bootstrap action.</p>
-- @return BootstrapActionDetail structure as a key-value pair table
function M.BootstrapActionDetail(args)
	assert(args, "You must provide an argument table when creating BootstrapActionDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BootstrapActionConfig"] = args["BootstrapActionConfig"],
	}
	asserts.AssertBootstrapActionDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StepConfig = { ["HadoopJarStep"] = true, ["Name"] = true, ["ActionOnFailure"] = true, nil }

function asserts.AssertStepConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StepConfig to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["HadoopJarStep"], "Expected key HadoopJarStep to exist in table")
	if struct["HadoopJarStep"] then asserts.AssertHadoopJarStepConfig(struct["HadoopJarStep"]) end
	if struct["Name"] then asserts.AssertXmlStringMaxLen256(struct["Name"]) end
	if struct["ActionOnFailure"] then asserts.AssertActionOnFailure(struct["ActionOnFailure"]) end
	for k,_ in pairs(struct) do
		assert(keys.StepConfig[k], "StepConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StepConfig
-- <p>Specification of a cluster (job flow) step.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HadoopJarStep [HadoopJarStepConfig] <p>The JAR file used for the step.</p>
-- * Name [XmlStringMaxLen256] <p>The name of the step.</p>
-- * ActionOnFailure [ActionOnFailure] <p>The action to take if the step fails.</p>
-- Required key: Name
-- Required key: HadoopJarStep
-- @return StepConfig structure as a key-value pair table
function M.StepConfig(args)
	assert(args, "You must provide an argument table when creating StepConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HadoopJarStep"] = args["HadoopJarStep"],
		["Name"] = args["Name"],
		["ActionOnFailure"] = args["ActionOnFailure"],
	}
	asserts.AssertStepConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListBootstrapActionsInput = { ["Marker"] = true, ["ClusterId"] = true, nil }

function asserts.AssertListBootstrapActionsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListBootstrapActionsInput to be of type 'table'")
	assert(struct["ClusterId"], "Expected key ClusterId to exist in table")
	if struct["Marker"] then asserts.AssertMarker(struct["Marker"]) end
	if struct["ClusterId"] then asserts.AssertClusterId(struct["ClusterId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListBootstrapActionsInput[k], "ListBootstrapActionsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListBootstrapActionsInput
-- <p>This input determines which bootstrap actions to retrieve.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [Marker] <p>The pagination token that indicates the next set of results to retrieve.</p>
-- * ClusterId [ClusterId] <p>The cluster identifier for the bootstrap actions to list.</p>
-- Required key: ClusterId
-- @return ListBootstrapActionsInput structure as a key-value pair table
function M.ListBootstrapActionsInput(args)
	assert(args, "You must provide an argument table when creating ListBootstrapActionsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["ClusterId"] = args["ClusterId"],
	}
	asserts.AssertListBootstrapActionsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeClusterOutput = { ["Cluster"] = true, nil }

function asserts.AssertDescribeClusterOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeClusterOutput to be of type 'table'")
	if struct["Cluster"] then asserts.AssertCluster(struct["Cluster"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeClusterOutput[k], "DescribeClusterOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeClusterOutput
-- <p>This output contains the description of the cluster.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Cluster [Cluster] <p>This output contains the details for the requested cluster.</p>
-- @return DescribeClusterOutput structure as a key-value pair table
function M.DescribeClusterOutput(args)
	assert(args, "You must provide an argument table when creating DescribeClusterOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Cluster"] = args["Cluster"],
	}
	asserts.AssertDescribeClusterOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertInstanceGroupState(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceGroupState to be of type 'string'")
end

--  
function M.InstanceGroupState(str)
	asserts.AssertInstanceGroupState(str)
	return str
end

function asserts.AssertInstanceState(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceState to be of type 'string'")
end

--  
function M.InstanceState(str)
	asserts.AssertInstanceState(str)
	return str
end

function asserts.AssertInstanceFleetState(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceFleetState to be of type 'string'")
end

--  
function M.InstanceFleetState(str)
	asserts.AssertInstanceFleetState(str)
	return str
end

function asserts.AssertAutoScalingPolicyStateChangeReasonCode(str)
	assert(str)
	assert(type(str) == "string", "Expected AutoScalingPolicyStateChangeReasonCode to be of type 'string'")
end

--  
function M.AutoScalingPolicyStateChangeReasonCode(str)
	asserts.AssertAutoScalingPolicyStateChangeReasonCode(str)
	return str
end

function asserts.AssertStatistic(str)
	assert(str)
	assert(type(str) == "string", "Expected Statistic to be of type 'string'")
end

--  
function M.Statistic(str)
	asserts.AssertStatistic(str)
	return str
end

function asserts.AssertStepExecutionState(str)
	assert(str)
	assert(type(str) == "string", "Expected StepExecutionState to be of type 'string'")
end

--  
function M.StepExecutionState(str)
	asserts.AssertStepExecutionState(str)
	return str
end

function asserts.AssertInstanceFleetStateChangeReasonCode(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceFleetStateChangeReasonCode to be of type 'string'")
end

--  
function M.InstanceFleetStateChangeReasonCode(str)
	asserts.AssertInstanceFleetStateChangeReasonCode(str)
	return str
end

function asserts.AssertActionOnFailure(str)
	assert(str)
	assert(type(str) == "string", "Expected ActionOnFailure to be of type 'string'")
end

--  
function M.ActionOnFailure(str)
	asserts.AssertActionOnFailure(str)
	return str
end

function asserts.AssertStepState(str)
	assert(str)
	assert(type(str) == "string", "Expected StepState to be of type 'string'")
end

--  
function M.StepState(str)
	asserts.AssertStepState(str)
	return str
end

function asserts.AssertInstanceGroupType(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceGroupType to be of type 'string'")
end

--  
function M.InstanceGroupType(str)
	asserts.AssertInstanceGroupType(str)
	return str
end

function asserts.AssertInstanceRoleType(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceRoleType to be of type 'string'")
end

--  
function M.InstanceRoleType(str)
	asserts.AssertInstanceRoleType(str)
	return str
end

function asserts.AssertInstanceGroupId(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceGroupId to be of type 'string'")
end

--  
function M.InstanceGroupId(str)
	asserts.AssertInstanceGroupId(str)
	return str
end

function asserts.AssertXmlString(str)
	assert(str)
	assert(type(str) == "string", "Expected XmlString to be of type 'string'")
	assert(#str <= 10280, "Expected string to be max 10280 characters")
end

--  
function M.XmlString(str)
	asserts.AssertXmlString(str)
	return str
end

function asserts.AssertSpotProvisioningTimeoutAction(str)
	assert(str)
	assert(type(str) == "string", "Expected SpotProvisioningTimeoutAction to be of type 'string'")
end

--  
function M.SpotProvisioningTimeoutAction(str)
	asserts.AssertSpotProvisioningTimeoutAction(str)
	return str
end

function asserts.AssertAdjustmentType(str)
	assert(str)
	assert(type(str) == "string", "Expected AdjustmentType to be of type 'string'")
end

--  
function M.AdjustmentType(str)
	asserts.AssertAdjustmentType(str)
	return str
end

function asserts.AssertRepoUpgradeOnBoot(str)
	assert(str)
	assert(type(str) == "string", "Expected RepoUpgradeOnBoot to be of type 'string'")
end

--  
function M.RepoUpgradeOnBoot(str)
	asserts.AssertRepoUpgradeOnBoot(str)
	return str
end

function asserts.AssertClusterStateChangeReasonCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ClusterStateChangeReasonCode to be of type 'string'")
end

--  
function M.ClusterStateChangeReasonCode(str)
	asserts.AssertClusterStateChangeReasonCode(str)
	return str
end

function asserts.AssertErrorCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorCode to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ErrorCode(str)
	asserts.AssertErrorCode(str)
	return str
end

function asserts.AssertScaleDownBehavior(str)
	assert(str)
	assert(type(str) == "string", "Expected ScaleDownBehavior to be of type 'string'")
end

--  
function M.ScaleDownBehavior(str)
	asserts.AssertScaleDownBehavior(str)
	return str
end

function asserts.AssertInstanceCollectionType(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceCollectionType to be of type 'string'")
end

--  
function M.InstanceCollectionType(str)
	asserts.AssertInstanceCollectionType(str)
	return str
end

function asserts.AssertMarketType(str)
	assert(str)
	assert(type(str) == "string", "Expected MarketType to be of type 'string'")
end

--  
function M.MarketType(str)
	asserts.AssertMarketType(str)
	return str
end

function asserts.AssertInstanceStateChangeReasonCode(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceStateChangeReasonCode to be of type 'string'")
end

--  
function M.InstanceStateChangeReasonCode(str)
	asserts.AssertInstanceStateChangeReasonCode(str)
	return str
end

function asserts.AssertStepId(str)
	assert(str)
	assert(type(str) == "string", "Expected StepId to be of type 'string'")
end

--  
function M.StepId(str)
	asserts.AssertStepId(str)
	return str
end

function asserts.AssertXmlStringMaxLen256(str)
	assert(str)
	assert(type(str) == "string", "Expected XmlStringMaxLen256 to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.XmlStringMaxLen256(str)
	asserts.AssertXmlStringMaxLen256(str)
	return str
end

function asserts.AssertInstanceType(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceType to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.InstanceType(str)
	asserts.AssertInstanceType(str)
	return str
end

function asserts.AssertComparisonOperator(str)
	assert(str)
	assert(type(str) == "string", "Expected ComparisonOperator to be of type 'string'")
end

--  
function M.ComparisonOperator(str)
	asserts.AssertComparisonOperator(str)
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

function asserts.AssertUnit(str)
	assert(str)
	assert(type(str) == "string", "Expected Unit to be of type 'string'")
end

--  
function M.Unit(str)
	asserts.AssertUnit(str)
	return str
end

function asserts.AssertErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorMessage to be of type 'string'")
end

--  
function M.ErrorMessage(str)
	asserts.AssertErrorMessage(str)
	return str
end

function asserts.AssertStepStateChangeReasonCode(str)
	assert(str)
	assert(type(str) == "string", "Expected StepStateChangeReasonCode to be of type 'string'")
end

--  
function M.StepStateChangeReasonCode(str)
	asserts.AssertStepStateChangeReasonCode(str)
	return str
end

function asserts.AssertInstanceGroupStateChangeReasonCode(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceGroupStateChangeReasonCode to be of type 'string'")
end

--  
function M.InstanceGroupStateChangeReasonCode(str)
	asserts.AssertInstanceGroupStateChangeReasonCode(str)
	return str
end

function asserts.AssertAutoScalingPolicyState(str)
	assert(str)
	assert(type(str) == "string", "Expected AutoScalingPolicyState to be of type 'string'")
end

--  
function M.AutoScalingPolicyState(str)
	asserts.AssertAutoScalingPolicyState(str)
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

function asserts.AssertResourceId(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceId to be of type 'string'")
end

--  
function M.ResourceId(str)
	asserts.AssertResourceId(str)
	return str
end

function asserts.AssertClusterId(str)
	assert(str)
	assert(type(str) == "string", "Expected ClusterId to be of type 'string'")
end

--  
function M.ClusterId(str)
	asserts.AssertClusterId(str)
	return str
end

function asserts.AssertInstanceFleetId(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceFleetId to be of type 'string'")
end

--  
function M.InstanceFleetId(str)
	asserts.AssertInstanceFleetId(str)
	return str
end

function asserts.AssertCancelStepsRequestStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected CancelStepsRequestStatus to be of type 'string'")
end

--  
function M.CancelStepsRequestStatus(str)
	asserts.AssertCancelStepsRequestStatus(str)
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

function asserts.AssertInstanceFleetType(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceFleetType to be of type 'string'")
end

--  
function M.InstanceFleetType(str)
	asserts.AssertInstanceFleetType(str)
	return str
end

function asserts.AssertJobFlowExecutionState(str)
	assert(str)
	assert(type(str) == "string", "Expected JobFlowExecutionState to be of type 'string'")
end

-- <p>The type of instance.</p>
function M.JobFlowExecutionState(str)
	asserts.AssertJobFlowExecutionState(str)
	return str
end

function asserts.AssertClusterState(str)
	assert(str)
	assert(type(str) == "string", "Expected ClusterState to be of type 'string'")
end

--  
function M.ClusterState(str)
	asserts.AssertClusterState(str)
	return str
end

function asserts.AssertNonNegativeDouble(double)
	assert(double)
	assert(type(double) == "number", "Expected NonNegativeDouble to be of type 'number'")
end

function M.NonNegativeDouble(double)
	asserts.AssertNonNegativeDouble(double)
	return double
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

function asserts.AssertWholeNumber(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected WholeNumber to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.WholeNumber(integer)
	asserts.AssertWholeNumber(integer)
	return integer
end

function asserts.AssertBooleanObject(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected BooleanObject to be of type 'boolean'")
end

function M.BooleanObject(boolean)
	asserts.AssertBooleanObject(boolean)
	return boolean
end

function asserts.AssertBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Boolean to be of type 'boolean'")
end

function M.Boolean(boolean)
	asserts.AssertBoolean(boolean)
	return boolean
end

function asserts.AssertStringMap(map)
	assert(map)
	assert(type(map) == "table", "Expected StringMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertString(k)
		asserts.AssertString(v)
	end
end

function M.StringMap(map)
	asserts.AssertStringMap(map)
	return map
end

function asserts.AssertDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Date to be of type 'string'")
end

function M.Date(timestamp)
	asserts.AssertDate(timestamp)
	return timestamp
end

function asserts.AssertApplicationList(list)
	assert(list)
	assert(type(list) == "table", "Expected ApplicationList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertApplication(v)
	end
end

--  
-- List of Application objects
function M.ApplicationList(list)
	asserts.AssertApplicationList(list)
	return list
end

function asserts.AssertInstanceGroupConfigList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceGroupConfigList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInstanceGroupConfig(v)
	end
end

--  
-- List of InstanceGroupConfig objects
function M.InstanceGroupConfigList(list)
	asserts.AssertInstanceGroupConfigList(list)
	return list
end

function asserts.AssertXmlStringMaxLen256List(list)
	assert(list)
	assert(type(list) == "table", "Expected XmlStringMaxLen256List to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertXmlStringMaxLen256(v)
	end
end

--  
-- List of XmlStringMaxLen256 objects
function M.XmlStringMaxLen256List(list)
	asserts.AssertXmlStringMaxLen256List(list)
	return list
end

function asserts.AssertInstanceGroupDetailList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceGroupDetailList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInstanceGroupDetail(v)
	end
end

--  
-- List of InstanceGroupDetail objects
function M.InstanceGroupDetailList(list)
	asserts.AssertInstanceGroupDetailList(list)
	return list
end

function asserts.AssertClusterStateList(list)
	assert(list)
	assert(type(list) == "table", "Expected ClusterStateList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertClusterState(v)
	end
end

--  
-- List of ClusterState objects
function M.ClusterStateList(list)
	asserts.AssertClusterStateList(list)
	return list
end

function asserts.AssertJobFlowExecutionStateList(list)
	assert(list)
	assert(type(list) == "table", "Expected JobFlowExecutionStateList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertJobFlowExecutionState(v)
	end
end

--  
-- List of JobFlowExecutionState objects
function M.JobFlowExecutionStateList(list)
	asserts.AssertJobFlowExecutionStateList(list)
	return list
end

function asserts.AssertInstanceGroupModifyConfigList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceGroupModifyConfigList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInstanceGroupModifyConfig(v)
	end
end

--  
-- List of InstanceGroupModifyConfig objects
function M.InstanceGroupModifyConfigList(list)
	asserts.AssertInstanceGroupModifyConfigList(list)
	return list
end

function asserts.AssertInstanceGroupIdsList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceGroupIdsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertXmlStringMaxLen256(v)
	end
end

--  
-- List of XmlStringMaxLen256 objects
function M.InstanceGroupIdsList(list)
	asserts.AssertInstanceGroupIdsList(list)
	return list
end

function asserts.AssertMetricDimensionList(list)
	assert(list)
	assert(type(list) == "table", "Expected MetricDimensionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertMetricDimension(v)
	end
end

--  
-- List of MetricDimension objects
function M.MetricDimensionList(list)
	asserts.AssertMetricDimensionList(list)
	return list
end

function asserts.AssertKeyValueList(list)
	assert(list)
	assert(type(list) == "table", "Expected KeyValueList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertKeyValue(v)
	end
end

--  
-- List of KeyValue objects
function M.KeyValueList(list)
	asserts.AssertKeyValueList(list)
	return list
end

function asserts.AssertSecurityGroupsList(list)
	assert(list)
	assert(type(list) == "table", "Expected SecurityGroupsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertXmlStringMaxLen256(v)
	end
end

--  
-- List of XmlStringMaxLen256 objects
function M.SecurityGroupsList(list)
	asserts.AssertSecurityGroupsList(list)
	return list
end

function asserts.AssertEC2InstanceIdsToTerminateList(list)
	assert(list)
	assert(type(list) == "table", "Expected EC2InstanceIdsToTerminateList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInstanceId(v)
	end
end

--  
-- List of InstanceId objects
function M.EC2InstanceIdsToTerminateList(list)
	asserts.AssertEC2InstanceIdsToTerminateList(list)
	return list
end

function asserts.AssertInstanceTypeSpecificationList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceTypeSpecificationList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInstanceTypeSpecification(v)
	end
end

--  
-- List of InstanceTypeSpecification objects
function M.InstanceTypeSpecificationList(list)
	asserts.AssertInstanceTypeSpecificationList(list)
	return list
end

function asserts.AssertInstanceList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInstance(v)
	end
end

--  
-- List of Instance objects
function M.InstanceList(list)
	asserts.AssertInstanceList(list)
	return list
end

function asserts.AssertStringList(list)
	assert(list)
	assert(type(list) == "table", "Expected StringList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.StringList(list)
	asserts.AssertStringList(list)
	return list
end

function asserts.AssertStepConfigList(list)
	assert(list)
	assert(type(list) == "table", "Expected StepConfigList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertStepConfig(v)
	end
end

--  
-- List of StepConfig objects
function M.StepConfigList(list)
	asserts.AssertStepConfigList(list)
	return list
end

function asserts.AssertInstanceGroupTypeList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceGroupTypeList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInstanceGroupType(v)
	end
end

--  
-- List of InstanceGroupType objects
function M.InstanceGroupTypeList(list)
	asserts.AssertInstanceGroupTypeList(list)
	return list
end

function asserts.AssertBootstrapActionDetailList(list)
	assert(list)
	assert(type(list) == "table", "Expected BootstrapActionDetailList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBootstrapActionDetail(v)
	end
end

--  
-- List of BootstrapActionDetail objects
function M.BootstrapActionDetailList(list)
	asserts.AssertBootstrapActionDetailList(list)
	return list
end

function asserts.AssertInstanceFleetList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceFleetList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInstanceFleet(v)
	end
end

--  
-- List of InstanceFleet objects
function M.InstanceFleetList(list)
	asserts.AssertInstanceFleetList(list)
	return list
end

function asserts.AssertNewSupportedProductsList(list)
	assert(list)
	assert(type(list) == "table", "Expected NewSupportedProductsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSupportedProductConfig(v)
	end
end

--  
-- List of SupportedProductConfig objects
function M.NewSupportedProductsList(list)
	asserts.AssertNewSupportedProductsList(list)
	return list
end

function asserts.AssertEbsBlockDeviceList(list)
	assert(list)
	assert(type(list) == "table", "Expected EbsBlockDeviceList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEbsBlockDevice(v)
	end
end

--  
-- List of EbsBlockDevice objects
function M.EbsBlockDeviceList(list)
	asserts.AssertEbsBlockDeviceList(list)
	return list
end

function asserts.AssertStepDetailList(list)
	assert(list)
	assert(type(list) == "table", "Expected StepDetailList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertStepDetail(v)
	end
end

--  
-- List of StepDetail objects
function M.StepDetailList(list)
	asserts.AssertStepDetailList(list)
	return list
end

function asserts.AssertInstanceFleetConfigList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceFleetConfigList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInstanceFleetConfig(v)
	end
end

--  
-- List of InstanceFleetConfig objects
function M.InstanceFleetConfigList(list)
	asserts.AssertInstanceFleetConfigList(list)
	return list
end

function asserts.AssertStepStateList(list)
	assert(list)
	assert(type(list) == "table", "Expected StepStateList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertStepState(v)
	end
end

--  
-- List of StepState objects
function M.StepStateList(list)
	asserts.AssertStepStateList(list)
	return list
end

function asserts.AssertCommandList(list)
	assert(list)
	assert(type(list) == "table", "Expected CommandList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCommand(v)
	end
end

--  
-- List of Command objects
function M.CommandList(list)
	asserts.AssertCommandList(list)
	return list
end

function asserts.AssertStepIdsList(list)
	assert(list)
	assert(type(list) == "table", "Expected StepIdsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertXmlStringMaxLen256(v)
	end
end

--  
-- List of XmlStringMaxLen256 objects
function M.StepIdsList(list)
	asserts.AssertStepIdsList(list)
	return list
end

function asserts.AssertXmlStringList(list)
	assert(list)
	assert(type(list) == "table", "Expected XmlStringList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertXmlString(v)
	end
end

--  
-- List of XmlString objects
function M.XmlStringList(list)
	asserts.AssertXmlStringList(list)
	return list
end

function asserts.AssertCancelStepsInfoList(list)
	assert(list)
	assert(type(list) == "table", "Expected CancelStepsInfoList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCancelStepsInfo(v)
	end
end

--  
-- List of CancelStepsInfo objects
function M.CancelStepsInfoList(list)
	asserts.AssertCancelStepsInfoList(list)
	return list
end

function asserts.AssertTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagList to be of type ''table")
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

function asserts.AssertClusterSummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected ClusterSummaryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertClusterSummary(v)
	end
end

--  
-- List of ClusterSummary objects
function M.ClusterSummaryList(list)
	asserts.AssertClusterSummaryList(list)
	return list
end

function asserts.AssertInstanceGroupList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceGroupList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInstanceGroup(v)
	end
end

--  
-- List of InstanceGroup objects
function M.InstanceGroupList(list)
	asserts.AssertInstanceGroupList(list)
	return list
end

function asserts.AssertInstanceTypeConfigList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceTypeConfigList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInstanceTypeConfig(v)
	end
end

--  
-- List of InstanceTypeConfig objects
function M.InstanceTypeConfigList(list)
	asserts.AssertInstanceTypeConfigList(list)
	return list
end

function asserts.AssertInstanceStateList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceStateList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInstanceState(v)
	end
end

--  
-- List of InstanceState objects
function M.InstanceStateList(list)
	asserts.AssertInstanceStateList(list)
	return list
end

function asserts.AssertEC2InstanceIdsList(list)
	assert(list)
	assert(type(list) == "table", "Expected EC2InstanceIdsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInstanceId(v)
	end
end

--  
-- List of InstanceId objects
function M.EC2InstanceIdsList(list)
	asserts.AssertEC2InstanceIdsList(list)
	return list
end

function asserts.AssertEbsVolumeList(list)
	assert(list)
	assert(type(list) == "table", "Expected EbsVolumeList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEbsVolume(v)
	end
end

--  
-- List of EbsVolume objects
function M.EbsVolumeList(list)
	asserts.AssertEbsVolumeList(list)
	return list
end

function asserts.AssertConfigurationList(list)
	assert(list)
	assert(type(list) == "table", "Expected ConfigurationList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertConfiguration(v)
	end
end

--  
-- List of Configuration objects
function M.ConfigurationList(list)
	asserts.AssertConfigurationList(list)
	return list
end

function asserts.AssertJobFlowDetailList(list)
	assert(list)
	assert(type(list) == "table", "Expected JobFlowDetailList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertJobFlowDetail(v)
	end
end

--  
-- List of JobFlowDetail objects
function M.JobFlowDetailList(list)
	asserts.AssertJobFlowDetailList(list)
	return list
end

function asserts.AssertStepSummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected StepSummaryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertStepSummary(v)
	end
end

--  
-- List of StepSummary objects
function M.StepSummaryList(list)
	asserts.AssertStepSummaryList(list)
	return list
end

function asserts.AssertSecurityConfigurationList(list)
	assert(list)
	assert(type(list) == "table", "Expected SecurityConfigurationList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSecurityConfigurationSummary(v)
	end
end

--  
-- List of SecurityConfigurationSummary objects
function M.SecurityConfigurationList(list)
	asserts.AssertSecurityConfigurationList(list)
	return list
end

function asserts.AssertScalingRuleList(list)
	assert(list)
	assert(type(list) == "table", "Expected ScalingRuleList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertScalingRule(v)
	end
end

--  
-- List of ScalingRule objects
function M.ScalingRuleList(list)
	asserts.AssertScalingRuleList(list)
	return list
end

function asserts.AssertEbsBlockDeviceConfigList(list)
	assert(list)
	assert(type(list) == "table", "Expected EbsBlockDeviceConfigList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEbsBlockDeviceConfig(v)
	end
end

--  
-- List of EbsBlockDeviceConfig objects
function M.EbsBlockDeviceConfigList(list)
	asserts.AssertEbsBlockDeviceConfigList(list)
	return list
end

function asserts.AssertBootstrapActionConfigList(list)
	assert(list)
	assert(type(list) == "table", "Expected BootstrapActionConfigList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBootstrapActionConfig(v)
	end
end

--  
-- List of BootstrapActionConfig objects
function M.BootstrapActionConfigList(list)
	asserts.AssertBootstrapActionConfigList(list)
	return list
end

function asserts.AssertSupportedProductsList(list)
	assert(list)
	assert(type(list) == "table", "Expected SupportedProductsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertXmlStringMaxLen256(v)
	end
end

--  
-- List of XmlStringMaxLen256 objects
function M.SupportedProductsList(list)
	asserts.AssertSupportedProductsList(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


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
--- Call CancelSteps asynchronously, invoking a callback when done
-- @param CancelStepsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CancelStepsAsync(CancelStepsInput, cb)
	assert(CancelStepsInput, "You must provide a CancelStepsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "ElasticMapReduce.CancelSteps",
	}
	for header,value in pairs(CancelStepsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CancelStepsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CancelSteps synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CancelStepsInput
-- @return response
-- @return error_type
-- @return error_message
function M.CancelStepsSync(CancelStepsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CancelStepsAsync(CancelStepsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RemoveAutoScalingPolicy asynchronously, invoking a callback when done
-- @param RemoveAutoScalingPolicyInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RemoveAutoScalingPolicyAsync(RemoveAutoScalingPolicyInput, cb)
	assert(RemoveAutoScalingPolicyInput, "You must provide a RemoveAutoScalingPolicyInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "ElasticMapReduce.RemoveAutoScalingPolicy",
	}
	for header,value in pairs(RemoveAutoScalingPolicyInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RemoveAutoScalingPolicyInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RemoveAutoScalingPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RemoveAutoScalingPolicyInput
-- @return response
-- @return error_type
-- @return error_message
function M.RemoveAutoScalingPolicySync(RemoveAutoScalingPolicyInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RemoveAutoScalingPolicyAsync(RemoveAutoScalingPolicyInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateSecurityConfiguration asynchronously, invoking a callback when done
-- @param CreateSecurityConfigurationInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateSecurityConfigurationAsync(CreateSecurityConfigurationInput, cb)
	assert(CreateSecurityConfigurationInput, "You must provide a CreateSecurityConfigurationInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "ElasticMapReduce.CreateSecurityConfiguration",
	}
	for header,value in pairs(CreateSecurityConfigurationInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateSecurityConfigurationInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateSecurityConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateSecurityConfigurationInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateSecurityConfigurationSync(CreateSecurityConfigurationInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateSecurityConfigurationAsync(CreateSecurityConfigurationInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RunJobFlow asynchronously, invoking a callback when done
-- @param RunJobFlowInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RunJobFlowAsync(RunJobFlowInput, cb)
	assert(RunJobFlowInput, "You must provide a RunJobFlowInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "ElasticMapReduce.RunJobFlow",
	}
	for header,value in pairs(RunJobFlowInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RunJobFlowInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RunJobFlow synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RunJobFlowInput
-- @return response
-- @return error_type
-- @return error_message
function M.RunJobFlowSync(RunJobFlowInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RunJobFlowAsync(RunJobFlowInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeSecurityConfiguration asynchronously, invoking a callback when done
-- @param DescribeSecurityConfigurationInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeSecurityConfigurationAsync(DescribeSecurityConfigurationInput, cb)
	assert(DescribeSecurityConfigurationInput, "You must provide a DescribeSecurityConfigurationInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "ElasticMapReduce.DescribeSecurityConfiguration",
	}
	for header,value in pairs(DescribeSecurityConfigurationInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeSecurityConfigurationInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeSecurityConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeSecurityConfigurationInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeSecurityConfigurationSync(DescribeSecurityConfigurationInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeSecurityConfigurationAsync(DescribeSecurityConfigurationInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListSecurityConfigurations asynchronously, invoking a callback when done
-- @param ListSecurityConfigurationsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListSecurityConfigurationsAsync(ListSecurityConfigurationsInput, cb)
	assert(ListSecurityConfigurationsInput, "You must provide a ListSecurityConfigurationsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "ElasticMapReduce.ListSecurityConfigurations",
	}
	for header,value in pairs(ListSecurityConfigurationsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListSecurityConfigurationsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListSecurityConfigurations synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListSecurityConfigurationsInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListSecurityConfigurationsSync(ListSecurityConfigurationsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListSecurityConfigurationsAsync(ListSecurityConfigurationsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SetTerminationProtection asynchronously, invoking a callback when done
-- @param SetTerminationProtectionInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SetTerminationProtectionAsync(SetTerminationProtectionInput, cb)
	assert(SetTerminationProtectionInput, "You must provide a SetTerminationProtectionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "ElasticMapReduce.SetTerminationProtection",
	}
	for header,value in pairs(SetTerminationProtectionInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SetTerminationProtectionInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SetTerminationProtection synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetTerminationProtectionInput
-- @return response
-- @return error_type
-- @return error_message
function M.SetTerminationProtectionSync(SetTerminationProtectionInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetTerminationProtectionAsync(SetTerminationProtectionInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteSecurityConfiguration asynchronously, invoking a callback when done
-- @param DeleteSecurityConfigurationInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteSecurityConfigurationAsync(DeleteSecurityConfigurationInput, cb)
	assert(DeleteSecurityConfigurationInput, "You must provide a DeleteSecurityConfigurationInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "ElasticMapReduce.DeleteSecurityConfiguration",
	}
	for header,value in pairs(DeleteSecurityConfigurationInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteSecurityConfigurationInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteSecurityConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteSecurityConfigurationInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteSecurityConfigurationSync(DeleteSecurityConfigurationInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteSecurityConfigurationAsync(DeleteSecurityConfigurationInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AddInstanceGroups asynchronously, invoking a callback when done
-- @param AddInstanceGroupsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AddInstanceGroupsAsync(AddInstanceGroupsInput, cb)
	assert(AddInstanceGroupsInput, "You must provide a AddInstanceGroupsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "ElasticMapReduce.AddInstanceGroups",
	}
	for header,value in pairs(AddInstanceGroupsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AddInstanceGroupsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AddInstanceGroups synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AddInstanceGroupsInput
-- @return response
-- @return error_type
-- @return error_message
function M.AddInstanceGroupsSync(AddInstanceGroupsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddInstanceGroupsAsync(AddInstanceGroupsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListBootstrapActions asynchronously, invoking a callback when done
-- @param ListBootstrapActionsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListBootstrapActionsAsync(ListBootstrapActionsInput, cb)
	assert(ListBootstrapActionsInput, "You must provide a ListBootstrapActionsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "ElasticMapReduce.ListBootstrapActions",
	}
	for header,value in pairs(ListBootstrapActionsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListBootstrapActionsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListBootstrapActions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListBootstrapActionsInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListBootstrapActionsSync(ListBootstrapActionsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListBootstrapActionsAsync(ListBootstrapActionsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListClusters asynchronously, invoking a callback when done
-- @param ListClustersInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListClustersAsync(ListClustersInput, cb)
	assert(ListClustersInput, "You must provide a ListClustersInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "ElasticMapReduce.ListClusters",
	}
	for header,value in pairs(ListClustersInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListClustersInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListClusters synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListClustersInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListClustersSync(ListClustersInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListClustersAsync(ListClustersInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListInstances asynchronously, invoking a callback when done
-- @param ListInstancesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListInstancesAsync(ListInstancesInput, cb)
	assert(ListInstancesInput, "You must provide a ListInstancesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "ElasticMapReduce.ListInstances",
	}
	for header,value in pairs(ListInstancesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListInstancesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListInstances synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListInstancesInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListInstancesSync(ListInstancesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListInstancesAsync(ListInstancesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeCluster asynchronously, invoking a callback when done
-- @param DescribeClusterInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeClusterAsync(DescribeClusterInput, cb)
	assert(DescribeClusterInput, "You must provide a DescribeClusterInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "ElasticMapReduce.DescribeCluster",
	}
	for header,value in pairs(DescribeClusterInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeClusterInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeCluster synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeClusterInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeClusterSync(DescribeClusterInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeClusterAsync(DescribeClusterInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListSteps asynchronously, invoking a callback when done
-- @param ListStepsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListStepsAsync(ListStepsInput, cb)
	assert(ListStepsInput, "You must provide a ListStepsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "ElasticMapReduce.ListSteps",
	}
	for header,value in pairs(ListStepsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListStepsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListSteps synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListStepsInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListStepsSync(ListStepsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListStepsAsync(ListStepsInput, function(response, error_type, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = "ElasticMapReduce.RemoveTags",
	}
	for header,value in pairs(RemoveTagsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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

--- Call ModifyInstanceGroups asynchronously, invoking a callback when done
-- @param ModifyInstanceGroupsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ModifyInstanceGroupsAsync(ModifyInstanceGroupsInput, cb)
	assert(ModifyInstanceGroupsInput, "You must provide a ModifyInstanceGroupsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "ElasticMapReduce.ModifyInstanceGroups",
	}
	for header,value in pairs(ModifyInstanceGroupsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ModifyInstanceGroupsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ModifyInstanceGroups synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ModifyInstanceGroupsInput
-- @return response
-- @return error_type
-- @return error_message
function M.ModifyInstanceGroupsSync(ModifyInstanceGroupsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyInstanceGroupsAsync(ModifyInstanceGroupsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutAutoScalingPolicy asynchronously, invoking a callback when done
-- @param PutAutoScalingPolicyInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutAutoScalingPolicyAsync(PutAutoScalingPolicyInput, cb)
	assert(PutAutoScalingPolicyInput, "You must provide a PutAutoScalingPolicyInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "ElasticMapReduce.PutAutoScalingPolicy",
	}
	for header,value in pairs(PutAutoScalingPolicyInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutAutoScalingPolicyInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutAutoScalingPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutAutoScalingPolicyInput
-- @return response
-- @return error_type
-- @return error_message
function M.PutAutoScalingPolicySync(PutAutoScalingPolicyInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutAutoScalingPolicyAsync(PutAutoScalingPolicyInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AddInstanceFleet asynchronously, invoking a callback when done
-- @param AddInstanceFleetInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AddInstanceFleetAsync(AddInstanceFleetInput, cb)
	assert(AddInstanceFleetInput, "You must provide a AddInstanceFleetInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "ElasticMapReduce.AddInstanceFleet",
	}
	for header,value in pairs(AddInstanceFleetInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AddInstanceFleetInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AddInstanceFleet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AddInstanceFleetInput
-- @return response
-- @return error_type
-- @return error_message
function M.AddInstanceFleetSync(AddInstanceFleetInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddInstanceFleetAsync(AddInstanceFleetInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SetVisibleToAllUsers asynchronously, invoking a callback when done
-- @param SetVisibleToAllUsersInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SetVisibleToAllUsersAsync(SetVisibleToAllUsersInput, cb)
	assert(SetVisibleToAllUsersInput, "You must provide a SetVisibleToAllUsersInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "ElasticMapReduce.SetVisibleToAllUsers",
	}
	for header,value in pairs(SetVisibleToAllUsersInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SetVisibleToAllUsersInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SetVisibleToAllUsers synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetVisibleToAllUsersInput
-- @return response
-- @return error_type
-- @return error_message
function M.SetVisibleToAllUsersSync(SetVisibleToAllUsersInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetVisibleToAllUsersAsync(SetVisibleToAllUsersInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListInstanceFleets asynchronously, invoking a callback when done
-- @param ListInstanceFleetsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListInstanceFleetsAsync(ListInstanceFleetsInput, cb)
	assert(ListInstanceFleetsInput, "You must provide a ListInstanceFleetsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "ElasticMapReduce.ListInstanceFleets",
	}
	for header,value in pairs(ListInstanceFleetsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListInstanceFleetsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListInstanceFleets synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListInstanceFleetsInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListInstanceFleetsSync(ListInstanceFleetsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListInstanceFleetsAsync(ListInstanceFleetsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call TerminateJobFlows asynchronously, invoking a callback when done
-- @param TerminateJobFlowsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.TerminateJobFlowsAsync(TerminateJobFlowsInput, cb)
	assert(TerminateJobFlowsInput, "You must provide a TerminateJobFlowsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "ElasticMapReduce.TerminateJobFlows",
	}
	for header,value in pairs(TerminateJobFlowsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", TerminateJobFlowsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call TerminateJobFlows synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param TerminateJobFlowsInput
-- @return response
-- @return error_type
-- @return error_message
function M.TerminateJobFlowsSync(TerminateJobFlowsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.TerminateJobFlowsAsync(TerminateJobFlowsInput, function(response, error_type, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = "ElasticMapReduce.AddTags",
	}
	for header,value in pairs(AddTagsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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

--- Call ModifyInstanceFleet asynchronously, invoking a callback when done
-- @param ModifyInstanceFleetInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ModifyInstanceFleetAsync(ModifyInstanceFleetInput, cb)
	assert(ModifyInstanceFleetInput, "You must provide a ModifyInstanceFleetInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "ElasticMapReduce.ModifyInstanceFleet",
	}
	for header,value in pairs(ModifyInstanceFleetInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ModifyInstanceFleetInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ModifyInstanceFleet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ModifyInstanceFleetInput
-- @return response
-- @return error_type
-- @return error_message
function M.ModifyInstanceFleetSync(ModifyInstanceFleetInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyInstanceFleetAsync(ModifyInstanceFleetInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AddJobFlowSteps asynchronously, invoking a callback when done
-- @param AddJobFlowStepsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AddJobFlowStepsAsync(AddJobFlowStepsInput, cb)
	assert(AddJobFlowStepsInput, "You must provide a AddJobFlowStepsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "ElasticMapReduce.AddJobFlowSteps",
	}
	for header,value in pairs(AddJobFlowStepsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AddJobFlowStepsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AddJobFlowSteps synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AddJobFlowStepsInput
-- @return response
-- @return error_type
-- @return error_message
function M.AddJobFlowStepsSync(AddJobFlowStepsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddJobFlowStepsAsync(AddJobFlowStepsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListInstanceGroups asynchronously, invoking a callback when done
-- @param ListInstanceGroupsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListInstanceGroupsAsync(ListInstanceGroupsInput, cb)
	assert(ListInstanceGroupsInput, "You must provide a ListInstanceGroupsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "ElasticMapReduce.ListInstanceGroups",
	}
	for header,value in pairs(ListInstanceGroupsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListInstanceGroupsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListInstanceGroups synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListInstanceGroupsInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListInstanceGroupsSync(ListInstanceGroupsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListInstanceGroupsAsync(ListInstanceGroupsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeStep asynchronously, invoking a callback when done
-- @param DescribeStepInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeStepAsync(DescribeStepInput, cb)
	assert(DescribeStepInput, "You must provide a DescribeStepInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "ElasticMapReduce.DescribeStep",
	}
	for header,value in pairs(DescribeStepInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeStepInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeStep synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeStepInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeStepSync(DescribeStepInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeStepAsync(DescribeStepInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
