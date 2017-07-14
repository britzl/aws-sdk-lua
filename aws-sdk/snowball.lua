--- GENERATED CODE - DO NOT MODIFY
-- Amazon Import/Export Snowball (snowball-2016-06-30)

local M = {}

M.metadata = {
	api_version = "2016-06-30",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "snowball",
	service_abbreviation = "Amazon Snowball",
	service_full_name = "Amazon Import/Export Snowball",
	signature_version = "v4",
	target_prefix = "AWSIESnowballJobManagementService",
	timestamp_format = "",
	global_endpoint = "",
	uid = "snowball-2016-06-30",
}

local CancelClusterRequest_keys = { "ClusterId" = true, nil }

function M.AssertCancelClusterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelClusterRequest to be of type 'table'")
	assert(struct["ClusterId"], "Expected key ClusterId to exist in table")
	if struct["ClusterId"] then M.AssertClusterId(struct["ClusterId"]) end
	for k,_ in pairs(struct) do
		assert(CancelClusterRequest_keys[k], "CancelClusterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelClusterRequest
--  
-- @param ClusterId [ClusterId] <p>The 39-character ID for the cluster that you want to cancel, for example <code>CID123e4567-e89b-12d3-a456-426655440000</code>.</p>
-- Required parameter: ClusterId
function M.CancelClusterRequest(ClusterId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CancelClusterRequest")
	local t = { 
		["ClusterId"] = ClusterId,
	}
	M.AssertCancelClusterRequest(t)
	return t
end

local CancelClusterResult_keys = { nil }

function M.AssertCancelClusterResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelClusterResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(CancelClusterResult_keys[k], "CancelClusterResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelClusterResult
--  
function M.CancelClusterResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CancelClusterResult")
	local t = { 
	}
	M.AssertCancelClusterResult(t)
	return t
end

local UpdateJobRequest_keys = { "Description" = true, "AddressId" = true, "Notification" = true, "RoleARN" = true, "JobId" = true, "ShippingOption" = true, "ForwardingAddressId" = true, "SnowballCapacityPreference" = true, "Resources" = true, nil }

function M.AssertUpdateJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateJobRequest to be of type 'table'")
	assert(struct["JobId"], "Expected key JobId to exist in table")
	if struct["Description"] then M.AssertString(struct["Description"]) end
	if struct["AddressId"] then M.AssertAddressId(struct["AddressId"]) end
	if struct["Notification"] then M.AssertNotification(struct["Notification"]) end
	if struct["RoleARN"] then M.AssertRoleARN(struct["RoleARN"]) end
	if struct["JobId"] then M.AssertJobId(struct["JobId"]) end
	if struct["ShippingOption"] then M.AssertShippingOption(struct["ShippingOption"]) end
	if struct["ForwardingAddressId"] then M.AssertAddressId(struct["ForwardingAddressId"]) end
	if struct["SnowballCapacityPreference"] then M.AssertSnowballCapacity(struct["SnowballCapacityPreference"]) end
	if struct["Resources"] then M.AssertJobResource(struct["Resources"]) end
	for k,_ in pairs(struct) do
		assert(UpdateJobRequest_keys[k], "UpdateJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateJobRequest
--  
-- @param Description [String] <p>The updated description of this job's <a>JobMetadata</a> object.</p>
-- @param AddressId [AddressId] <p>The ID of the updated <a>Address</a> object.</p>
-- @param Notification [Notification] <p>The new or updated <a>Notification</a> object.</p>
-- @param RoleARN [RoleARN] <p>The new role Amazon Resource Name (ARN) that you want to associate with this job. To create a role ARN, use the <a href="http://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html">CreateRole</a>AWS Identity and Access Management (IAM) API action.</p>
-- @param JobId [JobId] <p>The job ID of the job that you want to update, for example <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>
-- @param ShippingOption [ShippingOption] <p>The updated shipping option value of this job's <a>ShippingDetails</a> object.</p>
-- @param ForwardingAddressId [AddressId] <p>The updated ID for the forwarding address for a job. This field is not supported in most regions.</p>
-- @param SnowballCapacityPreference [SnowballCapacity] <p>The updated <code>SnowballCapacityPreference</code> of this job's <a>JobMetadata</a> object. The 50 TB Snowballs are only available in the US regions.</p>
-- @param Resources [JobResource] <p>The updated <a>S3Resource</a> object (for a single Amazon S3 bucket or key range), or the updated <a>JobResource</a> object (for multiple buckets or key ranges). </p>
-- Required parameter: JobId
function M.UpdateJobRequest(Description, AddressId, Notification, RoleARN, JobId, ShippingOption, ForwardingAddressId, SnowballCapacityPreference, Resources, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateJobRequest")
	local t = { 
		["Description"] = Description,
		["AddressId"] = AddressId,
		["Notification"] = Notification,
		["RoleARN"] = RoleARN,
		["JobId"] = JobId,
		["ShippingOption"] = ShippingOption,
		["ForwardingAddressId"] = ForwardingAddressId,
		["SnowballCapacityPreference"] = SnowballCapacityPreference,
		["Resources"] = Resources,
	}
	M.AssertUpdateJobRequest(t)
	return t
end

local UnsupportedAddressException_keys = { "Message" = true, nil }

function M.AssertUnsupportedAddressException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsupportedAddressException to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(UnsupportedAddressException_keys[k], "UnsupportedAddressException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsupportedAddressException
-- <p>The address is either outside the serviceable area for your region, or an error occurred. Check the address with your region's carrier and try again. If the issue persists, contact AWS Support.</p>
-- @param Message [String] <p>The address is either outside the serviceable area for your region, or an error occurred. Check the address with your region's carrier and try again. If the issue persists, contact AWS Support.</p>
function M.UnsupportedAddressException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnsupportedAddressException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertUnsupportedAddressException(t)
	return t
end

local CreateJobRequest_keys = { "Description" = true, "AddressId" = true, "KmsKeyARN" = true, "Notification" = true, "RoleARN" = true, "ClusterId" = true, "ForwardingAddressId" = true, "ShippingOption" = true, "JobType" = true, "SnowballType" = true, "SnowballCapacityPreference" = true, "Resources" = true, nil }

function M.AssertCreateJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateJobRequest to be of type 'table'")
	if struct["Description"] then M.AssertString(struct["Description"]) end
	if struct["AddressId"] then M.AssertAddressId(struct["AddressId"]) end
	if struct["KmsKeyARN"] then M.AssertKmsKeyARN(struct["KmsKeyARN"]) end
	if struct["Notification"] then M.AssertNotification(struct["Notification"]) end
	if struct["RoleARN"] then M.AssertRoleARN(struct["RoleARN"]) end
	if struct["ClusterId"] then M.AssertClusterId(struct["ClusterId"]) end
	if struct["ForwardingAddressId"] then M.AssertAddressId(struct["ForwardingAddressId"]) end
	if struct["ShippingOption"] then M.AssertShippingOption(struct["ShippingOption"]) end
	if struct["JobType"] then M.AssertJobType(struct["JobType"]) end
	if struct["SnowballType"] then M.AssertSnowballType(struct["SnowballType"]) end
	if struct["SnowballCapacityPreference"] then M.AssertSnowballCapacity(struct["SnowballCapacityPreference"]) end
	if struct["Resources"] then M.AssertJobResource(struct["Resources"]) end
	for k,_ in pairs(struct) do
		assert(CreateJobRequest_keys[k], "CreateJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateJobRequest
--  
-- @param Description [String] <p>Defines an optional description of this specific job, for example <code>Important Photos 2016-08-11</code>.</p>
-- @param AddressId [AddressId] <p>The ID for the address that you want the Snowball shipped to.</p>
-- @param KmsKeyARN [KmsKeyARN] <p>The <code>KmsKeyARN</code> that you want to associate with this job. <code>KmsKeyARN</code>s are created using the <a href="http://docs.aws.amazon.com/kms/latest/APIReference/API_CreateKey.html">CreateKey</a> AWS Key Management Service (KMS) API action.</p>
-- @param Notification [Notification] <p>Defines the Amazon Simple Notification Service (Amazon SNS) notification settings for this job.</p>
-- @param RoleARN [RoleARN] <p>The <code>RoleARN</code> that you want to associate with this job. <code>RoleArn</code>s are created using the <a href="http://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html">CreateRole</a> AWS Identity and Access Management (IAM) API action.</p>
-- @param ClusterId [ClusterId] <p>The ID of a cluster. If you're creating a job for a node in a cluster, you need to provide only this <code>clusterId</code> value. The other job attributes are inherited from the cluster.</p>
-- @param ForwardingAddressId [AddressId] <p>The forwarding address ID for a job. This field is not supported in most regions.</p>
-- @param ShippingOption [ShippingOption] <p>The shipping speed for this job. This speed doesn't dictate how soon you'll get the Snowball, rather it represents how quickly the Snowball moves to its destination while in transit. Regional shipping speeds are as follows:</p> <ul> <li> <p>In Australia, you have access to express shipping. Typically, Snowballs shipped express are delivered in about a day.</p> </li> <li> <p>In the European Union (EU), you have access to express shipping. Typically, Snowballs shipped express are delivered in about a day. In addition, most countries in the EU have access to standard shipping, which typically takes less than a week, one way.</p> </li> <li> <p>In India, Snowballs are delivered in one to seven days.</p> </li> <li> <p>In the US, you have access to one-day shipping and two-day shipping.</p> </li> </ul>
-- @param JobType [JobType] <p>Defines the type of job that you're creating. </p>
-- @param SnowballType [SnowballType] <p>The type of AWS Snowball appliance to use for this job. Currently, the only supported appliance type for cluster jobs is <code>EDGE</code>.</p>
-- @param SnowballCapacityPreference [SnowballCapacity] <p>If your job is being created in one of the US regions, you have the option of specifying what size Snowball you'd like for this job. In all other regions, Snowballs come with 80 TB in storage capacity.</p>
-- @param Resources [JobResource] <p>Defines the Amazon S3 buckets associated with this job.</p> <p>With <code>IMPORT</code> jobs, you specify the bucket or buckets that your transferred data will be imported into.</p> <p>With <code>EXPORT</code> jobs, you specify the bucket or buckets that your transferred data will be exported from. Optionally, you can also specify a <code>KeyRange</code> value. If you choose to export a range, you define the length of the range by providing either an inclusive <code>BeginMarker</code> value, an inclusive <code>EndMarker</code> value, or both. Ranges are UTF-8 binary sorted.</p>
function M.CreateJobRequest(Description, AddressId, KmsKeyARN, Notification, RoleARN, ClusterId, ForwardingAddressId, ShippingOption, JobType, SnowballType, SnowballCapacityPreference, Resources, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateJobRequest")
	local t = { 
		["Description"] = Description,
		["AddressId"] = AddressId,
		["KmsKeyARN"] = KmsKeyARN,
		["Notification"] = Notification,
		["RoleARN"] = RoleARN,
		["ClusterId"] = ClusterId,
		["ForwardingAddressId"] = ForwardingAddressId,
		["ShippingOption"] = ShippingOption,
		["JobType"] = JobType,
		["SnowballType"] = SnowballType,
		["SnowballCapacityPreference"] = SnowballCapacityPreference,
		["Resources"] = Resources,
	}
	M.AssertCreateJobRequest(t)
	return t
end

local ListJobsRequest_keys = { "NextToken" = true, "MaxResults" = true, nil }

function M.AssertListJobsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListJobsRequest to be of type 'table'")
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertListLimit(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListJobsRequest_keys[k], "ListJobsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListJobsRequest
--  
-- @param NextToken [String] <p>HTTP requests are stateless. To identify what object comes "next" in the list of <code>JobListEntry</code> objects, you have the option of specifying <code>NextToken</code> as the starting point for your returned list.</p>
-- @param MaxResults [ListLimit] <p>The number of <code>JobListEntry</code> objects to return.</p>
function M.ListJobsRequest(NextToken, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListJobsRequest")
	local t = { 
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
	}
	M.AssertListJobsRequest(t)
	return t
end

local KMSRequestFailedException_keys = { "Message" = true, nil }

function M.AssertKMSRequestFailedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KMSRequestFailedException to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(KMSRequestFailedException_keys[k], "KMSRequestFailedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KMSRequestFailedException
-- <p>The provided AWS Key Management Service key lacks the permissions to perform the specified <a>CreateJob</a> or <a>UpdateJob</a> action.</p>
-- @param Message [String] <p>The provided AWS Key Management Service key lacks the permissions to perform the specified <a>CreateJob</a> or <a>UpdateJob</a> action.</p>
function M.KMSRequestFailedException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KMSRequestFailedException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertKMSRequestFailedException(t)
	return t
end

local InvalidResourceException_keys = { "Message" = true, nil }

function M.AssertInvalidResourceException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidResourceException to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidResourceException_keys[k], "InvalidResourceException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidResourceException
-- <p>The specified resource can't be found. Check the information you provided in your last request, and try again.</p>
-- @param Message [String] <p>The specified resource can't be found. Check the information you provided in your last request, and try again.</p>
function M.InvalidResourceException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidResourceException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidResourceException(t)
	return t
end

local ClusterMetadata_keys = { "Description" = true, "AddressId" = true, "KmsKeyARN" = true, "Notification" = true, "RoleARN" = true, "ClusterId" = true, "ForwardingAddressId" = true, "ClusterState" = true, "ShippingOption" = true, "Resources" = true, "SnowballType" = true, "CreationDate" = true, "JobType" = true, nil }

function M.AssertClusterMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterMetadata to be of type 'table'")
	if struct["Description"] then M.AssertString(struct["Description"]) end
	if struct["AddressId"] then M.AssertAddressId(struct["AddressId"]) end
	if struct["KmsKeyARN"] then M.AssertKmsKeyARN(struct["KmsKeyARN"]) end
	if struct["Notification"] then M.AssertNotification(struct["Notification"]) end
	if struct["RoleARN"] then M.AssertRoleARN(struct["RoleARN"]) end
	if struct["ClusterId"] then M.AssertString(struct["ClusterId"]) end
	if struct["ForwardingAddressId"] then M.AssertAddressId(struct["ForwardingAddressId"]) end
	if struct["ClusterState"] then M.AssertClusterState(struct["ClusterState"]) end
	if struct["ShippingOption"] then M.AssertShippingOption(struct["ShippingOption"]) end
	if struct["Resources"] then M.AssertJobResource(struct["Resources"]) end
	if struct["SnowballType"] then M.AssertSnowballType(struct["SnowballType"]) end
	if struct["CreationDate"] then M.AssertTimestamp(struct["CreationDate"]) end
	if struct["JobType"] then M.AssertJobType(struct["JobType"]) end
	for k,_ in pairs(struct) do
		assert(ClusterMetadata_keys[k], "ClusterMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterMetadata
-- <p>Contains metadata about a specific cluster.</p>
-- @param Description [String] <p>The optional description of the cluster.</p>
-- @param AddressId [AddressId] <p>The automatically generated ID for a specific address.</p>
-- @param KmsKeyARN [KmsKeyARN] <p>The <code>KmsKeyARN</code> Amazon Resource Name (ARN) associated with this cluster. This ARN was created using the <a href="http://docs.aws.amazon.com/kms/latest/APIReference/API_CreateKey.html">CreateKey</a> API action in AWS Key Management Service (AWS KMS).</p>
-- @param Notification [Notification] <p>The Amazon Simple Notification Service (Amazon SNS) notification settings for this cluster.</p>
-- @param RoleARN [RoleARN] <p>The role ARN associated with this cluster. This ARN was created using the <a href="http://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html">CreateRole</a> API action in AWS Identity and Access Management (IAM).</p>
-- @param ClusterId [String] <p>The automatically generated ID for a cluster.</p>
-- @param ForwardingAddressId [AddressId] <p>The ID of the address that you want a cluster shipped to, after it will be shipped to its primary address. This field is not supported in most regions.</p>
-- @param ClusterState [ClusterState] <p>The current status of the cluster.</p>
-- @param ShippingOption [ShippingOption] <p>The shipping speed for each node in this cluster. This speed doesn't dictate how soon you'll get each Snowball Edge appliance, rather it represents how quickly each appliance moves to its destination while in transit. Regional shipping speeds are as follows:</p> <ul> <li> <p>In Australia, you have access to express shipping. Typically, appliances shipped express are delivered in about a day.</p> </li> <li> <p>In the European Union (EU), you have access to express shipping. Typically, Snowball Edges shipped express are delivered in about a day. In addition, most countries in the EU have access to standard shipping, which typically takes less than a week, one way.</p> </li> <li> <p>In India, Snowball Edges are delivered in one to seven days.</p> </li> <li> <p>In the US, you have access to one-day shipping and two-day shipping.</p> </li> </ul>
-- @param Resources [JobResource] <p>The arrays of <a>JobResource</a> objects that can include updated <a>S3Resource</a> objects or <a>LambdaResource</a> objects.</p>
-- @param SnowballType [SnowballType] <p>The type of AWS Snowball appliance to use for this cluster. Currently, the only supported appliance type for cluster jobs is <code>EDGE</code>.</p>
-- @param CreationDate [Timestamp] <p>The creation date for this cluster.</p>
-- @param JobType [JobType] <p>The type of job for this cluster. Currently, the only job type supported for clusters is <code>LOCAL_USE</code>.</p>
function M.ClusterMetadata(Description, AddressId, KmsKeyARN, Notification, RoleARN, ClusterId, ForwardingAddressId, ClusterState, ShippingOption, Resources, SnowballType, CreationDate, JobType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterMetadata")
	local t = { 
		["Description"] = Description,
		["AddressId"] = AddressId,
		["KmsKeyARN"] = KmsKeyARN,
		["Notification"] = Notification,
		["RoleARN"] = RoleARN,
		["ClusterId"] = ClusterId,
		["ForwardingAddressId"] = ForwardingAddressId,
		["ClusterState"] = ClusterState,
		["ShippingOption"] = ShippingOption,
		["Resources"] = Resources,
		["SnowballType"] = SnowballType,
		["CreationDate"] = CreationDate,
		["JobType"] = JobType,
	}
	M.AssertClusterMetadata(t)
	return t
end

local GetJobUnlockCodeResult_keys = { "UnlockCode" = true, nil }

function M.AssertGetJobUnlockCodeResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetJobUnlockCodeResult to be of type 'table'")
	if struct["UnlockCode"] then M.AssertString(struct["UnlockCode"]) end
	for k,_ in pairs(struct) do
		assert(GetJobUnlockCodeResult_keys[k], "GetJobUnlockCodeResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetJobUnlockCodeResult
--  
-- @param UnlockCode [String] <p>The <code>UnlockCode</code> value for the specified job. The <code>UnlockCode</code> value can be accessed for up to 90 days after the job has been created.</p>
function M.GetJobUnlockCodeResult(UnlockCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetJobUnlockCodeResult")
	local t = { 
		["UnlockCode"] = UnlockCode,
	}
	M.AssertGetJobUnlockCodeResult(t)
	return t
end

local KeyRange_keys = { "EndMarker" = true, "BeginMarker" = true, nil }

function M.AssertKeyRange(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KeyRange to be of type 'table'")
	if struct["EndMarker"] then M.AssertString(struct["EndMarker"]) end
	if struct["BeginMarker"] then M.AssertString(struct["BeginMarker"]) end
	for k,_ in pairs(struct) do
		assert(KeyRange_keys[k], "KeyRange contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KeyRange
-- <p>Contains a key range. For export jobs, a <code>S3Resource</code> object can have an optional <code>KeyRange</code> value. The length of the range is defined at job creation, and has either an inclusive <code>BeginMarker</code>, an inclusive <code>EndMarker</code>, or both. Ranges are UTF-8 binary sorted.</p>
-- @param EndMarker [String] <p>The key that ends an optional key range for an export job. Ranges are inclusive and UTF-8 binary sorted.</p>
-- @param BeginMarker [String] <p>The key that starts an optional key range for an export job. Ranges are inclusive and UTF-8 binary sorted.</p>
function M.KeyRange(EndMarker, BeginMarker, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KeyRange")
	local t = { 
		["EndMarker"] = EndMarker,
		["BeginMarker"] = BeginMarker,
	}
	M.AssertKeyRange(t)
	return t
end

local Shipment_keys = { "Status" = true, "TrackingNumber" = true, nil }

function M.AssertShipment(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Shipment to be of type 'table'")
	if struct["Status"] then M.AssertString(struct["Status"]) end
	if struct["TrackingNumber"] then M.AssertString(struct["TrackingNumber"]) end
	for k,_ in pairs(struct) do
		assert(Shipment_keys[k], "Shipment contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Shipment
-- <p>The <code>Status</code> and <code>TrackingNumber</code> information for an inbound or outbound shipment.</p>
-- @param Status [String] <p>Status information for a shipment.</p>
-- @param TrackingNumber [String] <p>The tracking number for this job. Using this tracking number with your region's carrier's website, you can track a Snowball as the carrier transports it.</p> <p>For India, the carrier is Amazon Logistics. For all other regions, UPS is the carrier.</p>
function M.Shipment(Status, TrackingNumber, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Shipment")
	local t = { 
		["Status"] = Status,
		["TrackingNumber"] = TrackingNumber,
	}
	M.AssertShipment(t)
	return t
end

local InvalidNextTokenException_keys = { "Message" = true, nil }

function M.AssertInvalidNextTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidNextTokenException to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidNextTokenException_keys[k], "InvalidNextTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidNextTokenException
-- <p>The <code>NextToken</code> string was altered unexpectedly, and the operation has stopped. Run the operation without changing the <code>NextToken</code> string, and try again.</p>
-- @param Message [String] <p>The <code>NextToken</code> string was altered unexpectedly, and the operation has stopped. Run the operation without changing the <code>NextToken</code> string, and try again.</p>
function M.InvalidNextTokenException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidNextTokenException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidNextTokenException(t)
	return t
end

local EventTriggerDefinition_keys = { "EventResourceARN" = true, nil }

function M.AssertEventTriggerDefinition(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventTriggerDefinition to be of type 'table'")
	if struct["EventResourceARN"] then M.AssertResourceARN(struct["EventResourceARN"]) end
	for k,_ in pairs(struct) do
		assert(EventTriggerDefinition_keys[k], "EventTriggerDefinition contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventTriggerDefinition
-- <p>The container for the <a>EventTriggerDefinition$EventResourceARN</a>.</p>
-- @param EventResourceARN [ResourceARN] <p>The Amazon Resource Name (ARN) for any local Amazon S3 resource that is an AWS Lambda function's event trigger associated with this job.</p>
function M.EventTriggerDefinition(EventResourceARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventTriggerDefinition")
	local t = { 
		["EventResourceARN"] = EventResourceARN,
	}
	M.AssertEventTriggerDefinition(t)
	return t
end

local CreateAddressRequest_keys = { "Address" = true, nil }

function M.AssertCreateAddressRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAddressRequest to be of type 'table'")
	assert(struct["Address"], "Expected key Address to exist in table")
	if struct["Address"] then M.AssertAddress(struct["Address"]) end
	for k,_ in pairs(struct) do
		assert(CreateAddressRequest_keys[k], "CreateAddressRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAddressRequest
--  
-- @param Address [Address] <p>The address that you want the Snowball shipped to.</p>
-- Required parameter: Address
function M.CreateAddressRequest(Address, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateAddressRequest")
	local t = { 
		["Address"] = Address,
	}
	M.AssertCreateAddressRequest(t)
	return t
end

local CreateAddressResult_keys = { "AddressId" = true, nil }

function M.AssertCreateAddressResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAddressResult to be of type 'table'")
	if struct["AddressId"] then M.AssertString(struct["AddressId"]) end
	for k,_ in pairs(struct) do
		assert(CreateAddressResult_keys[k], "CreateAddressResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAddressResult
--  
-- @param AddressId [String] <p>The automatically generated ID for a specific address. You'll use this ID when you create a job to specify which address you want the Snowball for that job shipped to.</p>
function M.CreateAddressResult(AddressId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateAddressResult")
	local t = { 
		["AddressId"] = AddressId,
	}
	M.AssertCreateAddressResult(t)
	return t
end

local ListJobsResult_keys = { "NextToken" = true, "JobListEntries" = true, nil }

function M.AssertListJobsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListJobsResult to be of type 'table'")
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	if struct["JobListEntries"] then M.AssertJobListEntryList(struct["JobListEntries"]) end
	for k,_ in pairs(struct) do
		assert(ListJobsResult_keys[k], "ListJobsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListJobsResult
--  
-- @param NextToken [String] <p>HTTP requests are stateless. If you use this automatically generated <code>NextToken</code> value in your next <code>ListJobs</code> call, your returned <code>JobListEntry</code> objects will start from this point in the array.</p>
-- @param JobListEntries [JobListEntryList] <p>Each <code>JobListEntry</code> object contains a job's state, a job's ID, and a value that indicates whether the job is a job part, in the case of export jobs. </p>
function M.ListJobsResult(NextToken, JobListEntries, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListJobsResult")
	local t = { 
		["NextToken"] = NextToken,
		["JobListEntries"] = JobListEntries,
	}
	M.AssertListJobsResult(t)
	return t
end

local ClusterListEntry_keys = { "ClusterState" = true, "CreationDate" = true, "ClusterId" = true, "Description" = true, nil }

function M.AssertClusterListEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterListEntry to be of type 'table'")
	if struct["ClusterState"] then M.AssertClusterState(struct["ClusterState"]) end
	if struct["CreationDate"] then M.AssertTimestamp(struct["CreationDate"]) end
	if struct["ClusterId"] then M.AssertString(struct["ClusterId"]) end
	if struct["Description"] then M.AssertString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(ClusterListEntry_keys[k], "ClusterListEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterListEntry
-- <p>Contains a cluster's state, a cluster's ID, and other important information.</p>
-- @param ClusterState [ClusterState] <p>The current state of this cluster. For information about the state of a specific node, see <a>JobListEntry$JobState</a>.</p>
-- @param CreationDate [Timestamp] <p>The creation date for this cluster.</p>
-- @param ClusterId [String] <p>The 39-character ID for the cluster that you want to list, for example <code>CID123e4567-e89b-12d3-a456-426655440000</code>.</p>
-- @param Description [String] <p>Defines an optional description of the cluster, for example <code>Environmental Data Cluster-01</code>.</p>
function M.ClusterListEntry(ClusterState, CreationDate, ClusterId, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterListEntry")
	local t = { 
		["ClusterState"] = ClusterState,
		["CreationDate"] = CreationDate,
		["ClusterId"] = ClusterId,
		["Description"] = Description,
	}
	M.AssertClusterListEntry(t)
	return t
end

local CreateJobResult_keys = { "JobId" = true, nil }

function M.AssertCreateJobResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateJobResult to be of type 'table'")
	if struct["JobId"] then M.AssertJobId(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(CreateJobResult_keys[k], "CreateJobResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateJobResult
--  
-- @param JobId [JobId] <p>The automatically generated ID for a job, for example <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>
function M.CreateJobResult(JobId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateJobResult")
	local t = { 
		["JobId"] = JobId,
	}
	M.AssertCreateJobResult(t)
	return t
end

local JobLogs_keys = { "JobFailureLogURI" = true, "JobSuccessLogURI" = true, "JobCompletionReportURI" = true, nil }

function M.AssertJobLogs(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobLogs to be of type 'table'")
	if struct["JobFailureLogURI"] then M.AssertString(struct["JobFailureLogURI"]) end
	if struct["JobSuccessLogURI"] then M.AssertString(struct["JobSuccessLogURI"]) end
	if struct["JobCompletionReportURI"] then M.AssertString(struct["JobCompletionReportURI"]) end
	for k,_ in pairs(struct) do
		assert(JobLogs_keys[k], "JobLogs contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobLogs
-- <p>Contains job logs. Whenever Snowball is used to import data into or export data out of Amazon S3, you'll have the option of downloading a PDF job report. Job logs are returned as a part of the response syntax of the <code>DescribeJob</code> action in the <code>JobMetadata</code> data type. The job logs can be accessed for up to 60 minutes after this request has been made. To access any of the job logs after 60 minutes have passed, you'll have to make another call to the <code>DescribeJob</code> action.</p> <p>For import jobs, the PDF job report becomes available at the end of the import process. For export jobs, your job report typically becomes available while the Snowball for your job part is being delivered to you.</p> <p>The job report provides you insight into the state of your Amazon S3 data transfer. The report includes details about your job or job part for your records.</p> <p>For deeper visibility into the status of your transferred objects, you can look at the two associated logs: a success log and a failure log. The logs are saved in comma-separated value (CSV) format, and the name of each log includes the ID of the job or job part that the log describes.</p>
-- @param JobFailureLogURI [String] <p>A link to an Amazon S3 presigned URL where the job failure log is located.</p>
-- @param JobSuccessLogURI [String] <p>A link to an Amazon S3 presigned URL where the job success log is located.</p>
-- @param JobCompletionReportURI [String] <p>A link to an Amazon S3 presigned URL where the job completion report is located.</p>
function M.JobLogs(JobFailureLogURI, JobSuccessLogURI, JobCompletionReportURI, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating JobLogs")
	local t = { 
		["JobFailureLogURI"] = JobFailureLogURI,
		["JobSuccessLogURI"] = JobSuccessLogURI,
		["JobCompletionReportURI"] = JobCompletionReportURI,
	}
	M.AssertJobLogs(t)
	return t
end

local GetJobManifestRequest_keys = { "JobId" = true, nil }

function M.AssertGetJobManifestRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetJobManifestRequest to be of type 'table'")
	assert(struct["JobId"], "Expected key JobId to exist in table")
	if struct["JobId"] then M.AssertJobId(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(GetJobManifestRequest_keys[k], "GetJobManifestRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetJobManifestRequest
--  
-- @param JobId [JobId] <p>The ID for a job that you want to get the manifest file for, for example <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>
-- Required parameter: JobId
function M.GetJobManifestRequest(JobId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetJobManifestRequest")
	local t = { 
		["JobId"] = JobId,
	}
	M.AssertGetJobManifestRequest(t)
	return t
end

local DescribeJobRequest_keys = { "JobId" = true, nil }

function M.AssertDescribeJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeJobRequest to be of type 'table'")
	assert(struct["JobId"], "Expected key JobId to exist in table")
	if struct["JobId"] then M.AssertJobId(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeJobRequest_keys[k], "DescribeJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeJobRequest
--  
-- @param JobId [JobId] <p>The automatically generated ID for a job, for example <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>
-- Required parameter: JobId
function M.DescribeJobRequest(JobId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeJobRequest")
	local t = { 
		["JobId"] = JobId,
	}
	M.AssertDescribeJobRequest(t)
	return t
end

local GetSnowballUsageResult_keys = { "SnowballLimit" = true, "SnowballsInUse" = true, nil }

function M.AssertGetSnowballUsageResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSnowballUsageResult to be of type 'table'")
	if struct["SnowballLimit"] then M.AssertInteger(struct["SnowballLimit"]) end
	if struct["SnowballsInUse"] then M.AssertInteger(struct["SnowballsInUse"]) end
	for k,_ in pairs(struct) do
		assert(GetSnowballUsageResult_keys[k], "GetSnowballUsageResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSnowballUsageResult
--  
-- @param SnowballLimit [Integer] <p>The service limit for number of Snowballs this account can have at once. The default service limit is 1 (one).</p>
-- @param SnowballsInUse [Integer] <p>The number of Snowballs that this account is currently using.</p>
function M.GetSnowballUsageResult(SnowballLimit, SnowballsInUse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSnowballUsageResult")
	local t = { 
		["SnowballLimit"] = SnowballLimit,
		["SnowballsInUse"] = SnowballsInUse,
	}
	M.AssertGetSnowballUsageResult(t)
	return t
end

local CreateClusterResult_keys = { "ClusterId" = true, nil }

function M.AssertCreateClusterResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateClusterResult to be of type 'table'")
	if struct["ClusterId"] then M.AssertClusterId(struct["ClusterId"]) end
	for k,_ in pairs(struct) do
		assert(CreateClusterResult_keys[k], "CreateClusterResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateClusterResult
--  
-- @param ClusterId [ClusterId] <p>The automatically generated ID for a cluster.</p>
function M.CreateClusterResult(ClusterId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateClusterResult")
	local t = { 
		["ClusterId"] = ClusterId,
	}
	M.AssertCreateClusterResult(t)
	return t
end

local DescribeAddressResult_keys = { "Address" = true, nil }

function M.AssertDescribeAddressResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAddressResult to be of type 'table'")
	if struct["Address"] then M.AssertAddress(struct["Address"]) end
	for k,_ in pairs(struct) do
		assert(DescribeAddressResult_keys[k], "DescribeAddressResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAddressResult
--  
-- @param Address [Address] <p>The address that you want the Snowball or Snowballs associated with a specific job to be shipped to.</p>
function M.DescribeAddressResult(Address, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAddressResult")
	local t = { 
		["Address"] = Address,
	}
	M.AssertDescribeAddressResult(t)
	return t
end

local JobMetadata_keys = { "SnowballCapacityPreference" = true, "JobState" = true, "Description" = true, "AddressId" = true, "ForwardingAddressId" = true, "KmsKeyARN" = true, "Notification" = true, "RoleARN" = true, "ClusterId" = true, "JobId" = true, "DataTransferProgress" = true, "JobType" = true, "SnowballType" = true, "JobLogInfo" = true, "CreationDate" = true, "Resources" = true, "ShippingDetails" = true, nil }

function M.AssertJobMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobMetadata to be of type 'table'")
	if struct["SnowballCapacityPreference"] then M.AssertSnowballCapacity(struct["SnowballCapacityPreference"]) end
	if struct["JobState"] then M.AssertJobState(struct["JobState"]) end
	if struct["Description"] then M.AssertString(struct["Description"]) end
	if struct["AddressId"] then M.AssertAddressId(struct["AddressId"]) end
	if struct["ForwardingAddressId"] then M.AssertAddressId(struct["ForwardingAddressId"]) end
	if struct["KmsKeyARN"] then M.AssertKmsKeyARN(struct["KmsKeyARN"]) end
	if struct["Notification"] then M.AssertNotification(struct["Notification"]) end
	if struct["RoleARN"] then M.AssertRoleARN(struct["RoleARN"]) end
	if struct["ClusterId"] then M.AssertString(struct["ClusterId"]) end
	if struct["JobId"] then M.AssertString(struct["JobId"]) end
	if struct["DataTransferProgress"] then M.AssertDataTransfer(struct["DataTransferProgress"]) end
	if struct["JobType"] then M.AssertJobType(struct["JobType"]) end
	if struct["SnowballType"] then M.AssertSnowballType(struct["SnowballType"]) end
	if struct["JobLogInfo"] then M.AssertJobLogs(struct["JobLogInfo"]) end
	if struct["CreationDate"] then M.AssertTimestamp(struct["CreationDate"]) end
	if struct["Resources"] then M.AssertJobResource(struct["Resources"]) end
	if struct["ShippingDetails"] then M.AssertShippingDetails(struct["ShippingDetails"]) end
	for k,_ in pairs(struct) do
		assert(JobMetadata_keys[k], "JobMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobMetadata
-- <p>Contains information about a specific job including shipping information, job status, and other important metadata. This information is returned as a part of the response syntax of the <code>DescribeJob</code> action.</p>
-- @param SnowballCapacityPreference [SnowballCapacity] <p>The Snowball capacity preference for this job, specified at job creation. In US regions, you can choose between 50 TB and 80 TB Snowballs. All other regions use 80 TB capacity Snowballs.</p>
-- @param JobState [JobState] <p>The current status of the jobs.</p>
-- @param Description [String] <p>The description of the job, provided at job creation.</p>
-- @param AddressId [AddressId] <p>The ID for the address that you want the Snowball shipped to.</p>
-- @param ForwardingAddressId [AddressId] <p>The ID of the address that you want a job shipped to, after it will be shipped to its primary address. This field is not supported in most regions.</p>
-- @param KmsKeyARN [KmsKeyARN] <p>The Amazon Resource Name (ARN) for the AWS Key Management Service (AWS KMS) key associated with this job. This ARN was created using the <a href="http://docs.aws.amazon.com/kms/latest/APIReference/API_CreateKey.html">CreateKey</a> API action in AWS KMS.</p>
-- @param Notification [Notification] <p>The Amazon Simple Notification Service (Amazon SNS) notification settings associated with a specific job. The <code>Notification</code> object is returned as a part of the response syntax of the <code>DescribeJob</code> action in the <code>JobMetadata</code> data type.</p>
-- @param RoleARN [RoleARN] <p>The role ARN associated with this job. This ARN was created using the <a href="http://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html">CreateRole</a> API action in AWS Identity and Access Management (IAM).</p>
-- @param ClusterId [String] <p>The 39-character ID for the cluster, for example <code>CID123e4567-e89b-12d3-a456-426655440000</code>.</p>
-- @param JobId [String] <p>The automatically generated ID for a job, for example <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>
-- @param DataTransferProgress [DataTransfer] <p>A value that defines the real-time status of a Snowball's data transfer while the appliance is at AWS. This data is only available while a job has a <code>JobState</code> value of <code>InProgress</code>, for both import and export jobs.</p>
-- @param JobType [JobType] <p>The type of job.</p>
-- @param SnowballType [SnowballType] <p>The type of appliance used with this job.</p>
-- @param JobLogInfo [JobLogs] <p>Links to Amazon S3 presigned URLs for the job report and logs. For import jobs, the PDF job report becomes available at the end of the import process. For export jobs, your job report typically becomes available while the Snowball for your job part is being delivered to you.</p>
-- @param CreationDate [Timestamp] <p>The creation date for this job.</p>
-- @param Resources [JobResource] <p>An array of <code>S3Resource</code> objects. Each <code>S3Resource</code> object represents an Amazon S3 bucket that your transferred data will be exported from or imported into.</p>
-- @param ShippingDetails [ShippingDetails] <p>A job's shipping information, including inbound and outbound tracking numbers and shipping speed options.</p>
function M.JobMetadata(SnowballCapacityPreference, JobState, Description, AddressId, ForwardingAddressId, KmsKeyARN, Notification, RoleARN, ClusterId, JobId, DataTransferProgress, JobType, SnowballType, JobLogInfo, CreationDate, Resources, ShippingDetails, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating JobMetadata")
	local t = { 
		["SnowballCapacityPreference"] = SnowballCapacityPreference,
		["JobState"] = JobState,
		["Description"] = Description,
		["AddressId"] = AddressId,
		["ForwardingAddressId"] = ForwardingAddressId,
		["KmsKeyARN"] = KmsKeyARN,
		["Notification"] = Notification,
		["RoleARN"] = RoleARN,
		["ClusterId"] = ClusterId,
		["JobId"] = JobId,
		["DataTransferProgress"] = DataTransferProgress,
		["JobType"] = JobType,
		["SnowballType"] = SnowballType,
		["JobLogInfo"] = JobLogInfo,
		["CreationDate"] = CreationDate,
		["Resources"] = Resources,
		["ShippingDetails"] = ShippingDetails,
	}
	M.AssertJobMetadata(t)
	return t
end

local DescribeJobResult_keys = { "JobMetadata" = true, "SubJobMetadata" = true, nil }

function M.AssertDescribeJobResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeJobResult to be of type 'table'")
	if struct["JobMetadata"] then M.AssertJobMetadata(struct["JobMetadata"]) end
	if struct["SubJobMetadata"] then M.AssertJobMetadataList(struct["SubJobMetadata"]) end
	for k,_ in pairs(struct) do
		assert(DescribeJobResult_keys[k], "DescribeJobResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeJobResult
--  
-- @param JobMetadata [JobMetadata] <p>Information about a specific job, including shipping information, job status, and other important metadata.</p>
-- @param SubJobMetadata [JobMetadataList] <p>Information about a specific job part (in the case of an export job), including shipping information, job status, and other important metadata.</p>
function M.DescribeJobResult(JobMetadata, SubJobMetadata, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeJobResult")
	local t = { 
		["JobMetadata"] = JobMetadata,
		["SubJobMetadata"] = SubJobMetadata,
	}
	M.AssertDescribeJobResult(t)
	return t
end

local GetJobManifestResult_keys = { "ManifestURI" = true, nil }

function M.AssertGetJobManifestResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetJobManifestResult to be of type 'table'")
	if struct["ManifestURI"] then M.AssertString(struct["ManifestURI"]) end
	for k,_ in pairs(struct) do
		assert(GetJobManifestResult_keys[k], "GetJobManifestResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetJobManifestResult
--  
-- @param ManifestURI [String] <p>The Amazon S3 presigned URL for the manifest file associated with the specified <code>JobId</code> value.</p>
function M.GetJobManifestResult(ManifestURI, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetJobManifestResult")
	local t = { 
		["ManifestURI"] = ManifestURI,
	}
	M.AssertGetJobManifestResult(t)
	return t
end

local Address_keys = { "City" = true, "Name" = true, "AddressId" = true, "Street1" = true, "Company" = true, "Street3" = true, "PostalCode" = true, "PrefectureOrDistrict" = true, "Country" = true, "Landmark" = true, "PhoneNumber" = true, "IsRestricted" = true, "StateOrProvince" = true, "Street2" = true, nil }

function M.AssertAddress(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Address to be of type 'table'")
	if struct["City"] then M.AssertString(struct["City"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	if struct["AddressId"] then M.AssertAddressId(struct["AddressId"]) end
	if struct["Street1"] then M.AssertString(struct["Street1"]) end
	if struct["Company"] then M.AssertString(struct["Company"]) end
	if struct["Street3"] then M.AssertString(struct["Street3"]) end
	if struct["PostalCode"] then M.AssertString(struct["PostalCode"]) end
	if struct["PrefectureOrDistrict"] then M.AssertString(struct["PrefectureOrDistrict"]) end
	if struct["Country"] then M.AssertString(struct["Country"]) end
	if struct["Landmark"] then M.AssertString(struct["Landmark"]) end
	if struct["PhoneNumber"] then M.AssertString(struct["PhoneNumber"]) end
	if struct["IsRestricted"] then M.AssertBoolean(struct["IsRestricted"]) end
	if struct["StateOrProvince"] then M.AssertString(struct["StateOrProvince"]) end
	if struct["Street2"] then M.AssertString(struct["Street2"]) end
	for k,_ in pairs(struct) do
		assert(Address_keys[k], "Address contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Address
-- <p>The address that you want the Snowball or Snowballs associated with a specific job to be shipped to. Addresses are validated at the time of creation. The address you provide must be located within the serviceable area of your region. Although no individual elements of the <code>Address</code> are required, if the address is invalid or unsupported, then an exception is thrown.</p>
-- @param City [String] <p>The city in an address that a Snowball is to be delivered to.</p>
-- @param Name [String] <p>The name of a person to receive a Snowball at an address.</p>
-- @param AddressId [AddressId] <p>The unique ID for an address.</p>
-- @param Street1 [String] <p>The first line in a street address that a Snowball is to be delivered to.</p>
-- @param Company [String] <p>The name of the company to receive a Snowball at an address.</p>
-- @param Street3 [String] <p>The third line in a street address that a Snowball is to be delivered to.</p>
-- @param PostalCode [String] <p>The postal code in an address that a Snowball is to be delivered to.</p>
-- @param PrefectureOrDistrict [String] <p>This field is no longer used and the value is ignored.</p>
-- @param Country [String] <p>The country in an address that a Snowball is to be delivered to.</p>
-- @param Landmark [String] <p>This field is no longer used and the value is ignored.</p>
-- @param PhoneNumber [String] <p>The phone number associated with an address that a Snowball is to be delivered to.</p>
-- @param IsRestricted [Boolean] <p>If the address you are creating is a primary address, then set this option to true. This field is not supported in most regions.</p>
-- @param StateOrProvince [String] <p>The state or province in an address that a Snowball is to be delivered to.</p>
-- @param Street2 [String] <p>The second line in a street address that a Snowball is to be delivered to.</p>
function M.Address(City, Name, AddressId, Street1, Company, Street3, PostalCode, PrefectureOrDistrict, Country, Landmark, PhoneNumber, IsRestricted, StateOrProvince, Street2, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Address")
	local t = { 
		["City"] = City,
		["Name"] = Name,
		["AddressId"] = AddressId,
		["Street1"] = Street1,
		["Company"] = Company,
		["Street3"] = Street3,
		["PostalCode"] = PostalCode,
		["PrefectureOrDistrict"] = PrefectureOrDistrict,
		["Country"] = Country,
		["Landmark"] = Landmark,
		["PhoneNumber"] = PhoneNumber,
		["IsRestricted"] = IsRestricted,
		["StateOrProvince"] = StateOrProvince,
		["Street2"] = Street2,
	}
	M.AssertAddress(t)
	return t
end

local GetSnowballUsageRequest_keys = { nil }

function M.AssertGetSnowballUsageRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSnowballUsageRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(GetSnowballUsageRequest_keys[k], "GetSnowballUsageRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSnowballUsageRequest
--  
function M.GetSnowballUsageRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSnowballUsageRequest")
	local t = { 
	}
	M.AssertGetSnowballUsageRequest(t)
	return t
end

local InvalidInputCombinationException_keys = { "Message" = true, nil }

function M.AssertInvalidInputCombinationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidInputCombinationException to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidInputCombinationException_keys[k], "InvalidInputCombinationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidInputCombinationException
-- <p>Job or cluster creation failed. One ore more inputs were invalid. Confirm that the <a>CreateClusterRequest$SnowballType</a> value supports your <a>CreateJobRequest$JobType</a>, and try again.</p>
-- @param Message [String] <p>Job or cluster creation failed. One ore more inputs were invalid. Confirm that the <a>CreateClusterRequest$SnowballType</a> value supports your <a>CreateJobRequest$JobType</a>, and try again.</p>
function M.InvalidInputCombinationException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidInputCombinationException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidInputCombinationException(t)
	return t
end

local DescribeAddressRequest_keys = { "AddressId" = true, nil }

function M.AssertDescribeAddressRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAddressRequest to be of type 'table'")
	assert(struct["AddressId"], "Expected key AddressId to exist in table")
	if struct["AddressId"] then M.AssertAddressId(struct["AddressId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeAddressRequest_keys[k], "DescribeAddressRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAddressRequest
--  
-- @param AddressId [AddressId] <p>The automatically generated ID for a specific address.</p>
-- Required parameter: AddressId
function M.DescribeAddressRequest(AddressId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAddressRequest")
	local t = { 
		["AddressId"] = AddressId,
	}
	M.AssertDescribeAddressRequest(t)
	return t
end

local LambdaResource_keys = { "EventTriggers" = true, "LambdaArn" = true, nil }

function M.AssertLambdaResource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LambdaResource to be of type 'table'")
	if struct["EventTriggers"] then M.AssertEventTriggerDefinitionList(struct["EventTriggers"]) end
	if struct["LambdaArn"] then M.AssertResourceARN(struct["LambdaArn"]) end
	for k,_ in pairs(struct) do
		assert(LambdaResource_keys[k], "LambdaResource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LambdaResource
-- <p>Identifies </p>
-- @param EventTriggers [EventTriggerDefinitionList] <p>The array of ARNs for <a>S3Resource</a> objects to trigger the <a>LambdaResource</a> objects associated with this job.</p>
-- @param LambdaArn [ResourceARN] <p>An Amazon Resource Name (ARN) that represents an AWS Lambda function to be triggered by PUT object actions on the associated local Amazon S3 resource.</p>
function M.LambdaResource(EventTriggers, LambdaArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LambdaResource")
	local t = { 
		["EventTriggers"] = EventTriggers,
		["LambdaArn"] = LambdaArn,
	}
	M.AssertLambdaResource(t)
	return t
end

local ListClusterJobsResult_keys = { "NextToken" = true, "JobListEntries" = true, nil }

function M.AssertListClusterJobsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListClusterJobsResult to be of type 'table'")
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	if struct["JobListEntries"] then M.AssertJobListEntryList(struct["JobListEntries"]) end
	for k,_ in pairs(struct) do
		assert(ListClusterJobsResult_keys[k], "ListClusterJobsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListClusterJobsResult
--  
-- @param NextToken [String] <p>HTTP requests are stateless. If you use the automatically generated <code>NextToken</code> value in your next <code>ListClusterJobsResult</code> call, your list of returned jobs will start from this point in the array.</p>
-- @param JobListEntries [JobListEntryList] <p>Each <code>JobListEntry</code> object contains a job's state, a job's ID, and a value that indicates whether the job is a job part, in the case of export jobs. </p>
function M.ListClusterJobsResult(NextToken, JobListEntries, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListClusterJobsResult")
	local t = { 
		["NextToken"] = NextToken,
		["JobListEntries"] = JobListEntries,
	}
	M.AssertListClusterJobsResult(t)
	return t
end

local ClusterLimitExceededException_keys = { "Message" = true, nil }

function M.AssertClusterLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterLimitExceededException to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(ClusterLimitExceededException_keys[k], "ClusterLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterLimitExceededException
-- <p>Job creation failed. Currently, clusters support five nodes. If you have less than five nodes for your cluster and you have more nodes to create for this cluster, try again and create jobs until your cluster has exactly five notes.</p>
-- @param Message [String] <p>Job creation failed. Currently, clusters support five nodes. If you have less than five nodes for your cluster and you have more nodes to create for this cluster, try again and create jobs until your cluster has exactly five notes.</p>
function M.ClusterLimitExceededException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterLimitExceededException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertClusterLimitExceededException(t)
	return t
end

local DescribeAddressesResult_keys = { "NextToken" = true, "Addresses" = true, nil }

function M.AssertDescribeAddressesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAddressesResult to be of type 'table'")
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	if struct["Addresses"] then M.AssertAddressList(struct["Addresses"]) end
	for k,_ in pairs(struct) do
		assert(DescribeAddressesResult_keys[k], "DescribeAddressesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAddressesResult
--  
-- @param NextToken [String] <p>HTTP requests are stateless. If you use the automatically generated <code>NextToken</code> value in your next <code>DescribeAddresses</code> call, your list of returned addresses will start from this point in the array.</p>
-- @param Addresses [AddressList] <p>The Snowball shipping addresses that were created for this account.</p>
function M.DescribeAddressesResult(NextToken, Addresses, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAddressesResult")
	local t = { 
		["NextToken"] = NextToken,
		["Addresses"] = Addresses,
	}
	M.AssertDescribeAddressesResult(t)
	return t
end

local Notification_keys = { "NotifyAll" = true, "JobStatesToNotify" = true, "SnsTopicARN" = true, nil }

function M.AssertNotification(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Notification to be of type 'table'")
	if struct["NotifyAll"] then M.AssertBoolean(struct["NotifyAll"]) end
	if struct["JobStatesToNotify"] then M.AssertJobStateList(struct["JobStatesToNotify"]) end
	if struct["SnsTopicARN"] then M.AssertSnsTopicARN(struct["SnsTopicARN"]) end
	for k,_ in pairs(struct) do
		assert(Notification_keys[k], "Notification contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Notification
-- <p>The Amazon Simple Notification Service (Amazon SNS) notification settings associated with a specific job. The <code>Notification</code> object is returned as a part of the response syntax of the <code>DescribeJob</code> action in the <code>JobMetadata</code> data type.</p> <p>When the notification settings are defined during job creation, you can choose to notify based on a specific set of job states using the <code>JobStatesToNotify</code> array of strings, or you can specify that you want to have Amazon SNS notifications sent out for all job states with <code>NotifyAll</code> set to true.</p>
-- @param NotifyAll [Boolean] <p>Any change in job state will trigger a notification for this job.</p>
-- @param JobStatesToNotify [JobStateList] <p>The list of job states that will trigger a notification for this job.</p>
-- @param SnsTopicARN [SnsTopicARN] <p>The new SNS <code>TopicArn</code> that you want to associate with this job. You can create Amazon Resource Names (ARNs) for topics by using the <a href="http://docs.aws.amazon.com/sns/latest/api/API_CreateTopic.html">CreateTopic</a> Amazon SNS API action.</p> <p>You can subscribe email addresses to an Amazon SNS topic through the AWS Management Console, or by using the <a href="http://docs.aws.amazon.com/sns/latest/api/API_Subscribe.html">Subscribe</a> AWS Simple Notification Service (SNS) API action.</p>
function M.Notification(NotifyAll, JobStatesToNotify, SnsTopicARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Notification")
	local t = { 
		["NotifyAll"] = NotifyAll,
		["JobStatesToNotify"] = JobStatesToNotify,
		["SnsTopicARN"] = SnsTopicARN,
	}
	M.AssertNotification(t)
	return t
end

local DescribeAddressesRequest_keys = { "NextToken" = true, "MaxResults" = true, nil }

function M.AssertDescribeAddressesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAddressesRequest to be of type 'table'")
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertListLimit(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(DescribeAddressesRequest_keys[k], "DescribeAddressesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAddressesRequest
--  
-- @param NextToken [String] <p>HTTP requests are stateless. To identify what object comes "next" in the list of <code>ADDRESS</code> objects, you have the option of specifying a value for <code>NextToken</code> as the starting point for your list of returned addresses.</p>
-- @param MaxResults [ListLimit] <p>The number of <code>ADDRESS</code> objects to return.</p>
function M.DescribeAddressesRequest(NextToken, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAddressesRequest")
	local t = { 
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
	}
	M.AssertDescribeAddressesRequest(t)
	return t
end

local UpdateJobResult_keys = { nil }

function M.AssertUpdateJobResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateJobResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(UpdateJobResult_keys[k], "UpdateJobResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateJobResult
--  
function M.UpdateJobResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateJobResult")
	local t = { 
	}
	M.AssertUpdateJobResult(t)
	return t
end

local GetJobUnlockCodeRequest_keys = { "JobId" = true, nil }

function M.AssertGetJobUnlockCodeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetJobUnlockCodeRequest to be of type 'table'")
	assert(struct["JobId"], "Expected key JobId to exist in table")
	if struct["JobId"] then M.AssertJobId(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(GetJobUnlockCodeRequest_keys[k], "GetJobUnlockCodeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetJobUnlockCodeRequest
--  
-- @param JobId [JobId] <p>The ID for the job that you want to get the <code>UnlockCode</code> value for, for example <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>
-- Required parameter: JobId
function M.GetJobUnlockCodeRequest(JobId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetJobUnlockCodeRequest")
	local t = { 
		["JobId"] = JobId,
	}
	M.AssertGetJobUnlockCodeRequest(t)
	return t
end

local CreateClusterRequest_keys = { "Description" = true, "AddressId" = true, "KmsKeyARN" = true, "Notification" = true, "RoleARN" = true, "ForwardingAddressId" = true, "ShippingOption" = true, "JobType" = true, "SnowballType" = true, "Resources" = true, nil }

function M.AssertCreateClusterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateClusterRequest to be of type 'table'")
	assert(struct["JobType"], "Expected key JobType to exist in table")
	assert(struct["Resources"], "Expected key Resources to exist in table")
	assert(struct["AddressId"], "Expected key AddressId to exist in table")
	assert(struct["RoleARN"], "Expected key RoleARN to exist in table")
	assert(struct["ShippingOption"], "Expected key ShippingOption to exist in table")
	if struct["Description"] then M.AssertString(struct["Description"]) end
	if struct["AddressId"] then M.AssertAddressId(struct["AddressId"]) end
	if struct["KmsKeyARN"] then M.AssertKmsKeyARN(struct["KmsKeyARN"]) end
	if struct["Notification"] then M.AssertNotification(struct["Notification"]) end
	if struct["RoleARN"] then M.AssertRoleARN(struct["RoleARN"]) end
	if struct["ForwardingAddressId"] then M.AssertAddressId(struct["ForwardingAddressId"]) end
	if struct["ShippingOption"] then M.AssertShippingOption(struct["ShippingOption"]) end
	if struct["JobType"] then M.AssertJobType(struct["JobType"]) end
	if struct["SnowballType"] then M.AssertSnowballType(struct["SnowballType"]) end
	if struct["Resources"] then M.AssertJobResource(struct["Resources"]) end
	for k,_ in pairs(struct) do
		assert(CreateClusterRequest_keys[k], "CreateClusterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateClusterRequest
--  
-- @param Description [String] <p>An optional description of this specific cluster, for example <code>Environmental Data Cluster-01</code>.</p>
-- @param AddressId [AddressId] <p>The ID for the address that you want the cluster shipped to.&gt;</p>
-- @param KmsKeyARN [KmsKeyARN] <p>The <code>KmsKeyARN</code> value that you want to associate with this cluster. <code>KmsKeyARN</code> values are created by using the <a href="http://docs.aws.amazon.com/kms/latest/APIReference/API_CreateKey.html">CreateKey</a> API action in AWS Key Management Service (AWS KMS). </p>
-- @param Notification [Notification] <p>The Amazon Simple Notification Service (Amazon SNS) notification settings for this cluster.</p>
-- @param RoleARN [RoleARN] <p>The <code>RoleARN</code> that you want to associate with this cluster. <code>RoleArn</code> values are created by using the <a href="http://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html">CreateRole</a> API action in AWS Identity and Access Management (IAM).</p>
-- @param ForwardingAddressId [AddressId] <p>The forwarding address ID for a cluster. This field is not supported in most regions.</p>
-- @param ShippingOption [ShippingOption] <p>The shipping speed for each node in this cluster. This speed doesn't dictate how soon you'll get each Snowball Edge appliance, rather it represents how quickly each appliance moves to its destination while in transit. Regional shipping speeds are as follows:</p> <ul> <li> <p>In Australia, you have access to express shipping. Typically, appliances shipped express are delivered in about a day.</p> </li> <li> <p>In the European Union (EU), you have access to express shipping. Typically, Snowball Edges shipped express are delivered in about a day. In addition, most countries in the EU have access to standard shipping, which typically takes less than a week, one way.</p> </li> <li> <p>In India, Snowball Edges are delivered in one to seven days.</p> </li> <li> <p>In the US, you have access to one-day shipping and two-day shipping.</p> </li> </ul>
-- @param JobType [JobType] <p>The type of job for this cluster. Currently, the only job type supported for clusters is <code>LOCAL_USE</code>.</p>
-- @param SnowballType [SnowballType] <p>The type of AWS Snowball appliance to use for this cluster. Currently, the only supported appliance type for cluster jobs is <code>EDGE</code>.</p>
-- @param Resources [JobResource] <p>The resources associated with the cluster job. These resources include Amazon S3 buckets and optional AWS Lambda functions written in the Python language. </p>
-- Required parameter: JobType
-- Required parameter: Resources
-- Required parameter: AddressId
-- Required parameter: RoleARN
-- Required parameter: ShippingOption
function M.CreateClusterRequest(Description, AddressId, KmsKeyARN, Notification, RoleARN, ForwardingAddressId, ShippingOption, JobType, SnowballType, Resources, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateClusterRequest")
	local t = { 
		["Description"] = Description,
		["AddressId"] = AddressId,
		["KmsKeyARN"] = KmsKeyARN,
		["Notification"] = Notification,
		["RoleARN"] = RoleARN,
		["ForwardingAddressId"] = ForwardingAddressId,
		["ShippingOption"] = ShippingOption,
		["JobType"] = JobType,
		["SnowballType"] = SnowballType,
		["Resources"] = Resources,
	}
	M.AssertCreateClusterRequest(t)
	return t
end

local JobListEntry_keys = { "IsMaster" = true, "JobState" = true, "Description" = true, "JobId" = true, "SnowballType" = true, "CreationDate" = true, "JobType" = true, nil }

function M.AssertJobListEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobListEntry to be of type 'table'")
	if struct["IsMaster"] then M.AssertBoolean(struct["IsMaster"]) end
	if struct["JobState"] then M.AssertJobState(struct["JobState"]) end
	if struct["Description"] then M.AssertString(struct["Description"]) end
	if struct["JobId"] then M.AssertString(struct["JobId"]) end
	if struct["SnowballType"] then M.AssertSnowballType(struct["SnowballType"]) end
	if struct["CreationDate"] then M.AssertTimestamp(struct["CreationDate"]) end
	if struct["JobType"] then M.AssertJobType(struct["JobType"]) end
	for k,_ in pairs(struct) do
		assert(JobListEntry_keys[k], "JobListEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobListEntry
-- <p>Each <code>JobListEntry</code> object contains a job's state, a job's ID, and a value that indicates whether the job is a job part, in the case of an export job.</p>
-- @param IsMaster [Boolean] <p>A value that indicates that this job is a master job. A master job represents a successful request to create an export job. Master jobs aren't associated with any Snowballs. Instead, each master job will have at least one job part, and each job part is associated with a Snowball. It might take some time before the job parts associated with a particular master job are listed, because they are created after the master job is created.</p>
-- @param JobState [JobState] <p>The current state of this job.</p>
-- @param Description [String] <p>The optional description of this specific job, for example <code>Important Photos 2016-08-11</code>.</p>
-- @param JobId [String] <p>The automatically generated ID for a job, for example <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>
-- @param SnowballType [SnowballType] <p>The type of appliance used with this job.</p>
-- @param CreationDate [Timestamp] <p>The creation date for this job.</p>
-- @param JobType [JobType] <p>The type of job.</p>
function M.JobListEntry(IsMaster, JobState, Description, JobId, SnowballType, CreationDate, JobType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating JobListEntry")
	local t = { 
		["IsMaster"] = IsMaster,
		["JobState"] = JobState,
		["Description"] = Description,
		["JobId"] = JobId,
		["SnowballType"] = SnowballType,
		["CreationDate"] = CreationDate,
		["JobType"] = JobType,
	}
	M.AssertJobListEntry(t)
	return t
end

local DataTransfer_keys = { "ObjectsTransferred" = true, "TotalBytes" = true, "BytesTransferred" = true, "TotalObjects" = true, nil }

function M.AssertDataTransfer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DataTransfer to be of type 'table'")
	if struct["ObjectsTransferred"] then M.AssertLong(struct["ObjectsTransferred"]) end
	if struct["TotalBytes"] then M.AssertLong(struct["TotalBytes"]) end
	if struct["BytesTransferred"] then M.AssertLong(struct["BytesTransferred"]) end
	if struct["TotalObjects"] then M.AssertLong(struct["TotalObjects"]) end
	for k,_ in pairs(struct) do
		assert(DataTransfer_keys[k], "DataTransfer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DataTransfer
-- <p>Defines the real-time status of a Snowball's data transfer while the appliance is at AWS. This data is only available while a job has a <code>JobState</code> value of <code>InProgress</code>, for both import and export jobs.</p>
-- @param ObjectsTransferred [Long] <p>The number of objects transferred between a Snowball and Amazon S3.</p>
-- @param TotalBytes [Long] <p>The total bytes of data for a transfer between a Snowball and Amazon S3. This value is set to 0 (zero) until all the keys that will be transferred have been listed.</p>
-- @param BytesTransferred [Long] <p>The number of bytes transferred between a Snowball and Amazon S3.</p>
-- @param TotalObjects [Long] <p>The total number of objects for a transfer between a Snowball and Amazon S3. This value is set to 0 (zero) until all the keys that will be transferred have been listed.</p>
function M.DataTransfer(ObjectsTransferred, TotalBytes, BytesTransferred, TotalObjects, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DataTransfer")
	local t = { 
		["ObjectsTransferred"] = ObjectsTransferred,
		["TotalBytes"] = TotalBytes,
		["BytesTransferred"] = BytesTransferred,
		["TotalObjects"] = TotalObjects,
	}
	M.AssertDataTransfer(t)
	return t
end

local InvalidAddressException_keys = { "Message" = true, nil }

function M.AssertInvalidAddressException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidAddressException to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidAddressException_keys[k], "InvalidAddressException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidAddressException
-- <p>The address provided was invalid. Check the address with your region's carrier, and try again.</p>
-- @param Message [String] <p>The address provided was invalid. Check the address with your region's carrier, and try again.</p>
function M.InvalidAddressException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidAddressException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidAddressException(t)
	return t
end

local UpdateClusterResult_keys = { nil }

function M.AssertUpdateClusterResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateClusterResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(UpdateClusterResult_keys[k], "UpdateClusterResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateClusterResult
--  
function M.UpdateClusterResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateClusterResult")
	local t = { 
	}
	M.AssertUpdateClusterResult(t)
	return t
end

local InvalidJobStateException_keys = { "Message" = true, nil }

function M.AssertInvalidJobStateException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidJobStateException to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidJobStateException_keys[k], "InvalidJobStateException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidJobStateException
-- <p>The action can't be performed because the job's current state doesn't allow that action to be performed.</p>
-- @param Message [String] <p>The action can't be performed because the job's current state doesn't allow that action to be performed.</p>
function M.InvalidJobStateException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidJobStateException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidJobStateException(t)
	return t
end

local CancelJobResult_keys = { nil }

function M.AssertCancelJobResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelJobResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(CancelJobResult_keys[k], "CancelJobResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelJobResult
--  
function M.CancelJobResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CancelJobResult")
	local t = { 
	}
	M.AssertCancelJobResult(t)
	return t
end

local DescribeClusterRequest_keys = { "ClusterId" = true, nil }

function M.AssertDescribeClusterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeClusterRequest to be of type 'table'")
	assert(struct["ClusterId"], "Expected key ClusterId to exist in table")
	if struct["ClusterId"] then M.AssertClusterId(struct["ClusterId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeClusterRequest_keys[k], "DescribeClusterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeClusterRequest
--  
-- @param ClusterId [ClusterId] <p>The automatically generated ID for a cluster.</p>
-- Required parameter: ClusterId
function M.DescribeClusterRequest(ClusterId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeClusterRequest")
	local t = { 
		["ClusterId"] = ClusterId,
	}
	M.AssertDescribeClusterRequest(t)
	return t
end

local JobResource_keys = { "LambdaResources" = true, "S3Resources" = true, nil }

function M.AssertJobResource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobResource to be of type 'table'")
	if struct["LambdaResources"] then M.AssertLambdaResourceList(struct["LambdaResources"]) end
	if struct["S3Resources"] then M.AssertS3ResourceList(struct["S3Resources"]) end
	for k,_ in pairs(struct) do
		assert(JobResource_keys[k], "JobResource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobResource
-- <p>Contains an array of <code>S3Resource</code> objects. Each <code>S3Resource</code> object represents an Amazon S3 bucket that your transferred data will be exported from or imported into.</p>
-- @param LambdaResources [LambdaResourceList] <p>The Python-language Lambda functions for this job.</p>
-- @param S3Resources [S3ResourceList] <p>An array of <code>S3Resource</code> objects.</p>
function M.JobResource(LambdaResources, S3Resources, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating JobResource")
	local t = { 
		["LambdaResources"] = LambdaResources,
		["S3Resources"] = S3Resources,
	}
	M.AssertJobResource(t)
	return t
end

local ListClustersRequest_keys = { "NextToken" = true, "MaxResults" = true, nil }

function M.AssertListClustersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListClustersRequest to be of type 'table'")
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertListLimit(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListClustersRequest_keys[k], "ListClustersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListClustersRequest
--  
-- @param NextToken [String] <p>HTTP requests are stateless. To identify what object comes "next" in the list of <code>ClusterListEntry</code> objects, you have the option of specifying <code>NextToken</code> as the starting point for your returned list.</p>
-- @param MaxResults [ListLimit] <p>The number of <code>ClusterListEntry</code> objects to return.</p>
function M.ListClustersRequest(NextToken, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListClustersRequest")
	local t = { 
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
	}
	M.AssertListClustersRequest(t)
	return t
end

local UpdateClusterRequest_keys = { "Description" = true, "AddressId" = true, "Notification" = true, "RoleARN" = true, "ClusterId" = true, "ForwardingAddressId" = true, "ShippingOption" = true, "Resources" = true, nil }

function M.AssertUpdateClusterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateClusterRequest to be of type 'table'")
	assert(struct["ClusterId"], "Expected key ClusterId to exist in table")
	if struct["Description"] then M.AssertString(struct["Description"]) end
	if struct["AddressId"] then M.AssertAddressId(struct["AddressId"]) end
	if struct["Notification"] then M.AssertNotification(struct["Notification"]) end
	if struct["RoleARN"] then M.AssertRoleARN(struct["RoleARN"]) end
	if struct["ClusterId"] then M.AssertClusterId(struct["ClusterId"]) end
	if struct["ForwardingAddressId"] then M.AssertAddressId(struct["ForwardingAddressId"]) end
	if struct["ShippingOption"] then M.AssertShippingOption(struct["ShippingOption"]) end
	if struct["Resources"] then M.AssertJobResource(struct["Resources"]) end
	for k,_ in pairs(struct) do
		assert(UpdateClusterRequest_keys[k], "UpdateClusterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateClusterRequest
--  
-- @param Description [String] <p>The updated description of this cluster.</p>
-- @param AddressId [AddressId] <p>The ID of the updated <a>Address</a> object.</p>
-- @param Notification [Notification] <p>The new or updated <a>Notification</a> object.</p>
-- @param RoleARN [RoleARN] <p>The new role Amazon Resource Name (ARN) that you want to associate with this cluster. To create a role ARN, use the <a href="http://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html">CreateRole</a> API action in AWS Identity and Access Management (IAM).</p>
-- @param ClusterId [ClusterId] <p>The cluster ID of the cluster that you want to update, for example <code>CID123e4567-e89b-12d3-a456-426655440000</code>.</p>
-- @param ForwardingAddressId [AddressId] <p>The updated ID for the forwarding address for a cluster. This field is not supported in most regions.</p>
-- @param ShippingOption [ShippingOption] <p>The updated shipping option value of this cluster's <a>ShippingDetails</a> object.</p>
-- @param Resources [JobResource] <p>The updated arrays of <a>JobResource</a> objects that can include updated <a>S3Resource</a> objects or <a>LambdaResource</a> objects.</p>
-- Required parameter: ClusterId
function M.UpdateClusterRequest(Description, AddressId, Notification, RoleARN, ClusterId, ForwardingAddressId, ShippingOption, Resources, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateClusterRequest")
	local t = { 
		["Description"] = Description,
		["AddressId"] = AddressId,
		["Notification"] = Notification,
		["RoleARN"] = RoleARN,
		["ClusterId"] = ClusterId,
		["ForwardingAddressId"] = ForwardingAddressId,
		["ShippingOption"] = ShippingOption,
		["Resources"] = Resources,
	}
	M.AssertUpdateClusterRequest(t)
	return t
end

local ListClustersResult_keys = { "ClusterListEntries" = true, "NextToken" = true, nil }

function M.AssertListClustersResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListClustersResult to be of type 'table'")
	if struct["ClusterListEntries"] then M.AssertClusterListEntryList(struct["ClusterListEntries"]) end
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListClustersResult_keys[k], "ListClustersResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListClustersResult
--  
-- @param ClusterListEntries [ClusterListEntryList] <p>Each <code>ClusterListEntry</code> object contains a cluster's state, a cluster's ID, and other important status information.</p>
-- @param NextToken [String] <p>HTTP requests are stateless. If you use the automatically generated <code>NextToken</code> value in your next <code>ClusterListEntry</code> call, your list of returned clusters will start from this point in the array.</p>
function M.ListClustersResult(ClusterListEntries, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListClustersResult")
	local t = { 
		["ClusterListEntries"] = ClusterListEntries,
		["NextToken"] = NextToken,
	}
	M.AssertListClustersResult(t)
	return t
end

local S3Resource_keys = { "BucketArn" = true, "KeyRange" = true, nil }

function M.AssertS3Resource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3Resource to be of type 'table'")
	if struct["BucketArn"] then M.AssertResourceARN(struct["BucketArn"]) end
	if struct["KeyRange"] then M.AssertKeyRange(struct["KeyRange"]) end
	for k,_ in pairs(struct) do
		assert(S3Resource_keys[k], "S3Resource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3Resource
-- <p>Each <code>S3Resource</code> object represents an Amazon S3 bucket that your transferred data will be exported from or imported into. For export jobs, this object can have an optional <code>KeyRange</code> value. The length of the range is defined at job creation, and has either an inclusive <code>BeginMarker</code>, an inclusive <code>EndMarker</code>, or both. Ranges are UTF-8 binary sorted.</p>
-- @param BucketArn [ResourceARN] <p>The Amazon Resource Name (ARN) of an Amazon S3 bucket.</p>
-- @param KeyRange [KeyRange] <p>For export jobs, you can provide an optional <code>KeyRange</code> within a specific Amazon S3 bucket. The length of the range is defined at job creation, and has either an inclusive <code>BeginMarker</code>, an inclusive <code>EndMarker</code>, or both. Ranges are UTF-8 binary sorted.</p>
function M.S3Resource(BucketArn, KeyRange, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating S3Resource")
	local t = { 
		["BucketArn"] = BucketArn,
		["KeyRange"] = KeyRange,
	}
	M.AssertS3Resource(t)
	return t
end

local ListClusterJobsRequest_keys = { "NextToken" = true, "ClusterId" = true, "MaxResults" = true, nil }

function M.AssertListClusterJobsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListClusterJobsRequest to be of type 'table'")
	assert(struct["ClusterId"], "Expected key ClusterId to exist in table")
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	if struct["ClusterId"] then M.AssertClusterId(struct["ClusterId"]) end
	if struct["MaxResults"] then M.AssertListLimit(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListClusterJobsRequest_keys[k], "ListClusterJobsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListClusterJobsRequest
--  
-- @param NextToken [String] <p>HTTP requests are stateless. To identify what object comes "next" in the list of <code>JobListEntry</code> objects, you have the option of specifying <code>NextToken</code> as the starting point for your returned list.</p>
-- @param ClusterId [ClusterId] <p>The 39-character ID for the cluster that you want to list, for example <code>CID123e4567-e89b-12d3-a456-426655440000</code>.</p>
-- @param MaxResults [ListLimit] <p>The number of <code>JobListEntry</code> objects to return.</p>
-- Required parameter: ClusterId
function M.ListClusterJobsRequest(NextToken, ClusterId, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListClusterJobsRequest")
	local t = { 
		["NextToken"] = NextToken,
		["ClusterId"] = ClusterId,
		["MaxResults"] = MaxResults,
	}
	M.AssertListClusterJobsRequest(t)
	return t
end

local DescribeClusterResult_keys = { "ClusterMetadata" = true, nil }

function M.AssertDescribeClusterResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeClusterResult to be of type 'table'")
	if struct["ClusterMetadata"] then M.AssertClusterMetadata(struct["ClusterMetadata"]) end
	for k,_ in pairs(struct) do
		assert(DescribeClusterResult_keys[k], "DescribeClusterResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeClusterResult
--  
-- @param ClusterMetadata [ClusterMetadata] <p>Information about a specific cluster, including shipping information, cluster status, and other important metadata.</p>
function M.DescribeClusterResult(ClusterMetadata, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeClusterResult")
	local t = { 
		["ClusterMetadata"] = ClusterMetadata,
	}
	M.AssertDescribeClusterResult(t)
	return t
end

local CancelJobRequest_keys = { "JobId" = true, nil }

function M.AssertCancelJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelJobRequest to be of type 'table'")
	assert(struct["JobId"], "Expected key JobId to exist in table")
	if struct["JobId"] then M.AssertJobId(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(CancelJobRequest_keys[k], "CancelJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelJobRequest
--  
-- @param JobId [JobId] <p>The 39-character job ID for the job that you want to cancel, for example <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>
-- Required parameter: JobId
function M.CancelJobRequest(JobId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CancelJobRequest")
	local t = { 
		["JobId"] = JobId,
	}
	M.AssertCancelJobRequest(t)
	return t
end

local ShippingDetails_keys = { "OutboundShipment" = true, "ShippingOption" = true, "InboundShipment" = true, nil }

function M.AssertShippingDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ShippingDetails to be of type 'table'")
	if struct["OutboundShipment"] then M.AssertShipment(struct["OutboundShipment"]) end
	if struct["ShippingOption"] then M.AssertShippingOption(struct["ShippingOption"]) end
	if struct["InboundShipment"] then M.AssertShipment(struct["InboundShipment"]) end
	for k,_ in pairs(struct) do
		assert(ShippingDetails_keys[k], "ShippingDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ShippingDetails
-- <p>A job's shipping information, including inbound and outbound tracking numbers and shipping speed options.</p>
-- @param OutboundShipment [Shipment] <p>The <code>Status</code> and <code>TrackingNumber</code> values for a Snowball being returned to AWS for a particular job.</p>
-- @param ShippingOption [ShippingOption] <p>The shipping speed for a particular job. This speed doesn't dictate how soon you'll get the Snowball from the job's creation date. This speed represents how quickly it moves to its destination while in transit. Regional shipping speeds are as follows:</p> <ul> <li> <p>In Australia, you have access to express shipping. Typically, Snowballs shipped express are delivered in about a day.</p> </li> <li> <p>In the European Union (EU), you have access to express shipping. Typically, Snowballs shipped express are delivered in about a day. In addition, most countries in the EU have access to standard shipping, which typically takes less than a week, one way.</p> </li> <li> <p>In India, Snowballs are delivered in one to seven days.</p> </li> <li> <p>In the United States of America (US), you have access to one-day shipping and two-day shipping.</p> </li> </ul>
-- @param InboundShipment [Shipment] <p>The <code>Status</code> and <code>TrackingNumber</code> values for a Snowball being delivered to the address that you specified for a particular job.</p>
function M.ShippingDetails(OutboundShipment, ShippingOption, InboundShipment, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ShippingDetails")
	local t = { 
		["OutboundShipment"] = OutboundShipment,
		["ShippingOption"] = ShippingOption,
		["InboundShipment"] = InboundShipment,
	}
	M.AssertShippingDetails(t)
	return t
end

function M.AssertJobId(str)
	assert(str)
	assert(type(str) == "string", "Expected JobId to be of type 'string'")
	assert(#str <= 39, "Expected string to be max 39 characters")
	assert(#str >= 39, "Expected string to be min 39 characters")
	assert(str:match("(M|J)ID[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}"), "Expected string to match pattern '(M|J)ID[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}'")
end

--  
function M.JobId(str)
	M.AssertJobId(str)
	return str
end

function M.AssertJobState(str)
	assert(str)
	assert(type(str) == "string", "Expected JobState to be of type 'string'")
end

--  
function M.JobState(str)
	M.AssertJobState(str)
	return str
end

function M.AssertAddressId(str)
	assert(str)
	assert(type(str) == "string", "Expected AddressId to be of type 'string'")
	assert(#str <= 40, "Expected string to be max 40 characters")
	assert(#str >= 40, "Expected string to be min 40 characters")
	assert(str:match("ADID[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}"), "Expected string to match pattern 'ADID[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}'")
end

--  
function M.AddressId(str)
	M.AssertAddressId(str)
	return str
end

function M.AssertClusterId(str)
	assert(str)
	assert(type(str) == "string", "Expected ClusterId to be of type 'string'")
	assert(#str <= 39, "Expected string to be max 39 characters")
	assert(#str >= 39, "Expected string to be min 39 characters")
	assert(str:match("CID[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}"), "Expected string to match pattern 'CID[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}'")
end

--  
function M.ClusterId(str)
	M.AssertClusterId(str)
	return str
end

function M.AssertString(str)
	assert(str)
	assert(type(str) == "string", "Expected String to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.String(str)
	M.AssertString(str)
	return str
end

function M.AssertRoleARN(str)
	assert(str)
	assert(type(str) == "string", "Expected RoleARN to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(str:match("arn:aws.*:iam::[0-9]{12}:role/.*"), "Expected string to match pattern 'arn:aws.*:iam::[0-9]{12}:role/.*'")
end

--  
function M.RoleARN(str)
	M.AssertRoleARN(str)
	return str
end

function M.AssertShippingOption(str)
	assert(str)
	assert(type(str) == "string", "Expected ShippingOption to be of type 'string'")
end

--  
function M.ShippingOption(str)
	M.AssertShippingOption(str)
	return str
end

function M.AssertSnowballType(str)
	assert(str)
	assert(type(str) == "string", "Expected SnowballType to be of type 'string'")
end

--  
function M.SnowballType(str)
	M.AssertSnowballType(str)
	return str
end

function M.AssertResourceARN(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceARN to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.ResourceARN(str)
	M.AssertResourceARN(str)
	return str
end

function M.AssertKmsKeyARN(str)
	assert(str)
	assert(type(str) == "string", "Expected KmsKeyARN to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(str:match("arn:aws.*:kms:.*:[0-9]{12}:key/.*"), "Expected string to match pattern 'arn:aws.*:kms:.*:[0-9]{12}:key/.*'")
end

--  
function M.KmsKeyARN(str)
	M.AssertKmsKeyARN(str)
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

function M.AssertJobType(str)
	assert(str)
	assert(type(str) == "string", "Expected JobType to be of type 'string'")
end

--  
function M.JobType(str)
	M.AssertJobType(str)
	return str
end

function M.AssertSnowballCapacity(str)
	assert(str)
	assert(type(str) == "string", "Expected SnowballCapacity to be of type 'string'")
end

--  
function M.SnowballCapacity(str)
	M.AssertSnowballCapacity(str)
	return str
end

function M.AssertSnsTopicARN(str)
	assert(str)
	assert(type(str) == "string", "Expected SnsTopicARN to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(str:match("arn:aws.*:sns:.*:[0-9]{12}:.*"), "Expected string to match pattern 'arn:aws.*:sns:.*:[0-9]{12}:.*'")
end

--  
function M.SnsTopicARN(str)
	M.AssertSnsTopicARN(str)
	return str
end

function M.AssertLong(long)
	assert(long)
	assert(type(long) == "number", "Expected Long to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.Long(long)
	M.AssertLong(long)
	return long
end

function M.AssertListLimit(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ListLimit to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
end

function M.ListLimit(integer)
	M.AssertListLimit(integer)
	return integer
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

function M.AssertBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Boolean to be of type 'boolean'")
end

function M.Boolean(boolean)
	M.AssertBoolean(boolean)
	return boolean
end

function M.AssertTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Timestamp to be of type 'string'")
end

function M.Timestamp(timestamp)
	M.AssertTimestamp(timestamp)
	return timestamp
end

function M.AssertJobStateList(list)
	assert(list)
	assert(type(list) == "table", "Expected JobStateList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertJobState(v)
	end
end

--  
-- List of JobState objects
function M.JobStateList(list)
	M.AssertJobStateList(list)
	return list
end

function M.AssertAddressList(list)
	assert(list)
	assert(type(list) == "table", "Expected AddressList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAddress(v)
	end
end

--  
-- List of Address objects
function M.AddressList(list)
	M.AssertAddressList(list)
	return list
end

function M.AssertJobListEntryList(list)
	assert(list)
	assert(type(list) == "table", "Expected JobListEntryList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertJobListEntry(v)
	end
end

--  
-- List of JobListEntry objects
function M.JobListEntryList(list)
	M.AssertJobListEntryList(list)
	return list
end

function M.AssertS3ResourceList(list)
	assert(list)
	assert(type(list) == "table", "Expected S3ResourceList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertS3Resource(v)
	end
end

--  
-- List of S3Resource objects
function M.S3ResourceList(list)
	M.AssertS3ResourceList(list)
	return list
end

function M.AssertLambdaResourceList(list)
	assert(list)
	assert(type(list) == "table", "Expected LambdaResourceList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertLambdaResource(v)
	end
end

--  
-- List of LambdaResource objects
function M.LambdaResourceList(list)
	M.AssertLambdaResourceList(list)
	return list
end

function M.AssertJobMetadataList(list)
	assert(list)
	assert(type(list) == "table", "Expected JobMetadataList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertJobMetadata(v)
	end
end

--  
-- List of JobMetadata objects
function M.JobMetadataList(list)
	M.AssertJobMetadataList(list)
	return list
end

function M.AssertClusterListEntryList(list)
	assert(list)
	assert(type(list) == "table", "Expected ClusterListEntryList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertClusterListEntry(v)
	end
end

--  
-- List of ClusterListEntry objects
function M.ClusterListEntryList(list)
	M.AssertClusterListEntryList(list)
	return list
end

function M.AssertEventTriggerDefinitionList(list)
	assert(list)
	assert(type(list) == "table", "Expected EventTriggerDefinitionList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertEventTriggerDefinition(v)
	end
end

--  
-- List of EventTriggerDefinition objects
function M.EventTriggerDefinitionList(list)
	M.AssertEventTriggerDefinitionList(list)
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
			return "snowball.amazonaws.com"
		end
	end
	local ss = { "snowball" }
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
--- ListJobs
-- @param ListJobsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListJobsAsync(ListJobsRequest, cb)
	assert(ListJobsRequest, "You must provide a ListJobsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSIESnowballJobManagementService.ListJobs",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListJobsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListClusterJobs
-- @param ListClusterJobsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListClusterJobsAsync(ListClusterJobsRequest, cb)
	assert(ListClusterJobsRequest, "You must provide a ListClusterJobsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSIESnowballJobManagementService.ListClusterJobs",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListClusterJobsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetJobUnlockCode
-- @param GetJobUnlockCodeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetJobUnlockCodeAsync(GetJobUnlockCodeRequest, cb)
	assert(GetJobUnlockCodeRequest, "You must provide a GetJobUnlockCodeRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSIESnowballJobManagementService.GetJobUnlockCode",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetJobUnlockCodeRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateJob
-- @param CreateJobRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateJobAsync(CreateJobRequest, cb)
	assert(CreateJobRequest, "You must provide a CreateJobRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSIESnowballJobManagementService.CreateJob",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateJobRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListClusters
-- @param ListClustersRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListClustersAsync(ListClustersRequest, cb)
	assert(ListClustersRequest, "You must provide a ListClustersRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSIESnowballJobManagementService.ListClusters",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListClustersRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateCluster
-- @param CreateClusterRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateClusterAsync(CreateClusterRequest, cb)
	assert(CreateClusterRequest, "You must provide a CreateClusterRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSIESnowballJobManagementService.CreateCluster",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateClusterRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateJob
-- @param UpdateJobRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateJobAsync(UpdateJobRequest, cb)
	assert(UpdateJobRequest, "You must provide a UpdateJobRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSIESnowballJobManagementService.UpdateJob",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateJobRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetSnowballUsage
-- @param GetSnowballUsageRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetSnowballUsageAsync(GetSnowballUsageRequest, cb)
	assert(GetSnowballUsageRequest, "You must provide a GetSnowballUsageRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSIESnowballJobManagementService.GetSnowballUsage",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetSnowballUsageRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetJobManifest
-- @param GetJobManifestRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetJobManifestAsync(GetJobManifestRequest, cb)
	assert(GetJobManifestRequest, "You must provide a GetJobManifestRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSIESnowballJobManagementService.GetJobManifest",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetJobManifestRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateAddress
-- @param CreateAddressRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateAddressAsync(CreateAddressRequest, cb)
	assert(CreateAddressRequest, "You must provide a CreateAddressRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSIESnowballJobManagementService.CreateAddress",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateAddressRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeAddress
-- @param DescribeAddressRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeAddressAsync(DescribeAddressRequest, cb)
	assert(DescribeAddressRequest, "You must provide a DescribeAddressRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSIESnowballJobManagementService.DescribeAddress",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeAddressRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeAddresses
-- @param DescribeAddressesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeAddressesAsync(DescribeAddressesRequest, cb)
	assert(DescribeAddressesRequest, "You must provide a DescribeAddressesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSIESnowballJobManagementService.DescribeAddresses",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeAddressesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CancelJob
-- @param CancelJobRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CancelJobAsync(CancelJobRequest, cb)
	assert(CancelJobRequest, "You must provide a CancelJobRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSIESnowballJobManagementService.CancelJob",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CancelJobRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CancelCluster
-- @param CancelClusterRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CancelClusterAsync(CancelClusterRequest, cb)
	assert(CancelClusterRequest, "You must provide a CancelClusterRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSIESnowballJobManagementService.CancelCluster",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CancelClusterRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeJob
-- @param DescribeJobRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeJobAsync(DescribeJobRequest, cb)
	assert(DescribeJobRequest, "You must provide a DescribeJobRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSIESnowballJobManagementService.DescribeJob",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeJobRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeCluster
-- @param DescribeClusterRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeClusterAsync(DescribeClusterRequest, cb)
	assert(DescribeClusterRequest, "You must provide a DescribeClusterRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSIESnowballJobManagementService.DescribeCluster",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeClusterRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateCluster
-- @param UpdateClusterRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateClusterAsync(UpdateClusterRequest, cb)
	assert(UpdateClusterRequest, "You must provide a UpdateClusterRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSIESnowballJobManagementService.UpdateCluster",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateClusterRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
