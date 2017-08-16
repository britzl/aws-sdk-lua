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

local keys = {}
local asserts = {}

keys.CancelClusterRequest = { ["ClusterId"] = true, nil }

function asserts.AssertCancelClusterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelClusterRequest to be of type 'table'")
	assert(struct["ClusterId"], "Expected key ClusterId to exist in table")
	if struct["ClusterId"] then asserts.AssertClusterId(struct["ClusterId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CancelClusterRequest[k], "CancelClusterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelClusterRequest
--  
-- @param _ClusterId [ClusterId] <p>The 39-character ID for the cluster that you want to cancel, for example <code>CID123e4567-e89b-12d3-a456-426655440000</code>.</p>
-- Required parameter: ClusterId
function M.CancelClusterRequest(_ClusterId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CancelClusterRequest")
	local t = { 
		["ClusterId"] = _ClusterId,
	}
	asserts.AssertCancelClusterRequest(t)
	return t
end

keys.CancelClusterResult = { nil }

function asserts.AssertCancelClusterResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelClusterResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CancelClusterResult[k], "CancelClusterResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelClusterResult
--  
function M.CancelClusterResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CancelClusterResult")
	local t = { 
	}
	asserts.AssertCancelClusterResult(t)
	return t
end

keys.UpdateJobRequest = { ["Description"] = true, ["AddressId"] = true, ["Notification"] = true, ["RoleARN"] = true, ["JobId"] = true, ["ShippingOption"] = true, ["ForwardingAddressId"] = true, ["SnowballCapacityPreference"] = true, ["Resources"] = true, nil }

function asserts.AssertUpdateJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateJobRequest to be of type 'table'")
	assert(struct["JobId"], "Expected key JobId to exist in table")
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	if struct["AddressId"] then asserts.AssertAddressId(struct["AddressId"]) end
	if struct["Notification"] then asserts.AssertNotification(struct["Notification"]) end
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	if struct["JobId"] then asserts.AssertJobId(struct["JobId"]) end
	if struct["ShippingOption"] then asserts.AssertShippingOption(struct["ShippingOption"]) end
	if struct["ForwardingAddressId"] then asserts.AssertAddressId(struct["ForwardingAddressId"]) end
	if struct["SnowballCapacityPreference"] then asserts.AssertSnowballCapacity(struct["SnowballCapacityPreference"]) end
	if struct["Resources"] then asserts.AssertJobResource(struct["Resources"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateJobRequest[k], "UpdateJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateJobRequest
--  
-- @param _Description [String] <p>The updated description of this job's <a>JobMetadata</a> object.</p>
-- @param _AddressId [AddressId] <p>The ID of the updated <a>Address</a> object.</p>
-- @param _Notification [Notification] <p>The new or updated <a>Notification</a> object.</p>
-- @param _RoleARN [RoleARN] <p>The new role Amazon Resource Name (ARN) that you want to associate with this job. To create a role ARN, use the <a href="http://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html">CreateRole</a>AWS Identity and Access Management (IAM) API action.</p>
-- @param _JobId [JobId] <p>The job ID of the job that you want to update, for example <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>
-- @param _ShippingOption [ShippingOption] <p>The updated shipping option value of this job's <a>ShippingDetails</a> object.</p>
-- @param _ForwardingAddressId [AddressId] <p>The updated ID for the forwarding address for a job. This field is not supported in most regions.</p>
-- @param _SnowballCapacityPreference [SnowballCapacity] <p>The updated <code>SnowballCapacityPreference</code> of this job's <a>JobMetadata</a> object. The 50 TB Snowballs are only available in the US regions.</p>
-- @param _Resources [JobResource] <p>The updated <a>S3Resource</a> object (for a single Amazon S3 bucket or key range), or the updated <a>JobResource</a> object (for multiple buckets or key ranges). </p>
-- Required parameter: JobId
function M.UpdateJobRequest(_Description, _AddressId, _Notification, _RoleARN, _JobId, _ShippingOption, _ForwardingAddressId, _SnowballCapacityPreference, _Resources, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateJobRequest")
	local t = { 
		["Description"] = _Description,
		["AddressId"] = _AddressId,
		["Notification"] = _Notification,
		["RoleARN"] = _RoleARN,
		["JobId"] = _JobId,
		["ShippingOption"] = _ShippingOption,
		["ForwardingAddressId"] = _ForwardingAddressId,
		["SnowballCapacityPreference"] = _SnowballCapacityPreference,
		["Resources"] = _Resources,
	}
	asserts.AssertUpdateJobRequest(t)
	return t
end

keys.UnsupportedAddressException = { ["Message"] = true, nil }

function asserts.AssertUnsupportedAddressException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsupportedAddressException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnsupportedAddressException[k], "UnsupportedAddressException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsupportedAddressException
-- <p>The address is either outside the serviceable area for your region, or an error occurred. Check the address with your region's carrier and try again. If the issue persists, contact AWS Support.</p>
-- @param _Message [String] 
function M.UnsupportedAddressException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnsupportedAddressException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertUnsupportedAddressException(t)
	return t
end

keys.CreateJobRequest = { ["Description"] = true, ["AddressId"] = true, ["KmsKeyARN"] = true, ["Notification"] = true, ["RoleARN"] = true, ["ClusterId"] = true, ["ForwardingAddressId"] = true, ["ShippingOption"] = true, ["JobType"] = true, ["SnowballType"] = true, ["SnowballCapacityPreference"] = true, ["Resources"] = true, nil }

function asserts.AssertCreateJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateJobRequest to be of type 'table'")
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	if struct["AddressId"] then asserts.AssertAddressId(struct["AddressId"]) end
	if struct["KmsKeyARN"] then asserts.AssertKmsKeyARN(struct["KmsKeyARN"]) end
	if struct["Notification"] then asserts.AssertNotification(struct["Notification"]) end
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	if struct["ClusterId"] then asserts.AssertClusterId(struct["ClusterId"]) end
	if struct["ForwardingAddressId"] then asserts.AssertAddressId(struct["ForwardingAddressId"]) end
	if struct["ShippingOption"] then asserts.AssertShippingOption(struct["ShippingOption"]) end
	if struct["JobType"] then asserts.AssertJobType(struct["JobType"]) end
	if struct["SnowballType"] then asserts.AssertSnowballType(struct["SnowballType"]) end
	if struct["SnowballCapacityPreference"] then asserts.AssertSnowballCapacity(struct["SnowballCapacityPreference"]) end
	if struct["Resources"] then asserts.AssertJobResource(struct["Resources"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateJobRequest[k], "CreateJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateJobRequest
--  
-- @param _Description [String] <p>Defines an optional description of this specific job, for example <code>Important Photos 2016-08-11</code>.</p>
-- @param _AddressId [AddressId] <p>The ID for the address that you want the Snowball shipped to.</p>
-- @param _KmsKeyARN [KmsKeyARN] <p>The <code>KmsKeyARN</code> that you want to associate with this job. <code>KmsKeyARN</code>s are created using the <a href="http://docs.aws.amazon.com/kms/latest/APIReference/API_CreateKey.html">CreateKey</a> AWS Key Management Service (KMS) API action.</p>
-- @param _Notification [Notification] <p>Defines the Amazon Simple Notification Service (Amazon SNS) notification settings for this job.</p>
-- @param _RoleARN [RoleARN] <p>The <code>RoleARN</code> that you want to associate with this job. <code>RoleArn</code>s are created using the <a href="http://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html">CreateRole</a> AWS Identity and Access Management (IAM) API action.</p>
-- @param _ClusterId [ClusterId] <p>The ID of a cluster. If you're creating a job for a node in a cluster, you need to provide only this <code>clusterId</code> value. The other job attributes are inherited from the cluster.</p>
-- @param _ForwardingAddressId [AddressId] <p>The forwarding address ID for a job. This field is not supported in most regions.</p>
-- @param _ShippingOption [ShippingOption] <p>The shipping speed for this job. This speed doesn't dictate how soon you'll get the Snowball, rather it represents how quickly the Snowball moves to its destination while in transit. Regional shipping speeds are as follows:</p> <ul> <li> <p>In Australia, you have access to express shipping. Typically, Snowballs shipped express are delivered in about a day.</p> </li> <li> <p>In the European Union (EU), you have access to express shipping. Typically, Snowballs shipped express are delivered in about a day. In addition, most countries in the EU have access to standard shipping, which typically takes less than a week, one way.</p> </li> <li> <p>In India, Snowballs are delivered in one to seven days.</p> </li> <li> <p>In the US, you have access to one-day shipping and two-day shipping.</p> </li> </ul>
-- @param _JobType [JobType] <p>Defines the type of job that you're creating. </p>
-- @param _SnowballType [SnowballType] <p>The type of AWS Snowball appliance to use for this job. Currently, the only supported appliance type for cluster jobs is <code>EDGE</code>.</p>
-- @param _SnowballCapacityPreference [SnowballCapacity] <p>If your job is being created in one of the US regions, you have the option of specifying what size Snowball you'd like for this job. In all other regions, Snowballs come with 80 TB in storage capacity.</p>
-- @param _Resources [JobResource] <p>Defines the Amazon S3 buckets associated with this job.</p> <p>With <code>IMPORT</code> jobs, you specify the bucket or buckets that your transferred data will be imported into.</p> <p>With <code>EXPORT</code> jobs, you specify the bucket or buckets that your transferred data will be exported from. Optionally, you can also specify a <code>KeyRange</code> value. If you choose to export a range, you define the length of the range by providing either an inclusive <code>BeginMarker</code> value, an inclusive <code>EndMarker</code> value, or both. Ranges are UTF-8 binary sorted.</p>
function M.CreateJobRequest(_Description, _AddressId, _KmsKeyARN, _Notification, _RoleARN, _ClusterId, _ForwardingAddressId, _ShippingOption, _JobType, _SnowballType, _SnowballCapacityPreference, _Resources, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateJobRequest")
	local t = { 
		["Description"] = _Description,
		["AddressId"] = _AddressId,
		["KmsKeyARN"] = _KmsKeyARN,
		["Notification"] = _Notification,
		["RoleARN"] = _RoleARN,
		["ClusterId"] = _ClusterId,
		["ForwardingAddressId"] = _ForwardingAddressId,
		["ShippingOption"] = _ShippingOption,
		["JobType"] = _JobType,
		["SnowballType"] = _SnowballType,
		["SnowballCapacityPreference"] = _SnowballCapacityPreference,
		["Resources"] = _Resources,
	}
	asserts.AssertCreateJobRequest(t)
	return t
end

keys.ListJobsRequest = { ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListJobsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListJobsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertListLimit(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListJobsRequest[k], "ListJobsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListJobsRequest
--  
-- @param _NextToken [String] <p>HTTP requests are stateless. To identify what object comes "next" in the list of <code>JobListEntry</code> objects, you have the option of specifying <code>NextToken</code> as the starting point for your returned list.</p>
-- @param _MaxResults [ListLimit] <p>The number of <code>JobListEntry</code> objects to return.</p>
function M.ListJobsRequest(_NextToken, _MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListJobsRequest")
	local t = { 
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
	}
	asserts.AssertListJobsRequest(t)
	return t
end

keys.KMSRequestFailedException = { ["Message"] = true, nil }

function asserts.AssertKMSRequestFailedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KMSRequestFailedException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.KMSRequestFailedException[k], "KMSRequestFailedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KMSRequestFailedException
-- <p>The provided AWS Key Management Service key lacks the permissions to perform the specified <a>CreateJob</a> or <a>UpdateJob</a> action.</p>
-- @param _Message [String] 
function M.KMSRequestFailedException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KMSRequestFailedException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertKMSRequestFailedException(t)
	return t
end

keys.InvalidResourceException = { ["Message"] = true, nil }

function asserts.AssertInvalidResourceException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidResourceException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidResourceException[k], "InvalidResourceException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidResourceException
-- <p>The specified resource can't be found. Check the information you provided in your last request, and try again.</p>
-- @param _Message [String] 
function M.InvalidResourceException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidResourceException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertInvalidResourceException(t)
	return t
end

keys.ClusterMetadata = { ["Description"] = true, ["AddressId"] = true, ["KmsKeyARN"] = true, ["Notification"] = true, ["RoleARN"] = true, ["ClusterId"] = true, ["ForwardingAddressId"] = true, ["ClusterState"] = true, ["ShippingOption"] = true, ["Resources"] = true, ["SnowballType"] = true, ["CreationDate"] = true, ["JobType"] = true, nil }

function asserts.AssertClusterMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterMetadata to be of type 'table'")
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	if struct["AddressId"] then asserts.AssertAddressId(struct["AddressId"]) end
	if struct["KmsKeyARN"] then asserts.AssertKmsKeyARN(struct["KmsKeyARN"]) end
	if struct["Notification"] then asserts.AssertNotification(struct["Notification"]) end
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	if struct["ClusterId"] then asserts.AssertString(struct["ClusterId"]) end
	if struct["ForwardingAddressId"] then asserts.AssertAddressId(struct["ForwardingAddressId"]) end
	if struct["ClusterState"] then asserts.AssertClusterState(struct["ClusterState"]) end
	if struct["ShippingOption"] then asserts.AssertShippingOption(struct["ShippingOption"]) end
	if struct["Resources"] then asserts.AssertJobResource(struct["Resources"]) end
	if struct["SnowballType"] then asserts.AssertSnowballType(struct["SnowballType"]) end
	if struct["CreationDate"] then asserts.AssertTimestamp(struct["CreationDate"]) end
	if struct["JobType"] then asserts.AssertJobType(struct["JobType"]) end
	for k,_ in pairs(struct) do
		assert(keys.ClusterMetadata[k], "ClusterMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterMetadata
-- <p>Contains metadata about a specific cluster.</p>
-- @param _Description [String] <p>The optional description of the cluster.</p>
-- @param _AddressId [AddressId] <p>The automatically generated ID for a specific address.</p>
-- @param _KmsKeyARN [KmsKeyARN] <p>The <code>KmsKeyARN</code> Amazon Resource Name (ARN) associated with this cluster. This ARN was created using the <a href="http://docs.aws.amazon.com/kms/latest/APIReference/API_CreateKey.html">CreateKey</a> API action in AWS Key Management Service (AWS KMS).</p>
-- @param _Notification [Notification] <p>The Amazon Simple Notification Service (Amazon SNS) notification settings for this cluster.</p>
-- @param _RoleARN [RoleARN] <p>The role ARN associated with this cluster. This ARN was created using the <a href="http://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html">CreateRole</a> API action in AWS Identity and Access Management (IAM).</p>
-- @param _ClusterId [String] <p>The automatically generated ID for a cluster.</p>
-- @param _ForwardingAddressId [AddressId] <p>The ID of the address that you want a cluster shipped to, after it will be shipped to its primary address. This field is not supported in most regions.</p>
-- @param _ClusterState [ClusterState] <p>The current status of the cluster.</p>
-- @param _ShippingOption [ShippingOption] <p>The shipping speed for each node in this cluster. This speed doesn't dictate how soon you'll get each Snowball Edge appliance, rather it represents how quickly each appliance moves to its destination while in transit. Regional shipping speeds are as follows:</p> <ul> <li> <p>In Australia, you have access to express shipping. Typically, appliances shipped express are delivered in about a day.</p> </li> <li> <p>In the European Union (EU), you have access to express shipping. Typically, Snowball Edges shipped express are delivered in about a day. In addition, most countries in the EU have access to standard shipping, which typically takes less than a week, one way.</p> </li> <li> <p>In India, Snowball Edges are delivered in one to seven days.</p> </li> <li> <p>In the US, you have access to one-day shipping and two-day shipping.</p> </li> </ul>
-- @param _Resources [JobResource] <p>The arrays of <a>JobResource</a> objects that can include updated <a>S3Resource</a> objects or <a>LambdaResource</a> objects.</p>
-- @param _SnowballType [SnowballType] <p>The type of AWS Snowball appliance to use for this cluster. Currently, the only supported appliance type for cluster jobs is <code>EDGE</code>.</p>
-- @param _CreationDate [Timestamp] <p>The creation date for this cluster.</p>
-- @param _JobType [JobType] <p>The type of job for this cluster. Currently, the only job type supported for clusters is <code>LOCAL_USE</code>.</p>
function M.ClusterMetadata(_Description, _AddressId, _KmsKeyARN, _Notification, _RoleARN, _ClusterId, _ForwardingAddressId, _ClusterState, _ShippingOption, _Resources, _SnowballType, _CreationDate, _JobType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterMetadata")
	local t = { 
		["Description"] = _Description,
		["AddressId"] = _AddressId,
		["KmsKeyARN"] = _KmsKeyARN,
		["Notification"] = _Notification,
		["RoleARN"] = _RoleARN,
		["ClusterId"] = _ClusterId,
		["ForwardingAddressId"] = _ForwardingAddressId,
		["ClusterState"] = _ClusterState,
		["ShippingOption"] = _ShippingOption,
		["Resources"] = _Resources,
		["SnowballType"] = _SnowballType,
		["CreationDate"] = _CreationDate,
		["JobType"] = _JobType,
	}
	asserts.AssertClusterMetadata(t)
	return t
end

keys.GetJobUnlockCodeResult = { ["UnlockCode"] = true, nil }

function asserts.AssertGetJobUnlockCodeResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetJobUnlockCodeResult to be of type 'table'")
	if struct["UnlockCode"] then asserts.AssertString(struct["UnlockCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetJobUnlockCodeResult[k], "GetJobUnlockCodeResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetJobUnlockCodeResult
--  
-- @param _UnlockCode [String] <p>The <code>UnlockCode</code> value for the specified job. The <code>UnlockCode</code> value can be accessed for up to 90 days after the job has been created.</p>
function M.GetJobUnlockCodeResult(_UnlockCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetJobUnlockCodeResult")
	local t = { 
		["UnlockCode"] = _UnlockCode,
	}
	asserts.AssertGetJobUnlockCodeResult(t)
	return t
end

keys.KeyRange = { ["EndMarker"] = true, ["BeginMarker"] = true, nil }

function asserts.AssertKeyRange(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KeyRange to be of type 'table'")
	if struct["EndMarker"] then asserts.AssertString(struct["EndMarker"]) end
	if struct["BeginMarker"] then asserts.AssertString(struct["BeginMarker"]) end
	for k,_ in pairs(struct) do
		assert(keys.KeyRange[k], "KeyRange contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KeyRange
-- <p>Contains a key range. For export jobs, a <code>S3Resource</code> object can have an optional <code>KeyRange</code> value. The length of the range is defined at job creation, and has either an inclusive <code>BeginMarker</code>, an inclusive <code>EndMarker</code>, or both. Ranges are UTF-8 binary sorted.</p>
-- @param _EndMarker [String] <p>The key that ends an optional key range for an export job. Ranges are inclusive and UTF-8 binary sorted.</p>
-- @param _BeginMarker [String] <p>The key that starts an optional key range for an export job. Ranges are inclusive and UTF-8 binary sorted.</p>
function M.KeyRange(_EndMarker, _BeginMarker, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KeyRange")
	local t = { 
		["EndMarker"] = _EndMarker,
		["BeginMarker"] = _BeginMarker,
	}
	asserts.AssertKeyRange(t)
	return t
end

keys.Shipment = { ["Status"] = true, ["TrackingNumber"] = true, nil }

function asserts.AssertShipment(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Shipment to be of type 'table'")
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["TrackingNumber"] then asserts.AssertString(struct["TrackingNumber"]) end
	for k,_ in pairs(struct) do
		assert(keys.Shipment[k], "Shipment contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Shipment
-- <p>The <code>Status</code> and <code>TrackingNumber</code> information for an inbound or outbound shipment.</p>
-- @param _Status [String] <p>Status information for a shipment.</p>
-- @param _TrackingNumber [String] <p>The tracking number for this job. Using this tracking number with your region's carrier's website, you can track a Snowball as the carrier transports it.</p> <p>For India, the carrier is Amazon Logistics. For all other regions, UPS is the carrier.</p>
function M.Shipment(_Status, _TrackingNumber, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Shipment")
	local t = { 
		["Status"] = _Status,
		["TrackingNumber"] = _TrackingNumber,
	}
	asserts.AssertShipment(t)
	return t
end

keys.InvalidNextTokenException = { ["Message"] = true, nil }

function asserts.AssertInvalidNextTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidNextTokenException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidNextTokenException[k], "InvalidNextTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidNextTokenException
-- <p>The <code>NextToken</code> string was altered unexpectedly, and the operation has stopped. Run the operation without changing the <code>NextToken</code> string, and try again.</p>
-- @param _Message [String] 
function M.InvalidNextTokenException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidNextTokenException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertInvalidNextTokenException(t)
	return t
end

keys.EventTriggerDefinition = { ["EventResourceARN"] = true, nil }

function asserts.AssertEventTriggerDefinition(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventTriggerDefinition to be of type 'table'")
	if struct["EventResourceARN"] then asserts.AssertResourceARN(struct["EventResourceARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.EventTriggerDefinition[k], "EventTriggerDefinition contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventTriggerDefinition
-- <p>The container for the <a>EventTriggerDefinition$EventResourceARN</a>.</p>
-- @param _EventResourceARN [ResourceARN] <p>The Amazon Resource Name (ARN) for any local Amazon S3 resource that is an AWS Lambda function's event trigger associated with this job.</p>
function M.EventTriggerDefinition(_EventResourceARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventTriggerDefinition")
	local t = { 
		["EventResourceARN"] = _EventResourceARN,
	}
	asserts.AssertEventTriggerDefinition(t)
	return t
end

keys.CreateAddressRequest = { ["Address"] = true, nil }

function asserts.AssertCreateAddressRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAddressRequest to be of type 'table'")
	assert(struct["Address"], "Expected key Address to exist in table")
	if struct["Address"] then asserts.AssertAddress(struct["Address"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateAddressRequest[k], "CreateAddressRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAddressRequest
--  
-- @param _Address [Address] <p>The address that you want the Snowball shipped to.</p>
-- Required parameter: Address
function M.CreateAddressRequest(_Address, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateAddressRequest")
	local t = { 
		["Address"] = _Address,
	}
	asserts.AssertCreateAddressRequest(t)
	return t
end

keys.CreateAddressResult = { ["AddressId"] = true, nil }

function asserts.AssertCreateAddressResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAddressResult to be of type 'table'")
	if struct["AddressId"] then asserts.AssertString(struct["AddressId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateAddressResult[k], "CreateAddressResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAddressResult
--  
-- @param _AddressId [String] <p>The automatically generated ID for a specific address. You'll use this ID when you create a job to specify which address you want the Snowball for that job shipped to.</p>
function M.CreateAddressResult(_AddressId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateAddressResult")
	local t = { 
		["AddressId"] = _AddressId,
	}
	asserts.AssertCreateAddressResult(t)
	return t
end

keys.ListJobsResult = { ["NextToken"] = true, ["JobListEntries"] = true, nil }

function asserts.AssertListJobsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListJobsResult to be of type 'table'")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["JobListEntries"] then asserts.AssertJobListEntryList(struct["JobListEntries"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListJobsResult[k], "ListJobsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListJobsResult
--  
-- @param _NextToken [String] <p>HTTP requests are stateless. If you use this automatically generated <code>NextToken</code> value in your next <code>ListJobs</code> call, your returned <code>JobListEntry</code> objects will start from this point in the array.</p>
-- @param _JobListEntries [JobListEntryList] <p>Each <code>JobListEntry</code> object contains a job's state, a job's ID, and a value that indicates whether the job is a job part, in the case of export jobs. </p>
function M.ListJobsResult(_NextToken, _JobListEntries, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListJobsResult")
	local t = { 
		["NextToken"] = _NextToken,
		["JobListEntries"] = _JobListEntries,
	}
	asserts.AssertListJobsResult(t)
	return t
end

keys.ClusterListEntry = { ["ClusterState"] = true, ["CreationDate"] = true, ["ClusterId"] = true, ["Description"] = true, nil }

function asserts.AssertClusterListEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterListEntry to be of type 'table'")
	if struct["ClusterState"] then asserts.AssertClusterState(struct["ClusterState"]) end
	if struct["CreationDate"] then asserts.AssertTimestamp(struct["CreationDate"]) end
	if struct["ClusterId"] then asserts.AssertString(struct["ClusterId"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.ClusterListEntry[k], "ClusterListEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterListEntry
-- <p>Contains a cluster's state, a cluster's ID, and other important information.</p>
-- @param _ClusterState [ClusterState] <p>The current state of this cluster. For information about the state of a specific node, see <a>JobListEntry$JobState</a>.</p>
-- @param _CreationDate [Timestamp] <p>The creation date for this cluster.</p>
-- @param _ClusterId [String] <p>The 39-character ID for the cluster that you want to list, for example <code>CID123e4567-e89b-12d3-a456-426655440000</code>.</p>
-- @param _Description [String] <p>Defines an optional description of the cluster, for example <code>Environmental Data Cluster-01</code>.</p>
function M.ClusterListEntry(_ClusterState, _CreationDate, _ClusterId, _Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterListEntry")
	local t = { 
		["ClusterState"] = _ClusterState,
		["CreationDate"] = _CreationDate,
		["ClusterId"] = _ClusterId,
		["Description"] = _Description,
	}
	asserts.AssertClusterListEntry(t)
	return t
end

keys.CreateJobResult = { ["JobId"] = true, nil }

function asserts.AssertCreateJobResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateJobResult to be of type 'table'")
	if struct["JobId"] then asserts.AssertJobId(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateJobResult[k], "CreateJobResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateJobResult
--  
-- @param _JobId [JobId] <p>The automatically generated ID for a job, for example <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>
function M.CreateJobResult(_JobId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateJobResult")
	local t = { 
		["JobId"] = _JobId,
	}
	asserts.AssertCreateJobResult(t)
	return t
end

keys.JobLogs = { ["JobFailureLogURI"] = true, ["JobSuccessLogURI"] = true, ["JobCompletionReportURI"] = true, nil }

function asserts.AssertJobLogs(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobLogs to be of type 'table'")
	if struct["JobFailureLogURI"] then asserts.AssertString(struct["JobFailureLogURI"]) end
	if struct["JobSuccessLogURI"] then asserts.AssertString(struct["JobSuccessLogURI"]) end
	if struct["JobCompletionReportURI"] then asserts.AssertString(struct["JobCompletionReportURI"]) end
	for k,_ in pairs(struct) do
		assert(keys.JobLogs[k], "JobLogs contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobLogs
-- <p>Contains job logs. Whenever Snowball is used to import data into or export data out of Amazon S3, you'll have the option of downloading a PDF job report. Job logs are returned as a part of the response syntax of the <code>DescribeJob</code> action in the <code>JobMetadata</code> data type. The job logs can be accessed for up to 60 minutes after this request has been made. To access any of the job logs after 60 minutes have passed, you'll have to make another call to the <code>DescribeJob</code> action.</p> <p>For import jobs, the PDF job report becomes available at the end of the import process. For export jobs, your job report typically becomes available while the Snowball for your job part is being delivered to you.</p> <p>The job report provides you insight into the state of your Amazon S3 data transfer. The report includes details about your job or job part for your records.</p> <p>For deeper visibility into the status of your transferred objects, you can look at the two associated logs: a success log and a failure log. The logs are saved in comma-separated value (CSV) format, and the name of each log includes the ID of the job or job part that the log describes.</p>
-- @param _JobFailureLogURI [String] <p>A link to an Amazon S3 presigned URL where the job failure log is located.</p>
-- @param _JobSuccessLogURI [String] <p>A link to an Amazon S3 presigned URL where the job success log is located.</p>
-- @param _JobCompletionReportURI [String] <p>A link to an Amazon S3 presigned URL where the job completion report is located.</p>
function M.JobLogs(_JobFailureLogURI, _JobSuccessLogURI, _JobCompletionReportURI, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating JobLogs")
	local t = { 
		["JobFailureLogURI"] = _JobFailureLogURI,
		["JobSuccessLogURI"] = _JobSuccessLogURI,
		["JobCompletionReportURI"] = _JobCompletionReportURI,
	}
	asserts.AssertJobLogs(t)
	return t
end

keys.GetJobManifestRequest = { ["JobId"] = true, nil }

function asserts.AssertGetJobManifestRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetJobManifestRequest to be of type 'table'")
	assert(struct["JobId"], "Expected key JobId to exist in table")
	if struct["JobId"] then asserts.AssertJobId(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetJobManifestRequest[k], "GetJobManifestRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetJobManifestRequest
--  
-- @param _JobId [JobId] <p>The ID for a job that you want to get the manifest file for, for example <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>
-- Required parameter: JobId
function M.GetJobManifestRequest(_JobId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetJobManifestRequest")
	local t = { 
		["JobId"] = _JobId,
	}
	asserts.AssertGetJobManifestRequest(t)
	return t
end

keys.DescribeJobRequest = { ["JobId"] = true, nil }

function asserts.AssertDescribeJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeJobRequest to be of type 'table'")
	assert(struct["JobId"], "Expected key JobId to exist in table")
	if struct["JobId"] then asserts.AssertJobId(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeJobRequest[k], "DescribeJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeJobRequest
--  
-- @param _JobId [JobId] <p>The automatically generated ID for a job, for example <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>
-- Required parameter: JobId
function M.DescribeJobRequest(_JobId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeJobRequest")
	local t = { 
		["JobId"] = _JobId,
	}
	asserts.AssertDescribeJobRequest(t)
	return t
end

keys.GetSnowballUsageResult = { ["SnowballLimit"] = true, ["SnowballsInUse"] = true, nil }

function asserts.AssertGetSnowballUsageResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSnowballUsageResult to be of type 'table'")
	if struct["SnowballLimit"] then asserts.AssertInteger(struct["SnowballLimit"]) end
	if struct["SnowballsInUse"] then asserts.AssertInteger(struct["SnowballsInUse"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSnowballUsageResult[k], "GetSnowballUsageResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSnowballUsageResult
--  
-- @param _SnowballLimit [Integer] <p>The service limit for number of Snowballs this account can have at once. The default service limit is 1 (one).</p>
-- @param _SnowballsInUse [Integer] <p>The number of Snowballs that this account is currently using.</p>
function M.GetSnowballUsageResult(_SnowballLimit, _SnowballsInUse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSnowballUsageResult")
	local t = { 
		["SnowballLimit"] = _SnowballLimit,
		["SnowballsInUse"] = _SnowballsInUse,
	}
	asserts.AssertGetSnowballUsageResult(t)
	return t
end

keys.CreateClusterResult = { ["ClusterId"] = true, nil }

function asserts.AssertCreateClusterResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateClusterResult to be of type 'table'")
	if struct["ClusterId"] then asserts.AssertClusterId(struct["ClusterId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateClusterResult[k], "CreateClusterResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateClusterResult
--  
-- @param _ClusterId [ClusterId] <p>The automatically generated ID for a cluster.</p>
function M.CreateClusterResult(_ClusterId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateClusterResult")
	local t = { 
		["ClusterId"] = _ClusterId,
	}
	asserts.AssertCreateClusterResult(t)
	return t
end

keys.DescribeAddressResult = { ["Address"] = true, nil }

function asserts.AssertDescribeAddressResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAddressResult to be of type 'table'")
	if struct["Address"] then asserts.AssertAddress(struct["Address"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAddressResult[k], "DescribeAddressResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAddressResult
--  
-- @param _Address [Address] <p>The address that you want the Snowball or Snowballs associated with a specific job to be shipped to.</p>
function M.DescribeAddressResult(_Address, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAddressResult")
	local t = { 
		["Address"] = _Address,
	}
	asserts.AssertDescribeAddressResult(t)
	return t
end

keys.JobMetadata = { ["SnowballCapacityPreference"] = true, ["JobState"] = true, ["Description"] = true, ["AddressId"] = true, ["ForwardingAddressId"] = true, ["KmsKeyARN"] = true, ["Notification"] = true, ["RoleARN"] = true, ["ClusterId"] = true, ["JobId"] = true, ["DataTransferProgress"] = true, ["JobType"] = true, ["SnowballType"] = true, ["JobLogInfo"] = true, ["CreationDate"] = true, ["Resources"] = true, ["ShippingDetails"] = true, nil }

function asserts.AssertJobMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobMetadata to be of type 'table'")
	if struct["SnowballCapacityPreference"] then asserts.AssertSnowballCapacity(struct["SnowballCapacityPreference"]) end
	if struct["JobState"] then asserts.AssertJobState(struct["JobState"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	if struct["AddressId"] then asserts.AssertAddressId(struct["AddressId"]) end
	if struct["ForwardingAddressId"] then asserts.AssertAddressId(struct["ForwardingAddressId"]) end
	if struct["KmsKeyARN"] then asserts.AssertKmsKeyARN(struct["KmsKeyARN"]) end
	if struct["Notification"] then asserts.AssertNotification(struct["Notification"]) end
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	if struct["ClusterId"] then asserts.AssertString(struct["ClusterId"]) end
	if struct["JobId"] then asserts.AssertString(struct["JobId"]) end
	if struct["DataTransferProgress"] then asserts.AssertDataTransfer(struct["DataTransferProgress"]) end
	if struct["JobType"] then asserts.AssertJobType(struct["JobType"]) end
	if struct["SnowballType"] then asserts.AssertSnowballType(struct["SnowballType"]) end
	if struct["JobLogInfo"] then asserts.AssertJobLogs(struct["JobLogInfo"]) end
	if struct["CreationDate"] then asserts.AssertTimestamp(struct["CreationDate"]) end
	if struct["Resources"] then asserts.AssertJobResource(struct["Resources"]) end
	if struct["ShippingDetails"] then asserts.AssertShippingDetails(struct["ShippingDetails"]) end
	for k,_ in pairs(struct) do
		assert(keys.JobMetadata[k], "JobMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobMetadata
-- <p>Contains information about a specific job including shipping information, job status, and other important metadata. This information is returned as a part of the response syntax of the <code>DescribeJob</code> action.</p>
-- @param _SnowballCapacityPreference [SnowballCapacity] <p>The Snowball capacity preference for this job, specified at job creation. In US regions, you can choose between 50 TB and 80 TB Snowballs. All other regions use 80 TB capacity Snowballs.</p>
-- @param _JobState [JobState] <p>The current status of the jobs.</p>
-- @param _Description [String] <p>The description of the job, provided at job creation.</p>
-- @param _AddressId [AddressId] <p>The ID for the address that you want the Snowball shipped to.</p>
-- @param _ForwardingAddressId [AddressId] <p>The ID of the address that you want a job shipped to, after it will be shipped to its primary address. This field is not supported in most regions.</p>
-- @param _KmsKeyARN [KmsKeyARN] <p>The Amazon Resource Name (ARN) for the AWS Key Management Service (AWS KMS) key associated with this job. This ARN was created using the <a href="http://docs.aws.amazon.com/kms/latest/APIReference/API_CreateKey.html">CreateKey</a> API action in AWS KMS.</p>
-- @param _Notification [Notification] <p>The Amazon Simple Notification Service (Amazon SNS) notification settings associated with a specific job. The <code>Notification</code> object is returned as a part of the response syntax of the <code>DescribeJob</code> action in the <code>JobMetadata</code> data type.</p>
-- @param _RoleARN [RoleARN] <p>The role ARN associated with this job. This ARN was created using the <a href="http://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html">CreateRole</a> API action in AWS Identity and Access Management (IAM).</p>
-- @param _ClusterId [String] <p>The 39-character ID for the cluster, for example <code>CID123e4567-e89b-12d3-a456-426655440000</code>.</p>
-- @param _JobId [String] <p>The automatically generated ID for a job, for example <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>
-- @param _DataTransferProgress [DataTransfer] <p>A value that defines the real-time status of a Snowball's data transfer while the appliance is at AWS. This data is only available while a job has a <code>JobState</code> value of <code>InProgress</code>, for both import and export jobs.</p>
-- @param _JobType [JobType] <p>The type of job.</p>
-- @param _SnowballType [SnowballType] <p>The type of appliance used with this job.</p>
-- @param _JobLogInfo [JobLogs] <p>Links to Amazon S3 presigned URLs for the job report and logs. For import jobs, the PDF job report becomes available at the end of the import process. For export jobs, your job report typically becomes available while the Snowball for your job part is being delivered to you.</p>
-- @param _CreationDate [Timestamp] <p>The creation date for this job.</p>
-- @param _Resources [JobResource] <p>An array of <code>S3Resource</code> objects. Each <code>S3Resource</code> object represents an Amazon S3 bucket that your transferred data will be exported from or imported into.</p>
-- @param _ShippingDetails [ShippingDetails] <p>A job's shipping information, including inbound and outbound tracking numbers and shipping speed options.</p>
function M.JobMetadata(_SnowballCapacityPreference, _JobState, _Description, _AddressId, _ForwardingAddressId, _KmsKeyARN, _Notification, _RoleARN, _ClusterId, _JobId, _DataTransferProgress, _JobType, _SnowballType, _JobLogInfo, _CreationDate, _Resources, _ShippingDetails, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating JobMetadata")
	local t = { 
		["SnowballCapacityPreference"] = _SnowballCapacityPreference,
		["JobState"] = _JobState,
		["Description"] = _Description,
		["AddressId"] = _AddressId,
		["ForwardingAddressId"] = _ForwardingAddressId,
		["KmsKeyARN"] = _KmsKeyARN,
		["Notification"] = _Notification,
		["RoleARN"] = _RoleARN,
		["ClusterId"] = _ClusterId,
		["JobId"] = _JobId,
		["DataTransferProgress"] = _DataTransferProgress,
		["JobType"] = _JobType,
		["SnowballType"] = _SnowballType,
		["JobLogInfo"] = _JobLogInfo,
		["CreationDate"] = _CreationDate,
		["Resources"] = _Resources,
		["ShippingDetails"] = _ShippingDetails,
	}
	asserts.AssertJobMetadata(t)
	return t
end

keys.DescribeJobResult = { ["JobMetadata"] = true, ["SubJobMetadata"] = true, nil }

function asserts.AssertDescribeJobResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeJobResult to be of type 'table'")
	if struct["JobMetadata"] then asserts.AssertJobMetadata(struct["JobMetadata"]) end
	if struct["SubJobMetadata"] then asserts.AssertJobMetadataList(struct["SubJobMetadata"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeJobResult[k], "DescribeJobResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeJobResult
--  
-- @param _JobMetadata [JobMetadata] <p>Information about a specific job, including shipping information, job status, and other important metadata.</p>
-- @param _SubJobMetadata [JobMetadataList] <p>Information about a specific job part (in the case of an export job), including shipping information, job status, and other important metadata.</p>
function M.DescribeJobResult(_JobMetadata, _SubJobMetadata, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeJobResult")
	local t = { 
		["JobMetadata"] = _JobMetadata,
		["SubJobMetadata"] = _SubJobMetadata,
	}
	asserts.AssertDescribeJobResult(t)
	return t
end

keys.GetJobManifestResult = { ["ManifestURI"] = true, nil }

function asserts.AssertGetJobManifestResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetJobManifestResult to be of type 'table'")
	if struct["ManifestURI"] then asserts.AssertString(struct["ManifestURI"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetJobManifestResult[k], "GetJobManifestResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetJobManifestResult
--  
-- @param _ManifestURI [String] <p>The Amazon S3 presigned URL for the manifest file associated with the specified <code>JobId</code> value.</p>
function M.GetJobManifestResult(_ManifestURI, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetJobManifestResult")
	local t = { 
		["ManifestURI"] = _ManifestURI,
	}
	asserts.AssertGetJobManifestResult(t)
	return t
end

keys.Address = { ["City"] = true, ["Name"] = true, ["AddressId"] = true, ["Street1"] = true, ["Company"] = true, ["Street3"] = true, ["PostalCode"] = true, ["PrefectureOrDistrict"] = true, ["Country"] = true, ["Landmark"] = true, ["PhoneNumber"] = true, ["IsRestricted"] = true, ["StateOrProvince"] = true, ["Street2"] = true, nil }

function asserts.AssertAddress(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Address to be of type 'table'")
	if struct["City"] then asserts.AssertString(struct["City"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["AddressId"] then asserts.AssertAddressId(struct["AddressId"]) end
	if struct["Street1"] then asserts.AssertString(struct["Street1"]) end
	if struct["Company"] then asserts.AssertString(struct["Company"]) end
	if struct["Street3"] then asserts.AssertString(struct["Street3"]) end
	if struct["PostalCode"] then asserts.AssertString(struct["PostalCode"]) end
	if struct["PrefectureOrDistrict"] then asserts.AssertString(struct["PrefectureOrDistrict"]) end
	if struct["Country"] then asserts.AssertString(struct["Country"]) end
	if struct["Landmark"] then asserts.AssertString(struct["Landmark"]) end
	if struct["PhoneNumber"] then asserts.AssertString(struct["PhoneNumber"]) end
	if struct["IsRestricted"] then asserts.AssertBoolean(struct["IsRestricted"]) end
	if struct["StateOrProvince"] then asserts.AssertString(struct["StateOrProvince"]) end
	if struct["Street2"] then asserts.AssertString(struct["Street2"]) end
	for k,_ in pairs(struct) do
		assert(keys.Address[k], "Address contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Address
-- <p>The address that you want the Snowball or Snowballs associated with a specific job to be shipped to. Addresses are validated at the time of creation. The address you provide must be located within the serviceable area of your region. Although no individual elements of the <code>Address</code> are required, if the address is invalid or unsupported, then an exception is thrown.</p>
-- @param _City [String] <p>The city in an address that a Snowball is to be delivered to.</p>
-- @param _Name [String] <p>The name of a person to receive a Snowball at an address.</p>
-- @param _AddressId [AddressId] <p>The unique ID for an address.</p>
-- @param _Street1 [String] <p>The first line in a street address that a Snowball is to be delivered to.</p>
-- @param _Company [String] <p>The name of the company to receive a Snowball at an address.</p>
-- @param _Street3 [String] <p>The third line in a street address that a Snowball is to be delivered to.</p>
-- @param _PostalCode [String] <p>The postal code in an address that a Snowball is to be delivered to.</p>
-- @param _PrefectureOrDistrict [String] <p>This field is no longer used and the value is ignored.</p>
-- @param _Country [String] <p>The country in an address that a Snowball is to be delivered to.</p>
-- @param _Landmark [String] <p>This field is no longer used and the value is ignored.</p>
-- @param _PhoneNumber [String] <p>The phone number associated with an address that a Snowball is to be delivered to.</p>
-- @param _IsRestricted [Boolean] <p>If the address you are creating is a primary address, then set this option to true. This field is not supported in most regions.</p>
-- @param _StateOrProvince [String] <p>The state or province in an address that a Snowball is to be delivered to.</p>
-- @param _Street2 [String] <p>The second line in a street address that a Snowball is to be delivered to.</p>
function M.Address(_City, _Name, _AddressId, _Street1, _Company, _Street3, _PostalCode, _PrefectureOrDistrict, _Country, _Landmark, _PhoneNumber, _IsRestricted, _StateOrProvince, _Street2, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Address")
	local t = { 
		["City"] = _City,
		["Name"] = _Name,
		["AddressId"] = _AddressId,
		["Street1"] = _Street1,
		["Company"] = _Company,
		["Street3"] = _Street3,
		["PostalCode"] = _PostalCode,
		["PrefectureOrDistrict"] = _PrefectureOrDistrict,
		["Country"] = _Country,
		["Landmark"] = _Landmark,
		["PhoneNumber"] = _PhoneNumber,
		["IsRestricted"] = _IsRestricted,
		["StateOrProvince"] = _StateOrProvince,
		["Street2"] = _Street2,
	}
	asserts.AssertAddress(t)
	return t
end

keys.GetSnowballUsageRequest = { nil }

function asserts.AssertGetSnowballUsageRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSnowballUsageRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.GetSnowballUsageRequest[k], "GetSnowballUsageRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSnowballUsageRequest
--  
function M.GetSnowballUsageRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSnowballUsageRequest")
	local t = { 
	}
	asserts.AssertGetSnowballUsageRequest(t)
	return t
end

keys.InvalidInputCombinationException = { ["Message"] = true, nil }

function asserts.AssertInvalidInputCombinationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidInputCombinationException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidInputCombinationException[k], "InvalidInputCombinationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidInputCombinationException
-- <p>Job or cluster creation failed. One ore more inputs were invalid. Confirm that the <a>CreateClusterRequest$SnowballType</a> value supports your <a>CreateJobRequest$JobType</a>, and try again.</p>
-- @param _Message [String] 
function M.InvalidInputCombinationException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidInputCombinationException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertInvalidInputCombinationException(t)
	return t
end

keys.DescribeAddressRequest = { ["AddressId"] = true, nil }

function asserts.AssertDescribeAddressRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAddressRequest to be of type 'table'")
	assert(struct["AddressId"], "Expected key AddressId to exist in table")
	if struct["AddressId"] then asserts.AssertAddressId(struct["AddressId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAddressRequest[k], "DescribeAddressRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAddressRequest
--  
-- @param _AddressId [AddressId] <p>The automatically generated ID for a specific address.</p>
-- Required parameter: AddressId
function M.DescribeAddressRequest(_AddressId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAddressRequest")
	local t = { 
		["AddressId"] = _AddressId,
	}
	asserts.AssertDescribeAddressRequest(t)
	return t
end

keys.LambdaResource = { ["EventTriggers"] = true, ["LambdaArn"] = true, nil }

function asserts.AssertLambdaResource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LambdaResource to be of type 'table'")
	if struct["EventTriggers"] then asserts.AssertEventTriggerDefinitionList(struct["EventTriggers"]) end
	if struct["LambdaArn"] then asserts.AssertResourceARN(struct["LambdaArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.LambdaResource[k], "LambdaResource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LambdaResource
-- <p>Identifies </p>
-- @param _EventTriggers [EventTriggerDefinitionList] <p>The array of ARNs for <a>S3Resource</a> objects to trigger the <a>LambdaResource</a> objects associated with this job.</p>
-- @param _LambdaArn [ResourceARN] <p>An Amazon Resource Name (ARN) that represents an AWS Lambda function to be triggered by PUT object actions on the associated local Amazon S3 resource.</p>
function M.LambdaResource(_EventTriggers, _LambdaArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LambdaResource")
	local t = { 
		["EventTriggers"] = _EventTriggers,
		["LambdaArn"] = _LambdaArn,
	}
	asserts.AssertLambdaResource(t)
	return t
end

keys.ListClusterJobsResult = { ["NextToken"] = true, ["JobListEntries"] = true, nil }

function asserts.AssertListClusterJobsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListClusterJobsResult to be of type 'table'")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["JobListEntries"] then asserts.AssertJobListEntryList(struct["JobListEntries"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListClusterJobsResult[k], "ListClusterJobsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListClusterJobsResult
--  
-- @param _NextToken [String] <p>HTTP requests are stateless. If you use the automatically generated <code>NextToken</code> value in your next <code>ListClusterJobsResult</code> call, your list of returned jobs will start from this point in the array.</p>
-- @param _JobListEntries [JobListEntryList] <p>Each <code>JobListEntry</code> object contains a job's state, a job's ID, and a value that indicates whether the job is a job part, in the case of export jobs. </p>
function M.ListClusterJobsResult(_NextToken, _JobListEntries, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListClusterJobsResult")
	local t = { 
		["NextToken"] = _NextToken,
		["JobListEntries"] = _JobListEntries,
	}
	asserts.AssertListClusterJobsResult(t)
	return t
end

keys.ClusterLimitExceededException = { ["Message"] = true, nil }

function asserts.AssertClusterLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterLimitExceededException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ClusterLimitExceededException[k], "ClusterLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterLimitExceededException
-- <p>Job creation failed. Currently, clusters support five nodes. If you have less than five nodes for your cluster and you have more nodes to create for this cluster, try again and create jobs until your cluster has exactly five notes.</p>
-- @param _Message [String] 
function M.ClusterLimitExceededException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterLimitExceededException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertClusterLimitExceededException(t)
	return t
end

keys.DescribeAddressesResult = { ["NextToken"] = true, ["Addresses"] = true, nil }

function asserts.AssertDescribeAddressesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAddressesResult to be of type 'table'")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["Addresses"] then asserts.AssertAddressList(struct["Addresses"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAddressesResult[k], "DescribeAddressesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAddressesResult
--  
-- @param _NextToken [String] <p>HTTP requests are stateless. If you use the automatically generated <code>NextToken</code> value in your next <code>DescribeAddresses</code> call, your list of returned addresses will start from this point in the array.</p>
-- @param _Addresses [AddressList] <p>The Snowball shipping addresses that were created for this account.</p>
function M.DescribeAddressesResult(_NextToken, _Addresses, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAddressesResult")
	local t = { 
		["NextToken"] = _NextToken,
		["Addresses"] = _Addresses,
	}
	asserts.AssertDescribeAddressesResult(t)
	return t
end

keys.Notification = { ["NotifyAll"] = true, ["JobStatesToNotify"] = true, ["SnsTopicARN"] = true, nil }

function asserts.AssertNotification(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Notification to be of type 'table'")
	if struct["NotifyAll"] then asserts.AssertBoolean(struct["NotifyAll"]) end
	if struct["JobStatesToNotify"] then asserts.AssertJobStateList(struct["JobStatesToNotify"]) end
	if struct["SnsTopicARN"] then asserts.AssertSnsTopicARN(struct["SnsTopicARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.Notification[k], "Notification contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Notification
-- <p>The Amazon Simple Notification Service (Amazon SNS) notification settings associated with a specific job. The <code>Notification</code> object is returned as a part of the response syntax of the <code>DescribeJob</code> action in the <code>JobMetadata</code> data type.</p> <p>When the notification settings are defined during job creation, you can choose to notify based on a specific set of job states using the <code>JobStatesToNotify</code> array of strings, or you can specify that you want to have Amazon SNS notifications sent out for all job states with <code>NotifyAll</code> set to true.</p>
-- @param _NotifyAll [Boolean] <p>Any change in job state will trigger a notification for this job.</p>
-- @param _JobStatesToNotify [JobStateList] <p>The list of job states that will trigger a notification for this job.</p>
-- @param _SnsTopicARN [SnsTopicARN] <p>The new SNS <code>TopicArn</code> that you want to associate with this job. You can create Amazon Resource Names (ARNs) for topics by using the <a href="http://docs.aws.amazon.com/sns/latest/api/API_CreateTopic.html">CreateTopic</a> Amazon SNS API action.</p> <p>You can subscribe email addresses to an Amazon SNS topic through the AWS Management Console, or by using the <a href="http://docs.aws.amazon.com/sns/latest/api/API_Subscribe.html">Subscribe</a> AWS Simple Notification Service (SNS) API action.</p>
function M.Notification(_NotifyAll, _JobStatesToNotify, _SnsTopicARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Notification")
	local t = { 
		["NotifyAll"] = _NotifyAll,
		["JobStatesToNotify"] = _JobStatesToNotify,
		["SnsTopicARN"] = _SnsTopicARN,
	}
	asserts.AssertNotification(t)
	return t
end

keys.DescribeAddressesRequest = { ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertDescribeAddressesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAddressesRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertListLimit(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAddressesRequest[k], "DescribeAddressesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAddressesRequest
--  
-- @param _NextToken [String] <p>HTTP requests are stateless. To identify what object comes "next" in the list of <code>ADDRESS</code> objects, you have the option of specifying a value for <code>NextToken</code> as the starting point for your list of returned addresses.</p>
-- @param _MaxResults [ListLimit] <p>The number of <code>ADDRESS</code> objects to return.</p>
function M.DescribeAddressesRequest(_NextToken, _MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAddressesRequest")
	local t = { 
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
	}
	asserts.AssertDescribeAddressesRequest(t)
	return t
end

keys.UpdateJobResult = { nil }

function asserts.AssertUpdateJobResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateJobResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateJobResult[k], "UpdateJobResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateJobResult
--  
function M.UpdateJobResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateJobResult")
	local t = { 
	}
	asserts.AssertUpdateJobResult(t)
	return t
end

keys.GetJobUnlockCodeRequest = { ["JobId"] = true, nil }

function asserts.AssertGetJobUnlockCodeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetJobUnlockCodeRequest to be of type 'table'")
	assert(struct["JobId"], "Expected key JobId to exist in table")
	if struct["JobId"] then asserts.AssertJobId(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetJobUnlockCodeRequest[k], "GetJobUnlockCodeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetJobUnlockCodeRequest
--  
-- @param _JobId [JobId] <p>The ID for the job that you want to get the <code>UnlockCode</code> value for, for example <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>
-- Required parameter: JobId
function M.GetJobUnlockCodeRequest(_JobId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetJobUnlockCodeRequest")
	local t = { 
		["JobId"] = _JobId,
	}
	asserts.AssertGetJobUnlockCodeRequest(t)
	return t
end

keys.CreateClusterRequest = { ["Description"] = true, ["AddressId"] = true, ["KmsKeyARN"] = true, ["Notification"] = true, ["RoleARN"] = true, ["ForwardingAddressId"] = true, ["ShippingOption"] = true, ["JobType"] = true, ["SnowballType"] = true, ["Resources"] = true, nil }

function asserts.AssertCreateClusterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateClusterRequest to be of type 'table'")
	assert(struct["JobType"], "Expected key JobType to exist in table")
	assert(struct["Resources"], "Expected key Resources to exist in table")
	assert(struct["AddressId"], "Expected key AddressId to exist in table")
	assert(struct["RoleARN"], "Expected key RoleARN to exist in table")
	assert(struct["ShippingOption"], "Expected key ShippingOption to exist in table")
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	if struct["AddressId"] then asserts.AssertAddressId(struct["AddressId"]) end
	if struct["KmsKeyARN"] then asserts.AssertKmsKeyARN(struct["KmsKeyARN"]) end
	if struct["Notification"] then asserts.AssertNotification(struct["Notification"]) end
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	if struct["ForwardingAddressId"] then asserts.AssertAddressId(struct["ForwardingAddressId"]) end
	if struct["ShippingOption"] then asserts.AssertShippingOption(struct["ShippingOption"]) end
	if struct["JobType"] then asserts.AssertJobType(struct["JobType"]) end
	if struct["SnowballType"] then asserts.AssertSnowballType(struct["SnowballType"]) end
	if struct["Resources"] then asserts.AssertJobResource(struct["Resources"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateClusterRequest[k], "CreateClusterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateClusterRequest
--  
-- @param _Description [String] <p>An optional description of this specific cluster, for example <code>Environmental Data Cluster-01</code>.</p>
-- @param _AddressId [AddressId] <p>The ID for the address that you want the cluster shipped to.&gt;</p>
-- @param _KmsKeyARN [KmsKeyARN] <p>The <code>KmsKeyARN</code> value that you want to associate with this cluster. <code>KmsKeyARN</code> values are created by using the <a href="http://docs.aws.amazon.com/kms/latest/APIReference/API_CreateKey.html">CreateKey</a> API action in AWS Key Management Service (AWS KMS). </p>
-- @param _Notification [Notification] <p>The Amazon Simple Notification Service (Amazon SNS) notification settings for this cluster.</p>
-- @param _RoleARN [RoleARN] <p>The <code>RoleARN</code> that you want to associate with this cluster. <code>RoleArn</code> values are created by using the <a href="http://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html">CreateRole</a> API action in AWS Identity and Access Management (IAM).</p>
-- @param _ForwardingAddressId [AddressId] <p>The forwarding address ID for a cluster. This field is not supported in most regions.</p>
-- @param _ShippingOption [ShippingOption] <p>The shipping speed for each node in this cluster. This speed doesn't dictate how soon you'll get each Snowball Edge appliance, rather it represents how quickly each appliance moves to its destination while in transit. Regional shipping speeds are as follows:</p> <ul> <li> <p>In Australia, you have access to express shipping. Typically, appliances shipped express are delivered in about a day.</p> </li> <li> <p>In the European Union (EU), you have access to express shipping. Typically, Snowball Edges shipped express are delivered in about a day. In addition, most countries in the EU have access to standard shipping, which typically takes less than a week, one way.</p> </li> <li> <p>In India, Snowball Edges are delivered in one to seven days.</p> </li> <li> <p>In the US, you have access to one-day shipping and two-day shipping.</p> </li> </ul>
-- @param _JobType [JobType] <p>The type of job for this cluster. Currently, the only job type supported for clusters is <code>LOCAL_USE</code>.</p>
-- @param _SnowballType [SnowballType] <p>The type of AWS Snowball appliance to use for this cluster. Currently, the only supported appliance type for cluster jobs is <code>EDGE</code>.</p>
-- @param _Resources [JobResource] <p>The resources associated with the cluster job. These resources include Amazon S3 buckets and optional AWS Lambda functions written in the Python language. </p>
-- Required parameter: JobType
-- Required parameter: Resources
-- Required parameter: AddressId
-- Required parameter: RoleARN
-- Required parameter: ShippingOption
function M.CreateClusterRequest(_Description, _AddressId, _KmsKeyARN, _Notification, _RoleARN, _ForwardingAddressId, _ShippingOption, _JobType, _SnowballType, _Resources, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateClusterRequest")
	local t = { 
		["Description"] = _Description,
		["AddressId"] = _AddressId,
		["KmsKeyARN"] = _KmsKeyARN,
		["Notification"] = _Notification,
		["RoleARN"] = _RoleARN,
		["ForwardingAddressId"] = _ForwardingAddressId,
		["ShippingOption"] = _ShippingOption,
		["JobType"] = _JobType,
		["SnowballType"] = _SnowballType,
		["Resources"] = _Resources,
	}
	asserts.AssertCreateClusterRequest(t)
	return t
end

keys.JobListEntry = { ["IsMaster"] = true, ["JobState"] = true, ["Description"] = true, ["JobId"] = true, ["SnowballType"] = true, ["CreationDate"] = true, ["JobType"] = true, nil }

function asserts.AssertJobListEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobListEntry to be of type 'table'")
	if struct["IsMaster"] then asserts.AssertBoolean(struct["IsMaster"]) end
	if struct["JobState"] then asserts.AssertJobState(struct["JobState"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	if struct["JobId"] then asserts.AssertString(struct["JobId"]) end
	if struct["SnowballType"] then asserts.AssertSnowballType(struct["SnowballType"]) end
	if struct["CreationDate"] then asserts.AssertTimestamp(struct["CreationDate"]) end
	if struct["JobType"] then asserts.AssertJobType(struct["JobType"]) end
	for k,_ in pairs(struct) do
		assert(keys.JobListEntry[k], "JobListEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobListEntry
-- <p>Each <code>JobListEntry</code> object contains a job's state, a job's ID, and a value that indicates whether the job is a job part, in the case of an export job.</p>
-- @param _IsMaster [Boolean] <p>A value that indicates that this job is a master job. A master job represents a successful request to create an export job. Master jobs aren't associated with any Snowballs. Instead, each master job will have at least one job part, and each job part is associated with a Snowball. It might take some time before the job parts associated with a particular master job are listed, because they are created after the master job is created.</p>
-- @param _JobState [JobState] <p>The current state of this job.</p>
-- @param _Description [String] <p>The optional description of this specific job, for example <code>Important Photos 2016-08-11</code>.</p>
-- @param _JobId [String] <p>The automatically generated ID for a job, for example <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>
-- @param _SnowballType [SnowballType] <p>The type of appliance used with this job.</p>
-- @param _CreationDate [Timestamp] <p>The creation date for this job.</p>
-- @param _JobType [JobType] <p>The type of job.</p>
function M.JobListEntry(_IsMaster, _JobState, _Description, _JobId, _SnowballType, _CreationDate, _JobType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating JobListEntry")
	local t = { 
		["IsMaster"] = _IsMaster,
		["JobState"] = _JobState,
		["Description"] = _Description,
		["JobId"] = _JobId,
		["SnowballType"] = _SnowballType,
		["CreationDate"] = _CreationDate,
		["JobType"] = _JobType,
	}
	asserts.AssertJobListEntry(t)
	return t
end

keys.DataTransfer = { ["ObjectsTransferred"] = true, ["TotalBytes"] = true, ["BytesTransferred"] = true, ["TotalObjects"] = true, nil }

function asserts.AssertDataTransfer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DataTransfer to be of type 'table'")
	if struct["ObjectsTransferred"] then asserts.AssertLong(struct["ObjectsTransferred"]) end
	if struct["TotalBytes"] then asserts.AssertLong(struct["TotalBytes"]) end
	if struct["BytesTransferred"] then asserts.AssertLong(struct["BytesTransferred"]) end
	if struct["TotalObjects"] then asserts.AssertLong(struct["TotalObjects"]) end
	for k,_ in pairs(struct) do
		assert(keys.DataTransfer[k], "DataTransfer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DataTransfer
-- <p>Defines the real-time status of a Snowball's data transfer while the appliance is at AWS. This data is only available while a job has a <code>JobState</code> value of <code>InProgress</code>, for both import and export jobs.</p>
-- @param _ObjectsTransferred [Long] <p>The number of objects transferred between a Snowball and Amazon S3.</p>
-- @param _TotalBytes [Long] <p>The total bytes of data for a transfer between a Snowball and Amazon S3. This value is set to 0 (zero) until all the keys that will be transferred have been listed.</p>
-- @param _BytesTransferred [Long] <p>The number of bytes transferred between a Snowball and Amazon S3.</p>
-- @param _TotalObjects [Long] <p>The total number of objects for a transfer between a Snowball and Amazon S3. This value is set to 0 (zero) until all the keys that will be transferred have been listed.</p>
function M.DataTransfer(_ObjectsTransferred, _TotalBytes, _BytesTransferred, _TotalObjects, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DataTransfer")
	local t = { 
		["ObjectsTransferred"] = _ObjectsTransferred,
		["TotalBytes"] = _TotalBytes,
		["BytesTransferred"] = _BytesTransferred,
		["TotalObjects"] = _TotalObjects,
	}
	asserts.AssertDataTransfer(t)
	return t
end

keys.InvalidAddressException = { ["Message"] = true, nil }

function asserts.AssertInvalidAddressException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidAddressException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidAddressException[k], "InvalidAddressException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidAddressException
-- <p>The address provided was invalid. Check the address with your region's carrier, and try again.</p>
-- @param _Message [String] 
function M.InvalidAddressException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidAddressException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertInvalidAddressException(t)
	return t
end

keys.UpdateClusterResult = { nil }

function asserts.AssertUpdateClusterResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateClusterResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateClusterResult[k], "UpdateClusterResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateClusterResult
--  
function M.UpdateClusterResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateClusterResult")
	local t = { 
	}
	asserts.AssertUpdateClusterResult(t)
	return t
end

keys.InvalidJobStateException = { ["Message"] = true, nil }

function asserts.AssertInvalidJobStateException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidJobStateException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidJobStateException[k], "InvalidJobStateException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidJobStateException
-- <p>The action can't be performed because the job's current state doesn't allow that action to be performed.</p>
-- @param _Message [String] 
function M.InvalidJobStateException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidJobStateException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertInvalidJobStateException(t)
	return t
end

keys.CancelJobResult = { nil }

function asserts.AssertCancelJobResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelJobResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CancelJobResult[k], "CancelJobResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelJobResult
--  
function M.CancelJobResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CancelJobResult")
	local t = { 
	}
	asserts.AssertCancelJobResult(t)
	return t
end

keys.DescribeClusterRequest = { ["ClusterId"] = true, nil }

function asserts.AssertDescribeClusterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeClusterRequest to be of type 'table'")
	assert(struct["ClusterId"], "Expected key ClusterId to exist in table")
	if struct["ClusterId"] then asserts.AssertClusterId(struct["ClusterId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeClusterRequest[k], "DescribeClusterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeClusterRequest
--  
-- @param _ClusterId [ClusterId] <p>The automatically generated ID for a cluster.</p>
-- Required parameter: ClusterId
function M.DescribeClusterRequest(_ClusterId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeClusterRequest")
	local t = { 
		["ClusterId"] = _ClusterId,
	}
	asserts.AssertDescribeClusterRequest(t)
	return t
end

keys.JobResource = { ["LambdaResources"] = true, ["S3Resources"] = true, nil }

function asserts.AssertJobResource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobResource to be of type 'table'")
	if struct["LambdaResources"] then asserts.AssertLambdaResourceList(struct["LambdaResources"]) end
	if struct["S3Resources"] then asserts.AssertS3ResourceList(struct["S3Resources"]) end
	for k,_ in pairs(struct) do
		assert(keys.JobResource[k], "JobResource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobResource
-- <p>Contains an array of <code>S3Resource</code> objects. Each <code>S3Resource</code> object represents an Amazon S3 bucket that your transferred data will be exported from or imported into.</p>
-- @param _LambdaResources [LambdaResourceList] <p>The Python-language Lambda functions for this job.</p>
-- @param _S3Resources [S3ResourceList] <p>An array of <code>S3Resource</code> objects.</p>
function M.JobResource(_LambdaResources, _S3Resources, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating JobResource")
	local t = { 
		["LambdaResources"] = _LambdaResources,
		["S3Resources"] = _S3Resources,
	}
	asserts.AssertJobResource(t)
	return t
end

keys.ListClustersRequest = { ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListClustersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListClustersRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertListLimit(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListClustersRequest[k], "ListClustersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListClustersRequest
--  
-- @param _NextToken [String] <p>HTTP requests are stateless. To identify what object comes "next" in the list of <code>ClusterListEntry</code> objects, you have the option of specifying <code>NextToken</code> as the starting point for your returned list.</p>
-- @param _MaxResults [ListLimit] <p>The number of <code>ClusterListEntry</code> objects to return.</p>
function M.ListClustersRequest(_NextToken, _MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListClustersRequest")
	local t = { 
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
	}
	asserts.AssertListClustersRequest(t)
	return t
end

keys.UpdateClusterRequest = { ["Description"] = true, ["AddressId"] = true, ["Notification"] = true, ["RoleARN"] = true, ["ClusterId"] = true, ["ForwardingAddressId"] = true, ["ShippingOption"] = true, ["Resources"] = true, nil }

function asserts.AssertUpdateClusterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateClusterRequest to be of type 'table'")
	assert(struct["ClusterId"], "Expected key ClusterId to exist in table")
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	if struct["AddressId"] then asserts.AssertAddressId(struct["AddressId"]) end
	if struct["Notification"] then asserts.AssertNotification(struct["Notification"]) end
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	if struct["ClusterId"] then asserts.AssertClusterId(struct["ClusterId"]) end
	if struct["ForwardingAddressId"] then asserts.AssertAddressId(struct["ForwardingAddressId"]) end
	if struct["ShippingOption"] then asserts.AssertShippingOption(struct["ShippingOption"]) end
	if struct["Resources"] then asserts.AssertJobResource(struct["Resources"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateClusterRequest[k], "UpdateClusterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateClusterRequest
--  
-- @param _Description [String] <p>The updated description of this cluster.</p>
-- @param _AddressId [AddressId] <p>The ID of the updated <a>Address</a> object.</p>
-- @param _Notification [Notification] <p>The new or updated <a>Notification</a> object.</p>
-- @param _RoleARN [RoleARN] <p>The new role Amazon Resource Name (ARN) that you want to associate with this cluster. To create a role ARN, use the <a href="http://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html">CreateRole</a> API action in AWS Identity and Access Management (IAM).</p>
-- @param _ClusterId [ClusterId] <p>The cluster ID of the cluster that you want to update, for example <code>CID123e4567-e89b-12d3-a456-426655440000</code>.</p>
-- @param _ForwardingAddressId [AddressId] <p>The updated ID for the forwarding address for a cluster. This field is not supported in most regions.</p>
-- @param _ShippingOption [ShippingOption] <p>The updated shipping option value of this cluster's <a>ShippingDetails</a> object.</p>
-- @param _Resources [JobResource] <p>The updated arrays of <a>JobResource</a> objects that can include updated <a>S3Resource</a> objects or <a>LambdaResource</a> objects.</p>
-- Required parameter: ClusterId
function M.UpdateClusterRequest(_Description, _AddressId, _Notification, _RoleARN, _ClusterId, _ForwardingAddressId, _ShippingOption, _Resources, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateClusterRequest")
	local t = { 
		["Description"] = _Description,
		["AddressId"] = _AddressId,
		["Notification"] = _Notification,
		["RoleARN"] = _RoleARN,
		["ClusterId"] = _ClusterId,
		["ForwardingAddressId"] = _ForwardingAddressId,
		["ShippingOption"] = _ShippingOption,
		["Resources"] = _Resources,
	}
	asserts.AssertUpdateClusterRequest(t)
	return t
end

keys.ListClustersResult = { ["ClusterListEntries"] = true, ["NextToken"] = true, nil }

function asserts.AssertListClustersResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListClustersResult to be of type 'table'")
	if struct["ClusterListEntries"] then asserts.AssertClusterListEntryList(struct["ClusterListEntries"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListClustersResult[k], "ListClustersResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListClustersResult
--  
-- @param _ClusterListEntries [ClusterListEntryList] <p>Each <code>ClusterListEntry</code> object contains a cluster's state, a cluster's ID, and other important status information.</p>
-- @param _NextToken [String] <p>HTTP requests are stateless. If you use the automatically generated <code>NextToken</code> value in your next <code>ClusterListEntry</code> call, your list of returned clusters will start from this point in the array.</p>
function M.ListClustersResult(_ClusterListEntries, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListClustersResult")
	local t = { 
		["ClusterListEntries"] = _ClusterListEntries,
		["NextToken"] = _NextToken,
	}
	asserts.AssertListClustersResult(t)
	return t
end

keys.S3Resource = { ["BucketArn"] = true, ["KeyRange"] = true, nil }

function asserts.AssertS3Resource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3Resource to be of type 'table'")
	if struct["BucketArn"] then asserts.AssertResourceARN(struct["BucketArn"]) end
	if struct["KeyRange"] then asserts.AssertKeyRange(struct["KeyRange"]) end
	for k,_ in pairs(struct) do
		assert(keys.S3Resource[k], "S3Resource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3Resource
-- <p>Each <code>S3Resource</code> object represents an Amazon S3 bucket that your transferred data will be exported from or imported into. For export jobs, this object can have an optional <code>KeyRange</code> value. The length of the range is defined at job creation, and has either an inclusive <code>BeginMarker</code>, an inclusive <code>EndMarker</code>, or both. Ranges are UTF-8 binary sorted.</p>
-- @param _BucketArn [ResourceARN] <p>The Amazon Resource Name (ARN) of an Amazon S3 bucket.</p>
-- @param _KeyRange [KeyRange] <p>For export jobs, you can provide an optional <code>KeyRange</code> within a specific Amazon S3 bucket. The length of the range is defined at job creation, and has either an inclusive <code>BeginMarker</code>, an inclusive <code>EndMarker</code>, or both. Ranges are UTF-8 binary sorted.</p>
function M.S3Resource(_BucketArn, _KeyRange, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating S3Resource")
	local t = { 
		["BucketArn"] = _BucketArn,
		["KeyRange"] = _KeyRange,
	}
	asserts.AssertS3Resource(t)
	return t
end

keys.ListClusterJobsRequest = { ["NextToken"] = true, ["ClusterId"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListClusterJobsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListClusterJobsRequest to be of type 'table'")
	assert(struct["ClusterId"], "Expected key ClusterId to exist in table")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["ClusterId"] then asserts.AssertClusterId(struct["ClusterId"]) end
	if struct["MaxResults"] then asserts.AssertListLimit(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListClusterJobsRequest[k], "ListClusterJobsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListClusterJobsRequest
--  
-- @param _NextToken [String] <p>HTTP requests are stateless. To identify what object comes "next" in the list of <code>JobListEntry</code> objects, you have the option of specifying <code>NextToken</code> as the starting point for your returned list.</p>
-- @param _ClusterId [ClusterId] <p>The 39-character ID for the cluster that you want to list, for example <code>CID123e4567-e89b-12d3-a456-426655440000</code>.</p>
-- @param _MaxResults [ListLimit] <p>The number of <code>JobListEntry</code> objects to return.</p>
-- Required parameter: ClusterId
function M.ListClusterJobsRequest(_NextToken, _ClusterId, _MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListClusterJobsRequest")
	local t = { 
		["NextToken"] = _NextToken,
		["ClusterId"] = _ClusterId,
		["MaxResults"] = _MaxResults,
	}
	asserts.AssertListClusterJobsRequest(t)
	return t
end

keys.DescribeClusterResult = { ["ClusterMetadata"] = true, nil }

function asserts.AssertDescribeClusterResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeClusterResult to be of type 'table'")
	if struct["ClusterMetadata"] then asserts.AssertClusterMetadata(struct["ClusterMetadata"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeClusterResult[k], "DescribeClusterResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeClusterResult
--  
-- @param _ClusterMetadata [ClusterMetadata] <p>Information about a specific cluster, including shipping information, cluster status, and other important metadata.</p>
function M.DescribeClusterResult(_ClusterMetadata, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeClusterResult")
	local t = { 
		["ClusterMetadata"] = _ClusterMetadata,
	}
	asserts.AssertDescribeClusterResult(t)
	return t
end

keys.CancelJobRequest = { ["JobId"] = true, nil }

function asserts.AssertCancelJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelJobRequest to be of type 'table'")
	assert(struct["JobId"], "Expected key JobId to exist in table")
	if struct["JobId"] then asserts.AssertJobId(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CancelJobRequest[k], "CancelJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelJobRequest
--  
-- @param _JobId [JobId] <p>The 39-character job ID for the job that you want to cancel, for example <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>
-- Required parameter: JobId
function M.CancelJobRequest(_JobId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CancelJobRequest")
	local t = { 
		["JobId"] = _JobId,
	}
	asserts.AssertCancelJobRequest(t)
	return t
end

keys.ShippingDetails = { ["OutboundShipment"] = true, ["ShippingOption"] = true, ["InboundShipment"] = true, nil }

function asserts.AssertShippingDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ShippingDetails to be of type 'table'")
	if struct["OutboundShipment"] then asserts.AssertShipment(struct["OutboundShipment"]) end
	if struct["ShippingOption"] then asserts.AssertShippingOption(struct["ShippingOption"]) end
	if struct["InboundShipment"] then asserts.AssertShipment(struct["InboundShipment"]) end
	for k,_ in pairs(struct) do
		assert(keys.ShippingDetails[k], "ShippingDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ShippingDetails
-- <p>A job's shipping information, including inbound and outbound tracking numbers and shipping speed options.</p>
-- @param _OutboundShipment [Shipment] <p>The <code>Status</code> and <code>TrackingNumber</code> values for a Snowball being returned to AWS for a particular job.</p>
-- @param _ShippingOption [ShippingOption] <p>The shipping speed for a particular job. This speed doesn't dictate how soon you'll get the Snowball from the job's creation date. This speed represents how quickly it moves to its destination while in transit. Regional shipping speeds are as follows:</p> <ul> <li> <p>In Australia, you have access to express shipping. Typically, Snowballs shipped express are delivered in about a day.</p> </li> <li> <p>In the European Union (EU), you have access to express shipping. Typically, Snowballs shipped express are delivered in about a day. In addition, most countries in the EU have access to standard shipping, which typically takes less than a week, one way.</p> </li> <li> <p>In India, Snowballs are delivered in one to seven days.</p> </li> <li> <p>In the United States of America (US), you have access to one-day shipping and two-day shipping.</p> </li> </ul>
-- @param _InboundShipment [Shipment] <p>The <code>Status</code> and <code>TrackingNumber</code> values for a Snowball being delivered to the address that you specified for a particular job.</p>
function M.ShippingDetails(_OutboundShipment, _ShippingOption, _InboundShipment, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ShippingDetails")
	local t = { 
		["OutboundShipment"] = _OutboundShipment,
		["ShippingOption"] = _ShippingOption,
		["InboundShipment"] = _InboundShipment,
	}
	asserts.AssertShippingDetails(t)
	return t
end

function asserts.AssertJobId(str)
	assert(str)
	assert(type(str) == "string", "Expected JobId to be of type 'string'")
	assert(#str <= 39, "Expected string to be max 39 characters")
	assert(#str >= 39, "Expected string to be min 39 characters")
end

--  
function M.JobId(str)
	asserts.AssertJobId(str)
	return str
end

function asserts.AssertJobState(str)
	assert(str)
	assert(type(str) == "string", "Expected JobState to be of type 'string'")
end

--  
function M.JobState(str)
	asserts.AssertJobState(str)
	return str
end

function asserts.AssertAddressId(str)
	assert(str)
	assert(type(str) == "string", "Expected AddressId to be of type 'string'")
	assert(#str <= 40, "Expected string to be max 40 characters")
	assert(#str >= 40, "Expected string to be min 40 characters")
end

--  
function M.AddressId(str)
	asserts.AssertAddressId(str)
	return str
end

function asserts.AssertClusterId(str)
	assert(str)
	assert(type(str) == "string", "Expected ClusterId to be of type 'string'")
	assert(#str <= 39, "Expected string to be max 39 characters")
	assert(#str >= 39, "Expected string to be min 39 characters")
end

--  
function M.ClusterId(str)
	asserts.AssertClusterId(str)
	return str
end

function asserts.AssertString(str)
	assert(str)
	assert(type(str) == "string", "Expected String to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.String(str)
	asserts.AssertString(str)
	return str
end

function asserts.AssertRoleARN(str)
	assert(str)
	assert(type(str) == "string", "Expected RoleARN to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.RoleARN(str)
	asserts.AssertRoleARN(str)
	return str
end

function asserts.AssertShippingOption(str)
	assert(str)
	assert(type(str) == "string", "Expected ShippingOption to be of type 'string'")
end

--  
function M.ShippingOption(str)
	asserts.AssertShippingOption(str)
	return str
end

function asserts.AssertSnowballType(str)
	assert(str)
	assert(type(str) == "string", "Expected SnowballType to be of type 'string'")
end

--  
function M.SnowballType(str)
	asserts.AssertSnowballType(str)
	return str
end

function asserts.AssertResourceARN(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceARN to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.ResourceARN(str)
	asserts.AssertResourceARN(str)
	return str
end

function asserts.AssertKmsKeyARN(str)
	assert(str)
	assert(type(str) == "string", "Expected KmsKeyARN to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.KmsKeyARN(str)
	asserts.AssertKmsKeyARN(str)
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

function asserts.AssertJobType(str)
	assert(str)
	assert(type(str) == "string", "Expected JobType to be of type 'string'")
end

--  
function M.JobType(str)
	asserts.AssertJobType(str)
	return str
end

function asserts.AssertSnowballCapacity(str)
	assert(str)
	assert(type(str) == "string", "Expected SnowballCapacity to be of type 'string'")
end

--  
function M.SnowballCapacity(str)
	asserts.AssertSnowballCapacity(str)
	return str
end

function asserts.AssertSnsTopicARN(str)
	assert(str)
	assert(type(str) == "string", "Expected SnsTopicARN to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.SnsTopicARN(str)
	asserts.AssertSnsTopicARN(str)
	return str
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

function asserts.AssertListLimit(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ListLimit to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
end

function M.ListLimit(integer)
	asserts.AssertListLimit(integer)
	return integer
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

function asserts.AssertBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Boolean to be of type 'boolean'")
end

function M.Boolean(boolean)
	asserts.AssertBoolean(boolean)
	return boolean
end

function asserts.AssertTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Timestamp to be of type 'string'")
end

function M.Timestamp(timestamp)
	asserts.AssertTimestamp(timestamp)
	return timestamp
end

function asserts.AssertJobStateList(list)
	assert(list)
	assert(type(list) == "table", "Expected JobStateList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertJobState(v)
	end
end

--  
-- List of JobState objects
function M.JobStateList(list)
	asserts.AssertJobStateList(list)
	return list
end

function asserts.AssertAddressList(list)
	assert(list)
	assert(type(list) == "table", "Expected AddressList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAddress(v)
	end
end

--  
-- List of Address objects
function M.AddressList(list)
	asserts.AssertAddressList(list)
	return list
end

function asserts.AssertJobListEntryList(list)
	assert(list)
	assert(type(list) == "table", "Expected JobListEntryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertJobListEntry(v)
	end
end

--  
-- List of JobListEntry objects
function M.JobListEntryList(list)
	asserts.AssertJobListEntryList(list)
	return list
end

function asserts.AssertS3ResourceList(list)
	assert(list)
	assert(type(list) == "table", "Expected S3ResourceList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertS3Resource(v)
	end
end

--  
-- List of S3Resource objects
function M.S3ResourceList(list)
	asserts.AssertS3ResourceList(list)
	return list
end

function asserts.AssertLambdaResourceList(list)
	assert(list)
	assert(type(list) == "table", "Expected LambdaResourceList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLambdaResource(v)
	end
end

--  
-- List of LambdaResource objects
function M.LambdaResourceList(list)
	asserts.AssertLambdaResourceList(list)
	return list
end

function asserts.AssertJobMetadataList(list)
	assert(list)
	assert(type(list) == "table", "Expected JobMetadataList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertJobMetadata(v)
	end
end

--  
-- List of JobMetadata objects
function M.JobMetadataList(list)
	asserts.AssertJobMetadataList(list)
	return list
end

function asserts.AssertClusterListEntryList(list)
	assert(list)
	assert(type(list) == "table", "Expected ClusterListEntryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertClusterListEntry(v)
	end
end

--  
-- List of ClusterListEntry objects
function M.ClusterListEntryList(list)
	asserts.AssertClusterListEntryList(list)
	return list
end

function asserts.AssertEventTriggerDefinitionList(list)
	assert(list)
	assert(type(list) == "table", "Expected EventTriggerDefinitionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEventTriggerDefinition(v)
	end
end

--  
-- List of EventTriggerDefinition objects
function M.EventTriggerDefinitionList(list)
	asserts.AssertEventTriggerDefinitionList(list)
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
--- Call ListJobs asynchronously, invoking a callback when done
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

--- Call ListJobs synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListJobsRequest
-- @return response
-- @return error_message
function M.ListJobsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListJobsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListClusterJobs asynchronously, invoking a callback when done
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

--- Call ListClusterJobs synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListClusterJobsRequest
-- @return response
-- @return error_message
function M.ListClusterJobsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListClusterJobsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetJobUnlockCode asynchronously, invoking a callback when done
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

--- Call GetJobUnlockCode synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetJobUnlockCodeRequest
-- @return response
-- @return error_message
function M.GetJobUnlockCodeSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetJobUnlockCodeAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateJob asynchronously, invoking a callback when done
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

--- Call CreateJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateJobRequest
-- @return response
-- @return error_message
function M.CreateJobSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateJobAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListClusters asynchronously, invoking a callback when done
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

--- Call ListClusters synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListClustersRequest
-- @return response
-- @return error_message
function M.ListClustersSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListClustersAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateCluster asynchronously, invoking a callback when done
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

--- Call CreateCluster synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateClusterRequest
-- @return response
-- @return error_message
function M.CreateClusterSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateClusterAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateJob asynchronously, invoking a callback when done
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

--- Call UpdateJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateJobRequest
-- @return response
-- @return error_message
function M.UpdateJobSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateJobAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetSnowballUsage asynchronously, invoking a callback when done
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

--- Call GetSnowballUsage synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetSnowballUsageRequest
-- @return response
-- @return error_message
function M.GetSnowballUsageSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSnowballUsageAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetJobManifest asynchronously, invoking a callback when done
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

--- Call GetJobManifest synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetJobManifestRequest
-- @return response
-- @return error_message
function M.GetJobManifestSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetJobManifestAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateAddress asynchronously, invoking a callback when done
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

--- Call CreateAddress synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateAddressRequest
-- @return response
-- @return error_message
function M.CreateAddressSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateAddressAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeAddress asynchronously, invoking a callback when done
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

--- Call DescribeAddress synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeAddressRequest
-- @return response
-- @return error_message
function M.DescribeAddressSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeAddressAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeAddresses asynchronously, invoking a callback when done
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

--- Call DescribeAddresses synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeAddressesRequest
-- @return response
-- @return error_message
function M.DescribeAddressesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeAddressesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CancelJob asynchronously, invoking a callback when done
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

--- Call CancelJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CancelJobRequest
-- @return response
-- @return error_message
function M.CancelJobSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CancelJobAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CancelCluster asynchronously, invoking a callback when done
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

--- Call CancelCluster synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CancelClusterRequest
-- @return response
-- @return error_message
function M.CancelClusterSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CancelClusterAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeJob asynchronously, invoking a callback when done
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

--- Call DescribeJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeJobRequest
-- @return response
-- @return error_message
function M.DescribeJobSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeJobAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeCluster asynchronously, invoking a callback when done
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

--- Call DescribeCluster synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeClusterRequest
-- @return response
-- @return error_message
function M.DescribeClusterSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeClusterAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateCluster asynchronously, invoking a callback when done
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

--- Call UpdateCluster synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateClusterRequest
-- @return response
-- @return error_message
function M.UpdateClusterSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateClusterAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
